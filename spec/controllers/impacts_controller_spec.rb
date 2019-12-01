require 'rails_helper'


RSpec.describe ImpactsController, type: :controller do
	describe "tasks#create" do
	  it "should allow new tasks to be created" do
      post :create, params: {impact: {name: "Test Impact"}}
      expect(response).to have_http_status(:found)
	    # response_value = ActiveSupport::JSON.decode(@response.body)
	    # expect(response_value['name']).to eq("Test Impact")
	    # expect(Impact.last.name).to eq("Test Impact")
    end
	end
end