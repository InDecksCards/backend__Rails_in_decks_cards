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

ActiveRecord::Schema.define(version: 2018_12_13_045018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.string "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cards_decks", id: false, force: :cascade do |t|
    t.integer "deck_id"
    t.integer "card_id"
  end

  create_table "decks", force: :cascade do |t|
    t.string "title"
    t.integer "views"
    t.decimal "price"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_decks_on_author_id"
  end

  create_table "faces", force: :cascade do |t|
    t.bigint "card_id"
    t.string "question"
    t.string "a1"
    t.string "a2"
    t.string "a3"
    t.string "a4"
    t.string "a5"
    t.string "a6"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "stack", default: 0
    t.index ["card_id"], name: "index_faces_on_card_id"
  end

  create_table "flags", force: :cascade do |t|
    t.bigint "card_id"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "resolved"
    t.index ["card_id"], name: "index_flags_on_card_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "deck_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deck_id"], name: "index_subscriptions_on_deck_id"
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
  end

  add_foreign_key "faces", "cards"
  add_foreign_key "flags", "cards"
  add_foreign_key "subscriptions", "decks"
  add_foreign_key "subscriptions", "users"
end
