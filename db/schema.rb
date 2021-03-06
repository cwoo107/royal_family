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

ActiveRecord::Schema.define(version: 2019_06_26_015451) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "full_profiles", force: :cascade do |t|
    t.boolean "commited_to_christ"
    t.string "where_when"
    t.string "church"
    t.string "how_long"
    t.string "pastors_name"
    t.string "church_phone"
    t.boolean "worked_with_children"
    t.string "describe"
    t.boolean "worked_with_abused"
    t.boolean "can_lead_devotion"
    t.string "description_of_you"
    t.string "strengths"
    t.string "weaknesses"
    t.string "preferred_age"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_full_profiles_on_user_id"
  end

  create_table "personals", force: :cascade do |t|
    t.string "birthdate"
    t.string "sex"
    t.boolean "married"
    t.string "occupation"
    t.string "employer"
    t.string "years_in_state"
    t.string "months_in_state"
    t.string "emergency_contact"
    t.string "relationship"
    t.string "emer_phone"
    t.string "shirt_size"
    t.boolean "cpr"
    t.boolean "first_aid"
    t.boolean "life_guard"
    t.boolean "nurse"
    t.boolean "emt"
    t.boolean "have_worked_with_abused"
    t.string "describe_work_with_abused"
    t.boolean "was_victim"
    t.boolean "discuss_abuse"
    t.string "clarify"
    t.string "why_you_want_to_counsel"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_personals_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "address"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "references", force: :cascade do |t|
    t.string "high"
    t.string "school"
    t.string "date1"
    t.string "college"
    t.string "major"
    t.string "date2"
    t.string "reference1"
    t.string "ref1_addr"
    t.string "ref1_phone"
    t.string "reference2"
    t.string "ref2_addr"
    t.string "ref2_phone"
    t.string "reference3"
    t.string "ref3_addr"
    t.string "ref3_phone"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_references_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "full_profiles", "users"
  add_foreign_key "personals", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "references", "users"
end
