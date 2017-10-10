class AddSubjectIdToTest < ActiveRecord::Migration[5.1]
  def change
    add_reference :tests, :subject, foreign_key: true
  end
end
