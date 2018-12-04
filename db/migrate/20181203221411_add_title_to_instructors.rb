class AddTitleToInstructors < ActiveRecord::Migration[5.1]
  def change
    add_column :actions, :points, :float
  end
end
