class Changepoints < ActiveRecord::Migration[5.1]
  def change
    change_column :habbits, :points, :float
  end
end
