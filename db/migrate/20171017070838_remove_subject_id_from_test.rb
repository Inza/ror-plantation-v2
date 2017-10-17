class RemoveSubjectIdFromTest < ActiveRecord::Migration[5.1]
  def change
    remove_reference :tests, :subject, foreign_key: true
  end
end
