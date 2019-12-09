class Impact < ApplicationRecord
	belongs_to :user
	has_many :footprints
	has_many :items, :through => :footprints

	def api_calculate
		api_response = ImpactHelper.api_test
		p api_response
		# items.each do |item|
		 	# impact.name
		 	# impact.item 
		 	# if impact.user.present?
		 	# 	impact.user.email
		 	# end
		# end
	end
end
