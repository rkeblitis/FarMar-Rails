class ProductsController < ApplicationController
  def index
    if session[:user_id] != nil
      @current_vendor = Vendor.find(session[:user_id])
    end
  end


  def new
    @product = Product.new
  end


  def product_params
    params.require(:product).permit(:name, :price)
  end


  def add_product
    # raise params.inspect
    # product  has vendor id
    # add @product to current vendor
    @current_vendor = Vendor.find(session[:user_id])
    @product = Product.new(product_params)
    @product.save
    @product.update vendor_id: @current_vendor.id
    redirect_to "/products"

  end
end
