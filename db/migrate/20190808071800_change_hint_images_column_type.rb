class ChangeHintImagesColumnType < ActiveRecord::Migration[5.2]
  def change
    change_column :quizzes, :hint_images, "json USING hint_images::json"
  end
end
