class Product < ActiveRecord::Base
  belongs_to :category

  has_many :product_options
  has_many :options, through: :product_options

  validates :name, presence: true
end
