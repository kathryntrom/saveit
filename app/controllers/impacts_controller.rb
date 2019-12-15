class ImpactsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def index
		p current_user
		@impacts = current_user.impacts
	end

	def new
		@impact = Impact.new
	end

	def create
		p params
		current_user.impacts.create(impact_params)
		redirect_to impacts_path
	end

	private

	def impact_params
		params.require(:impact).permit(:name, :description, :quantity, :value, :item_ids => [])
	end

end
