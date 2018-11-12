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

ActiveRecord::Schema.define(version: 2018_11_11_041908) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.string "imageable_id"
    t.string "imageable_type"
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incident_details", force: :cascade do |t|
    t.bigint "incident_id"
    t.string "location"
    t.datetime "date"
    t.string "reporter_name"
    t.string "reporter_email"
    t.string "reporter_phone"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["incident_id"], name: "index_incident_details_on_incident_id"
  end

  create_table "incident_types", force: :cascade do |t|
    t.string "name"
    t.string "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incidents", force: :cascade do |t|
    t.string "details"
    t.bigint "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_incidents_on_school_id"
  end

  create_table "involve_incident_types", force: :cascade do |t|
    t.bigint "incident_id"
    t.bigint "incident_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["incident_id"], name: "index_involve_incident_types_on_incident_id"
    t.index ["incident_type_id"], name: "index_involve_incident_types_on_incident_type_id"
  end

  create_table "involve_people", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.bigint "incident_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["incident_id"], name: "index_involve_people_on_incident_id"
  end

  create_table "observers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.bigint "incident_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["incident_id"], name: "index_observers_on_incident_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "details"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "incident_details", "incidents"
  add_foreign_key "incidents", "schools"
  add_foreign_key "involve_incident_types", "incident_types"
  add_foreign_key "involve_incident_types", "incidents"
  add_foreign_key "involve_people", "incidents"
  add_foreign_key "observers", "incidents"
end
