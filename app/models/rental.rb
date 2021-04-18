class Rental < ApplicationRecord
  belongs_to :bike
  belongs_to :cello

  has_many :payments, dependent: :destroy

  def time_gap
    "#{starttime.strftime('%b %d : %I:%M %p')} - #{returntime.strftime('%I:%M %p')}"
  end

  def time_diff
    TimeDifference.between(self.returntime, self.starttime).humanize
  end 

  def rent_owed
    self.payments(:id).amount_owed
  end
end
