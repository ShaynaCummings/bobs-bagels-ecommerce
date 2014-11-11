class Order < ActiveRecord::Base
  #belongs_to :user #add this once User is implemented
  #belongs_to :transaction  #add this once Swipe is implemented
  has_many :lineitems, dependent: :destroy
  has_many :lineitem_params

  # validates :user_id, presence: true
  # validates :transaction_id, presence: true

  def order_total
    #sum of line items
  end

end
