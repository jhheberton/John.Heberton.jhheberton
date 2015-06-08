puts "Welcome to list builder!"

list = []

while true

	puts "What can I add?"

	response = gets.strip

	list << response

	puts "Added! Your list is:"

	p list

end