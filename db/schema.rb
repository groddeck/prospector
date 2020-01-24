# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_21_014226) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "notes", force: :cascade do |t|
    t.text "body"
    t.bigint "prospect_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prospect_id"], name: "index_notes_on_prospect_id"
  end

  create_table "prospects", force: :cascade do |t|
    t.string "company_name"
    t.string "position_name"
    t.string "recruiter_name"
    t.string "stage_name"
    t.string "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stage_events", force: :cascade do |t|
    t.bigint "prospect_id", null: false
    t.string "stage_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prospect_id"], name: "index_stage_events_on_prospect_id"
  end

  add_foreign_key "notes", "prospects"
  add_foreign_key "stage_events", "prospects"
end
