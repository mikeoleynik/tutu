class AddPrimaryToTickets < ActiveRecord::Migration
  def change
    add_belongs_to :tickets, :primary_station 
  end
end
