# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_03_110153) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "beautician_treatment_tables", force: :cascade do |t|
    t.bigint "beautician_id", null: false
    t.bigint "treatment_id", null: false
    t.string "name"
    t.string "description"
    t.integer "cost"
    t.index ["beautician_id"], name: "index_beautician_treatment_tables_on_beautician_id"
    t.index ["treatment_id"], name: "index_beautician_treatment_tables_on_treatment_id"
  end

  create_table "beautician_treatments", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "beautician_id", null: false
    t.bigint "treatment_id", null: false
    t.string "name"
    t.string "description"
    t.integer "cost"
    t.index ["beautician_id"], name: "index_beautician_treatments_on_beautician_id"
    t.index ["treatment_id"], name: "index_beautician_treatments_on_treatment_id"
  end

  create_table "beauticians", force: :cascade do |t|
    t.text "description"
    t.string "location"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_beauticians_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.string "status"
    t.datetime "date"
    t.time "time"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "location"
    t.integer "price_cents", default: 0, null: false
    t.string "sku"
    t.bigint "beautician_treatment_id", null: false
    t.index ["beautician_treatment_id"], name: "index_bookings_on_beautician_treatment_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "state"
    t.string "booking_sku"
    t.integer "amount_cents", default: 0, null: false
    t.string "checkout_session_id"
    t.bigint "user_id", null: false
    t.bigint "booking_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_id"], name: "index_orders_on_booking_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "rating"
    t.bigint "booking_id", null: false
    t.bigint "beautician_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["beautician_id"], name: "index_reviews_on_beautician_id"
    t.index ["booking_id"], name: "index_reviews_on_booking_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "treatments", force: :cascade do |t|
    t.string "name"
    t.integer "cost"
    t.text "description"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "beautician_treatment_tables", "beauticians"
  add_foreign_key "beautician_treatment_tables", "treatments"
  add_foreign_key "beautician_treatments", "beauticians"
  add_foreign_key "beautician_treatments", "treatments"
  add_foreign_key "beauticians", "users"
  add_foreign_key "bookings", "beautician_treatments"
  add_foreign_key "bookings", "users"
  add_foreign_key "orders", "bookings"
  add_foreign_key "orders", "users"
  add_foreign_key "reviews", "beauticians"
  add_foreign_key "reviews", "bookings"
  add_foreign_key "reviews", "users"
end
