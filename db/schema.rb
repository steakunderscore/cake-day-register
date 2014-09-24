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

ActiveRecord::Schema.define(version: 20140922093026) do

  create_table "bakers", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "email"
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
  end

  create_table "cakes", force: true do |t|
    t.text     "name"
    t.integer  "baker_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cakes", ["baker_id"], name: "index_cakes_on_baker_id"

  create_table "whirls", force: true do |t|
    t.integer  "baker_id"
    t.integer  "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "whirls", ["baker_id"], name: "index_whirls_on_baker_id"

end
