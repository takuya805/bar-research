require 'test_helper'

class Owner::OwnerContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get owner_owner_contacts_create_url
    assert_response :success
  end
end
