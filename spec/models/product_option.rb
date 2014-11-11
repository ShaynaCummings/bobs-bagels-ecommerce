require 'rails_helper'

RSpec.describe ProductOption, :type => :model do
	it "should belong to Product" do
		t = ProductOption.reflect_on_association(:product)
		t.macro.should == :belongs_to
	end

	it "should belong to Option" do 
		t = ProductOption.reflect_on_association(:option)
		t.macro.should == :belongs_to
	end
end