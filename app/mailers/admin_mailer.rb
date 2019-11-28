class AdminMailer < ApplicationMailer
	default from: 'no-reply@coach-me.fr'

	def admin_validate(user, admin)
		@admin = admin
		@user = user
		@url = 'https://coach-me-master.herokuapp.com/users/sign_in'
		mail(to: @admin.email, subject: "Admin validation d'achat")
		
	end


end # class

