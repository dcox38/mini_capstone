class Api::ProductsController < ApplicationController
  before_action :authenticate_admin, only: [:create, :update, :destroy]
  before_action :authenticate_user, only: [:create, :show]


  def index
    # # @products = Product.where("name LIKE ?", "%#{params[:search]}%")
    
    # if current_user
    #   @products = Product.order(price: :DESC)
    # else
    #   @products = []
    # end 

    category = Category.find_by(name: params[:category])

    @products = category.products

    render 'index.json.jb'

    # render json: category

  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],

    )
    if @product.save 
      render 'show.json.jb'
    else
      render "error.json.jb"
    end
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description

    if @product.save
      render 'show.json.jb'
    else
      render "error.json.jb"
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy

    render json: {message: "Nice job, you have succesfully deleted this product"}
  end
end
