class AddTerminalToTickets < ActiveRecord::Migration
  def change
    add_belongs_to :tickets, :terminal_station 
  end
end
