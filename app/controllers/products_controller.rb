class ProductsController < ApplicationController
  def index
    @current_vendor = Vendor.find(session[:user_id])
  end

end
