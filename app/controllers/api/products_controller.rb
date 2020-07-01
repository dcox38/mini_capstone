class Api::ProductsController < ApplicationController
  def single_product
    @product = Product.first
    render 'product.json.jb'
  end

  def every_product
    @products = Product.all 
    render 'the_products.json.jb'
  end


end
