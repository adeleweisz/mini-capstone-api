class OrdersController < ApplicationController

  def create 
    pp current_user
    order = Order.new(
    user_id: current_user.id,
    product_id: params["product_id"],
    quantity: params["quantity"],
    subtotal: params["subtotal"],
    tax: params["tax"],
    total: params["total"]
    )
    if order.save
    render json: order
    else  
      render json:{error_message: order.errors.full.messages},status: 422
    end
  end 

  def show 
    order = Order.find_by(id:params["id"])
    render json: order
  end   

  def index
    orders = Order.all
    render json: orders
    pp current_user
  end 
end  