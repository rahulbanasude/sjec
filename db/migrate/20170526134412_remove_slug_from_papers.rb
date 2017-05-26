class RemoveSlugFromPapers < ActiveRecord::Migration[5.0]
  def change
    remove_column :papers, :slug, :string
  end
end
