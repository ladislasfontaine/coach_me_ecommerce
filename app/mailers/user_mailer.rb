class UserMailer < ApplicationMailer
  default from: 'no-reply@coach-me.fr'

  def welcome_email(user)
    @user = user
    @url = 'https://coach-me-master.herokuapp.com/users/sign_in'

    mail(to: @user.email, subject: 'Bienvenue chez CoachMe !')
  end
end
