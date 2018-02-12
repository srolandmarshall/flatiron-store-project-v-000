class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :line_items
  has_many :items, through: :line_items

  def total
    total = 0.0
    self.line_items.each do |item|
      total += item.item.price * item.quantity
    end
    total
  end

  def add_item(item_id)
    line_item = self.line_items.find_or_initialize_by(item_id: item_id)
    line_item.quantity += 1 unless line_item.new_record?
    line_item
  end

end
