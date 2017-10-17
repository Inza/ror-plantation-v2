# == Schema Information
#
# Table name: tests
#
#  id         :integer          not null, primary key
#  title      :string
#  questions  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Test < ApplicationRecord
  #belongs_to :subject

  # Simple validation syntax (not so great)
  #validates_presence_of :title, :desription
  #validates_numericality_of :title

  # Alternatice (better) syntax
  validates :title, presence: true#, numericality: true
end
