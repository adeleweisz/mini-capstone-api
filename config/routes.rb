Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # products
  get "/one_product" => "products#one_product_method"

  get "/products" => "products#index"

  post "/products" => "products#create"

  get "/products/:id" => "products#show"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"
   
  get "/second_product/:name" => "products#second_product_method"
# users
  post "/users" => "users#create"
# sessions 
  post "/sessions" => "sessions#create"

#orders
get "/orders" => "orders#index"

post "/orders" => "orders#create"

get "orders/:id" => "orders#show"

#carted products

post "/carted_products" => "carted_products#create"

get "/carted_products" => "carted_products#index"



end
