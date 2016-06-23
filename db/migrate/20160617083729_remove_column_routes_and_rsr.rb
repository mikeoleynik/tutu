class RemoveColumnRoutesAndRsr < ActiveRecord::Migration
  def change
    remove_column :routes, :trains_ids
    remove_column :routes, :railway_stations_ids
    remove_column :railway_stations_routes, :number
  end
end
