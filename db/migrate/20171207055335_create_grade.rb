class CreateGrade < ActiveRecord::Migration[5.1]
  def change
    create_table :grades do |t|
      t.string :display_name
      t.integer :grade
    end
    remove_column :teachers, :grades, :string
    add_reference :teachers, :grades, foreign_key: true
    add_reference :teachers, :spelling_lists, foreign_key: true
  end
end
