class MarketsController < ApplicationController
  def index
    @markets = Market.all
  end

  def new
    @market = Market.new
  end

  def create
    @market = Market.new(params.require(:market).permit(:name))

    if @market.save
      redirect_to "/vendors/new"
    else
      render :new #renders the new.html.erb again
    end
  end


end
