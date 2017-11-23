class Bunker < ApplicationRecord
  attr_accessor :address
  geocoded_by :address
  after_validation :geocode
  belongs_to :user
  has_attachments :photos, maximum: 10
  has_many :trips, dependent: :destroy
  validates :price, :size, :name, :description, :address, presence: true, allow_blank: false
end
  # after_validation :set_address
  # has_one :bunker, dependent: :destroy
  # validates :country, :number, :street_name, :city, presence: true, allow_blank: false
  # don't forget to add user
  # geocoded_by :location
  # after_validation :geocode, if: :location_changed?
 # def set_address
  #   self.address = "#{self.number}, #{self.street_name}, #{self.city}, #{self.country}"
  # end

# class Flat < ApplicationRecord
#   validates :address, presence: true
#   validates :zip_code, presence: true
#   validates :city, presence: true
#   validates :country, presence: true

#   geocoded_by :full_address
#   after_validation :geocode, if: :full_address_changed?

#   def full_address
#     "#{address}, #{zip_code} #{city} #{ISO3166::Country[country].name}"
#   end

#   def full_address_changed?
#     address_changed? || zip_code_changed? || city_changed? || country_changed?
#   end
# end
