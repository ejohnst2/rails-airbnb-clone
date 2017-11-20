class Location < ApplicationRecord
has_one :bunker
validates :country, :longitude, :latitude, presence: true, allow_blank: false
end


