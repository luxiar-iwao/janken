require "test_helper"

class JankenControllerTest < ActionDispatch::IntegrationTest
  test "should get select" do
    get janken_select_url
    assert_response :success
  end

  test "should get result" do
    get janken_result_url
    assert_response :success
  end

  test "should get history" do
    get janken_history_url
    assert_response :success
  end
end
