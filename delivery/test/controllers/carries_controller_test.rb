require 'test_helper'

class CarriesControllerTest < ActionController::TestCase
  setup do
    @carry = carries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carry" do
    assert_difference('Carry.count') do
      post :create, carry: { ins_id: @carry.ins_id, pkg_id: @carry.pkg_id, rut_id: @carry.rut_id }
    end

    assert_redirected_to carry_path(assigns(:carry))
  end

  test "should show carry" do
    get :show, id: @carry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @carry
    assert_response :success
  end

  test "should update carry" do
    patch :update, id: @carry, carry: { ins_id: @carry.ins_id, pkg_id: @carry.pkg_id, rut_id: @carry.rut_id }
    assert_redirected_to carry_path(assigns(:carry))
  end

  test "should destroy carry" do
    assert_difference('Carry.count', -1) do
      delete :destroy, id: @carry
    end

    assert_redirected_to carries_path
  end
end
