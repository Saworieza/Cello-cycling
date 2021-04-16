class Rental < ApplicationRecord
  belongs_to :cello
  belongs_to :bike

  has_many :payments

  def rental_name
      "#{cello.name} #{starttime.strftime(" %I:%M %p : %a, %b %e")}"
  end
end
