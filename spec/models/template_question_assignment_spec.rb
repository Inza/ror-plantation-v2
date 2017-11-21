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

require 'rails_helper'

RSpec.describe TemplateQuestionAssignment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
