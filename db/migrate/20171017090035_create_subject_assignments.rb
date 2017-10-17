class CreateSubjectAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :subject_assignments do |t|
      t.references :subject, foreign_key: true
      t.references :study_program, foreign_key: true

      t.timestamps
    end
  end
end
