class CreateGamers < ActiveRecord::Migration[5.1]
  def change
    create_table :gamers do |t|
      t.string :name
      t.string :password

      t.timestamps
    end
  end
end
