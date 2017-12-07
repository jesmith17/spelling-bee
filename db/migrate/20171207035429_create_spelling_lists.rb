class CreateSpellingLists < ActiveRecord::Migration[5.1]
  def change
    create_table :spelling_lists do |t|

      t.timestamps
    end
  end
end
