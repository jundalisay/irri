require "application_system_test_case"

class Rice1sTest < ApplicationSystemTestCase
  setup do
    @rice1 = rice1s(:one)
  end

  test "visiting the index" do
    visit rice1s_url
    assert_selector "h1", text: "Rice1s"
  end

  test "creating a Rice1" do
    visit rice1s_url
    click_on "New Rice1"

    click_on "Create Rice1"

    assert_text "Rice1 was successfully created"
    click_on "Back"
  end

  test "updating a Rice1" do
    visit rice1s_url
    click_on "Edit", match: :first

    click_on "Update Rice1"

    assert_text "Rice1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Rice1" do
    visit rice1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rice1 was successfully destroyed"
  end
end
