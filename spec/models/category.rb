require 'rails_helper'

RSpec.describe Category, :test => :model do 
	it "should have a name" do 
		category_1 = Category.create!(name: "Large Box")
		expect(category_1.name).to eq("Large Box")
	end

	it "should belong to a category" do
		category = Category.reflect_on_association(:category)
		category.macro.should == :belongs_to
	end
	# question: should I be doing these tests in the same block of code on the same variable?
	it "should have many categories" do
		category = Category.reflect_on_association(:categories)
		category.macro.should == :has_many
	end

	it "should have many products" do
		category = Category.reflect_on_association(:products)
		category.macro.should == :has_many
	end
end
