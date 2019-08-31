require 'test_helper'

class Rice1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rice1 = rice1s(:one)
  end

  test "should get index" do
    get rice1s_url
    assert_response :success
  end

  test "should get new" do
    get new_rice1_url
    assert_response :success
  end

  test "should create rice1" do
    assert_difference('Rice1.count') do
      post rice1s_url, params: { rice1: {  } }
    end

    assert_redirected_to rice1_url(Rice1.last)
  end

  test "should show rice1" do
    get rice1_url(@rice1)
    assert_response :success
  end

  test "should get edit" do
    get edit_rice1_url(@rice1)
    assert_response :success
  end

  test "should update rice1" do
    patch rice1_url(@rice1), params: { rice1: {  } }
    assert_redirected_to rice1_url(@rice1)
  end

  test "should destroy rice1" do
    assert_difference('Rice1.count', -1) do
      delete rice1_url(@rice1)
    end

    assert_redirected_to rice1s_url
  end
end
