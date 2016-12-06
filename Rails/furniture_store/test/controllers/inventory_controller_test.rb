require 'test_helper'

class InventoryControllerTest < ActionController::TestCase
  test "should get all_products" do
    get :all_products
    assert_response :success
  end

  test "should get one_product" do
    get :one_product
    assert_response :success
  end

  test "should get by_category" do
    get :by_category
    assert_response :success
  end

end
