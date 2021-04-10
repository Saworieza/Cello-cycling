class Rental < ApplicationRecord
  belongs_to :cello
  belongs_to :bike
end
