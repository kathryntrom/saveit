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
		current_user.impacts.create(impact_params)
		redirect_to impacts_path
		render json: impact
	end

	private

	def impact_params
		params.require(:impact).permit(:name, :description, :value)
	end

end
