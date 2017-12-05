class CreateExamples < ActiveRecord::Migration[5.1]
  def change
    create_table :examples do |t|
      t.string :title
      t.text :text
      t.boolean :published
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
