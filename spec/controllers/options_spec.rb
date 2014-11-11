require 'rails_helper'

RSpec.describe OptionsController, :type => :controller do 
	describe "GET #index" do 
		it "responds successfully with HTTP 200 status code" do 
			get :index
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end
		it "Should show all the options" do 
			option1, option2 = Option.create!(name: "Plain", price: 2000), Option.create!(name: "Wheat", price: 2500)
			get :index
			expect(assigns(:options)).to match_array([option1, option2])
		end
	end
end