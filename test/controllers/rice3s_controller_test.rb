require 'test_helper'

class Rice3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rice3 = rice3s(:one)
  end

  test "should get index" do
    get rice3s_url
    assert_response :success
  end

  test "should get new" do
    get new_rice3_url
    assert_response :success
  end

  test "should create rice3" do
    assert_difference('Rice3.count') do
      post rice3s_url, params: { rice3: {  } }
    end

    assert_redirected_to rice3_url(Rice3.last)
  end

  test "should show rice3" do
    get rice3_url(@rice3)
    assert_response :success
  end

  test "should get edit" do
    get edit_rice3_url(@rice3)
    assert_response :success
  end

  test "should update rice3" do
    patch rice3_url(@rice3), params: { rice3: {  } }
    assert_redirected_to rice3_url(@rice3)
  end

  test "should destroy rice3" do
    assert_difference('Rice3.count', -1) do
      delete rice3_url(@rice3)
    end

    assert_redirected_to rice3s_url
  end
end
