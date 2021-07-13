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

ActiveRecord::Schema.define(version: 2021_07_13_230326) do

  create_table "applications", force: :cascade do |t|
    t.integer "participant_id"
    t.integer "user_id"
    t.string "program_name"
    t.string "primary_doctor"
    t.string "allergies"
    t.string "medical_conditions"
    t.string "medications"
    t.string "emergency_contact"
    t.integer "emergency_contact_number"
    t.string "emergency_contact_relationship"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "participants", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "DOB"
    t.string "grade"
    t.string "gender"
    t.string "school"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string "name"
    t.string "agency"
    t.integer "contact_number"
    t.string "grade_level"
    t.text "address"
    t.string "borough"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "provider"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
