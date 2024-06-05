class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.integer :hotel_id
      t.integer :user_id
      t.integer :rooms
      t.datetime :start_date
      t.datetime :end_date
      t.string :booking_status 
      t.timestamps
    end
  end
end
