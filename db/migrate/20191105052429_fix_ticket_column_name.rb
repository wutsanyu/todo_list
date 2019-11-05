class FixTicketColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :tickets, :ticket_name, :ticket_title
  end
end
