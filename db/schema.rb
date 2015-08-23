# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150823141421) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "nickname"
    t.string   "email"
    t.json     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  add_index "admins", ["uid", "provider"], name: "index_admins_on_uid_and_provider", unique: true, using: :btree

  create_table "business_users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.integer  "phone_number"
    t.string   "email"
    t.text     "address"
    t.json     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.string   "company_name"
  end

  add_index "business_users", ["company_id"], name: "index_business_users_on_company_id", using: :btree
  add_index "business_users", ["email"], name: "index_business_users_on_email", using: :btree
  add_index "business_users", ["reset_password_token"], name: "index_business_users_on_reset_password_token", unique: true, using: :btree
  add_index "business_users", ["uid", "provider"], name: "index_business_users_on_uid_and_provider", unique: true, using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "industry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "desks", force: :cascade do |t|
    t.string   "service_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "business_user_id"
  end

  add_index "desks", ["business_user_id"], name: "index_desks_on_business_user_id", using: :btree

  create_table "individual_users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "email"
    t.integer  "phone_number"
    t.string   "first_name"
    t.string   "last_name"
    t.json     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "individual_users", ["email"], name: "index_individual_users_on_email", using: :btree
  add_index "individual_users", ["reset_password_token"], name: "index_individual_users_on_reset_password_token", unique: true, using: :btree
  add_index "individual_users", ["uid", "provider"], name: "index_individual_users_on_uid_and_provider", unique: true, using: :btree

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "individual_user_id"
    t.integer  "business_user_id"
  end

  add_index "sessions", ["business_user_id"], name: "index_sessions_on_business_user_id", using: :btree
  add_index "sessions", ["individual_user_id"], name: "index_sessions_on_individual_user_id", using: :btree

  add_foreign_key "business_users", "companies"
  add_foreign_key "desks", "business_users"
  add_foreign_key "sessions", "business_users"
  add_foreign_key "sessions", "individual_users"
end