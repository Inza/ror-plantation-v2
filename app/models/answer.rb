# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  title       :string
#  correct     :boolean          default(FALSE), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer
#
# Indexes
#
#  index_answers_on_question_id  (question_id)
#

class Answer < ApplicationRecord
  belongs_to :question
end
