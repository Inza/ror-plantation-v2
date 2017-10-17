# == Schema Information
#
# Table name: tests
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  subject_id :integer
#
# Indexes
#
#  index_tests_on_subject_id  (subject_id)
#

require 'rails_helper'

RSpec.describe Test, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
