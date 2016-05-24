class AddRailwayStationIdToTrains < ActiveRecord::Migration
  def change # на уровне БД
    add_belongs_to :trains, :current_station_id
  end
end
