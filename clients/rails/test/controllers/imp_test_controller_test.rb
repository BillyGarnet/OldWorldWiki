require 'test_helper'

class ImpTestControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get imp_test_index_url
    assert_response :success
  end

end
