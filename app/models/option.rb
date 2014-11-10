class Option < ActiveRecord::Base
  has_many :products, through: :product_options
  has_many :lineitems, through: :lineitem_options
end
