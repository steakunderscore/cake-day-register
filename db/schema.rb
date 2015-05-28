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

ActiveRecord::Schema.define(version: 20150303053054) do

  create_table "bakers", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "email"
  end

  create_table "cake_days", force: :cascade do |t|
    t.integer  "baker_id"
    t.integer  "cake_id"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cake_days", ["baker_id"], name: "index_cake_days_on_baker_id"
  add_index "cake_days", ["cake_id"], name: "index_cake_days_on_cake_id"

  create_table "cakes", force: :cascade do |t|
    t.text     "name"
    t.integer  "baker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cakes", ["baker_id"], name: "index_cakes_on_baker_id"

  create_table "whirls", force: :cascade do |t|
    t.integer  "baker_id"
    t.integer  "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "whirls", ["baker_id"], name: "index_whirls_on_baker_id"

end
