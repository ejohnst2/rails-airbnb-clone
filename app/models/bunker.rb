class Bunker < ApplicationRecord
  belongs_to :location
  belongs_to :review
end
