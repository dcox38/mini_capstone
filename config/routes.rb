Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/one_product" => "products#single_product"

    get "/all_products" => "products#every_product"

    get "/mypage/:param" => "products#billy"

  end
end
