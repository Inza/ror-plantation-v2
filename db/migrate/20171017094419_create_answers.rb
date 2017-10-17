class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.string :title
      t.boolean :correct, null: false, default: false

      t.timestamps
    end
  end
end
