require "application_system_test_case"

class TweetiesTest < ApplicationSystemTestCase
  setup do
    @tweety = tweeties(:one)
  end

  test "visiting the index" do
    visit tweeties_url
    assert_selector "h1", text: "Tweeties"
  end

  test "creating a Tweety" do
    visit tweeties_url
    click_on "New Tweety"

    fill_in "Message", with: @tweety.message
    click_on "Create Tweety"

    assert_text "Tweety was successfully created"
    click_on "Back"
  end

  test "updating a Tweety" do
    visit tweeties_url
    click_on "Edit", match: :first

    fill_in "Message", with: @tweety.message
    click_on "Update Tweety"

    assert_text "Tweety was successfully updated"
    click_on "Back"
  end

  test "destroying a Tweety" do
    visit tweeties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tweety was successfully destroyed"
  end
end
