class AddReferenceToSpellingList < ActiveRecord::Migration[5.1]
  def change
    add_reference :spelling_tests, :spelling_list, foreign_key: true
  end
end
