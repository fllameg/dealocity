require 'test_helper'

class DealocityCommentsControllerTest < ActionController::TestCase
  setup do
    @dealocity_comment = dealocity_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dealocity_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dealocity_comment" do
    assert_difference('DealocityComment.count') do
      post :create, dealocity_comment: { comment: @dealocity_comment.comment, person_name: @dealocity_comment.person_name, rating: @dealocity_comment.rating, store_name: @dealocity_comment.store_name }
    end

    assert_redirected_to dealocity_comment_path(assigns(:dealocity_comment))
  end

  test "should show dealocity_comment" do
    get :show, id: @dealocity_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dealocity_comment
    assert_response :success
  end

  test "should update dealocity_comment" do
    put :update, id: @dealocity_comment, dealocity_comment: { comment: @dealocity_comment.comment, person_name: @dealocity_comment.person_name, rating: @dealocity_comment.rating, store_name: @dealocity_comment.store_name }
    assert_redirected_to dealocity_comment_path(assigns(:dealocity_comment))
  end

  test "should destroy dealocity_comment" do
    assert_difference('DealocityComment.count', -1) do
      delete :destroy, id: @dealocity_comment
    end

    assert_redirected_to dealocity_comments_path
  end
end
