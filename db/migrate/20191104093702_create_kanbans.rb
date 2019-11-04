class CreateKanbans < ActiveRecord::Migration[6.0]
  def change
    create_table :kanbans do |t|
      t.string :kanban_name
      t.string :kanban_status

      t.timestamps
    end
  end
end
