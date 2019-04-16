require 'test_helper'

class VipsControllerTest < ActionController::TestCase
  setup do
    @vip = vips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vip" do
    assert_difference('Vip.count') do
      post :create, :vip => @vip.attributes
    end

    assert_redirected_to vip_path(assigns(:vip))
  end

  test "should show vip" do
    get :show, :id => @vip.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @vip.to_param
    assert_response :success
  end

  test "should update vip" do
    put :update, :id => @vip.to_param, :vip => @vip.attributes
    assert_redirected_to vip_path(assigns(:vip))
  end

  test "should destroy vip" do
    assert_difference('Vip.count', -1) do
      delete :destroy, :id => @vip.to_param
    end

    assert_redirected_to vips_path
  end
end
