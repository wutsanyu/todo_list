class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :ticket_name
      t.string :ticket_status
      t.text :ticket_discription
      t.integer :ticket_staring_time
      t.integer :ticket_ending_time
      t.string :ticket_label

      t.timestamps
    end
  end
end
