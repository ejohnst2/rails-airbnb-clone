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
      Bunker.joins(:location, :user).where("bunkers.name LIKE ? OR
                                           users.first_name LIKE ? OR
                                           users.last_name LIKE ?",
                                           "%#{query}%",
                                           "%#{query}%",
                                           "%#{query}%")
    else
      Bunker.joins(:location).all
    end
  end

end

