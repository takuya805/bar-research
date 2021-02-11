require 'test_helper'

class Owner::HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get owner_homes_top_url
    assert_response :success
  end

  test "should get about" do
    get owner_homes_about_url
    assert_response :success
  end
end
