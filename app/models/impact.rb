class Impact < ApplicationRecord
	belongs_to :user
	has_many :footprints
	has_many :items, :through => :footprints
	accepts_nested_attributes_for :items

	def api_calculate
		api_response = ImpactsHelper.api_test
		totals = 0

		items.each do |item|
		 	totals += quantity * item.value * api_response
		end

		return totals
	end
end
