require 'test_helper'

class MealCardsControllerTest < ActionController::TestCase
  setup do
    @meal_card = meal_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meal_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meal_card" do
    assert_difference('MealCard.count') do
      post :create, :meal_card => @meal_card.attributes
    end

    assert_redirected_to meal_card_path(assigns(:meal_card))
  end

  test "should show meal_card" do
    get :show, :id => @meal_card.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @meal_card.to_param
    assert_response :success
  end

  test "should update meal_card" do
    put :update, :id => @meal_card.to_param, :meal_card => @meal_card.attributes
    assert_redirected_to meal_card_path(assigns(:meal_card))
  end

  test "should destroy meal_card" do
    assert_difference('MealCard.count', -1) do
      delete :destroy, :id => @meal_card.to_param
    end

    assert_redirected_to meal_cards_path
  end
end
