class AddGradeReferenceToTeacher < ActiveRecord::Migration[5.1]
  def change
    add_reference :teachers, :grade, foreign_key: true
    remove_foreign_key :teachers, :grades
    remove_column :teachers, :grades_id
  end
end
