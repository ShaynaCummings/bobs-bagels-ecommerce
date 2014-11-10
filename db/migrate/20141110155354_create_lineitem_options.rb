class CreateLineitemOptions < ActiveRecord::Migration
  def change
    create_table :lineitem_options do |t|
      t.belongs_to :lineitem, index: true
      t.belongs_to :option, index: true
    end
  end
end
