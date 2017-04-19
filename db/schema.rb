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

ActiveRecord::Schema.define(version: 20170419113839) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "client_id",          null: false
    t.date     "first_contact_date", null: false
    t.string   "source",             null: false
    t.string   "status",             null: false
    t.string   "type",               null: false
    t.integer  "price_seen",         null: false
    t.date     "booking_made_date"
    t.integer  "price_paid"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["client_id"], name: "index_bookings_on_client_id", using: :btree
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name",                   null: false
    t.integer  "num_dogs",   default: 1, null: false
    t.string   "dogs",                   null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
