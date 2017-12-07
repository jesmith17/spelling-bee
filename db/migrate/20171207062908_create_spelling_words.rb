class CreateSpellingWords < ActiveRecord::Migration[5.1]
  def change
    create_table :spelling_words do |t|
      t.string :word
      t.string :definition
      t.belongs_to :spelling_list, foreign_key: true

      t.timestamps
    end
    remove_column :spelling_lists, :word, :string
    remove_column :spelling_lists, :definition, :string

  end
end
