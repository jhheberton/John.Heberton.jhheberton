require 'unirest'
require 'json'

# greet the user
puts
puts "Hello! Welcome to yoda speak!"
puts

# get the petitions
	# petitions = ["Gun Control", "Cannaabis", "Immigration"]

while true

	puts "Like me to translate to yoda speak, what would you?"

	sentence = gets.strip

	response = Unirest.get "https://yoda.p.mashape.com/yoda?sentence=#{sentence}",
	headers:{
		"X-Mashape-Key" => "SVBF5njILpmshIGwyKxLXbQ1OXAxp1ShRhdjsnDivPC4pVElhD",
		"Accept" => "text/plain"
	}

	yoda_speak = response.body


	puts yoda_speak
	puts
	puts "Like me to translate another song, would you? (y/n)"
	continue = gets.strip
	break if continue == "n"
end
# goodbye
puts "Thanks, bye!"