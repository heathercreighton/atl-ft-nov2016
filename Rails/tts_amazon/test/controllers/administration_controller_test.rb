require 'test_helper'

class AdministrationControllerTest < ActionController::TestCase
  test "should get user_list" do
    get :user_list
    assert_response :success
  end

  test "should get add_admin" do
    get :add_admin
    assert_response :success
  end

  test "should get remove_admin" do
    get :remove_admin
    assert_response :success
  end

end
