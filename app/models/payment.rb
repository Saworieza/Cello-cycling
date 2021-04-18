class Payment < ApplicationRecord
  belongs_to :cello
  belongs_to :rental

  def amount_owed
    TimeDifference.between(self.rental.returntime, self.rental.starttime).in_hours * self.rate.to_i
  end

  def balance
    self.amount - amount_owed
  end
end
