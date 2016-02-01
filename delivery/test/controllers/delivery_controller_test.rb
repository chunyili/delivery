require 'test_helper'

class DeliveryControllerTest < ActionController::TestCase
  test "should get homepage" do
    get :homepage
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get ship" do
    get :ship
    assert_response :success
  end

  test "should get Tracking" do
    get :Tracking
    assert_response :success
  end

  test "should get about_us" do
    get :about_us
    assert_response :success
  end

end
