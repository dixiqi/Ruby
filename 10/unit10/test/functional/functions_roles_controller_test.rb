require 'test_helper'

class FunctionsRolesControllerTest < ActionController::TestCase
  setup do
    @functions_role = functions_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:functions_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create functions_role" do
    assert_difference('FunctionsRole.count') do
      post :create, :functions_role => @functions_role.attributes
    end

    assert_redirected_to functions_role_path(assigns(:functions_role))
  end

  test "should show functions_role" do
    get :show, :id => @functions_role.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @functions_role.to_param
    assert_response :success
  end

  test "should update functions_role" do
    put :update, :id => @functions_role.to_param, :functions_role => @functions_role.attributes
    assert_redirected_to functions_role_path(assigns(:functions_role))
  end

  test "should destroy functions_role" do
    assert_difference('FunctionsRole.count', -1) do
      delete :destroy, :id => @functions_role.to_param
    end

    assert_redirected_to functions_roles_path
  end
end
