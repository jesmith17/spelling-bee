class SpellingTest < ApplicationRecord
  belongs_to :teacher
  belongs_to :week
  has_one :spelling_list
end
