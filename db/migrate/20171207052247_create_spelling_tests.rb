class CreateSpellingTests < ActiveRecord::Migration[5.1]
  def change
    create_table :spelling_tests do |t|
      t.string :name
      t.boolean :practice
      t.belongs_to :teacher, foreign_key: true
      t.belongs_to :week, foreign_key: true

      t.timestamps
    end
  end
end
