require 'test_helper'

class ExampleControllerTest < ActionDispatch::IntegrationTest
  test "should get test1" do
    get example_test1_url
    assert_response :success
  end

  test "should get test2" do
    get example_test2_url
    assert_response :success
  end

  test "should get test3" do
    get example_test3_url
    assert_response :success
  end

end
