Rails.application.routes.draw do
  namespace :api do
    get "/products" => "products#all_product"
    get "/individual_product" => "products#individual_product"
  end
end
