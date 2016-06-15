class AddRailwayStationIdToTrains < ActiveRecord::Migration
  def change
    add_belongs_to :trains, :current_station_id
  end
end
