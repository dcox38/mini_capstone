class Api::OrdersController < ApplicationController

  def create
    @orders = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
    )
    @orders.save
    render "show.json.jb"
  end
end
