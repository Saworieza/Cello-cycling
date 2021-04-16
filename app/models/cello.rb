class Cello < ApplicationRecord
    has_many :rentals, inverse_of: :cello
    accepts_nested_attributes_for :rentals, reject_if: :all_blank, allow_destroy: true

    has_many :payments

    def cello_dets
        "#{name} #{phone}"
    end
end
