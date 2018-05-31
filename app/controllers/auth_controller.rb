class AuthController < ApplicationController
	def signin
		username = params[:username]
		pass = params[:password]
		user = User.find_by(username: username)
		if user && user.authenticate(pass)
			render json: {success: true, token: generate_token(user)}
		else
			render json:{success: false}
		end
	end

	private
	def generate_token(user)
		alg = 'HS256'
		secret = 'password123'
		payload = { user_id: user.id }
		JWT.encode payload, secret, alg
	end
end
