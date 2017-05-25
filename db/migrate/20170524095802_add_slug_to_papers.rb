class AddSlugToPapers < ActiveRecord::Migration[5.0]
  def change
    add_column :papers, :slug, :string
    add_index :papers, :slug, unique: true
  end
end
