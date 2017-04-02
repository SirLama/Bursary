require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get signup_url
    assert_response :success
  end
  test "should redirect index when not logged in" do
    get :index
    redirect_to login_path
  end
end
