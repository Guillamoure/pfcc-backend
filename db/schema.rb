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

ActiveRecord::Schema.define(version: 2019_06_10_190011) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "klass_features", force: :cascade do |t|
    t.integer "klass_id"
    t.string "name"
    t.integer "level_learned"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "klasses", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "hit_die"
    t.integer "skill_ranks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "fortitude"
    t.float "reflex"
    t.float "will"
  end

  create_table "race_ability_score_modifiers", force: :cascade do |t|
    t.integer "race_id"
    t.string "ability_score"
    t.integer "bonus"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.integer "speed"
    t.string "size"
    t.string "description"
  end

  create_table "racial_traits", force: :cascade do |t|
    t.string "name"
    t.integer "race_id"
    t.string "description"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "ability_score"
    t.string "description"
    t.boolean "untrained", default: true
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "bio"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
  end

end
