class StoreController < ApplicationController
include CurrentCart
#skip_before_action :authorize
#before_action :set_cart

  def index

  	#Fetch all the products in the Front Page Category
  	@frontpage = Product.joins(:categories).where(:categories =>{:name => 'Front Page'})

  	@products = Product.order(:title)
  	@user = User.name

  end
end
