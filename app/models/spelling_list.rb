class SpellingList < ApplicationRecord

  belongs_to :week
  belongs_to :grade
  has_many :spelling_words


  def week_starting
    Date.commercial(week.year, week.week_number, 1)
  end

  def week_ending
    Date.commercial(week.year, week.week_number, 5)
  end
end
