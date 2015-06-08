puts "Welcome to list builder++!"

list = []
x = 0

while x == 0
	puts "What can I do for you?"

	request = gets.strip.downcase

	if request.include? "add "
		request.slice! "add "
		list << request
		puts "Added! Your list is:"
		p list
	elsif request.include? "remove "
		request.slice! "remove "
		if list.include? request
			list.delete(request)
			puts "Removed! Your list is:"
			p list
		else
			puts "You must have made a mistake. That was not in your list. Your list is:"
			p list
		end
	elsif request.include? "quit"
		x = 1
	else
		puts "Sorry, I do not understand your request. I can add or remove elements. If you are finished, then type quit."
		puts "Your list is:"
		p list
	end
end
puts "Bye!"