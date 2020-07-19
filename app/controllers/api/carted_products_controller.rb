class Api::CartedProductsController < ApplicationController
  def create
    @carted_products = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: @current_user
    )
    @carted_products.save

    render "show.json.jb"
  end
end
