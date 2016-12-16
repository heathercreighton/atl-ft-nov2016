require 'test_helper'

class CartControllerTest < ActionController::TestCase
  test "should get add_to_cart" do
    get :add_to_cart
    assert_response :success
  end

  test "should get view_order" do
    get :view_order
    assert_response :success
  end

  test "should get checkout" do
    get :checkout
    assert_response :success
  end

end
