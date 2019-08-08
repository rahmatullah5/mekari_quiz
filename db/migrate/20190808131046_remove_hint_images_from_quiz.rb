class RemoveHintImagesFromQuiz < ActiveRecord::Migration[5.2]
  def change
    remove_column :quizzes, :hint_images
  end
end
