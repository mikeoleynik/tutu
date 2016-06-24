class AddTicketsToUser < ActiveRecord::Migration
  def change
    add_belongs_to :tickets, :user, index: true
  end
end
