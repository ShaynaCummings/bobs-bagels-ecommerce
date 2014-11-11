require 'rails_helper'

RSpec.describe Order, :type => :model do
	it "has a status" do
		order_1 = Order.create!(status: "Processing")

		expect(order_1.status).to eq("Processing")
	end

	it "Should have many lineitems" do
		order = Order.reflect_on_association(:lineitems)
		order.macro.should == :has_many
	end

	it "should have many lineitem_params" do
		order = Order.reflect_on_association(:lineitem_params)
		order.macro.should == :has_many
	end
end