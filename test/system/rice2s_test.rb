require "application_system_test_case"

class Rice2sTest < ApplicationSystemTestCase
  setup do
    @rice2 = rice2s(:one)
  end

  test "visiting the index" do
    visit rice2s_url
    assert_selector "h1", text: "Rice2s"
  end

  test "creating a Rice2" do
    visit rice2s_url
    click_on "New Rice2"

    click_on "Create Rice2"

    assert_text "Rice2 was successfully created"
    click_on "Back"
  end

  test "updating a Rice2" do
    visit rice2s_url
    click_on "Edit", match: :first

    click_on "Update Rice2"

    assert_text "Rice2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Rice2" do
    visit rice2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rice2 was successfully destroyed"
  end
end
