json.extract! payment, :id, :rate, :amount, :cello_id, :rental_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
