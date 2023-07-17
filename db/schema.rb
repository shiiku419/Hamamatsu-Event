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

ActiveRecord::Schema[7.0].define(version: 2023_07_14_010054) do
  create_table "favorites", charset: "utf8mb4", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", charset: "utf8mb4", force: :cascade do |t|
    t.string "municipality_name"
    t.string "event_name"
    t.string "event_name_kana"
    t.string "event_name_english"
    t.date "start_date"
    t.date "end_date"
    t.time "start_time"
    t.time "end_time"
    t.text "remarks"
    t.text "event_details"
    t.string "basic_fee"
    t.string "detailed_fee"
    t.string "contact_name"
    t.string "contact_phone_number"
    t.string "contact_extension_number"
    t.string "organizer"
    t.string "venue_name"
    t.string "address"
    t.text "directions"
    t.decimal "latitude", precision: 10
    t.decimal "longitude", precision: 10
    t.text "access_method"
    t.text "parking_info"
    t.integer "capacity"
    t.date "application_end_date"
    t.time "application_end_time"
    t.text "application_method"
    t.string "url"
    t.string "category"
    t.string "district"
    t.date "publication_date"
    t.date "update_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
