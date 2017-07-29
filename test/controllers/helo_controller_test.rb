require 'test_helper'

class HeloControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get add" do
    get :add
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get dell" do
    get :dell
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

end
