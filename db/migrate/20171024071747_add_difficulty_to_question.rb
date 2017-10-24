class AddDifficultyToQuestion < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :difficulty, :integer
  end
end
