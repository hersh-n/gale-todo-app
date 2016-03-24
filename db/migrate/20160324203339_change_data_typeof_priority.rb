class ChangeDataTypeofPriority < ActiveRecord::Migration
  def change
    change_column :todos, :priority, :integer
  end
end
