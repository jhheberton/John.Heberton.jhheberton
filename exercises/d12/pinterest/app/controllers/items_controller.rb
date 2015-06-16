class ItemsController < ApplicationController
	before_action :load_items, :only => [:index, :create]
	before_action :load_new_item, :only => [:index, :new]

	def index
		load_items
	end

	def create
		@item = Item.new(params["item"].permit(:title, :description))
		@item.save
		redirect_to '/items'
	end

	private

	def load_items
		@items = Item.all
	end

	def load_new_item
      @item = ItemsController.new
    end

end