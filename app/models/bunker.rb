class Bunker < ApplicationRecord
  attr_accessor :address
  geocoded_by :address
  after_validation :geocode
  belongs_to :user
  has_attachments :photos, maximum: 10
  has_many :trips, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :price, :size, :name, :description, :address, presence: true, allow_blank: false

  def self.search(query)
    if query.present?
      query = query.downcase
      Bunker.joins(:user).where("lower(bunkers.name) LIKE ? OR
                                           lower(users.first_name) LIKE ? OR
                                           lower(users.last_name) LIKE ?",
                                           "%#{query}%",
                                           "%#{query}%",
                                           "%#{query}%")
    else
      Bunker.all
    end
  end

end

