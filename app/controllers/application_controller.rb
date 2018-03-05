class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def admin_required
    redirect_to '/', alert: 'You have no permission' unless current_user.admin?
  end

  # 声明是helper，可以在view中使用
  helper_method :current_cart

  def current_cart
    @current_cart ||= find_cart
  end

  private

  def find_cart
    cart = Cart.find_by(id: session[:cart_id])
    cart = Cart.create if cart.blank?
    session[:cart_id] = cart.id
    cart
  end
end
