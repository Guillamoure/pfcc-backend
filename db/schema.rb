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

ActiveRecord::Schema.define(version: 2019_11_26_185151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string "name"
  end

  create_table "cast_spells", force: :cascade do |t|
    t.integer "character_id"
    t.integer "klass_id"
    t.integer "spell_level"
  end

  create_table "character_klasses", force: :cascade do |t|
    t.integer "character_id"
    t.integer "klass_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hp"
    t.integer "feat_id"
    t.string "ability_score_improvement"
    t.integer "level"
  end

  create_table "character_skillset_skills", force: :cascade do |t|
    t.integer "character_id"
    t.integer "skillset_id"
    t.integer "skill_id"
    t.integer "ranks"
  end

  create_table "characters", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "alignment"
    t.string "deity"
    t.string "homeland"
    t.string "gender"
    t.integer "age"
    t.string "height"
    t.string "weight"
    t.string "hair"
    t.string "eyes"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.string "description"
    t.string "background"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "race_id"
    t.string "any_bonus"
    t.integer "skillset_id"
    t.integer "lethal_damage", default: 0
    t.integer "non_lethal_damage", default: 0
    t.integer "temp_hp", default: 0
    t.boolean "is_done_preparing_spells", default: false
  end

  create_table "class_skillset_skills", force: :cascade do |t|
    t.integer "klass_id"
    t.integer "skillset_id"
    t.integer "skill_id"
  end

  create_table "components", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "abbreviation"
  end

  create_table "durations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "time"
    t.boolean "dismissible"
    t.boolean "concentration"
    t.string "unit"
    t.integer "increase_per_level"
  end

  create_table "feature_levels", force: :cascade do |t|
    t.integer "klass_feature_id"
    t.integer "level"
    t.string "table_description"
  end

  create_table "klass_features", force: :cascade do |t|
    t.integer "klass_id"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "klass_spells", force: :cascade do |t|
    t.integer "klass_id"
    t.integer "spell_id"
    t.integer "spell_level"
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
    t.string "img_url"
  end

  create_table "known_spells", force: :cascade do |t|
    t.integer "klass_spell_id"
    t.integer "character_id"
    t.integer "klass_id"
  end

  create_table "magic_schools", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "prepared_spells", force: :cascade do |t|
    t.integer "klass_spell_id"
    t.integer "character_id"
    t.integer "spell_level"
    t.boolean "cast", default: false
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
    t.string "img_url"
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

  create_table "skillset_skills", force: :cascade do |t|
    t.integer "skillset_id"
    t.integer "skill_id"
  end

  create_table "skillsets", force: :cascade do |t|
    t.string "name"
  end

  create_table "spell_components", force: :cascade do |t|
    t.integer "spell_id"
    t.integer "component_id"
    t.string "item"
  end

  create_table "spell_ranges", force: :cascade do |t|
    t.string "name"
    t.integer "feet"
    t.float "increase_per_level"
    t.string "description"
  end

  create_table "spell_subschools", force: :cascade do |t|
    t.integer "spell_id"
    t.integer "subschool_id"
  end

  create_table "spellcastings", force: :cascade do |t|
    t.string "ability_score"
    t.integer "klass_feature_id"
    t.boolean "prepared"
    t.boolean "limited"
  end

  create_table "spells", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "target"
    t.string "saving_throw"
    t.boolean "spell_resistance"
    t.integer "magic_school_id"
    t.integer "action_id"
    t.string "duration"
    t.integer "time"
    t.string "unit_of_time"
    t.integer "increase_per_level"
    t.boolean "dismissible"
    t.boolean "concentration"
    t.integer "spell_range_id"
  end

  create_table "spells_per_days", force: :cascade do |t|
    t.integer "spell_level"
    t.integer "klass_level"
    t.integer "spells"
    t.integer "klass_id"
  end

  create_table "subschools", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "bio"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.integer "skillset_id"
  end

end
