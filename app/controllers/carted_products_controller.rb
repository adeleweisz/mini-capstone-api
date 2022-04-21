class CartedProductsController < ApplicationController

  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
      order_id: nil 
    )
    carted_product.save
    render json: carted_product
  else 
    render json: {error_message:carted_products.errors.full.messages},
  end
  end
 
  def index
    carted_products = current_user.carted_products.where(status: "carted")
    render json: all_carted_products
  end

end
