class AddDepartureTimeToRsr < ActiveRecord::Migration
  def change
    add_column :railway_stations_routes, :departure_time, :time
  end
end
