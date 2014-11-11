require 'rails_helper'

RSpec.describe Order, :type => :model do
	it "has a status" do
		order_1 = Order.create!(status: "Processing")

		expect(order_1.status).to eq("Processing")
	end
end