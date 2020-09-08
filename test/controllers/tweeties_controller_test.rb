require 'test_helper'

class TweetiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweety = tweeties(:one)
  end

  test "should get index" do
    get tweeties_url
    assert_response :success
  end

  test "should get new" do
    get new_tweety_url
    assert_response :success
  end

  test "should create tweety" do
    assert_difference('Tweety.count') do
      post tweeties_url, params: { tweety: { message: @tweety.message } }
    end

    assert_redirected_to tweety_url(Tweety.last)
  end

  test "should show tweety" do
    get tweety_url(@tweety)
    assert_response :success
  end

  test "should get edit" do
    get edit_tweety_url(@tweety)
    assert_response :success
  end

  test "should update tweety" do
    patch tweety_url(@tweety), params: { tweety: { message: @tweety.message } }
    assert_redirected_to tweety_url(@tweety)
  end

  test "should destroy tweety" do
    assert_difference('Tweety.count', -1) do
      delete tweety_url(@tweety)
    end

    assert_redirected_to tweeties_url
  end
end
