class CreateTrains < ActiveRecord::Migration
  def change
    create_table :trains do |t|
      t.integer :number
      t.integer :route_id

      t.timestamps null: false
    end
  end
end
