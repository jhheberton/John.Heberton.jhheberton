class StoriesController < ApplicationController
	before_action :load_stories, :only => [:index, :create]
	before_action :load_new_story, :only => [:index, :new]

	# def before_action(method_name, optional_parameters={})
	# 	# Run method_name before each action
	# end

	def index
		@stories = Story.all
	end

	def new
		@story = Story.new
	end

	def create
		@story = Story.new(params["story"].permit(:title, :body))
		
		# @story.user = User.last
		
		if @story.save
			redirect_to '/stories'
		else
			render :index
		end
	end

	def delete
		Story.find(params[:id]).destroy
		redirect_to '/stories'
	end

	private

	def load_new_story
		@story = Story.new
	end

	def load_stories
		@stories = Story.all
	end
end

#<%= render :partial => 'errors', :locals => {:story => @story} %>
#<%= render :partial => 'form', :locals => {:story => @story} %>