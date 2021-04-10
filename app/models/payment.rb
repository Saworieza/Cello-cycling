class Payment < ApplicationRecord
  belongs_to :cello
  belongs_to :rental
end
