class CreateCarriages < ActiveRecord::Migration
  def change
    create_table :carriages do |t|
      t.integer :number
      t.integer :up_places
      t.integer :lower_places
      t.belongs_to :train
      t.string :type

      t.timestamps null: false
    end
  end
end
