# == Schema Information
#
# Table name: tests
#
#  id          :integer          not null, primary key
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  subject_id  :integer
#  template_id :integer
#
# Indexes
#
#  index_tests_on_subject_id   (subject_id)
#  index_tests_on_template_id  (template_id)
#

class Test < ApplicationRecord
  has_many :topic_assignments, dependent: :destroy
  has_many :topics, through: :topic_assignments
  has_many :question_assignments, dependent: :destroy
  has_many :questions, through: :question_assignments

  belongs_to :subject
  belongs_to :template, optional: true

  validates :title, presence: true

  scope :with_subject_title, -> (subject) { includes([:subject]).where(subjects: { title: subject }).order('tests.created_at DESC') }
end
