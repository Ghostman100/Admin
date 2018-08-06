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

ActiveRecord::Schema.define(version: 2018_08_06_085654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bases", id: :serial, force: :cascade do |t|
    t.integer "stake"
    t.integer "num_of_players"
    t.integer "num_of_winners"
    t.integer "count", default: 0, null: false
    t.string "names", array: true
    t.string "users_id", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "choices", id: :serial, force: :cascade do |t|
    t.integer "stake"
    t.integer "num_of_players"
    t.integer "num_of_winners"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_choices_on_user_id"
  end

  create_table "rooms", id: :serial, force: :cascade do |t|
    t.integer "stake"
    t.integer "num_of_players"
    t.integer "num_of_winners"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "pending"
    t.string "winners", array: true
    t.index ["user_id"], name: "index_rooms_on_user_id"
  end

  create_table "user_choices", id: :serial, force: :cascade do |t|
    t.integer "stake"
    t.integer "num_of_players"
    t.integer "num_of_winners"
    t.integer "user_id"
    t.index ["user_id"], name: "index_user_choices_on_user_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "user_id"
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.boolean "in_game"
    t.integer "room_id"
    t.integer "user_choice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_users_on_room_id"
    t.index ["user_choice_id"], name: "index_users_on_user_choice_id"
  end

end
