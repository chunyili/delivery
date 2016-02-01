class DeliveryController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound do

    redirect_to :controller => 'delivery', action: "cannotfind"
  end
  def homepage
  end

  def login
    @user_id = params["User ID"]
    @password = params["Password"]
    @remember_me = params["Remember Me"] == "Remember Me"
  end

  def store
    @zipcode = Zipcode.find( params[:zipcode])
    redirect_to :controller => 'zipcodes', action: "show", :id => @zipcode[0].zipcode
  end

  def Tracking
    @package = Package.find(params[:package_id])
    redirect_to :controller => 'packages', action: "show", :id => @package[0].package_id
  end

  def about_us
  end


end
