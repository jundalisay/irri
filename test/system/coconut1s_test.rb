require "application_system_test_case"

class Coconut1sTest < ApplicationSystemTestCase
  setup do
    @coconut1 = coconut1s(:one)
  end

  test "visiting the index" do
    visit coconut1s_url
    assert_selector "h1", text: "Coconut1s"
  end

  test "creating a Coconut1" do
    visit coconut1s_url
    click_on "New Coconut1"

    click_on "Create Coconut1"

    assert_text "Coconut1 was successfully created"
    click_on "Back"
  end

  test "updating a Coconut1" do
    visit coconut1s_url
    click_on "Edit", match: :first

    click_on "Update Coconut1"

    assert_text "Coconut1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Coconut1" do
    visit coconut1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coconut1 was successfully destroyed"
  end
end
