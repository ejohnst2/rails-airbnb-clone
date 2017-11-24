class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :bunker

  validates :user, :bunker, :start_date, :end_date, presence: true
  after_create :send_confirmation_email

  def send_confirmation_email
    UserMailer.creation_confirmation(self, user).deliver_now
  end

end

