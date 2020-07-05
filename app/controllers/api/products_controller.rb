class Api::ProductsController < ApplicationController
  def index
    @products = Product.all 
    render 'index.json.jb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description]
    )
    @product.save
    render 'show.json.jb'
  end

  def create
    @product = Product.find_by(id: params[:id])

    @product.name = params[:name]
    @product.price = params[:price]
    @product.description = params[:description]

    @product.save

    render 'show.json.jb'

  end


end
