class UsersController < ApplicationController
	#Create
	def create
		username = params[:username];
		pass = params[:password];
		user = User.create(username: username, password: pass)

		if user.errors.any?
			render json: {success: false, 
						  error_message: user.errors.full_messages}
		else
			render json: {success: true,
						  token: generate_token(user)}
		end
	end
	#Read

	#Update

	#Destroy

	  private
	  def generate_token(user)
	    alg = 'HS256'
	    secret = 'password123'
	    payload = { user_id: user.id }
	    JWT.encode payload, secret, alg
	  end
end
