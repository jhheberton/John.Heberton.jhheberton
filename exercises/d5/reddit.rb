require 'rest-client'
require 'json'

# greet the user
puts "Hello! Welcome to Reddit!"

puts "Loading stories"

puts "What stories would you like to see?"

feed = gets.strip

puts "Which subreddit would you like to see?"

input = gets.strip
subreddit = "r/#{input}"

# if !input.empty?
  
#   end

url = "http://www.reddit.com.json?limit=10"
response = RestClient.get url

parsed_response = JSON.parse(response)

stories = parsed_response["data"]["children"]

stories.each_with_index do |story, index|
  puts story["data"]["title"]
end

puts "Thanks, bye!"