class UserMailer < ApplicationMailer
  default from: 'no-reply@coach-me.fr'

  def welcome_email(user)
    @user = user
    @url = 'https://coach-me-master.herokuapp.com/users/sign_in'

    mail(
      from: 'fontaine.ladislas@gmail.com', 
      to: @user.email, 
      subject: 'Bienvenue chez CoachMe !'
      # delivery_method_options: { api_key: ENV['MAILJET_LOGIN'], secret_key: ENV['MAILJET_PWD'], version: 'v3.1' }
    )
  end
end
