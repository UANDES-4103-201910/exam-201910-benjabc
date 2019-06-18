class CartController < ApplicationController
	def show
		@order_product = current_order.order_product
	end
end
