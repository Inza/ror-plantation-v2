# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  topic_id   :integer
#  title      :string
#  score      :integer
#  hint       :string
#  code       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_questions_on_topic_id  (topic_id)
#

require 'rails_helper'

RSpec.describe Question, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
