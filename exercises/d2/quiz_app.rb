puts "Welcome to Johnny's mini quiz."

points = 0

puts "What's my last name?"

last_name = gets.downcase.strip

if last_name == "heberton"
	points = points + 1
	if points == 1
	point_or_points = "point"
	else
	point_or_points = "points"
	end
	puts "Right! You have #{points} #{point_or_points}!"
else
	if points == 1
	point_or_points = "point"
	else
	point_or_points = "points"
	end
	puts "Wrong... it's Heberton. You don't have any points."
end

puts "How many siblings do I have?"

siblings_num = gets.strip.to_i

if (siblings_num == 1)
	points = points + 1
	if points == 1
	point_or_points = "point"
	else
	point_or_points = "points"
	end
	puts "Right! You have #{points} #{point_or_points}!"
else
	if points == 1
	point_or_points = "point"
	else
	point_or_points = "points"
	end
	puts "Wrong. I have one brother. You have #{points} #{point_or_points}."
end

puts "What country was I born in?"

country = gets.downcase.strip

if ((country == "united states") || (country == "united states of america") || (country == "usa") || (country == "us"))
	points = points + 1
	if points == 1
	point_or_points = "point"
	else
	point_or_points = "points"
	end
	puts "Right! You have #{points} points!"
else 
	if points == 1
	point_or_points = "point"
	else
	point_or_points = "points"
	end
	puts "Wrong... I was born in the United States. You have #{points} #{point_or_points}."
end

if points == 1
	point_or_points = "point"
else
	point_or_points = "points"
end
puts "Thanks for playing! You finished with #{points} #{point_or_points}."
