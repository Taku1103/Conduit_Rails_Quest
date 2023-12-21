require "test_helper"

class ConduitControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get conduit_index_url
    assert_response :success
  end
end
