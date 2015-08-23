ActiveRecord::Schema.define(version: 20150823100816) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_users", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone_number"
    t.string   "email"
    t.text     "address"
    t.string   "password"
    t.string   "confirm_password"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "company_id"
    t.string   "company_name"
  end

  add_index "business_users", ["company_id"], name: "index_business_users_on_company_id", using: :btree

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
    t.string   "email"
    t.integer  "phone_number"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password"
    t.string   "confirm_password"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

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
