class HomeController < ApplicationController

  def login

  end

  def signup
    @vendor = Vendor.new
  end

  def create
    # raise params.inspect
    # @post = Post.new(title: params[:title], content: params[:content])
    @vendor = Vendor.new(params.require(:vendor).permit(:name, :market_id))
    if @vendor.save
      redirect_to root_path
    else
      render :signup #renders the new.html.erb again
    end
  end

end
