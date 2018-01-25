class AddScores < ActiveRecord::Migration[5.1]
  def change
    rename_column :profiles, :ranking, :high_score
  end
end
