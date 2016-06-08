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

ActiveRecord::Schema.define(version: 20160531173309) do

  create_table "carriages", force: :cascade do |t|
    t.string   "type"
    t.integer  "number"
    t.string   "type_car"
    t.integer  "up_places"
    t.integer  "lower_places"
    t.integer  "side_up_places"
    t.integer  "side_lower_places"
    t.integer  "sit_places"
    t.integer  "train_id"
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
    t.integer "number"
  end

  create_table "routes", force: :cascade do |t|
    t.string   "title"
    t.integer  "route_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.integer  "number"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
    t.integer  "train_id"
    t.integer  "primary_station_id"
    t.integer  "terminal_station_id"
  end

  create_table "trains", force: :cascade do |t|
    t.integer  "number"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.boolean  "head"
    t.boolean  "tail"
    t.integer  "current_station_id_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
