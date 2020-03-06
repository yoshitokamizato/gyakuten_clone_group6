require 'test_helper'

class PhpLecturesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get php_lectures_index_url
    assert_response :success
  end

end
