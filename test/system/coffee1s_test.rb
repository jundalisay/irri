require "application_system_test_case"

class Coffee1sTest < ApplicationSystemTestCase
  setup do
    @coffee1 = coffee1s(:one)
  end

  test "visiting the index" do
    visit coffee1s_url
    assert_selector "h1", text: "Coffee1s"
  end

  test "creating a Coffee1" do
    visit coffee1s_url
    click_on "New Coffee1"

    click_on "Create Coffee1"

    assert_text "Coffee1 was successfully created"
    click_on "Back"
  end

  test "updating a Coffee1" do
    visit coffee1s_url
    click_on "Edit", match: :first

    click_on "Update Coffee1"

    assert_text "Coffee1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Coffee1" do
    visit coffee1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coffee1 was successfully destroyed"
  end
end
