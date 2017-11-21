class ChangeFkInTemplateTopicAssignment < ActiveRecord::Migration[5.1]
  def change
    remove_reference :template_topic_assignments, :question
    add_reference :template_topic_assignments, :topic
  end
end
