class AddWordToSpellingList < ActiveRecord::Migration[5.1]
  def change
    add_column :spelling_lists, :word, :string
    add_column :spelling_lists, :definition, :string
    add_reference :spelling_lists, :teacher, foreign_key: true
    add_reference :spelling_lists, :week, foreign_key: true
  end
end
