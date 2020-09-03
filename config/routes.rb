Rails.application.routes.draw do
  namespace :api do
    get "/products" => "products#all_product"
    get "/product_path/:id" => "products#product_action"
    get "/product_path" => "products#product_action"
  end
end
