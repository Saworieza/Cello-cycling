class Rental < ApplicationRecord
  belongs_to :cello
  belongs_to :bike

  has_many :payments
end
