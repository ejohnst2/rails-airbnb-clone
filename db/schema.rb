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

ActiveRecord::Schema.define(version: 20171124134725) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachinary_files", id: :serial, force: :cascade do |t|
    t.string "attachinariable_type"
    t.integer "attachinariable_id"
    t.string "scope"
    t.string "public_id"
    t.string "version"
    t.integer "width"
    t.integer "height"
    t.string "format"
    t.string "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent"
  end

  create_table "bunkers", force: :cascade do |t|
    t.bigint "user_id"
    t.string "size"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.string "name"
    t.text "detailed_description"
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.integer "zip_code"
    t.string "city"
    t.string "country"
    t.index ["user_id"], name: "index_bunkers_on_user_id"
  end

  create_table "bunkers_features", id: false, force: :cascade do |t|
    t.bigint "bunker_id"
    t.bigint "feature_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bunker_id"], name: "index_bunkers_features_on_bunker_id"
    t.index ["feature_id"], name: "index_bunkers_features_on_feature_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "recipient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "features", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "fa_icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string "header"
    t.text "content"
    t.bigint "conversation_id"
    t.bigint "user_id"
    t.boolean "read", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "rating"
    t.bigint "bunker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bunker_id"], name: "index_reviews_on_bunker_id"
  end

  create_table "trips", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "bunker_id"
    t.date "booking_date"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "approved", default: false
    t.index ["bunker_id"], name: "index_trips_on_bunker_id"
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "facebook_picture_url"
    t.string "first_name"
    t.string "last_name"
    t.string "token"
    t.datetime "token_expiry"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bunkers", "users"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
  add_foreign_key "reviews", "bunkers"
  add_foreign_key "trips", "bunkers"
  add_foreign_key "trips", "users"
end
