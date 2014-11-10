class CreateLineitems < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
      t.decimal :combined_price

      t.timestamps null: false
    end
  end
end
