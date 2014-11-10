class Product < ActiveRecord::Base
  belongs_to :category
  has_many :options, through: :product_options
end
