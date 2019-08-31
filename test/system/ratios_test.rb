require "application_system_test_case"

class RatiosTest < ApplicationSystemTestCase
  setup do
    @ratio = ratios(:one)
  end

  test "visiting the index" do
    visit ratios_url
    assert_selector "h1", text: "Ratios"
  end

  test "creating a Ratio" do
    visit ratios_url
    click_on "New Ratio"

    click_on "Create Ratio"

    assert_text "Ratio was successfully created"
    click_on "Back"
  end

  test "updating a Ratio" do
    visit ratios_url
    click_on "Edit", match: :first

    click_on "Update Ratio"

    assert_text "Ratio was successfully updated"
    click_on "Back"
  end

  test "destroying a Ratio" do
    visit ratios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ratio was successfully destroyed"
  end
end
