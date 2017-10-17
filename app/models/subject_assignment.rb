# == Schema Information
#
# Table name: subject_assignments
#
#  id               :integer          not null, primary key
#  subject_id       :integer
#  study_program_id :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_subject_assignments_on_study_program_id  (study_program_id)
#  index_subject_assignments_on_subject_id        (subject_id)
#

class SubjectAssignment < ApplicationRecord
  belongs_to :subject
  belongs_to :study_program
end
