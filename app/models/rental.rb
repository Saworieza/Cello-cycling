class Rental < ApplicationRecord
  belongs_to :cello
  belongs_to :bike

  has_many :payments

  def rental_field
    # whom was it rented to
    # "#{adm_no}: #{first_name} #{last_name}"
    "#{cello.name} #{start} #{return}"
  end
end
