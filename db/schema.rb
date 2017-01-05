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

ActiveRecord::Schema.define(version: 20170105003253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "birds", force: :cascade do |t|
    t.integer  "checklist_id"
    t.string   "species"
    t.decimal  "lat",          precision: 10, scale: 6, default: "0.1"
    t.decimal  "lng",          precision: 10, scale: 6, default: "0.1"
    t.integer  "count"
    t.string   "vegetation"
    t.string   "habitat"
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
    t.index ["checklist_id"], name: "index_birds_on_checklist_id", using: :btree
  end

  create_table "checklists", force: :cascade do |t|
    t.integer  "bird_id"
    t.string   "location"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bird_id"], name: "index_checklists_on_bird_id", using: :btree
  end

end