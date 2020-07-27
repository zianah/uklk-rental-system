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

ActiveRecord::Schema.define(version: 2020_07_27_124723) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.text "message"
    t.string "status", default: "Pending"
    t.bigint "rental_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rental_id"], name: "index_bookings_on_rental_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.text "message"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_contacts_on_user_id"
  end

  create_table "rentals", force: :cascade do |t|
    t.string "location"
    t.string "apartment_name"
    t.string "block"
    t.string "level"
    t.string "house_number"
    t.string "aircon"
    t.string "room_number"
    t.string "kitchen"
    t.string "toilet"
    t.string "balcony"
    t.string "image_url"
    t.string "washing_machine"
    t.string "refrigerator"
    t.string "oven"
    t.string "electric_shower"
    t.string "furniture_condition"
    t.text "other_facilities"
    t.string "lift_facility"
    t.text "payment"
    t.string "available_seats"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_rentals_on_user_id"
  end

  create_table "reports", force: :cascade do |t|
    t.text "message"
    t.string "title"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "message"
    t.integer "score"
    t.bigint "user_id"
    t.bigint "rental_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rental_id"], name: "index_reviews_on_rental_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "course"
    t.string "faculty"
    t.string "matric_id"
    t.string "semester"
    t.string "phone_number"
    t.string "gender"
    t.boolean "admin", default: false
    t.boolean "account_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "rentals"
  add_foreign_key "bookings", "users"
  add_foreign_key "contacts", "users"
  add_foreign_key "rentals", "users"
  add_foreign_key "reports", "users"
  add_foreign_key "reviews", "rentals"
  add_foreign_key "reviews", "users"
end
