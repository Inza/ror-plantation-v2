# == Schema Information
#
# Table name: examples
#
#  id         :integer          not null, primary key
#  title      :string
#  text       :text
#  published  :boolean
#  subject_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_examples_on_subject_id  (subject_id)
#

class Example < ApplicationRecord
  belongs_to :subject
end
