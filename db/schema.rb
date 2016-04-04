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

ActiveRecord::Schema.define(version: 20160404134102) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.string   "isoloation"
    t.text     "pmh"
    t.text     "homeMeds"
    t.text     "surgicalHx"
    t.string   "familyHistory"
    t.string   "socialHistory"
    t.string   "smoking"
    t.string   "alcohol"
    t.string   "drugs"
    t.string   "psychHx"
    t.string   "occupation"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
