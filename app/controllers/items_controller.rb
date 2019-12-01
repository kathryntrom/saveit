class ItemsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]

	def index
		@items = Item.all
	end

	def new
		@item = Item.new
	end

	def create
		current_user.items.create(item_params)
		redirect_to items_path
	end

	private

	def item_params
		params.require(:item).permit(:name, :value)
	end
end
