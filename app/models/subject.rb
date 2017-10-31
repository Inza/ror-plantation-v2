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
  has_many :topics, dependent: :destroy
  has_many :tests, dependent: :destroy
  has_many :templates, dependent: :destroy
  has_many :subject_assignments, dependent: :destroy
  has_many :study_programs, through: :subject_assignments

  validates :title, presence: true
  validates :code, presence: true

  scope :by_code, -> (code) { where(code: code.to_s.upcase) }
end
