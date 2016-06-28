class AddStationIndexToTickets < ActiveRecord::Migration
  def change
    add_index :tickets, :primary_station_id
    add_index :tickets, :terminal_station_id
  end
end
