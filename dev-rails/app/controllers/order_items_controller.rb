class OrderItemsController < ApplicationController
  def index
    @order_items = OrderItem.all
    @order_sum = Order.sum(:total_price)
  end
end
