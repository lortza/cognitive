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

ActiveRecord::Schema.define(version: 20160726003852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "healthy_thought_types", force: :cascade do |t|
    t.string   "name"
    t.string   "explanation"
    t.text     "example"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "records", force: :cascade do |t|
    t.date     "date"
    t.text     "event"
    t.text     "thought_about_event"
    t.text     "feeling_about_thought"
    t.text     "unhealthy_action"
    t.integer  "unhealthy_thought_type_id"
    t.integer  "healthy_thought_type_id"
    t.text     "reframe_statement"
    t.text     "healthy_action"
    t.boolean  "star",                      default: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.integer  "user_id"
  end

  add_index "records", ["healthy_thought_type_id"], name: "index_records_on_healthy_thought_type_id", using: :btree
  add_index "records", ["unhealthy_thought_type_id"], name: "index_records_on_unhealthy_thought_type_id", using: :btree
  add_index "records", ["user_id"], name: "index_records_on_user_id", using: :btree

  create_table "unhealthy_thought_types", force: :cascade do |t|
    t.string   "name"
    t.string   "explanation"
    t.text     "example"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "username"
    t.string   "slug"
    t.boolean  "admin"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "records", "healthy_thought_types"
  add_foreign_key "records", "unhealthy_thought_types"
  add_foreign_key "records", "users"
end
