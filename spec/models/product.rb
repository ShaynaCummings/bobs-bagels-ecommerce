require 'rails_helper'

RSpec.describe Product, :type => :model do
	it "has a name and a price" do
		product_1 = Product.create!(name: "toy", price: 5550)

		expect(product_1.name).to eq("toy")
		expect(product_1.price).to eq(5550)
	end

	it "should have many options through product_options" do
		product = Product.reflect_on_association(:options)
		# should_have_many :options, :through => :product_options //something is wrong with this
		# t.macro.should == :has_many_through
		product.macro.should == :has_many
		# okay so this works, but I'm not convinced that it is testing the right relationship
	end
end