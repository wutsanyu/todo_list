class FixKanbansColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :kanbans, :kanban_name, :kanban_title
  end
end
