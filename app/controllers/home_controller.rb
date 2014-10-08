class HomeController < ApplicationController

  def login
    raise.params.inspect


    # find vendor in the database
      # itterate over vendor datbase with find by parms of the login
    # session

    Vendor.find_by(name: params[:login][:vendor_name])


  end


  def index


  end

end
