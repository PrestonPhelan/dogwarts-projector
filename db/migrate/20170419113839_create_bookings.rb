class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.integer :client_id, null: false
      t.date :first_contact_date, null: false
      t.string :source, null: false
      t.string :status, null: false
      t.string :type, null: false
      t.integer :price_seen, null: false
      t.date :booking_made_date
      t.integer :price_paid
      t.date :start_date
      t.date :end_date

      t.timestamps
    end

    add_index :bookings, :client_id
  end
end
