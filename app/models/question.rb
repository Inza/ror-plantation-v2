# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  topic_id   :integer
#  title      :string
#  score      :integer
#  hint       :string
#  code       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  difficulty :integer
#
# Indexes
#
#  index_questions_on_topic_id  (topic_id)
#

class Question < ApplicationRecord
  has_many :question_assignments, dependent: :destroy
  has_many :tests, through: :question_assignments

  has_many :answers, dependent: :destroy

  belongs_to :topic

  extend Enumerize

  enumerize :difficulty, in: { normal: 1, nightmare: 2, hell: 3 }, default: :normal, scope: true, predicates: true

  validates :title, presence: true
  validates :score, presence: true, numericality: :only_integer

  def abcd?
    answers.any?
  end

  def free_text?
    !abcd?
  end
end
