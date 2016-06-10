class AddTailToTrains < ActiveRecord::Migration
  def change
    add_column :trains, :tail, :boolean
  end
end
