# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


gamer_one = User.create(username: "Number_one", password: "password123");
gamer_two = User.create(username: "Leeroy_jenkins", password: "password123")
gamer_three = User.create(username: "Zezima", password: "password123")


game_one = Game.create(name: "SimpleGame");
game_two = Game.create(name: "OtherGame");
game_three = Game.create(name: "Snake");
game_four = Game.create(name: "2048");

#---------------------SimpleGame scores-------------------------#
simple_scores = Array.new(10){rand(1000...10000)};

simple_scores.each_with_index do |val, i|
	temp_score = Score.new(score: val);

	if i%3 == 0
		temp_score.user = gamer_three;
	elsif i%2 == 0 
		temp_score.user = gamer_two;
	else
		temp_score.user = gamer_one;
	end
	temp_score.game = game_one;
	temp_score.save;
end

#--------------------OtherGame scores-------------------------#

other_scores = Array.new(10){rand(100...999)};

other_scores.each_with_index do |val, i|
	temp_score = Score.new(score: val);

	if i%3 == 0
		temp_score.user = gamer_three;
	elsif i%2 == 0 
		temp_score.user = gamer_two;
	else
		temp_score.user = gamer_one;
	end

	temp_score.game = game_two;
	temp_score.save;
end


#-----------------------Snake scores---------------------------#

snake_scores = Array.new(10){rand(1...10)};
snake_scores.each_with_index do |val, i|
	temp_score = Score.new(score: val);
	if i%3 == 0
		temp_score.user = gamer_three;
	elsif i%2 == 0 
		temp_score.user = gamer_two;
	else
		temp_score.user = gamer_one;
	end

	temp_score.game = game_three;
	temp_score.save;
end




#-----------------------2048 scores---------------------------#
twenty_scores = [2048, 2047, 2046, 2045, 2044, 2043, 2042];

twenty_scores.each_with_index do |val, i|
	temp_score = Score.new(score: val);
	if i%3 == 0
		temp_score.user = gamer_three;
	elsif i%2 == 0 
		temp_score.user = gamer_two;
	else
		temp_score.user = gamer_one;
	end

	temp_score.game = game_four;
	temp_score.save;
end




