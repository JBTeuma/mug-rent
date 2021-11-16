class AddDefaultValueToStatusInBookings < ActiveRecord::Migration[6.0]
  def up
    change_column_default(:bookings, :status, 'pending')
  end

  def down
    change_column_default(:bookings, :status, nil )
  end
end
