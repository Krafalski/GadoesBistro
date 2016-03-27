# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160327141736) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "feeds", force: :cascade do |t|
  end

  create_table "foods", force: :cascade do |t|
    t.string "food_name"
    t.string "food_type"
    t.float  "price"
    t.string "allergens"
    t.string "other_info"
  end

  create_table "foods_guests", id: false, force: :cascade do |t|
    t.integer "food_id",  null: false
    t.integer "guest_id", null: false
  end

  create_table "guests", force: :cascade do |t|
    t.string "username"
  end

  create_table "guests_parties", id: false, force: :cascade do |t|
    t.integer "party_id", null: false
    t.integer "guest_id", null: false
  end

  add_index "guests_parties", ["guest_id", "party_id"], name: "index_guests_parties_on_guest_id_and_party_id", using: :btree
  add_index "guests_parties", ["party_id", "guest_id"], name: "index_guests_parties_on_party_id_and_guest_id", using: :btree

  create_table "parties", force: :cascade do |t|
    t.string  "party_name"
    t.integer "table_number"
    t.boolean "bill_paid"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

end
