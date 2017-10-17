class CreateQuestionAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :question_assignments do |t|
      t.references :question, foreign_key: true
      t.references :test, foreign_key: true

      t.timestamps
    end
  end
end
