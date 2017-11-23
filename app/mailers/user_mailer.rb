class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user

    mail to: @user.email, subject: "Survive the Apocalypse!"
  end

  def creation_confirmation(trip, user)
    @user = user
    @trip = trip
    mail to: user.email, subject: "You Booked a Trip!"
  end

end
