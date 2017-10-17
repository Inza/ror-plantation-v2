# == Schema Information
#
# Table name: topic_assignments
#
#  id         :integer          not null, primary key
#  test_id    :integer
#  topic_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_topic_assignments_on_test_id   (test_id)
#  index_topic_assignments_on_topic_id  (topic_id)
#

require 'rails_helper'

RSpec.describe TopicAssignment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
