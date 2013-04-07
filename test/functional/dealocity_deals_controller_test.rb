require 'test_helper'

class DealocityDealsControllerTest < ActionController::TestCase
  setup do
    @dealocity_deal = dealocity_deals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dealocity_deals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dealocity_deal" do
    assert_difference('DealocityDeal.count') do
      post :create, dealocity_deal: { address: @dealocity_deal.address, city: @dealocity_deal.city, deal_description: @dealocity_deal.deal_description, is_bar: @dealocity_deal.is_bar, phone: @dealocity_deal.phone, price: @dealocity_deal.price, rank: @dealocity_deal.rank, store_name: @dealocity_deal.store_name }
    end

    assert_redirected_to dealocity_deal_path(assigns(:dealocity_deal))
  end

  test "should show dealocity_deal" do
    get :show, id: @dealocity_deal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dealocity_deal
    assert_response :success
  end

  test "should update dealocity_deal" do
    put :update, id: @dealocity_deal, dealocity_deal: { address: @dealocity_deal.address, city: @dealocity_deal.city, deal_description: @dealocity_deal.deal_description, is_bar: @dealocity_deal.is_bar, phone: @dealocity_deal.phone, price: @dealocity_deal.price, rank: @dealocity_deal.rank, store_name: @dealocity_deal.store_name }
    assert_redirected_to dealocity_deal_path(assigns(:dealocity_deal))
  end

  test "should destroy dealocity_deal" do
    assert_difference('DealocityDeal.count', -1) do
      delete :destroy, id: @dealocity_deal
    end

    assert_redirected_to dealocity_deals_path
  end
end
