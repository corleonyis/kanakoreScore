# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_05_160247) do
  create_table "grand_slums", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "participant_id", null: false
    t.string "name", null: false
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participants", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "name", null: false
    t.integer "handicap", default: 0
    t.boolean "isMember", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "game_point", default: 0
    t.integer "total_point", default: 0
    t.integer "first", default: 0
    t.integer "second", default: 0
    t.integer "third", default: 0
    t.integer "fourth", default: 0
    t.integer "total_games", default: 0
  end

  create_table "scores", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.date "date", null: false
    t.integer "first_participantID", null: false
    t.integer "first_score", null: false
    t.integer "second_participantID", null: false
    t.integer "second_score", null: false
    t.integer "third_participantID", null: false
    t.integer "third_score", null: false
    t.integer "fourth_participantID", null: false
    t.integer "fourth_score", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
