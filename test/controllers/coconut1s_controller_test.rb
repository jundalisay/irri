require 'test_helper'

class Coconut1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coconut1 = coconut1s(:one)
  end

  test "should get index" do
    get coconut1s_url
    assert_response :success
  end

  test "should get new" do
    get new_coconut1_url
    assert_response :success
  end

  test "should create coconut1" do
    assert_difference('Coconut1.count') do
      post coconut1s_url, params: { coconut1: {  } }
    end

    assert_redirected_to coconut1_url(Coconut1.last)
  end

  test "should show coconut1" do
    get coconut1_url(@coconut1)
    assert_response :success
  end

  test "should get edit" do
    get edit_coconut1_url(@coconut1)
    assert_response :success
  end

  test "should update coconut1" do
    patch coconut1_url(@coconut1), params: { coconut1: {  } }
    assert_redirected_to coconut1_url(@coconut1)
  end

  test "should destroy coconut1" do
    assert_difference('Coconut1.count', -1) do
      delete coconut1_url(@coconut1)
    end

    assert_redirected_to coconut1s_url
  end
end
