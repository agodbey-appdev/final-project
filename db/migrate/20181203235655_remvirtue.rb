class Remvirtue < ActiveRecord::Migration[5.1]
  def change
    remove_column :habbits, :virtue
  end
end
