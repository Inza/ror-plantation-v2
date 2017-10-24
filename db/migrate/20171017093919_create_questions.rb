class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.references :topic, foreign_key: true
      t.string :title
      t.integer :score
      t.string :hint
      t.text :code

      t.timestamps
    end
  end
end
