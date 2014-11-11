class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :status
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.decimal :delivery_price,  precision: 5, scale: 2
      t.decimal :order_total,  precision: 5, scale: 2
      t.timestamps null: false
    end
  end
end

