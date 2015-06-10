class PetitionsController < ApplicationController
	def index
		@petitions = Petition.get_petitions 
	end
	def show
	end
end