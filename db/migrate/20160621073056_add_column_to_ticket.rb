class AddColumnToTicket < ActiveRecord::Migration
  def change
    add_column :tickets, :fio, :string
    add_column :tickets, :passport, :string
  end
end
