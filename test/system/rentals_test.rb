require "application_system_test_case"

class RentalsTest < ApplicationSystemTestCase
  setup do
    @rental = rentals(:one)
  end

  test "visiting the index" do
    visit rentals_url
    assert_selector "h1", text: "Rentals"
  end

  test "creating a Rental" do
    visit rentals_url
    click_on "New Rental"

    fill_in "Aircon", with: @rental.aircon
    fill_in "Apartment name", with: @rental.apartment_name
    fill_in "Available seats", with: @rental.available_seats
    fill_in "Balcony", with: @rental.balcony
    fill_in "Block", with: @rental.block
    fill_in "Electric shower", with: @rental.electric_shower
    fill_in "Furniture condition", with: @rental.furniture_condition
    fill_in "House number", with: @rental.house_number
    fill_in "Image url", with: @rental.image_url
    fill_in "Kitchen", with: @rental.kitchen
    fill_in "Level", with: @rental.level
    fill_in "Lift facility", with: @rental.lift_facility
    fill_in "Location", with: @rental.location
    fill_in "Other facilities", with: @rental.other_facilities
    fill_in "Oven", with: @rental.oven
    fill_in "Payment", with: @rental.payment
    fill_in "Refrigerator", with: @rental.refrigerator
    fill_in "Room number", with: @rental.room_number
    fill_in "Toilet", with: @rental.toilet
    fill_in "User", with: @rental.user_id
    fill_in "Washing maching", with: @rental.washing_maching
    click_on "Create Rental"

    assert_text "Rental was successfully created"
    click_on "Back"
  end

  test "updating a Rental" do
    visit rentals_url
    click_on "Edit", match: :first

    fill_in "Aircon", with: @rental.aircon
    fill_in "Apartment name", with: @rental.apartment_name
    fill_in "Available seats", with: @rental.available_seats
    fill_in "Balcony", with: @rental.balcony
    fill_in "Block", with: @rental.block
    fill_in "Electric shower", with: @rental.electric_shower
    fill_in "Furniture condition", with: @rental.furniture_condition
    fill_in "House number", with: @rental.house_number
    fill_in "Image url", with: @rental.image_url
    fill_in "Kitchen", with: @rental.kitchen
    fill_in "Level", with: @rental.level
    fill_in "Lift facility", with: @rental.lift_facility
    fill_in "Location", with: @rental.location
    fill_in "Other facilities", with: @rental.other_facilities
    fill_in "Oven", with: @rental.oven
    fill_in "Payment", with: @rental.payment
    fill_in "Refrigerator", with: @rental.refrigerator
    fill_in "Room number", with: @rental.room_number
    fill_in "Toilet", with: @rental.toilet
    fill_in "User", with: @rental.user_id
    fill_in "Washing maching", with: @rental.washing_maching
    click_on "Update Rental"

    assert_text "Rental was successfully updated"
    click_on "Back"
  end

  test "destroying a Rental" do
    visit rentals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rental was successfully destroyed"
  end
end
