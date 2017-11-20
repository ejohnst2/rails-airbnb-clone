class Bunker < ApplicationRecord
  belongs_to :location, dependent: :destroy
  belongs_to :user
  # has_one :location, dependent: :destroy
  accepts_nested_attributes_for :location
  has_many :trips, dependent: :destroy
  validates :price, :size, presence: true, allow_blank: false
  # don't forget to add user
end
