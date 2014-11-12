require 'rails_helper'

RSpec.describe ProductsController, :type => :controller do 
	describe "GET #index" do
		it "responds successfully with an HTTP 200 status code" do
			get :index
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end
		it "loads all relevant products into @products" do 
			product1, product2 = Product.create!(name: "plain"), Product.create!(name: "Sesame Seeds")
			get :index

			expect(assigns(:products)).to match_array([product1, product2])
		end
	end
end