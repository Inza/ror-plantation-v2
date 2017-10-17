class SubjectAssignment < ApplicationRecord
  belongs_to :subject
  belongs_to :study_program
end
