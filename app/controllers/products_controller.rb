class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @product = Product.new(
      # user_id: 1,
      name: params[:name],
      price: params[:price],
      # image: params[:image],
      description: params[:description],
      # supplier: 1,
    )
    @product.save
    redirect_to "/products"
  end

  def show
    @product = Product.find_by(id: params[:id])
  end
end
