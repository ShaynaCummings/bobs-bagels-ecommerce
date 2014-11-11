require 'rails_helper'

RSpec.describe Product, :type => :model do
	it "has a name and a price" do
		product_1 = Product.create!(name: "toy", price: 5550)

		expect(product_1.name).to eq("toy")
		expect(product_1.price).to eq(5550)
	end

	it "should have many options" do
		t = Product.reflect_on_association(:options)

		t.macro.should == :has_many 
	end
end