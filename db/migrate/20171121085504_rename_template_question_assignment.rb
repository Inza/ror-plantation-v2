
class RenameTemplateQuestionAssignment < ActiveRecord::Migration[5.1]
  def change
    rename_table :template_question_assignments, :template_topic_assignments
  end
end
