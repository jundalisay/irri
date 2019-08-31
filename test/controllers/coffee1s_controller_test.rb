require 'test_helper'

class Coffee1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coffee1 = coffee1s(:one)
  end

  test "should get index" do
    get coffee1s_url
    assert_response :success
  end

  test "should get new" do
    get new_coffee1_url
    assert_response :success
  end

  test "should create coffee1" do
    assert_difference('Coffee1.count') do
      post coffee1s_url, params: { coffee1: {  } }
    end

    assert_redirected_to coffee1_url(Coffee1.last)
  end

  test "should show coffee1" do
    get coffee1_url(@coffee1)
    assert_response :success
  end

  test "should get edit" do
    get edit_coffee1_url(@coffee1)
    assert_response :success
  end

  test "should update coffee1" do
    patch coffee1_url(@coffee1), params: { coffee1: {  } }
    assert_redirected_to coffee1_url(@coffee1)
  end

  test "should destroy coffee1" do
    assert_difference('Coffee1.count', -1) do
      delete coffee1_url(@coffee1)
    end

    assert_redirected_to coffee1s_url
  end
end
