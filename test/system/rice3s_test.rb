require "application_system_test_case"

class Rice3sTest < ApplicationSystemTestCase
  setup do
    @rice3 = rice3s(:one)
  end

  test "visiting the index" do
    visit rice3s_url
    assert_selector "h1", text: "Rice3s"
  end

  test "creating a Rice3" do
    visit rice3s_url
    click_on "New Rice3"

    click_on "Create Rice3"

    assert_text "Rice3 was successfully created"
    click_on "Back"
  end

  test "updating a Rice3" do
    visit rice3s_url
    click_on "Edit", match: :first

    click_on "Update Rice3"

    assert_text "Rice3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Rice3" do
    visit rice3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rice3 was successfully destroyed"
  end
end
