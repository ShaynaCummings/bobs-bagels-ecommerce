class CreateLineitems < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
      t.numeric :combined_price
      t.belongs_to :product
      t.belongs_to :order

      t.timestamps null: false
    end
  end
end
