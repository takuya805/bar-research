require 'test_helper'

class Owner::ShopsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get owner_shops_new_url
    assert_response :success
  end

  test "should get create" do
    get owner_shops_create_url
    assert_response :success
  end

  test "should get edit" do
    get owner_shops_edit_url
    assert_response :success
  end

  test "should get update" do
    get owner_shops_update_url
    assert_response :success
  end

  test "should get exit" do
    get owner_shops_exit_url
    assert_response :success
  end

end
