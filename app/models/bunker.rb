class Bunker < ApplicationRecord
  belongs_to :location
  belongs_to :user
  has_attachments :photos, maximum: 10
  # has_one :location, dependent: :destroy
  accepts_nested_attributes_for :location
  has_many :trips, dependent: :destroy
  validates :price, :size, :name, :description, presence: true, allow_blank: false
  # don't forget to add user
  # geocoded_by :location
  # after_validation :geocode, if: :location_changed?

end

