xb# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150714212732) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ServiceType", force: :cascade do |t|
    t.string "carpet_cleaning"
    t.string "housekeeping"
    t.string "painting"
  end

  create_table "Services", force: :cascade do |t|
    t.string   "unit_number"
    t.string   "unit_size"
    t.boolean  "townhouse",      default: false
    t.date     "service_date"
    t.string   "PO"
    t.boolean  "pad_replace",    default: false
    t.boolean  "inhouse",        default: false
    t.integer  "Unit_SQFT"
    t.string   "paint_type"
    t.boolean  "paint_ceiling",  default: false
    t.boolean  "paint_accent",   default: false
    t.boolean  "drywall",        default: false
    t.boolean  "vinyl",          default: false
    t.boolean  "heavy",          default: false
    t.date     "completed"
    t.date     "time_requested"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "property_id"
    t.integer  "contractor_id"
    t.integer  "status_id"
    t.integer  "ServiceType_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string   "comments"
    t.integer  "property_id"
    t.integer  "contractor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contractor", force: :cascade do |t|
    t.boolean "active_status"
    t.string  "company_name"
    t.string  "main_contact"
    t.string  "address_1"
    t.string  "address_2"
    t.string  "city"
    t.string  "state"
    t.integer "zip"
    t.string  "username"
    t.string  "email"
    t.string  "phone"
    t.string  "fax"
    t.string  "tax_id"
    t.boolean "direct_deposit"
    t.string  "password_digest"
    t.string  "commentsrails"
  end

  create_table "property", force: :cascade do |t|
    t.string  "property_name"
    t.string  "address_1"
    t.string  "address_2"
    t.string  "city"
    t.string  "state"
    t.integer "zip"
    t.string  "phone"
    t.string  "fax"
    t.string  "property_email"
    t.string  "notes"
    t.string  "manager_name"
    t.string  "supervisor_name"
    t.integer "unit_total"
    t.string  "manager_email"
    t.string  "supervisor_email"
  end

  create_table "status", force: :cascade do |t|
    t.string "completed"
    t.string "declined"
    t.string "accepted"
    t.string "pending"
  end

end
