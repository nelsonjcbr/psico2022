require "test_helper"

class RelguiasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get relguias_index_url
    assert_response :success
  end
end
