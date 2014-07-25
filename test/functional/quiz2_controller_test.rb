require 'test_helper'

class Quiz2ControllerTest < ActionController::TestCase
  test "should get geography_2" do
    get :geography_2
    assert_response :success
  end

end
