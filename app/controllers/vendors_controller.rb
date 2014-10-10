class VendorsController < ApplicationController

  def index
  end

  def new
    @vendor = Vendor.new
  end

  def create
    # raise params.inspect
    if (params[:vendor][:market_id] == nil || params[:vendor][:market_id] == "")
      redirect_to "/markets/new"
    else
      @vendor = Vendor.new(params.require(:vendor).permit(:name, :market_id))

      if @vendor.save
        redirect_to "/"
      else
        render :new #renders the new.html.erb again
      end
    end
  end

end
