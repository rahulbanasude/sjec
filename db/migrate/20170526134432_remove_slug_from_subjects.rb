class RemoveSlugFromSubjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :subjects, :slug, :string
  end
end
