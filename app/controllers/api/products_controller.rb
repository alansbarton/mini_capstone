class Api::ProductsController < ApplicationController
  def all_product
    @product = Product.all
    render "all_product.json.jb"
  end

  def product_action
    id_number = params[:id]
    @idividual_product = Product.find_by(id: id_number.to_i)
    render "individual_product.json.jb"
  end
end
