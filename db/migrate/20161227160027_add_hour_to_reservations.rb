class AddHourToReservations < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :hour, :hour
  end
end
