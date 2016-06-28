class AddTrainIndexToTicket < ActiveRecord::Migration
  def change
    add_index :tickets, :train_id
  end
end
