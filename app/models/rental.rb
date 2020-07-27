class Rental < ApplicationRecord
  belongs_to :user
  has_many :reviews

  validates_presence_of :location, :apartment_name, :block, :level, :house_number, :aircon, :room_number, :kitchen, :toilet, :balcony, :image_url, :washing_machine, :refrigerator, :oven, :electric_shower, :furniture_condition, :lift_facility, :payment, :available_seats

  def avg_score
    reviews.average(:score)
  end
  
end
