class VendorsController < ApplicationController

  def index
  end

  def new
    @vendor = Vendor.new
  end

  def create
    # raise params.inspect
    @vendor = Vendor.new(params.require(:vendor).permit(:name, :market_id))
    if @vendor.save
      redirect_to "/"
    else
      render :new #renders the new.html.erb again
    end
  end

end
