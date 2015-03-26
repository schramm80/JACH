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

ActiveRecord::Schema.define(version: 20150304091105) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "campaign_id"
    t.integer  "social_media_profile_id"
    t.string   "status",                  limit: 255
    t.string   "comment",                 limit: 255
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bookings", ["campaign_id"], name: "index_bookings_on_campaign_id", using: :btree
  add_index "bookings", ["social_media_profile_id"], name: "index_bookings_on_social_media_profile_id", using: :btree

  create_table "campaigns", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "status",        limit: 255
    t.integer  "budget"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.string   "brand",         limit: 255
    t.text     "description"
    t.string   "campaign_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "social_media_profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "profile_name",    limit: 255
    t.string   "status",          limit: 255
    t.text     "description"
    t.string   "followers_count", limit: 255
    t.string   "city",            limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "social_media_profiles", ["user_id"], name: "index_social_media_profiles_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
