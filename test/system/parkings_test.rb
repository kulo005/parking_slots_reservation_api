require "application_system_test_case"

class ParkingsTest < ApplicationSystemTestCase
  setup do
    @parking = parkings(:one)
  end

  test "visiting the index" do
    visit parkings_url
    assert_selector "h1", text: "Parkings"
  end

  test "creating a Parking" do
    visit parkings_url
    click_on "New Parking"

    fill_in "Numberofslots", with: @parking.NumberOfSlots
    fill_in "Addressnumber", with: @parking.addressNumber
    fill_in "City", with: @parking.city
    fill_in "Street", with: @parking.street
    click_on "Create Parking"

    assert_text "Parking was successfully created"
    click_on "Back"
  end

  test "updating a Parking" do
    visit parkings_url
    click_on "Edit", match: :first

    fill_in "Numberofslots", with: @parking.NumberOfSlots
    fill_in "Addressnumber", with: @parking.addressNumber
    fill_in "City", with: @parking.city
    fill_in "Street", with: @parking.street
    click_on "Update Parking"

    assert_text "Parking was successfully updated"
    click_on "Back"
  end

  test "destroying a Parking" do
    visit parkings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parking was successfully destroyed"
  end
end
