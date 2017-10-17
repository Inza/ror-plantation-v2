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

class TopicAssignment < ApplicationRecord
  belongs_to :test
  belongs_to :topic
end
