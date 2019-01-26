require "application_system_test_case"

class FashionsTest < ApplicationSystemTestCase
  setup do
    @fashion = fashions(:one)
  end

  test "visiting the index" do
    visit fashions_url
    assert_selector "h1", text: "Fashions"
  end

  test "creating a Fashion" do
    visit fashions_url
    click_on "New Fashion"

    fill_in "Name", with: @fashion.name
    click_on "Create Fashion"

    assert_text "Fashion was successfully created"
    click_on "Back"
  end

  test "updating a Fashion" do
    visit fashions_url
    click_on "Edit", match: :first

    fill_in "Name", with: @fashion.name
    click_on "Update Fashion"

    assert_text "Fashion was successfully updated"
    click_on "Back"
  end

  test "destroying a Fashion" do
    visit fashions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fashion was successfully destroyed"
  end
end
