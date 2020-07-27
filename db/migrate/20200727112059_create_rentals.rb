class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.string :location
      t.string :apartment_name
      t.string :block
      t.string :level
      t.string :house_number
      t.string :aircon
      t.string :room_number
      t.string :kitchen
      t.string :toilet
      t.string :balcony
      t.string :image_url
      t.string :washing_machine
      t.string :refrigerator
      t.string :oven
      t.string :electric_shower
      t.string :furniture_condition
      t.text :other_facilities
      t.string :lift_facility
      t.text :payment
      t.string :available_seats
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
