class CreateTrains < ActiveRecord::Migration
  def change
    create_table :trains do |t|
      t.integer :number

      t.timestamps null: false
    end

    add_column :trains, :head, :boolean
    add_column :trains, :tail, :boolean
  end
end
