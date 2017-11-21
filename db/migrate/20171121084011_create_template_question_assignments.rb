class CreateTemplateQuestionAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :template_question_assignments do |t|
      t.references :template, foreign_key: true
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
