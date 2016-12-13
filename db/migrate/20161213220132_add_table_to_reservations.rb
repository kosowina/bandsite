class AddTableToReservations < ActiveRecord::Migration[5.0]
  def change
    add_reference :reservations, :table, foreign_key: true
  end
end
