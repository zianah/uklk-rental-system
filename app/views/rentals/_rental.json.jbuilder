json.extract! rental, :id, :location, :apartment_name, :block, :level, :house_number, :aircon, :room_number, :kitchen, :toilet, :balcony, :image_url, :washing_maching, :refrigerator, :oven, :electric_shower, :furniture_condition, :other_facilities, :lift_facility, :payment, :available_seats, :user_id, :created_at, :updated_at
json.url rental_url(rental, format: :json)
