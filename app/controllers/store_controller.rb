class StoreController < ApplicationController
  include CurrentCart
  before_filter :set_cart
  skip_before_action :authorize
  
  def index
    @products = Product.order(:title)
  end
  
end
