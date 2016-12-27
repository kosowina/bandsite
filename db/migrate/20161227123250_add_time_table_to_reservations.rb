class AddTimeTableToReservations < ActiveRecord::Migration[5.0]
  def change
    add_reference :reservations, :time_table, foreign_key: true
  end
end
