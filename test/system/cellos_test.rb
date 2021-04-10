require "application_system_test_case"

class CellosTest < ApplicationSystemTestCase
  setup do
    @cello = cellos(:one)
  end

  test "visiting the index" do
    visit cellos_url
    assert_selector "h1", text: "Cellos"
  end

  test "creating a Cello" do
    visit cellos_url
    click_on "New Cello"

    fill_in "Name", with: @cello.name
    fill_in "Phone", with: @cello.phone
    click_on "Create Cello"

    assert_text "Cello was successfully created"
    click_on "Back"
  end

  test "updating a Cello" do
    visit cellos_url
    click_on "Edit", match: :first

    fill_in "Name", with: @cello.name
    fill_in "Phone", with: @cello.phone
    click_on "Update Cello"

    assert_text "Cello was successfully updated"
    click_on "Back"
  end

  test "destroying a Cello" do
    visit cellos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cello was successfully destroyed"
  end
end
