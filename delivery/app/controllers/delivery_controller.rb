class DeliveryController < ApplicationController
<<<<<<< HEAD

=======
  rescue_from ActiveRecord::RecordNotFound do

    redirect_to :controller => 'delivery', action: "cannotfind"
  end
>>>>>>> a626c4b3984e3f743c082374be6e7cf5b2ba95c4
  def homepage
  end

  def login
    @user_id = params["User ID"]
    @password = params["Password"]
    @remember_me = params["Remember Me"] == "Remember Me"
  end

<<<<<<< HEAD
  def ship
=======
  def store
    @zipcode = Zipcode.find( params[:zipcode])
    redirect_to :controller => 'zipcodes', action: "show", :id => @zipcode[0].zipcode
>>>>>>> a626c4b3984e3f743c082374be6e7cf5b2ba95c4
  end

  def Tracking
    @package = Package.find(params[:package_id])
    redirect_to :controller => 'packages', action: "show", :id => @package[0].package_id
  end

  def about_us
  end

end
