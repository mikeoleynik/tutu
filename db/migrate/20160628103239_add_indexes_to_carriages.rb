class AddIndexesToCarriages < ActiveRecord::Migration
  def change
    add_index :carriages, [:id, :type_car]
  end
end
