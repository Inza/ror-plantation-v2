class RenameTagToStudyProgram < ActiveRecord::Migration[5.1]
  def change
    rename_table :tags, :study_programs
  end
end
