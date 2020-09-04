class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def show
    id_number = params[:id]
    @product = Product.find_by(id: id_number)
    render "show.json.jb"
  end
end
