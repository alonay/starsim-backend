class CreateHotKeys < ActiveRecord::Migration[5.1]
  def change
    create_table :hot_keys do |t|
      t.integer :gamer_id
      t.string :keys

      t.timestamps
    end
  end
end
