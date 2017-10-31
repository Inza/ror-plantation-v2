# == Schema Information
#
# Table name: templates
#
#  id         :integer          not null, primary key
#  title      :string
#  subject_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_templates_on_subject_id  (subject_id)
#

class Template < ApplicationRecord
  belongs_to :subject

  scope :for_subject, -> (subject_id) { where(subject_id: subject_id).order('title ASC') }

  def generate_test
    raise 'I cannot generate test without subject' unless subject.present?

    test = Test.new(template: self)
    # TODO What will happen when Template is deleted and created again?
    number = Test.where(template: self, subject: subject).count
    test.title = "#{title} ##{number}"

    add_questions_to_test(test)
  end

private
  def add_questions_to_test(test)
    raise 'I cannot add questions to the test without subject' unless subject.present?
    raise 'I cannot add questions to the test when subject does not have any topic' if subject.topics.empty?

    subject.topics.each do |topic|
      question_id = topic.question_ids.to_a.sample
      question = Question.find(question_id)

      test.questions << question
    end

    test
  end
end
