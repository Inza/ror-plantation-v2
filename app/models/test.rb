# == Schema Information
#
# Table name: tests
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  subject_id :integer
#
# Indexes
#
#  index_tests_on_subject_id  (subject_id)
#

class Test < ApplicationRecord
  has_many :topic_assignments
  has_many :topics, through: :topic_assignments
  has_many :question_assignments
  has_many :questions, through: :question_assignments

  belongs_to :subject

  # Simple validation syntax (not so great)
  #validates_presence_of :title, :desription
  #validates_numericality_of :title

  # Alternatice (better) syntax
  validates :title, presence: true#, numericality: true
end
