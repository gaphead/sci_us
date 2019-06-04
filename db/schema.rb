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

ActiveRecord::Schema.define(version: 2019_06_03_170932) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donations", force: :cascade do |t|
    t.string "state"
    t.string "project_id"
    t.integer "amount_cents", default: 0, null: false
    t.string "amount_currency", default: "CAD", null: false
    t.jsonb "payment"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_donations_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "project_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_favorites_on_project_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "state"
    t.string "project_sku"
    t.integer "amount_cents", default: 0, null: false
    t.string "amount_currency", default: "CAD", null: false
    t.jsonb "payment"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "short_description"
    t.text "long_description"
    t.string "url"
    t.string "location"
    t.string "organization"
    t.text "org_description"
    t.boolean "active"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
    t.integer "volunteers"
    t.integer "donation_cents", default: 0, null: false
    t.integer "price_cents", default: 0, null: false
    t.string "sku"
  end

  create_table "user_catagory_counters", force: :cascade do |t|
    t.string "category"
    t.integer "counter"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_catagory_counters_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "photo"
    t.boolean "researcher_status"
    t.text "description"
    t.string "interest"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "donations", "users"
  add_foreign_key "favorites", "projects"
  add_foreign_key "favorites", "users"
  add_foreign_key "orders", "users"
  add_foreign_key "user_catagory_counters", "users"
end
