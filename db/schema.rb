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

ActiveRecord::Schema.define(version: 2020_01_20_162532) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string "name"
  end

  create_table "campaigns", force: :cascade do |t|
    t.string "name"
    t.string "date"
    t.integer "dm_id"
  end

  create_table "cast_spells", force: :cascade do |t|
    t.integer "character_id"
    t.integer "klass_id"
    t.integer "spell_level"
  end

  create_table "character_klass_options", force: :cascade do |t|
    t.integer "character_klass_id"
    t.integer "feature_option_id"
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
    t.integer "favored_klass_bonus_id"
  end

  create_table "character_magic_item_containers", force: :cascade do |t|
    t.integer "character_magic_item_id"
    t.integer "container_id"
  end

  create_table "character_magic_item_feature_usage_options", force: :cascade do |t|
    t.integer "character_magic_item_id"
    t.integer "feature_usage_option_id"
    t.integer "current_usage", default: 0
  end

  create_table "character_magic_item_feature_usages", force: :cascade do |t|
    t.integer "character_magic_item_id"
    t.integer "feature_usage_id"
    t.integer "current_usage", default: 0
  end

  create_table "character_magic_items", force: :cascade do |t|
    t.integer "character_id"
    t.integer "magic_item_id"
    t.string "false_desc"
    t.boolean "discovered", default: false
    t.boolean "known", default: false
    t.boolean "equipped", default: false
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
    t.string "full_name"
    t.integer "campaign_id"
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

  create_table "containers", force: :cascade do |t|
    t.string "name"
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

  create_table "favored_klass_bonuses", force: :cascade do |t|
    t.string "description"
    t.integer "klass_id"
    t.integer "race_id"
  end

  create_table "feature_actions", force: :cascade do |t|
    t.integer "klass_feature_id"
    t.integer "action_id"
    t.integer "level"
  end

  create_table "feature_containers", force: :cascade do |t|
    t.integer "feature_id"
    t.integer "weight"
    t.integer "volume_cubic_feet"
  end

  create_table "feature_levels", force: :cascade do |t|
    t.integer "klass_feature_id"
    t.integer "level"
    t.string "table_description"
  end

  create_table "feature_movements", force: :cascade do |t|
    t.integer "feature_id"
    t.string "movement"
    t.integer "feet"
    t.boolean "bonus", default: false
    t.boolean "penalty", default: false
  end

  create_table "feature_option_actions", force: :cascade do |t|
    t.integer "feature_option_id"
    t.integer "action_id"
    t.integer "level"
  end

  create_table "feature_options", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "klass_feature_id"
    t.integer "level_available"
  end

  create_table "feature_skill_bonus", force: :cascade do |t|
    t.integer "feature_id"
    t.integer "skill_id"
    t.integer "bonus"
    t.string "bonus_type"
    t.string "duration"
  end

  create_table "feature_skill_notes", force: :cascade do |t|
    t.integer "feature_id"
    t.integer "skill_id"
    t.string "note"
  end

  create_table "feature_stat_bonus", force: :cascade do |t|
    t.integer "feature_id"
    t.string "statistic"
    t.integer "bonus"
    t.string "bonus_type"
    t.string "duration"
  end

  create_table "feature_stat_bonus_conditions", force: :cascade do |t|
    t.integer "feature_stat_bonus_id"
    t.string "condition"
  end

  create_table "feature_stat_notes", force: :cascade do |t|
    t.integer "feature_id"
    t.string "statistic"
    t.string "note"
  end

  create_table "feature_usage_options", force: :cascade do |t|
    t.integer "feature_usage_id"
    t.string "detail"
    t.integer "cost"
    t.integer "amount"
    t.boolean "destroy_after_use", default: false
  end

  create_table "feature_usage_spell_options", force: :cascade do |t|
    t.integer "feature_usage_id"
    t.integer "spell_id"
    t.integer "cost", default: 1
    t.boolean "castable", default: true
  end

  create_table "feature_usages", force: :cascade do |t|
    t.integer "feature_id"
    t.boolean "destroy_after_use", default: false
    t.integer "limit"
    t.string "limit_frequency"
    t.string "unit"
    t.boolean "adjustable", default: false
    t.boolean "toggleable", default: false
  end

  create_table "features", force: :cascade do |t|
    t.integer "action_id"
    t.string "name"
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

  create_table "magic_item_features", force: :cascade do |t|
    t.integer "feature_id"
    t.integer "magic_item_id"
  end

  create_table "magic_items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "slot"
    t.string "aura"
    t.integer "caster_level"
    t.float "price_in_gp"
    t.float "weight"
    t.boolean "activatable"
    t.boolean "expendable"
    t.string "group"
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
    t.integer "klass_id"
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
    t.boolean "expendable", default: true
    t.boolean "infinite_zero_level", default: false
    t.boolean "bonus_spells", default: true
    t.integer "klass_spell_list_id"
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

  create_table "stored_character_magic_items", force: :cascade do |t|
    t.integer "character_magic_item_id"
    t.integer "container_id"
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
