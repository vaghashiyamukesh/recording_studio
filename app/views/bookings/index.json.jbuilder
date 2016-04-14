json.array!(@bookings) do |booking|
  json.extract! booking, :id, :room_number, :user_id, :session_start, :session_end, :session_count, :status
  json.url booking_url(booking, format: :json)
end
