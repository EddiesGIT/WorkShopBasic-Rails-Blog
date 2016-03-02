require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "should get sessions" do
    get :sessions
    assert_response :success
  end

end
