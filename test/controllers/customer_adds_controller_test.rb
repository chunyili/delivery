require 'test_helper'

class CustomerAddsControllerTest < ActionController::TestCase
  setup do
    @customer_add = customer_adds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_adds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_add" do
    assert_difference('CustomerAdd.count') do
      post :create, customer_add: { c_id: @customer_add.c_id, city: @customer_add.city, country: @customer_add.country, state: @customer_add.state, street: @customer_add.street, zipcode: @customer_add.zipcode }
    end

    assert_redirected_to customer_add_path(assigns(:customer_add))
  end

  test "should show customer_add" do
    get :show, id: @customer_add
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_add
    assert_response :success
  end

  test "should update customer_add" do
    patch :update, id: @customer_add, customer_add: { c_id: @customer_add.c_id, city: @customer_add.city, country: @customer_add.country, state: @customer_add.state, street: @customer_add.street, zipcode: @customer_add.zipcode }
    assert_redirected_to customer_add_path(assigns(:customer_add))
  end

  test "should destroy customer_add" do
    assert_difference('CustomerAdd.count', -1) do
      delete :destroy, id: @customer_add
    end

    assert_redirected_to customer_adds_path
  end
end
