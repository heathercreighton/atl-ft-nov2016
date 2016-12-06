require 'test_helper'

class CountryControllerTest < ActionController::TestCase
  test "should get all_states" do
    get :all_states
    assert_response :success
  end

  test "should get top_five_pop" do
    get :top_five_pop
    assert_response :success
  end

  test "should get top_five_area" do
    get :top_five_area
    assert_response :success
  end

end
