class CreateTrains < ActiveRecord::Migration
  def change
    create_table :trains do |t|
      t.integer :number
      add_column :trains, :is_head, :boolean
      add_column :trains, :tail, :boolean

      t.timestamps null: false
    end
  end
end
