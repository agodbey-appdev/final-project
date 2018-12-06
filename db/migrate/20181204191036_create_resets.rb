class CreateResets < ActiveRecord::Migration[5.1]
  def change
    create_table :resets do |t|
      t.string :user_id

      t.timestamps
    end
  end
end
