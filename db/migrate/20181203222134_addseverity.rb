class Addseverity < ActiveRecord::Migration[5.1]
  def change
    add_column :habbits, :severity, :integer
  end
end
