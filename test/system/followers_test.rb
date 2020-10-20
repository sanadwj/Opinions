require "application_system_test_case"

class FollowersTest < ApplicationSystemTestCase
  setup do
    @follower = followers(:one)
  end

  test "visiting the index" do
    visit followers_url
    assert_selector "h1", text: "Followers"
  end

  test "creating a Follower" do
    visit followers_url
    click_on "New Follower"

    check "Confirmed" if @follower.confirmed
    fill_in "Follower", with: @follower.follower_id
    fill_in "User", with: @follower.user_id
    click_on "Create Follower"

    assert_text "Follower was successfully created"
    click_on "Back"
  end

  test "updating a Follower" do
    visit followers_url
    click_on "Edit", match: :first

    check "Confirmed" if @follower.confirmed
    fill_in "Follower", with: @follower.follower_id
    fill_in "User", with: @follower.user_id
    click_on "Update Follower"

    assert_text "Follower was successfully updated"
    click_on "Back"
  end

  test "destroying a Follower" do
    visit followers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Follower was successfully destroyed"
  end
end
