class Teacher < ApplicationRecord

  has_many :spelling_lists
  belongs_to :grade
end
