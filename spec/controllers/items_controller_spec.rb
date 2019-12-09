require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
	describe "items#create" do
	  it "should allow new items to be created" do
      post :create, params: {item: {name: "Test Impact"}}
      expect(response).to have_http_status(:found)
	    # response_value = ActiveSupport::JSON.decode(@response.body)
	    # expect(response_value['name']).to eq("Test Impact")
	    # expect(Impact.last.name).to eq("Test Impact")
      end
	end

end