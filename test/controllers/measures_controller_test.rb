require "test_helper"

class MeasuresControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get measures_new_url
    assert_response :success
  end

  test "should get create" do
    get measures_create_url
    assert_response :success
  end
end
