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

ActiveRecord::Schema.define(version: 2018_09_12_165652) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_pieces", force: :cascade do |t|
    t.string "name"
    t.integer "question_id"
    t.string "image_src"
    t.integer "grid_space_id"
    t.integer "x_coor"
    t.integer "y_coor"
    t.string "file_name"
  end

  create_table "game_questions", force: :cascade do |t|
    t.integer "game_id"
    t.integer "question_id"
    t.integer "user_answer"
  end

  create_table "games", force: :cascade do |t|
    t.string "username"
    t.integer "score"
    t.integer "user_id"
  end

  create_table "grid_spaces", force: :cascade do |t|
    t.integer "event_piece_id"
    t.integer "level_id"
    t.boolean "pass_through", default: true
    t.integer "x_coor"
    t.integer "y_coor"
    t.string "image_src", default: "assets/griditems"
    t.string "file_name", default: "dirt0.png"
  end

  create_table "levels", force: :cascade do |t|
    t.integer "difficulty"
    t.integer "game_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "category"
    t.float "difficulty_level"
    t.string "content"
    t.string "answer"
    t.string "option1"
    t.string "option2"
    t.string "option3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
