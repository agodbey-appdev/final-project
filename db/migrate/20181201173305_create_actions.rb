class CreateActions < ActiveRecord::Migration[5.1]
  def change
    create_table :actions do |t|
      t.integer :user_id
      t.integer :habbit_id

      t.timestamps
    end
  end
end
