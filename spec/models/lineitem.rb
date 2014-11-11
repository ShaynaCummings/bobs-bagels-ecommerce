require 'rails_helper'

RSpec.describe Lineitem, :type => :model do
	it "should have a combined_price" do 
		line_item = Lineitem.create!(combined_price: 5.50, product_id:1, order_id:1)
		expect(line_item.combined_price).to eq(5.50)#didn't bother checking for the ids because part of the code demands that they always be present when someone creates an instance of Lineitem
	end

	it "should belong to product" do 
		line_item = Lineitem.reflect_on_association(:product)
		line_item.macro.should == :belongs_to
	end

	it "should belong to order" do 
		line_item = Lineitem.reflect_on_association(:order)
		line_item.macro.should == :belongs_to
	end

	it "should have many options through lineitem_options" do 
		line_item = Lineitem.reflect_on_association(:options)
		line_item.macro.should == :has_many #I still am not certain
	end
end