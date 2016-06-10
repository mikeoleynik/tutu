class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :title
      t.integer :route_id
      
      t.timestamps null: false
    end
  end
end
