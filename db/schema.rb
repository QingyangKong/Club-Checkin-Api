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

ActiveRecord::Schema.define(version: 2018_11_06_135551) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "card_reporters", force: :cascade do |t|
    t.integer "reporter_group_id"
    t.string "reporter_pk"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "card_supporters", force: :cascade do |t|
    t.integer "supporter_group_id"
    t.string "supporter_pk"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "group_cards", force: :cascade do |t|
    t.string "user_pk"
    t.string "url"
    t.string "message"
    t.integer "group_card_id"
    t.string "check_in_time"
    t.integer "report_group_id"
    t.integer "support_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "contract_addr"
    t.string "admin_addr"
    t.decimal "total_erc"
    t.integer "group_member_id"
    t.integer "group_card_id"
    t.string "started_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.integer "group_member_id"
    t.string "user_pk"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "pub_key"
    t.string "url"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
