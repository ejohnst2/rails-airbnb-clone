class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :bunker

  validates :user, :bunker, :start_date, :end_date, presence: true
end
