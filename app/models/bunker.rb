class Bunker < ApplicationRecord
  attr_accessor :address
  geocoded_by :address
  after_validation :geocode
  belongs_to :user
  has_attachments :photos, maximum: 10
  has_many :trips, dependent: :destroy
  has_and_belongs_to_many :features
  validates :price, :size, :name, :description, :address, presence: true, allow_blank: false

  # don't forget to add user
  # geocoded_by :location
  # after_validation :geocode, if: :location_changed?

  def self.search(query)
    if query.present?
      Bunker.joins(:user).where("bunkers.name LIKE ? OR
                                           users.first_name LIKE ? OR
                                           users.last_name LIKE ?",
                                           "%#{query}%",
                                           "%#{query}%",
                                           "%#{query}%")
    else
      Bunker.all
    end
  end
end

