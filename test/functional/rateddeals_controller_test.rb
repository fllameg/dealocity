require 'test_helper'

class RateddealsControllerTest < ActionController::TestCase
  setup do
    @rateddeal = rateddeals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rateddeals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rateddeal" do
    assert_difference('Rateddeal.count') do
      post :create, rateddeal: { day: @rateddeal.day, deal_name: @rateddeal.deal_name, is_bar: @rateddeal.is_bar, location: @rateddeal.location, price: @rateddeal.price, store_name: @rateddeal.store_name, thumbs_up: @rateddeal.thumbs_up }
    end

    assert_redirected_to rateddeal_path(assigns(:rateddeal))
  end

  test "should show rateddeal" do
    get :show, id: @rateddeal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rateddeal
    assert_response :success
  end

  test "should update rateddeal" do
    put :update, id: @rateddeal, rateddeal: { day: @rateddeal.day, deal_name: @rateddeal.deal_name, is_bar: @rateddeal.is_bar, location: @rateddeal.location, price: @rateddeal.price, store_name: @rateddeal.store_name, thumbs_up: @rateddeal.thumbs_up }
    assert_redirected_to rateddeal_path(assigns(:rateddeal))
  end

  test "should destroy rateddeal" do
    assert_difference('Rateddeal.count', -1) do
      delete :destroy, id: @rateddeal
    end

    assert_redirected_to rateddeals_path
  end
end
