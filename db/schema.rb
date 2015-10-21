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

ActiveRecord::Schema.define(version: 20151018162658) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string   "name"
    t.integer  "hotline_id",   default: [],              array: true
    t.string   "hotline_type", default: [],              array: true
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "areas", ["hotline_type", "hotline_id"], name: "index_areas_on_hotline_type_and_hotline_id", using: :btree

  create_table "hotlines", force: :cascade do |t|
    t.string   "name"
    t.string   "number"
    t.string   "link"
    t.string   "donate"
    t.string   "category"
    t.string   "hours"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "province"
    t.string   "country"
    t.integer  "area_id",    default: [],              array: true
    t.string   "area_type",  default: [],              array: true
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "locations", ["area_type", "area_id"], name: "index_locations_on_area_type_and_area_id", using: :btree

end
