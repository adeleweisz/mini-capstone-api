class OrdersController < ApplicationController
  # before_action :authenticate_user
  
  def create
    product = Product.find_by(id: params[:product_id])
    puts "#{product}"
    calculated_subtotal = product.price * params[:quantity] 
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    order = Order.new(
    user_id: current_user.id,
    subtotal: calculated_subtotal,
    tax: calculated_tax,
    total: calculated_total
    )

    if order.save
    render json: order
    else  
      render json:{error_message: order.errors.full_messages},status: 422
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