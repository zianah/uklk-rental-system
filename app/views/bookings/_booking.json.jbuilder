json.extract! booking, :id, :message, :status, :rental_id, :user_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
