require 'test_helper'

class TovarControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tovar_index_url
    assert_response :success
  end

end
