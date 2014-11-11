class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :name
      t.numeric :price

      t.timestamps null: false
    end
  end
end
