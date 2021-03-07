require 'test_helper'

class User::PlansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_plans_index_url
    assert_response :success
  end

  test "should get show" do
    get user_plans_show_url
    assert_response :success
  end

  test "should get create" do
    get user_plans_create_url
    assert_response :success
  end

  test "should get destroy" do
    get user_plans_destroy_url
    assert_response :success
  end

end
