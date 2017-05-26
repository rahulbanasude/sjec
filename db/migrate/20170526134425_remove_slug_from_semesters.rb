class RemoveSlugFromSemesters < ActiveRecord::Migration[5.0]
  def change
    remove_column :semesters, :slug, :string
  end
end
