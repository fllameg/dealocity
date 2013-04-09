require 'test_helper'

class V2dealocityDealsControllerTest < ActionController::TestCase
  setup do
    @v2dealocity_deal = v2dealocity_deals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:v2dealocity_deals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create v2dealocity_deal" do
    assert_difference('V2dealocityDeal.count') do
      post :create, v2dealocity_deal: { address: @v2dealocity_deal.address, city: @v2dealocity_deal.city, deal_description: @v2dealocity_deal.deal_description, is_bar: @v2dealocity_deal.is_bar, phone: @v2dealocity_deal.phone, store_name: @v2dealocity_deal.store_name }
    end

    assert_redirected_to v2dealocity_deal_path(assigns(:v2dealocity_deal))
  end

  test "should show v2dealocity_deal" do
    get :show, id: @v2dealocity_deal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @v2dealocity_deal
    assert_response :success
  end

  test "should update v2dealocity_deal" do
    put :update, id: @v2dealocity_deal, v2dealocity_deal: { address: @v2dealocity_deal.address, city: @v2dealocity_deal.city, deal_description: @v2dealocity_deal.deal_description, is_bar: @v2dealocity_deal.is_bar, phone: @v2dealocity_deal.phone, store_name: @v2dealocity_deal.store_name }
    assert_redirected_to v2dealocity_deal_path(assigns(:v2dealocity_deal))
  end

  test "should destroy v2dealocity_deal" do
    assert_difference('V2dealocityDeal.count', -1) do
      delete :destroy, id: @v2dealocity_deal
    end

    assert_redirected_to v2dealocity_deals_path
  end
end
