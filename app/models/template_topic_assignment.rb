# == Schema Information
#
# Table name: template_topic_assignments
#
#  id          :integer          not null, primary key
#  template_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  topic_id    :integer
#
# Indexes
#
#  index_template_topic_assignments_on_template_id  (template_id)
#  index_template_topic_assignments_on_topic_id     (topic_id)
#

class TemplateTopicAssignment < ApplicationRecord
  belongs_to :template
  belongs_to :topic
end
