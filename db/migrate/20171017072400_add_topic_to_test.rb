class AddTopicToTest < ActiveRecord::Migration[5.1]
  def change
    add_reference :tests, :topic, foreign_key: true
  end
end
