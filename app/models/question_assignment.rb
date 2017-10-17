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

class QuestionAssignment < ApplicationRecord
  belongs_to :question
  belongs_to :test
end
