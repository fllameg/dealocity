require 'test_helper'

class ListOfDealsControllerTest < ActionController::TestCase
  setup do
    @list_of_deal = list_of_deals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:list_of_deals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create list_of_deal" do
    assert_difference('ListOfDeal.count') do
      post :create, list_of_deal: { address: @list_of_deal.address, city: @list_of_deal.city, day: @list_of_deal.day, deal_name: @list_of_deal.deal_name, is_bar: @list_of_deal.is_bar, price: @list_of_deal.price, store_name: @list_of_deal.store_name, thumbs_up: @list_of_deal.thumbs_up }
    end

    assert_redirected_to list_of_deal_path(assigns(:list_of_deal))
  end

  test "should show list_of_deal" do
    get :show, id: @list_of_deal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @list_of_deal
    assert_response :success
  end

  test "should update list_of_deal" do
    put :update, id: @list_of_deal, list_of_deal: { address: @list_of_deal.address, city: @list_of_deal.city, day: @list_of_deal.day, deal_name: @list_of_deal.deal_name, is_bar: @list_of_deal.is_bar, price: @list_of_deal.price, store_name: @list_of_deal.store_name, thumbs_up: @list_of_deal.thumbs_up }
    assert_redirected_to list_of_deal_path(assigns(:list_of_deal))
  end

  test "should destroy list_of_deal" do
    assert_difference('ListOfDeal.count', -1) do
      delete :destroy, id: @list_of_deal
    end

    assert_redirected_to list_of_deals_path
  end
end
