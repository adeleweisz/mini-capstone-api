class ProductsController < ApplicationController

  get "/one_product" controller: "products" action: "one_product_method"

  get "/all_products" controller: "products" action: "all_products_method"
  
end


