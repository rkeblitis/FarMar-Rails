class HomeController < ApplicationController

  def login
    # raise params.inspect
    # find vendor in the database
      # itterate over vendor datbase with find by parms of the login
    # session
    if Vendor.find_by(name: params[:login][:vendor_name])
      session[:user_id] = Vendor.find_by(name: params[:login][:vendor_name]).id
      @current_vendor = Vendor.find(session[:user_id])
      render :index
    else
      render :index
    end

  end


  def index
  end

  def logout
    session[:user_id] = nil
    render :index
  end


end
