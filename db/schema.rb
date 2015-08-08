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

ActiveRecord::Schema.define(version: 20150808042747) do

  create_table "employees", force: :cascade do |t|
    t.string   "emp_name",   limit: 255
    t.string   "emp_des",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "avatar",     limit: 255
  end

  create_table "members", force: :cascade do |t|
    t.string   "member_name", limit: 255
    t.string   "member_bio",  limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "members_teams", id: false, force: :cascade do |t|
    t.integer "team_id",   limit: 4, null: false
    t.integer "member_id", limit: 4, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "order_no", limit: 4
  end

  create_table "products", force: :cascade do |t|
    t.string "prod_name", limit: 255
    t.string "prod_desc", limit: 255
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "user_name",  limit: 255
    t.string   "user_des",   limit: 255
    t.integer  "user_mob",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "retailers", force: :cascade do |t|
    t.integer "reatilerno", limit: 4
  end

  create_table "teams", force: :cascade do |t|
    t.string   "team_name",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
