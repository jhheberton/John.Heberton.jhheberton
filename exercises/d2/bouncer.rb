puts "Hello! What's your age?"

age = gets.strip.to_i

if age == 21
	puts "You're 21? Come on in!"
elsif age >= 22 
	puts "You're old enough! Come on in!"
else
	puts "Sorry. You're too young."
end