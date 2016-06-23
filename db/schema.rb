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

ActiveRecord::Schema.define(version: 20160623060635) do

  create_table "carriages", force: :cascade do |t|
    t.string   "type"
    t.integer  "number"
    t.integer  "up_places"
    t.integer  "lower_places"
    t.integer  "side_up_places"
    t.integer  "side_lower_places"
    t.integer  "sit_places"
    t.integer  "train_id"
    t.string   "type_car"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "railway_stations", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "railway_stations_routes", force: :cascade do |t|
    t.integer "railway_station_id"
    t.integer "route_id"
    t.integer "position"
    t.time    "arrive_time"
    t.time    "departure_time"
  end

  create_table "routes", force: :cascade do |t|
    t.string   "title"
    t.integer  "railway_station_ids"
    t.integer  "train_ids"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer  "number"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
    t.integer  "train_id"
    t.integer  "primary_station_id"
    t.integer  "terminal_station_id"
    t.string   "fio"
    t.string   "passport"
  end

  create_table "trains", force: :cascade do |t|
    t.integer  "number"
    t.integer  "route_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "current_station_id"
    t.boolean  "is_head"
    t.boolean  "tail"
  end

  create_table "users", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
