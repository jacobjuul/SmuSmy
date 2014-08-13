class StoreController < ApplicationController
include CurrentCart
#skip_before_action :authorize
before_action :set_cart

  def index

  	@frontpage = Category.find(9).products

  	@products = Product.order(:title)
  	@user = User.name

  end
end
