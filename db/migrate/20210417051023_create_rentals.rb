class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.datetime :starttime
      t.datetime :returntime
      t.references :bike, foreign_key: true
      t.references :cello, foreign_key: true

      t.timestamps
    end
  end
end
