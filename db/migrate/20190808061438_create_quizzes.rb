class CreateQuizzes < ActiveRecord::Migration[5.2]
  def change
    create_table :quizzes do |t|
      t.references :level, foreign_key: true
      t.string :hint_images
      t.text :hint
      t.string :cover
      t.string :answer
      t.integer :point, default: 0

      t.timestamps
    end
  end
end
