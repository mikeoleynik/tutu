class CreateCarriages < ActiveRecord::Migration
  def change
    create_table :carriages do |t|
      t.integer :number

      t.timestamps null: false
    end
  end
end
