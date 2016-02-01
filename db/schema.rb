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

ActiveRecord::Schema.define(version: 20150418194500) do

  create_table "carries", id: false, force: :cascade do |t|
    t.integer "pkg_id", limit: 4, null: false
    t.integer "rut_id", limit: 4, null: false
    t.integer "ins_id", limit: 4, null: false
  end

  add_index "carries", ["rut_id", "ins_id"], name: "rut_id", using: :btree

  create_table "collects", id: false, force: :cascade do |t|
    t.integer "cou_id", limit: 4, null: false
    t.integer "pkg_id", limit: 4, null: false
    t.integer "sdr_id", limit: 4, null: false
  end

  add_index "collects", ["pkg_id"], name: "pkg_id", using: :btree
  add_index "collects", ["sdr_id"], name: "sdr_id", using: :btree

  create_table "couriers", id: false, force: :cascade do |t|
    t.integer "courier_id", limit: 4, null: false
    t.integer "store_id",   limit: 4, null: false
  end

  add_index "couriers", ["store_id"], name: "store_id", using: :btree

  create_table "customer_adds", primary_key: "c_id", force: :cascade do |t|
    t.string "country", limit: 20, null: false
    t.string "state",   limit: 20, null: false
    t.string "city",    limit: 20, null: false
    t.string "street",  limit: 20, null: false
    t.string "zipcode", limit: 6,  null: false
  end

  add_index "customer_adds", ["zipcode"], name: "zipcode", using: :btree

  create_table "customers", primary_key: "customer_id", force: :cascade do |t|
    t.string "phone",    limit: 12, null: false
    t.string "email",    limit: 50, null: false
    t.string "lname",    limit: 20, null: false
    t.string "fname",    limit: 20, null: false
    t.string "timezone", limit: 6,  null: false
  end

  add_index "customers", ["email"], name: "email_UNIQUE", unique: true, using: :btree

  create_table "delivers", id: false, force: :cascade do |t|
    t.integer "cou_id", limit: 4, null: false
    t.integer "pkg_id", limit: 4, null: false
    t.integer "rcv_id", limit: 4, null: false
  end

  add_index "delivers", ["pkg_id"], name: "pkg_id", using: :btree
  add_index "delivers", ["rcv_id"], name: "rcv_id", using: :btree

  create_table "holds", id: false, force: :cascade do |t|
    t.integer "pkg_id", limit: 4, null: false
    t.integer "sto_id", limit: 4, null: false
  end

  add_index "holds", ["sto_id"], name: "sto_id", using: :btree

  create_table "instances", id: false, force: :cascade do |t|
    t.integer  "route_id",    limit: 4,  null: false
    t.integer  "instance_id", limit: 4,  null: false
    t.string   "method",      limit: 10, null: false
    t.datetime "dept_time"
    t.datetime "arvl_time"
  end

  create_table "packages", primary_key: "package_id", force: :cascade do |t|
    t.integer "sender_id",   limit: 4,  null: false
    t.integer "receiver_id", limit: 4,  null: false
    t.string  "content",     limit: 20, null: false
    t.float   "length",      limit: 53
    t.float   "width",       limit: 53
    t.float   "height",      limit: 53
    t.float   "weight",      limit: 53, null: false
    t.float   "price",       limit: 53, null: false
  end

  add_index "packages", ["receiver_id"], name: "receiver_id", using: :btree
  add_index "packages", ["sender_id"], name: "sender_id", using: :btree

  create_table "routes", primary_key: "route_id", force: :cascade do |t|
    t.integer "dept", limit: 4, null: false
    t.integer "arvl", limit: 4, null: false
  end

  add_index "routes", ["arvl"], name: "arvl", using: :btree
  add_index "routes", ["dept"], name: "dept", using: :btree

  create_table "store_adds", primary_key: "s_id", force: :cascade do |t|
    t.string "country",  limit: 20, null: false
    t.string "state",    limit: 20, null: false
    t.string "city",     limit: 20, null: false
    t.string "street",   limit: 20, null: false
    t.string "zipcode",  limit: 6,  null: false
    t.string "timezone", limit: 6,  null: false
  end

  create_table "stores", primary_key: "store_id", force: :cascade do |t|
    t.string  "store_name",  limit: 20
    t.integer "store_level", limit: 4,  null: false
    t.string  "phone",       limit: 12
    t.integer "supervisor",  limit: 4
  end

  add_index "stores", ["supervisor"], name: "supervisor", using: :btree

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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  limit: 1
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "zipcodes", primary_key: "zipcode", force: :cascade do |t|
    t.integer "store_id", limit: 4, null: false
  end

  add_index "zipcodes", ["store_id"], name: "FK_zipcode_store", using: :btree

  add_foreign_key "carries", "instances", column: "ins_id", primary_key: "instance_id", name: "carries_ibfk_2"
  add_foreign_key "carries", "instances", column: "rut_id", primary_key: "route_id", name: "carries_ibfk_2"
  add_foreign_key "carries", "packages", column: "pkg_id", primary_key: "package_id", name: "carries_ibfk_1"
  add_foreign_key "collects", "couriers", column: "cou_id", primary_key: "courier_id", name: "collects_ibfk_1"
  add_foreign_key "collects", "customers", column: "sdr_id", primary_key: "customer_id", name: "collects_ibfk_3"
  add_foreign_key "collects", "packages", column: "pkg_id", primary_key: "package_id", name: "collects_ibfk_2"
  add_foreign_key "couriers", "stores", primary_key: "store_id", name: "couriers_ibfk_1"
  add_foreign_key "customer_adds", "customers", column: "c_id", primary_key: "customer_id", name: "customer_adds_ibfk_1"
  add_foreign_key "customer_adds", "zipcodes", column: "zipcode", primary_key: "zipcode", name: "customer_adds_ibfk_2"
  add_foreign_key "delivers", "couriers", column: "cou_id", primary_key: "courier_id", name: "delivers_ibfk_1"
  add_foreign_key "delivers", "customers", column: "rcv_id", primary_key: "customer_id", name: "delivers_ibfk_3"
  add_foreign_key "delivers", "packages", column: "pkg_id", primary_key: "package_id", name: "delivers_ibfk_2"
  add_foreign_key "holds", "packages", column: "pkg_id", primary_key: "package_id", name: "holds_ibfk_1"
  add_foreign_key "holds", "stores", column: "sto_id", primary_key: "store_id", name: "holds_ibfk_2"
  add_foreign_key "instances", "routes", primary_key: "route_id", name: "instances_ibfk_1"
  add_foreign_key "packages", "customers", column: "receiver_id", primary_key: "customer_id", name: "packages_ibfk_2"
  add_foreign_key "packages", "customers", column: "sender_id", primary_key: "customer_id", name: "packages_ibfk_1"
  add_foreign_key "routes", "stores", column: "arvl", primary_key: "store_id", name: "routes_ibfk_2"
  add_foreign_key "routes", "stores", column: "dept", primary_key: "store_id", name: "routes_ibfk_1"
  add_foreign_key "store_adds", "stores", column: "s_id", primary_key: "store_id", name: "store_adds_ibfk_1"
  add_foreign_key "zipcodes", "stores", primary_key: "store_id", name: "FK_zipcode_store"
end
