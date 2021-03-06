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

ActiveRecord::Schema.define(version: 20160406145016) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bmps", force: :cascade do |t|
    t.float    "na"
    t.float    "k"
    t.float    "cl"
    t.float    "bicarb"
    t.float    "bun"
    t.float    "cr"
    t.float    "glucose"
    t.integer  "visit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bmps", ["visit_id"], name: "index_bmps_on_visit_id", using: :btree

  create_table "cbcs", force: :cascade do |t|
    t.integer  "wbc"
    t.float    "hgb"
    t.integer  "hct"
    t.integer  "plt"
    t.integer  "visit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cbcs", ["visit_id"], name: "index_cbcs_on_visit_id", using: :btree

  create_table "dxes", force: :cascade do |t|
    t.string   "code"
    t.string   "description"
    t.integer  "visit_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "dxes", ["visit_id"], name: "index_dxes_on_visit_id", using: :btree

  create_table "patients", force: :cascade do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.integer  "mrn"
    t.string   "attendingName"
    t.integer  "roomNumber"
    t.string   "codeStatus"
    t.string   "dob"
    t.integer  "age"
    t.string   "allergies"
    t.string   "diet"
    t.string   "nextOfKin"
    t.string   "nextOfKinPhoneNumber"
    t.string   "isolation"
    t.text     "pmh"
    t.text     "homeMeds"
    t.text     "surgicalHx"
    t.string   "familyHistory"
    t.boolean  "smoking"
    t.boolean  "alcohol"
    t.boolean  "drugs"
    t.string   "psychHx"
    t.string   "occupation"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "ptptts", force: :cascade do |t|
    t.integer  "pt"
    t.integer  "aptt"
    t.integer  "inr"
    t.integer  "visit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ptptts", ["visit_id"], name: "index_ptptts_on_visit_id", using: :btree

  create_table "rxes", force: :cascade do |t|
    t.string   "drugName"
    t.float    "dosage"
    t.string   "route"
    t.string   "frequency"
    t.integer  "visit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "rxes", ["visit_id"], name: "index_rxes_on_visit_id", using: :btree

  create_table "visits", force: :cascade do |t|
    t.string   "imaging"
    t.string   "otherProcedures"
    t.string   "chiefComplaint"
    t.string   "loc"
    t.string   "gcs"
    t.string   "neuroNotes"
    t.string   "rhythm"
    t.string   "ejectionFraction"
    t.string   "cardioNotes"
    t.string   "ventSettings"
    t.string   "abg"
    t.string   "pulmonaryNotes"
    t.string   "npo"
    t.string   "diet"
    t.string   "tubes"
    t.string   "giNotes"
    t.boolean  "foley"
    t.string   "foleyPlaceDate"
    t.string   "renalNotes"
    t.string   "glucoseSticks"
    t.string   "endoNotes"
    t.string   "sirsSepsisAlert"
    t.string   "antibiotics"
    t.string   "cultures"
    t.string   "idNotes"
    t.boolean  "intact"
    t.string   "woundCare"
    t.string   "incision"
    t.boolean  "decubitisUlcers"
    t.string   "edema"
    t.string   "pt"
    t.string   "skinNotes"
    t.string   "assessmentPlan"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "patient_id"
  end

  add_index "visits", ["patient_id"], name: "index_visits_on_patient_id", using: :btree

  create_table "vitals", force: :cascade do |t|
    t.integer  "o2Sat"
    t.float    "temp"
    t.integer  "heartRate"
    t.integer  "systolic"
    t.integer  "diastolic"
    t.integer  "respiratoryRate"
    t.integer  "visit_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "vitals", ["visit_id"], name: "index_vitals_on_visit_id", using: :btree

  add_foreign_key "bmps", "visits"
  add_foreign_key "cbcs", "visits"
  add_foreign_key "dxes", "visits"
  add_foreign_key "ptptts", "visits"
  add_foreign_key "rxes", "visits"
  add_foreign_key "visits", "patients"
  add_foreign_key "vitals", "visits"
end
