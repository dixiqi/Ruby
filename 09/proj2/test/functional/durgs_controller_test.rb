require 'test_helper'

class DurgsControllerTest < ActionController::TestCase
  setup do
    @durg = durgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:durgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create durg" do
    assert_difference('Durg.count') do
      post :create, :durg => @durg.attributes
    end

    assert_redirected_to durg_path(assigns(:durg))
  end

  test "should show durg" do
    get :show, :id => @durg.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @durg.to_param
    assert_response :success
  end

  test "should update durg" do
    put :update, :id => @durg.to_param, :durg => @durg.attributes
    assert_redirected_to durg_path(assigns(:durg))
  end

  test "should destroy durg" do
    assert_difference('Durg.count', -1) do
      delete :destroy, :id => @durg.to_param
    end

    assert_redirected_to durgs_path
  end
end
