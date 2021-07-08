# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_08_181558) do

  create_table "applications", force: :cascade do |t|
    t.integer "user_id"
    t.integer "program_id"
    t.string "first_name"
    t.string "last_name"
    t.date "DOB"
    t.string "grade"
    t.string "gender"
    t.string "school"
    t.string "primary_doctor"
    t.string "allergies"
    t.string "medical_conditions"
    t.string "medications"
    t.string "emergency_contact_name"
    t.string "emergency_contact_relationship"
    t.string "emergency_contact_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string "name"
    t.string "agency"
    t.integer "contact_number"
    t.string "grade_level"
    t.text "address"
    t.integer "capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.integer "zip_code"
    t.integer "phone_number"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "uid"
  end

end
