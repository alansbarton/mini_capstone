class Api::ProductsController < ApplicationController
  def all_product
    @product = Product.all
    render "all_product.json.jb"
  end
end
