require 'rails_helper'

RSpec.describe Option, :test => :model do 
	it "Should have a name and a price" do
		option_1 = Option.create!(name: "plain", price: 3.50)
		expect(option_1.name).to eq("plain")
		expect(option_1.price).to eq(3.50)
	end

	it "should have many products through... product_options" do
		option = Option.reflect_on_association(:products)
		option.macro.should == :has_many
	end

	it "should have many product_options" do
		option = Option.reflect_on_association(:product_options)
		option.macro.should == :has_many
	end

	it "should have many lineitems through lineitem_options" do
		option = Option.reflect_on_association(:lineitems)
		option.macro.should == :has_many
	end
end