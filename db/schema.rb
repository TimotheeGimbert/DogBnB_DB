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

ActiveRecord::Schema.define(version: 2021_10_30_132131) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.integer "city_id"
    t.integer "pack_id"
    t.index ["city_id"], name: "index_dogs_on_city_id"
    t.index ["pack_id"], name: "index_dogs_on_pack_id"
  end

  create_table "packs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sitters", force: :cascade do |t|
    t.string "name"
    t.integer "city_id"
    t.index ["city_id"], name: "index_sitters_on_city_id"
  end

  create_table "strolls", force: :cascade do |t|
    t.integer "city_id"
    t.integer "sitter_id"
    t.integer "pack_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_strolls_on_city_id"
    t.index ["pack_id"], name: "index_strolls_on_pack_id"
    t.index ["sitter_id"], name: "index_strolls_on_sitter_id"
  end

end
