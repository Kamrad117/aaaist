require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get actions" do
    get :actions
    assert_response :success
  end

  test "should get thanks" do
    get :thanks
    assert_response :success
  end

end
