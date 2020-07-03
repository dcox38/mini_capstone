class Api::ProductsController < ApplicationController
  def single_product
    @product = Product.first
    render 'product.json.jb'
  end


end
