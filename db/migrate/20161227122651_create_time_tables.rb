class CreateTimeTables < ActiveRecord::Migration[5.0]
  def change
    create_table :time_tables do |t|
      t.time :reservation_hour

      t.timestamps
    end
  end
end
