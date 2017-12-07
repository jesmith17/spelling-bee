class DropTeacherFromSpellingList < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :spelling_lists, :teacher
  end
end
