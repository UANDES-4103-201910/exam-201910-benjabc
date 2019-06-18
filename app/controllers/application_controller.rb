class ApplicationController < ActionController::Base
  helper_method :current_order
  def after_sign_in_path_for(resource)
  current_user
	end
  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
end
end
