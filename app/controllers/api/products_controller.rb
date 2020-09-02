class Api::ProductsController < ApplicationController
  def all_product
    @product = Product.all
    render "all_product.json.jb"
  end

  def idividual_product
    @idividual_product = Product.first
    render "individual_product.json.jb"
  end
end
