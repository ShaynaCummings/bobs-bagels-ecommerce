require 'rails_helper'

RSpec.describe ProductOption, :type => :model do
	it "should belong to Product" do
		product_option = ProductOption.reflect_on_association(:product)
		product_option.macro.should == :belongs_to
	end

	it "should belong to Option" do 
		product_option = ProductOption.reflect_on_association(:option)
		product_option.macro.should == :belongs_to
	end
end