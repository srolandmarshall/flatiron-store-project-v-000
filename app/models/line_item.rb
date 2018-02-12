class LineItem < ActiveRecord::Base
  belongs_to :cart
  belongs_to :item

  def total_price
    item.price/100 * quantity
  end

end
