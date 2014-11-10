class CreateProductOptions < ActiveRecord::Migration
  def change
    create_table :product_options do |t|
      t.belongs_to :product, index: true
      t.belongs_to :option, index: true
    end
  end
end
