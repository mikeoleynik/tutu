class CreateCarriages < ActiveRecord::Migration
  def change
    create_table :carriages do |t|
      t.string :type
      t.integer :number
      t.string :type_car
      t.integer :up_places
      t.integer :lower_places
      t.integer :side_up_places 
      t.integer :side_lower_places
      t.integer :sit_places

      t.belongs_to :train 

      t.timestamps null: false
    end
  end
end
