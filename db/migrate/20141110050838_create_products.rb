class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :price,  precision: 5, scale: 2
      t.belongs_to :category

      t.timestamps null: false
    end
  end
end
