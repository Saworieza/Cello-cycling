# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_18_221555) do

  create_table "bikes", force: :cascade do |t|
    t.string "biketype"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cellos", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string "rate"
    t.decimal "amount"
    t.integer "cello_id"
    t.integer "rental_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cello_id"], name: "index_payments_on_cello_id"
    t.index ["rental_id"], name: "index_payments_on_rental_id"
  end

  create_table "rentals", force: :cascade do |t|
    t.datetime "starttime"
    t.datetime "returntime"
    t.integer "bike_id"
    t.integer "cello_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bike_id"], name: "index_rentals_on_bike_id"
    t.index ["cello_id"], name: "index_rentals_on_cello_id"
  end

end
