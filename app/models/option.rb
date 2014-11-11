class Option < ActiveRecord::Base
  has_many :products, through: :product_options
  has_many :product_options

  has_many :lineitems, through: :lineitem_options
  has_many :lineitem_options
end
