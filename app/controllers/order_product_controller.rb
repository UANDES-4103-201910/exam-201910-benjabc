class OrderProductController < ApplicationController
  def create
  	@order = current_order
  	@order_product =@order.order_product.new(order_product_params)
  	@order.save
  	session[:order_id] = @order.id
  end

  def update
  	@order = current_order
  	@order_product = @order.order_product.find(params[:id])
  	@order_product.update_attributes(order_product_params)
  	@order_product = @order.order_product
  end

  def destroy
  	@order = current_order
  	@order_product = @order.order_product.find(params[:id])
  	@order_product.destroy
  	@order_product = @order.order_product
  end

  private
  def order_product_params
    params.require(:order_product).permit(:user_id, :product_id)
  end
end
