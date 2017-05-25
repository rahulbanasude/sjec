class AddSlugToSemesters < ActiveRecord::Migration[5.0]
  def change
    add_column :semesters, :slug, :string
    add_index :semesters, :slug, unique: true
  end
end
