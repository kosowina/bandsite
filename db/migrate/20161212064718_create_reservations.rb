class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.integer :phone
      t.string :username
      t.string :email

      t.timestamps
    end
  end
end
