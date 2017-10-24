# == Schema Information
#
# Table name: question_assignments
#
#  id          :integer          not null, primary key
#  question_id :integer
#  test_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_question_assignments_on_question_id  (question_id)
#  index_question_assignments_on_test_id      (test_id)
#

require 'rails_helper'

RSpec.describe QuestionAssignment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
