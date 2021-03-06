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

ActiveRecord::Schema.define(version: 2018_10_09_143033) do

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "date_of_visit"
    t.string "location"
    t.string "point_of_interest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places_trips", id: false, force: :cascade do |t|
    t.integer "place_id"
    t.integer "trip_id"
    t.index ["place_id"], name: "index_places_trips_on_place_id"
    t.index ["trip_id"], name: "index_places_trips_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "date_of_arrival"
    t.date "date_of_departure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
