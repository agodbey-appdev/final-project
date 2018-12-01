class CreateHabbits < ActiveRecord::Migration[5.1]
  def change
    drop_table :habbits
    create_table :habbits do |t|
      t.string :description
      t.integer :points
      t.integer :virtue
      t.integer :active
      t.integer :user_id

      t.timestamps
    end
  end
end
