Rails.application.routes.draw do
  namespace :api do
    get "/products" => "products#all_product"
    get "/individual_product_path" => "products#individual_product_action"
  end
end
