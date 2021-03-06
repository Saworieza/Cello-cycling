class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :rate
      t.decimal :amount
      t.references :cello, foreign_key: true
      t.references :rental, foreign_key: true

      t.timestamps
    end
  end
end
