require "application_system_test_case"

class DistancesTest < ApplicationSystemTestCase
  setup do
    @distance = distances(:one)
  end

  test "visiting the index" do
    visit distances_url
    assert_selector "h1", text: "Distances"
  end

  test "creating a Distance" do
    visit distances_url
    click_on "New Distance"

    fill_in "From address", with: @distance.from_address
    fill_in "To address", with: @distance.to_address
    fill_in "Vehicule type", with: @distance.vehicule_type
    click_on "Create Distance"

    assert_text "Distance was successfully created"
    click_on "Back"
  end

  test "updating a Distance" do
    visit distances_url
    click_on "Edit", match: :first

    fill_in "From address", with: @distance.from_address
    fill_in "To address", with: @distance.to_address
    fill_in "Vehicule type", with: @distance.vehicule_type
    click_on "Update Distance"

    assert_text "Distance was successfully updated"
    click_on "Back"
  end

  test "destroying a Distance" do
    visit distances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Distance was successfully destroyed"
  end
end
