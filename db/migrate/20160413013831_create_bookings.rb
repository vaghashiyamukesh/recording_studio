class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :room_number
      t.integer :user_id
      t.datetime :session_start
      t.datetime :session_end
      t.integer :session_count
      t.integer :status

      t.timestamps null: false
    end
  end
end
