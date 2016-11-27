require 'test_helper'

class RegisterControllerTest < ActionDispatch::IntegrationTest
  test "should get registration" do
    get register_registration_url
    assert_response :success
  end

end
