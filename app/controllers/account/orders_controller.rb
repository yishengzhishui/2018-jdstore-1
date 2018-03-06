class Account::OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = curren_user.orders.order('id DESC')
  end
end
