class CreatePapers < ActiveRecord::Migration[5.0]
  def change
    create_table :papers do |t|
      t.string :name
      t.integer :department_id
      t.integer :semester_id
      t.integer :subject_id

      t.timestamps
    end
  end
end
