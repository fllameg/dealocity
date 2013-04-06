require 'test_helper'

class HerokusControllerTest < ActionController::TestCase
  setup do
    @heroku = herokus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:herokus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create heroku" do
    assert_difference('Heroku.count') do
      post :create, heroku: { logs: @heroku.logs }
    end

    assert_redirected_to heroku_path(assigns(:heroku))
  end

  test "should show heroku" do
    get :show, id: @heroku
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @heroku
    assert_response :success
  end

  test "should update heroku" do
    put :update, id: @heroku, heroku: { logs: @heroku.logs }
    assert_redirected_to heroku_path(assigns(:heroku))
  end

  test "should destroy heroku" do
    assert_difference('Heroku.count', -1) do
      delete :destroy, id: @heroku
    end

    assert_redirected_to herokus_path
  end
end
