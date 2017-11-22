class Location < ApplicationRecord
has_one :bunker, dependent: :destroy
validates :country, :longitude, :latitude, presence: true, allow_blank: false
end


