class RemovePriorityFromTodos < ActiveRecord::Migration
  def change
    remove_column :todos, :priority, :integer
  end
end
