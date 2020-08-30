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

ActiveRecord::Schema.define(version: 2020_08_30_204717) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string "name"
  end

  create_table "armors", force: :cascade do |t|
    t.string "name"
    t.string "proficiency"
    t.float "price_in_gp"
    t.integer "bonus"
    t.string "bonus_type"
    t.integer "max_dex_bonus"
    t.integer "armor_check_penalty"
    t.integer "arcane_spell_failure"
    t.integer "spell_30"
    t.integer "spell_20"
    t.float "weight"
    t.integer "source_id"
    t.string "description"
    t.string "don"
    t.string "don_hastily"
    t.string "remove"
    t.boolean "extra", default: false
    t.boolean "weapon", default: false
    t.boolean "bonus_price_in_gp", default: false
    t.integer "damage_dice"
    t.integer "num_of_dice"
    t.integer "critical", default: 2
    t.integer "critical_range", default: 20
    t.string "weapon_proficiency"
    t.string "weapon_category"
  end

  create_table "calendars", force: :cascade do |t|
    t.string "name"
    t.boolean "leap_year", default: false
  end

  create_table "campaign_klasses", force: :cascade do |t|
    t.integer "campaign_id"
    t.integer "klass_id"
  end

  create_table "campaign_races", force: :cascade do |t|
    t.integer "campaign_id"
    t.integer "race_id"
  end

  create_table "campaign_random_month_days", force: :cascade do |t|
    t.integer "campaign_id"
    t.integer "month_id"
    t.integer "num_of_days"
    t.integer "year"
    t.integer "age"
  end

  create_table "campaigns", force: :cascade do |t|
    t.string "name"
    t.integer "dm_id"
    t.integer "calendar_id"
    t.string "theme"
    t.string "setting"
    t.integer "starting_level"
    t.integer "skillset_id"
    t.string "custom_notes"
    t.string "starting_month"
    t.string "starting_weekday"
    t.integer "starting_day"
    t.integer "starting_year"
    t.string "starting_age"
    t.string "current_month"
    t.string "current_weekday"
    t.integer "current_day"
    t.integer "current_year"
    t.string "current_age"
    t.string "websocket_code"
  end

  create_table "cast_spells", force: :cascade do |t|
    t.integer "character_id"
    t.integer "klass_id"
    t.integer "spell_level"
  end

  create_table "character_armors", force: :cascade do |t|
    t.integer "character_id"
    t.integer "armor_id"
    t.boolean "masterwork", default: false
    t.string "name"
    t.string "description"
    t.boolean "discovered", default: false
    t.boolean "known", default: true
    t.boolean "equipped", default: false
    t.integer "extra_armor_id"
  end

  create_table "character_klass_feature_usages", force: :cascade do |t|
    t.integer "character_id"
    t.integer "klass_feature_id"
    t.integer "feature_usage_id"
    t.integer "current_usage", default: 0
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
    t.string "detail"
  end

  create_table "character_weapons", force: :cascade do |t|
    t.integer "character_id"
    t.integer "weapon_id"
    t.boolean "masterwork", default: false
    t.string "name"
    t.string "description"
    t.boolean "discovered", default: false
    t.boolean "known", default: true
    t.string "equipped"
    t.integer "magazine"
    t.integer "ammunition_amount"
    t.integer "character_weapon_ammunition_id"
    t.boolean "improvised_ammunition", default: false
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
    t.integer "max_hp", default: 0
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

  create_table "days", force: :cascade do |t|
    t.string "name"
    t.integer "place"
    t.integer "calendar_id"
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
    t.integer "source_id"
  end

  create_table "feature_actions", force: :cascade do |t|
    t.integer "klass_feature_id"
    t.integer "action_id"
    t.integer "level"
  end

  create_table "feature_alternate_actions", force: :cascade do |t|
    t.integer "feature_id"
    t.integer "level"
    t.integer "action_id"
  end

  create_table "feature_applications", force: :cascade do |t|
    t.integer "feature_id"
    t.string "calculate_before"
    t.string "calculate_after"
    t.boolean "affects_allies"
  end

  create_table "feature_armor_proficiencies", force: :cascade do |t|
    t.integer "feature_id"
    t.string "proficiency_group"
    t.integer "armor_id"
    t.boolean "additive", default: true
  end

  create_table "feature_conditions", force: :cascade do |t|
    t.integer "feature_id"
    t.string "unless_wearing"
    t.string "unless_load"
    t.boolean "affected_by_temporary_stat_bonus"
    t.string "if_affected_by_condition"
  end

  create_table "feature_containers", force: :cascade do |t|
    t.integer "feature_id"
    t.integer "weight"
    t.integer "volume_cubic_feet"
  end

  create_table "feature_languages", force: :cascade do |t|
    t.integer "feature_id"
    t.string "language"
    t.string "note"
  end

  create_table "feature_levels", force: :cascade do |t|
    t.integer "klass_feature_id"
    t.integer "level"
    t.string "table_description"
  end

  create_table "feature_loadings", force: :cascade do |t|
    t.integer "feature_id"
    t.integer "capacity"
    t.boolean "must_reload_after_use"
    t.boolean "wrong_ammo"
    t.integer "wrong_ammo_attack_penalty"
    t.integer "wrong_ammo_size_decrease_steps"
  end

  create_table "feature_movements", force: :cascade do |t|
    t.integer "feature_id"
    t.string "movement"
    t.integer "feet"
    t.boolean "bonus", default: false
    t.boolean "penalty", default: false
    t.boolean "permanent", default: false
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

  create_table "feature_saving_throws", force: :cascade do |t|
    t.integer "feature_id"
    t.integer "base"
    t.string "ability_score_modifier"
    t.float "level_modifier"
    t.string "saving_throw"
    t.boolean "bonus_multiplier_based_on_feature_level", default: false
  end

  create_table "feature_skill_bonus", force: :cascade do |t|
    t.integer "feature_id"
    t.integer "skill_id"
    t.string "bonus_type"
    t.string "duration"
    t.string "custom"
    t.string "specific_statistic"
    t.string "bonus_multiplier"
    t.boolean "round_down"
    t.integer "minimum_bonus"
    t.boolean "bonus_multiplier_based_on_feature_level", default: false
    t.float "bonus"
  end

  create_table "feature_skill_notes", force: :cascade do |t|
    t.integer "feature_id"
    t.integer "skill_id"
    t.string "note"
    t.string "custom"
  end

  create_table "feature_stat_bonus", force: :cascade do |t|
    t.integer "feature_id"
    t.string "statistic"
    t.integer "bonus"
    t.string "bonus_type"
    t.string "duration"
    t.string "specific_statistic"
    t.string "bonus_multiplier"
    t.integer "applicable_level"
    t.string "statistic_details"
    t.boolean "bonus_multiplier_based_on_feature_level", default: false
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

  create_table "feature_status_conditions", force: :cascade do |t|
    t.integer "feature_id"
    t.string "condition"
  end

  create_table "feature_usage_feature_options", force: :cascade do |t|
    t.integer "base_feature_usage_id"
    t.integer "option_feature_usage_id"
    t.string "option_name"
    t.integer "cost"
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
    t.boolean "wieldable", default: false
    t.integer "base_limit"
    t.string "base_limit_modifier"
    t.integer "limit_increase_per_level"
    t.integer "toggle_off_action_id"
    t.string "expend_frequency"
    t.integer "maintain_action_id"
  end

  create_table "feature_weapon_proficiencies", force: :cascade do |t|
    t.integer "feature_id"
    t.string "proficiency_group"
    t.integer "weapon_id"
    t.boolean "additive", default: true
  end

  create_table "features", force: :cascade do |t|
    t.integer "action_id"
    t.string "name"
    t.boolean "attack_of_opportunity", default: false
    t.boolean "after", default: false
  end

  create_table "ideas", force: :cascade do |t|
    t.string "content"
  end

  create_table "klass_feature_features", force: :cascade do |t|
    t.integer "klass_feature_id"
    t.integer "feature_id"
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
    t.integer "source_id"
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
    t.integer "source_id"
  end

  create_table "magic_schools", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "months", force: :cascade do |t|
    t.string "name"
    t.integer "num_of_days"
    t.integer "place"
    t.boolean "random_num_of_days", default: false
    t.string "season"
    t.boolean "leap_month", default: false
    t.integer "calendar_id"
  end

  create_table "notes", force: :cascade do |t|
    t.integer "character_id"
    t.string "title"
    t.string "weekday"
    t.string "month"
    t.integer "day"
    t.integer "age"
    t.integer "year"
    t.string "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prepared_amounts", force: :cascade do |t|
    t.integer "spell_level"
    t.integer "klass_level"
    t.integer "spells"
    t.integer "klass_id"
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
    t.integer "source_id"
    t.string "prevalence"
  end

  create_table "racial_traits", force: :cascade do |t|
    t.string "name"
    t.integer "race_id"
    t.string "description"
    t.integer "source_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "ability_score"
    t.string "description"
    t.boolean "untrained", default: true
    t.boolean "customizable", default: false
    t.boolean "knowledge", default: false
  end

  create_table "skillset_skills", force: :cascade do |t|
    t.integer "skillset_id"
    t.integer "skill_id"
  end

  create_table "skillsets", force: :cascade do |t|
    t.string "name"
  end

  create_table "sources", force: :cascade do |t|
    t.string "title"
    t.string "abbreviation"
    t.string "code"
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
    t.boolean "prepared_amount", default: false
    t.boolean "alchemy", default: false
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
    t.integer "source_id"
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

  create_table "weapon_features", force: :cascade do |t|
    t.integer "weapon_id"
    t.integer "feature_id"
  end

  create_table "weapon_groups", force: :cascade do |t|
    t.string "name"
  end

  create_table "weapon_hands", force: :cascade do |t|
    t.integer "weapon_id"
    t.string "hands"
    t.integer "bonus"
  end

  create_table "weapon_qualities", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "weapon_weapon_groups", force: :cascade do |t|
    t.integer "weapon_id"
    t.integer "weapon_group_id"
  end

  create_table "weapon_weapon_qualities", force: :cascade do |t|
    t.integer "weapon_id"
    t.integer "weapon_quality_id"
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "proficiency"
    t.string "weapon_type"
    t.float "price_in_gp"
    t.integer "damage_dice"
    t.integer "num_of_dice"
    t.integer "critical", default: 2
    t.integer "critical_range", default: 20
    t.integer "range"
    t.integer "thrown"
    t.float "weight"
    t.string "damage_type"
    t.string "description"
    t.boolean "double_weapon"
    t.integer "double_num_of_dice", default: 0
    t.integer "double_damage_dice", default: 0
    t.string "double_damage_type"
    t.boolean "ammunition", default: false
    t.string "ammunition_type"
    t.integer "source_id"
  end

end
