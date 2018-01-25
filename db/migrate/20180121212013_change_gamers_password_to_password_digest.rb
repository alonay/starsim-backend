class ChangeGamersPasswordToPasswordDigest < ActiveRecord::Migration[5.1]
  def change
    rename_column :gamers, :password, :password_digest
  end
end
