class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :cart
      t.references :item
      t.integer :quantity, null: false, default: 1
    end
  end
end
