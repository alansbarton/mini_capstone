class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    carted_products = current_user.carted_products.where(status: "carted")
    subtotal = 0
    tax = 0
    carted_products.each do |carted_product|
      subtotal += carted_product.quantity * carted_product.product.price
      subtotal += carted_product.quantity * carted_product.product.tax
    end
    total = subtotal + tax

    @order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total,
    )

    if @order.save
      carted_products.each do |carted_product|
        carted_product.status = "purchased"
        carted_product.order_id = @order.id
        carted_product.save
      end
      render "show.json.jb"
    else
      render json: { errors: @order.errors.full_message }
    end
  end

  def index
    @orders = current_user.orders
    render "index.json.jb"
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render "show.json.jb"
  end
end
