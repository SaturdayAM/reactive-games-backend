class ScoresController < ApplicationController
	#Create
	def create
		username = params[:username]
		gamename = params[:currentGame]
		score = params[:score]

		user = User.find_by(username: username);
		game = Game.find_by(name: gamename);

		if user && game
			new_score = Score.new(score: score);
			new_score.user = user;
			new_score.game = game;
			new_score.save;
			render json: {success: true, score: {
				game: game,
				id: new_score.id,
				score: new_score.score,
				created_at: new_score.created_at,
				user: user
			}}
		else
			render json: {success: false}
		end
	end
	#Read

	#Update

	#Destroy
end
