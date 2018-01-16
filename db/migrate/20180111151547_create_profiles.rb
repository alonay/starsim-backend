class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :game
      t.integer :ranking
      t.integer :gamer_id

      t.timestamps
    end
  end
end
