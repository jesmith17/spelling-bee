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

ActiveRecord::Schema.define(version: 20171207064515) do

  create_table "grades", force: :cascade do |t|
    t.string "display_name"
    t.integer "grade"
  end

  create_table "spelling_lists", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "week_id"
    t.integer "grade_id"
    t.index ["grade_id"], name: "index_spelling_lists_on_grade_id"
    t.index ["week_id"], name: "index_spelling_lists_on_week_id"
  end

  create_table "spelling_tests", force: :cascade do |t|
    t.string "name"
    t.boolean "practice"
    t.integer "teacher_id"
    t.integer "week_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_spelling_tests_on_teacher_id"
    t.index ["week_id"], name: "index_spelling_tests_on_week_id"
  end

  create_table "spelling_words", force: :cascade do |t|
    t.string "word"
    t.string "definition"
    t.integer "spelling_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spelling_list_id"], name: "index_spelling_words_on_spelling_list_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "grade"
    t.integer "spelling_lists_id"
    t.integer "grade_id"
    t.index ["grade_id"], name: "index_teachers_on_grade_id"
    t.index ["spelling_lists_id"], name: "index_teachers_on_spelling_lists_id"
  end

  create_table "weeks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "week_number"
    t.integer "year"
  end

end
