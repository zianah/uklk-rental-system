require 'test_helper'

class RentalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rental = rentals(:one)
  end

  test "should get index" do
    get rentals_url
    assert_response :success
  end

  test "should get new" do
    get new_rental_url
    assert_response :success
  end

  test "should create rental" do
    assert_difference('Rental.count') do
      post rentals_url, params: { rental: { aircon: @rental.aircon, apartment_name: @rental.apartment_name, available_seats: @rental.available_seats, balcony: @rental.balcony, block: @rental.block, electric_shower: @rental.electric_shower, furniture_condition: @rental.furniture_condition, house_number: @rental.house_number, image_url: @rental.image_url, kitchen: @rental.kitchen, level: @rental.level, lift_facility: @rental.lift_facility, location: @rental.location, other_facilities: @rental.other_facilities, oven: @rental.oven, payment: @rental.payment, refrigerator: @rental.refrigerator, room_number: @rental.room_number, toilet: @rental.toilet, user_id: @rental.user_id, washing_maching: @rental.washing_maching } }
    end

    assert_redirected_to rental_url(Rental.last)
  end

  test "should show rental" do
    get rental_url(@rental)
    assert_response :success
  end

  test "should get edit" do
    get edit_rental_url(@rental)
    assert_response :success
  end

  test "should update rental" do
    patch rental_url(@rental), params: { rental: { aircon: @rental.aircon, apartment_name: @rental.apartment_name, available_seats: @rental.available_seats, balcony: @rental.balcony, block: @rental.block, electric_shower: @rental.electric_shower, furniture_condition: @rental.furniture_condition, house_number: @rental.house_number, image_url: @rental.image_url, kitchen: @rental.kitchen, level: @rental.level, lift_facility: @rental.lift_facility, location: @rental.location, other_facilities: @rental.other_facilities, oven: @rental.oven, payment: @rental.payment, refrigerator: @rental.refrigerator, room_number: @rental.room_number, toilet: @rental.toilet, user_id: @rental.user_id, washing_maching: @rental.washing_maching } }
    assert_redirected_to rental_url(@rental)
  end

  test "should destroy rental" do
    assert_difference('Rental.count', -1) do
      delete rental_url(@rental)
    end

    assert_redirected_to rentals_url
  end
end
