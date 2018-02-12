class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer  :category_id
      t.decimal  :price
      t.string   :title
      t.integer  :inventory
    end
  end
end
