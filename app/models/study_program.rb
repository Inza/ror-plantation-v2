# == Schema Information
#
# Table name: study_programs
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class StudyProgram < ApplicationRecord
  has_many :subject_assignments
  has_many :subjects, through: :subject_assignments
end
