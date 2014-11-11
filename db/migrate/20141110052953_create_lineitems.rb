class CreateLineitems < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
      t.decimal :combined_price, precision: 5, scale: 2
      t.belongs_to :product
      t.belongs_to :order

      t.timestamps null: false
    end
  end
end
