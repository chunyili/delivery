require 'test_helper'

class AdvisorsControllerTest < ActionController::TestCase
  setup do
    @advisor = advisors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advisors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advisor" do
    assert_difference('Advisor.count') do
      post :create, advisor: { i_ID: @advisor.i_ID, s_ID: @advisor.s_ID }
    end

    assert_redirected_to advisor_path(assigns(:advisor))
  end

  test "should show advisor" do
    get :show, id: @advisor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advisor
    assert_response :success
  end

  test "should update advisor" do
    patch :update, id: @advisor, advisor: { i_ID: @advisor.i_ID, s_ID: @advisor.s_ID }
    assert_redirected_to advisor_path(assigns(:advisor))
  end

  test "should destroy advisor" do
    assert_difference('Advisor.count', -1) do
      delete :destroy, id: @advisor
    end

    assert_redirected_to advisors_path
  end
end
