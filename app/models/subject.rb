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
  validates :title, presence: true
  validates :code, presence: true
end
