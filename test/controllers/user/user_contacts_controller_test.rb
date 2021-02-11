require 'test_helper'

class User::UserContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_user_contacts_create_url
    assert_response :success
  end
end
