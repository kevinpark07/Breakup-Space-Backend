# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_24_014136) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breakup_messages", force: :cascade do |t|
    t.bigint "topic_id", null: false
    t.string "message"
    t.string "tone"
    t.string "subject"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["topic_id"], name: "index_breakup_messages_on_topic_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.date "date"
    t.time "time"
    t.integer "up_votes"
    t.bigint "user_id", null: false
    t.bigint "post_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "breakup_message_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["breakup_message_id"], name: "index_favorites_on_breakup_message_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.string "content"
    t.date "date"
    t.time "time"
    t.integer "up_votes"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "question"
    t.string "answers"
    t.bigint "topic_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["topic_id"], name: "index_quizzes_on_topic_id"
  end

  create_table "sms_messages", force: :cascade do |t|
    t.string "user_number"
    t.string "message"
  end

  create_table "topics", force: :cascade do |t|
    t.string "theme"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "username"
    t.string "password"
    t.string "profile_image"
    t.integer "age"
    t.string "relationship_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "breakup_messages", "topics"
  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "favorites", "breakup_messages"
  add_foreign_key "favorites", "users"
  add_foreign_key "posts", "users"
  add_foreign_key "quizzes", "topics"
end
