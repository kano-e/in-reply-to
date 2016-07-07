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

ActiveRecord::Schema.define(version: 20160707111040) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.json     "credentials"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.index ["provider", "uid"], name: "idx_accounts_provider_uid", unique: true, using: :btree
    t.index ["user_id"], name: "index_accounts_on_user_id", using: :btree
  end

  create_table "advices", force: :cascade do |t|
    t.text     "detail"
    t.integer  "worry_id"
    t.integer  "in_reply_to_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "replies_count",  default: 0
    t.datetime "closed_at"
    t.index ["in_reply_to_id"], name: "index_advices_on_in_reply_to_id", using: :btree
    t.index ["worry_id"], name: "index_advices_on_worry_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "worries", force: :cascade do |t|
    t.text     "detail"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "advices_count", default: 0
    t.datetime "closed_at"
  end

  add_foreign_key "accounts", "users"
  add_foreign_key "advices", "worries"
end
