class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items, inverse_of: :order
  validates_uniqueness_of :number

  accepts_nested_attributes_for :order_items, allow_destroy: true

  def get_total_price
    total_price = 0
    self.order_items.each do |order_item|
      total_price = total_price + (order_item.qty * order_item.product.price)
    end

    return total_price
  end

end 
