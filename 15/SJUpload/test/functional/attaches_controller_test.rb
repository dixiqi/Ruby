require 'test_helper'

class AttachesControllerTest < ActionController::TestCase
  setup do
    @attach = attaches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attaches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attach" do
    assert_difference('Attache.count') do
      post :create, :attach => @attach.attributes
    end

    assert_redirected_to attach_path(assigns(:attach))
  end

  test "should show attach" do
    get :show, :id => @attach.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @attach.to_param
    assert_response :success
  end

  test "should update attach" do
    put :update, :id => @attach.to_param, :attach => @attach.attributes
    assert_redirected_to attach_path(assigns(:attach))
  end

  test "should destroy attach" do
    assert_difference('Attache.count', -1) do
      delete :destroy, :id => @attach.to_param
    end

    assert_redirected_to attaches_path
  end
end
