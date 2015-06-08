puts "Welcome to container builder!"

list = {}

x = 0
while x == 0
	puts "What can I do for you?"

	request = gets.downcase.strip

	if request.include? "add "
		request.slice! "add "
		if list.has_key?(request)
			list[request] = list[request] + 1
			puts "Added! Your list includes:"
			p list
		else
			count = 1
			list[request] = count
			puts "Added! Your list includes:"
			p list
		end

	elsif request.include? "remove "
		request.slice! "remove "

		if list.has_key?(request)
			puts "Removed! Your list includes:"

			if list[request] == 1
				list.delete(request)

			else
			list[request] = list[request] - 1
			end

		p list


		else
			puts "You must have made a mistake. That was not in your list. Your list includes:"
			p list
		end
		

	elsif request.include? "quit"
		x = 1

	else
		puts "Sorry, I don't understand your request. I can add and remove items from your list. If you are finished, type quit"
		p list
	end
end

puts "Bye!"