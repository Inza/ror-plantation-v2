# == Schema Information
#
# Table name: answers
#
#  id         :integer          not null, primary key
#  title      :string
#  correct    :boolean          default(FALSE), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Answer < ApplicationRecord
  belongs_to :question
end
