class Booking < ApplicationRecord
  belongs_to :rental, dependent: :destroy
  belongs_to :user

  validates_presence_of :message
  
end
