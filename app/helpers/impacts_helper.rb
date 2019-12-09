module ImpactsHelper
	def self.api_test
		gallons = 50
		response = HTTParty.get("http://impact.brighterplanet.com/fuel_purchases.json?fuel_type=gasoline&timeframe=2019-01-01%2F2020-01-01&volume=#{gallons}&key=be471d8e-911c-4b49-aad3-631e500e5b19")
		gasdata = response.parsed_response
		carbon = gasdata["decisions"]["carbon"]["object"]["value"]
		@value = carbon/3
		p @value
	end

	
end