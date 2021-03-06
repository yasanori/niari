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

ActiveRecord::Schema.define(version: 2020_04_24_103414) do

  create_table "entries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_entries_on_room_id"
    t.index ["user_id"], name: "index_entries_on_user_id"
  end

  create_table "follows", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "followable_type", null: false
    t.bigint "followable_id", null: false
    t.string "follower_type", null: false
    t.bigint "follower_id", null: false
    t.boolean "blocked", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["followable_id", "followable_type"], name: "fk_followables"
    t.index ["followable_type", "followable_id"], name: "index_follows_on_followable_type_and_followable_id"
    t.index ["follower_id", "follower_type"], name: "fk_follows"
    t.index ["follower_type", "follower_id"], name: "index_follows_on_follower_type_and_follower_id"
  end

  create_table "memories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "photo", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_memories_on_user_id"
  end

  create_table "messages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "text", null: false
    t.bigint "user_id"
    t.bigint "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "receive_user_id"
    t.integer "receive_user_id_checked_message"
    t.index ["room_id"], name: "index_messages_on_room_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "photograph_requests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "work_id"
    t.bigint "requester_id"
    t.text "text"
    t.integer "approval", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["requester_id"], name: "index_photograph_requests_on_requester_id"
    t.index ["work_id"], name: "index_photograph_requests_on_work_id"
  end

  create_table "photograph_works", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "photographer_id"
    t.date "date", null: false
    t.bigint "prefecture_id"
    t.text "text", null: false
    t.integer "progress", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photographer_id"], name: "index_photograph_works_on_photographer_id"
    t.index ["prefecture_id"], name: "index_photograph_works_on_prefecture_id"
  end

  create_table "prefectures", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "image", default: ""
    t.text "profile"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "camera_id", default: 2
    t.bigint "prefecture_id"
    t.bigint "main_photo_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["main_photo_id"], name: "index_users_on_main_photo_id"
    t.index ["name"], name: "index_users_on_name", unique: true
    t.index ["prefecture_id"], name: "index_users_on_prefecture_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "entries", "rooms"
  add_foreign_key "entries", "users"
  add_foreign_key "memories", "users"
  add_foreign_key "messages", "rooms"
  add_foreign_key "messages", "users"
  add_foreign_key "photograph_requests", "photograph_works", column: "work_id"
  add_foreign_key "photograph_requests", "users", column: "requester_id"
  add_foreign_key "photograph_works", "prefectures"
  add_foreign_key "photograph_works", "users", column: "photographer_id"
  add_foreign_key "users", "memories", column: "main_photo_id"
  add_foreign_key "users", "prefectures"
end
