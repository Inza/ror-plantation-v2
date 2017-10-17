class RemoveQuestionsFromTest < ActiveRecord::Migration[5.1]
  def change
    remove_column :tests, :questions, :text
  end
end
