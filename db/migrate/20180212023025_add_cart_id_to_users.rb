class AddCartIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cart_id, :integer
    add_column :users, :current_cart_id, :integer
  end
end
