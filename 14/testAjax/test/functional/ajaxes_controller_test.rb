require 'test_helper'

class AjaxesControllerTest < ActionController::TestCase
  setup do
    @ajaxis = ajaxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ajaxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ajaxis" do
    assert_difference('Ajax.count') do
      post :create, :ajaxis => @ajaxis.attributes
    end

    assert_redirected_to ajaxis_path(assigns(:ajaxis))
  end

  test "should show ajaxis" do
    get :show, :id => @ajaxis.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ajaxis.to_param
    assert_response :success
  end

  test "should update ajaxis" do
    put :update, :id => @ajaxis.to_param, :ajaxis => @ajaxis.attributes
    assert_redirected_to ajaxis_path(assigns(:ajaxis))
  end

  test "should destroy ajaxis" do
    assert_difference('Ajax.count', -1) do
      delete :destroy, :id => @ajaxis.to_param
    end

    assert_redirected_to ajaxes_path
  end
end
