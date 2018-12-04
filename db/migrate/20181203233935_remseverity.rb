class Remseverity < ActiveRecord::Migration[5.1]
  def change
    remove_column :habbits, :severity
    change_column :habbits, :points, :integer
    change_column :actions, :points, :integer
  end
end
