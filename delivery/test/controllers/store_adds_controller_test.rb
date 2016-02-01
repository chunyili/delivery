require 'test_helper'

class StoreAddsControllerTest < ActionController::TestCase
  setup do
    @store_add = store_adds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:store_adds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create store_add" do
    assert_difference('StoreAdd.count') do
      post :create, store_add: { city: @store_add.city, country: @store_add.country, s_id: @store_add.s_id, state: @store_add.state, street: @store_add.street, timezone: @store_add.timezone, zipcode: @store_add.zipcode }
    end

    assert_redirected_to store_add_path(assigns(:store_add))
  end

  test "should show store_add" do
    get :show, id: @store_add
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @store_add
    assert_response :success
  end

  test "should update store_add" do
    patch :update, id: @store_add, store_add: { city: @store_add.city, country: @store_add.country, s_id: @store_add.s_id, state: @store_add.state, street: @store_add.street, timezone: @store_add.timezone, zipcode: @store_add.zipcode }
    assert_redirected_to store_add_path(assigns(:store_add))
  end

  test "should destroy store_add" do
    assert_difference('StoreAdd.count', -1) do
      delete :destroy, id: @store_add
    end

    assert_redirected_to store_adds_path
  end
end
