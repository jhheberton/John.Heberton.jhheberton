class Petition < ActiveRecord::Base
	def self.get_petitions
		response = RestClient.get "https://api.whitehouse.gov/v1/petitions.json"
		parsed_response = JSON.parse(response)
		response = parsed_response["results"]
		response.map! do |petition|
			petition["title"]
		end
	end
end