class Api::ProductsController < ApplicationController
  def all_product
    @product = Product.all
    render "all_product.json.jb"
  end

  def individual_product_action
    @idividual_product = Product.first
    render "individual_product.json.jb"
  end
end
