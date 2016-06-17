class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :title
      t.integer :railway_station_ids
      t.integer :train_ids
      
      t.timestamps null: false
    end
  end
end
