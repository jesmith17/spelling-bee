class AddGradeReferenceToSpellingList < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :spelling_lists, :teacher
    remove_column :spelling_lists, :teacher_id
    add_reference :spelling_lists, :grade, foreign_key: true
  end
end
