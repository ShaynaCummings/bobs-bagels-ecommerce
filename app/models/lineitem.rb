class Lineitem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order
  has_many :options, through: :lineitem_options
end
