class Api::ProductsController < ApplicationController
  def index
    @products = Product.all

    if params[:search]
      @products = @products.where("name ILIKE ?", "%#{params[:search]}%")
    end

    if params[:discount] == "true"
      @products = @products.where("price <= 10")
    end

    if params[:sort] == "price" && params[:sort_order] == "asc"
      @products = @products.order(:price => :asc)
    elsif params[:sort] == "price" && params[:sort_order] == "desc"
      @products = @products.order(price: :desc)
    else
      @products = @products.order(id: :asc)
    end

    render "index.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    id_number = params[:id]
    @product = Product.find_by(id: id_number)
    render "show.json.jb"
  end

  def update
    @product = Product.find_by(id: params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description

    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: { message: "item was deleted" }
  end
end
