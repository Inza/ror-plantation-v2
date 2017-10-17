# == Schema Information
#
# Table name: tests
#
#  id         :integer          not null, primary key
#  title      :string
#  questions  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  topic_id   :integer
#
# Indexes
#
#  index_tests_on_topic_id  (topic_id)
#

require 'rails_helper'

RSpec.describe Test, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
