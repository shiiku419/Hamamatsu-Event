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

ActiveRecord::Schema[7.0].define(version: 2023_05_29_062835) do
  create_table "event_lists", id: :integer, default: nil, charset: "utf8mb3", force: :cascade do |t|
    t.string "MunicipalityName", limit: 50
    t.string "EventName", limit: 200
    t.string "EventName_Kana", limit: 200
    t.string "EventName_English", limit: 200
    t.date "StartDate"
    t.date "EndDate"
    t.time "StartTime"
    t.time "EndTime"
    t.text "Remarks"
    t.text "EventDetails"
    t.string "BasicFee", limit: 100
    t.string "DetailedFee", limit: 100
    t.string "ContactName", limit: 100
    t.string "ContactPhoneNumber", limit: 15
    t.string "ContactExtensionNumber", limit: 10
    t.string "Organizer", limit: 100
    t.string "VenueName", limit: 100
    t.string "Address", limit: 200
    t.text "Directions"
    t.decimal "Latitude", precision: 9, scale: 6
    t.decimal "Longitude", precision: 9, scale: 6
    t.text "AccessMethod"
    t.text "ParkingInfo"
    t.integer "Capacity"
    t.date "ApplicationEndDate"
    t.time "ApplicationEndTime"
    t.text "ApplicationMethod"
    t.string "URL"
    t.string "Category", limit: 100
    t.string "District", limit: 50
    t.date "PublicationDate"
    t.date "UpdateDate"
  end

  create_table "users", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
