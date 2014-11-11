class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.numeric :price
      t.belongs_to :category

      t.timestamps null: false
    end
  end
end
