class Lineitem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order

  has_many :options, through: :lineitem_options
  has_many :lineitem_options

  # validates :product_id, presence: true
  # validates :order_id, presence: true

  def calculate_price
    #returns price of option(s) + price of product
  end

end
