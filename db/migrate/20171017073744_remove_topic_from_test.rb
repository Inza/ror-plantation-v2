class RemoveTopicFromTest < ActiveRecord::Migration[5.1]
  def change
    remove_reference :tests, :topic, foreign_key: true
  end
end
