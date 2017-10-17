# == Schema Information
#
# Table name: subjects
#
#  id         :integer          not null, primary key
#  title      :string
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Subject < ApplicationRecord
  has_many :topics
  has_many :tests
  has_many :subject_assignments
  has_many :study_programs, through: :subject_assignments

  validates :title, presence: true
  validates :code, presence: true
end
