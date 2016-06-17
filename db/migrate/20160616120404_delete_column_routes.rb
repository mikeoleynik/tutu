class DeleteColumnRoutes < ActiveRecord::Migration
  def change
    remove_column :routes, :trains_ids
    remove_column :routes, :railway_stations_ids
  end
end
