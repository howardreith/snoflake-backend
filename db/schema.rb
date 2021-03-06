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

ActiveRecord::Schema.define(version: 20181206193823) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_comments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_comments_on_event_id"
    t.index ["user_id"], name: "index_event_comments_on_user_id"
  end

  create_table "event_invitations", force: :cascade do |t|
    t.bigint "user_inviter_id", null: false
    t.bigint "group_inviter_id"
    t.bigint "event_id", null: false
    t.bigint "invited_id", null: false
    t.string "message"
    t.boolean "accepted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_invitations_on_event_id"
    t.index ["group_inviter_id"], name: "index_event_invitations_on_group_inviter_id"
    t.index ["invited_id"], name: "index_event_invitations_on_invited_id"
    t.index ["user_inviter_id"], name: "index_event_invitations_on_user_inviter_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "location_address"
    t.string "location_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "creator_id"
    t.bigint "group_id"
    t.index ["creator_id"], name: "index_events_on_creator_id"
    t.index ["group_id"], name: "index_events_on_group_id"
  end

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "group_comments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "group_id"
    t.index ["group_id"], name: "index_group_comments_on_group_id"
    t.index ["user_id"], name: "index_group_comments_on_user_id"
  end

  create_table "group_invitations", force: :cascade do |t|
    t.bigint "inviter_id", null: false
    t.bigint "invited_id", null: false
    t.bigint "group_id", null: false
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "accepted"
    t.index ["group_id"], name: "index_group_invitations_on_group_id"
    t.index ["invited_id"], name: "index_group_invitations_on_invited_id"
    t.index ["inviter_id"], name: "index_group_invitations_on_inviter_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.integer "group_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "creator_id"
    t.index ["creator_id"], name: "index_groups_on_creator_id"
  end

  create_table "user_events_plans", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "rsvp"
    t.index ["event_id"], name: "index_user_events_plans_on_event_id"
    t.index ["user_id"], name: "index_user_events_plans_on_user_id"
  end

  create_table "user_groups_memberships", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_user_groups_memberships_on_group_id"
    t.index ["user_id"], name: "index_user_groups_memberships_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  add_foreign_key "event_comments", "events"
  add_foreign_key "event_comments", "users"
  add_foreign_key "event_invitations", "events"
  add_foreign_key "events", "users", column: "creator_id"
  add_foreign_key "examples", "users"
  add_foreign_key "group_comments", "users"
  add_foreign_key "group_invitations", "groups"
  add_foreign_key "groups", "users", column: "creator_id"
  add_foreign_key "user_events_plans", "events"
  add_foreign_key "user_events_plans", "users"
  add_foreign_key "user_groups_memberships", "groups"
  add_foreign_key "user_groups_memberships", "users"
end
