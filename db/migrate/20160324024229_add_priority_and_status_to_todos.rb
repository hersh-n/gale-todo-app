class AddPriorityAndStatusToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :priority, :integer
    add_column :todos, :status, :integer
  end
end
