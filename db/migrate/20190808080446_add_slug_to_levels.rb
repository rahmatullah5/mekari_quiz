class AddSlugToLevels < ActiveRecord::Migration[5.2]
  def change
    add_column :levels, :slug, :string
    add_index :levels, :slug, unique: true
  end
end
