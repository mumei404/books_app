require 'test_helper'

class PublishersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get publishers_new_url
    assert_response :success
  end

end
