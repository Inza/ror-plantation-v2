# == Schema Information
#
# Table name: template_question_assignments
#
#  id          :integer          not null, primary key
#  template_id :integer
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_template_question_assignments_on_question_id  (question_id)
#  index_template_question_assignments_on_template_id  (template_id)
#

class TemplateTopicAssignment < ApplicationRecord
  belongs_to :template
  belongs_to :question
end
