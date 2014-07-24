class AdminController < ApplicationController
  def index
  	@total_orders = Order.count
  	@orders = Order.all
  	
  end
end
