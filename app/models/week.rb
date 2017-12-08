class Week < ApplicationRecord


  def week_starting
    Date.commercial(year, week_number, 1)
  end

  def week_ending
    Date.commercial(year, week_number, 5)
  end
end
