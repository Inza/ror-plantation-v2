class CreateTopicAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :topic_assignments do |t|
      t.references :test, foreign_key: true
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
