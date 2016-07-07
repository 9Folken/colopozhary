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

ActiveRecord::Schema.define(version: 20160707075423) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "armies", force: :cascade do |t|
    t.string   "name"
    t.integer  "str"
    t.integer  "endr"
    t.integer  "perc"
    t.integer  "aglt"
    t.integer  "mgc"
    t.integer  "int"
    t.integer  "chr"
    t.integer  "wis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lords", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "hp"
  end

  create_table "lords_units", id: false, force: :cascade do |t|
    t.integer "lord_id", null: false
    t.integer "unit_id", null: false
  end

  add_index "lords_units", ["lord_id", "unit_id"], name: "index_lords_units_on_lord_id_and_unit_id", using: :btree
  add_index "lords_units", ["unit_id", "lord_id"], name: "index_lords_units_on_unit_id_and_lord_id", using: :btree

  create_table "stuffs", force: :cascade do |t|
    t.string   "name"
    t.integer  "str"
    t.integer  "endr"
    t.integer  "perc"
    t.integer  "aglt"
    t.integer  "mgc"
    t.integer  "int"
    t.integer  "chr"
    t.integer  "wis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "lord_id"
  end

  create_table "units", force: :cascade do |t|
    t.string   "name"
    t.integer  "str"
    t.integer  "endr"
    t.integer  "perc"
    t.integer  "aglt"
    t.integer  "mgc"
    t.integer  "int"
    t.integer  "chr"
    t.integer  "wis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "lord_id"
  end

end
