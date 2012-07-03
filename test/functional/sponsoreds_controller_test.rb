require 'test_helper'

class SponsoredsControllerTest < ActionController::TestCase
  setup do
    @sponsored = sponsoreds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sponsoreds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sponsored" do
    assert_difference('Sponsored.count') do
      post :create, sponsored: @sponsored.attributes
    end

    assert_redirected_to sponsored_path(assigns(:sponsored))
  end

  test "should show sponsored" do
    get :show, id: @sponsored
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sponsored
    assert_response :success
  end

  test "should update sponsored" do
    put :update, id: @sponsored, sponsored: @sponsored.attributes
    assert_redirected_to sponsored_path(assigns(:sponsored))
  end

  test "should destroy sponsored" do
    assert_difference('Sponsored.count', -1) do
      delete :destroy, id: @sponsored
    end

    assert_redirected_to sponsoreds_path
  end
end
