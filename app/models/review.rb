class Review < ApplicationRecord
  belongs_to :bunker
  validates :content, length: { minimum: 20 }
  validates :rating, :inclusion => 1..5
end
