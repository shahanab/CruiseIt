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

ActiveRecord::Schema.define(version: 20141213212749) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "category_pois", force: true do |t|
    t.integer  "category_id"
    t.integer  "poi_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "category_pois", ["category_id"], name: "index_category_pois_on_category_id"
  add_index "category_pois", ["poi_id"], name: "index_category_pois_on_poi_id"

  create_table "destinations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itineraries", force: true do |t|
    t.string   "name"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "itineraries", ["user_id"], name: "index_itineraries_on_user_id"

  create_table "itinerary_destinations", force: true do |t|
    t.integer  "itinerary_id"
    t.integer  "destination_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "itinerary_destinations", ["destination_id"], name: "index_itinerary_destinations_on_destination_id"
  add_index "itinerary_destinations", ["itinerary_id"], name: "index_itinerary_destinations_on_itinerary_id"

  create_table "poi_times", force: true do |t|
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "itinerary_id"
    t.integer  "poi_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "poi_times", ["itinerary_id"], name: "index_poi_times_on_itinerary_id"
  add_index "poi_times", ["poi_id"], name: "index_poi_times_on_poi_id"

  create_table "pois", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "destination_id"
    t.text     "address"
    t.decimal  "rating",         precision: 2, scale: 2
  end

  add_index "pois", ["destination_id"], name: "index_pois_on_destination_id"

  create_table "tripadvisors", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
