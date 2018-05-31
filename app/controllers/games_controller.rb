class GamesController < ActionController::Base
	#Create

	#Read
	def index 
		@games = Game.all;
		render json: @games, status: 200
	end

	#Update
	#Destroy
end
