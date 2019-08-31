require 'test_helper'

class Rice2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rice2 = rice2s(:one)
  end

  test "should get index" do
    get rice2s_url
    assert_response :success
  end

  test "should get new" do
    get new_rice2_url
    assert_response :success
  end

  test "should create rice2" do
    assert_difference('Rice2.count') do
      post rice2s_url, params: { rice2: {  } }
    end

    assert_redirected_to rice2_url(Rice2.last)
  end

  test "should show rice2" do
    get rice2_url(@rice2)
    assert_response :success
  end

  test "should get edit" do
    get edit_rice2_url(@rice2)
    assert_response :success
  end

  test "should update rice2" do
    patch rice2_url(@rice2), params: { rice2: {  } }
    assert_redirected_to rice2_url(@rice2)
  end

  test "should destroy rice2" do
    assert_difference('Rice2.count', -1) do
      delete rice2_url(@rice2)
    end

    assert_redirected_to rice2s_url
  end
end
