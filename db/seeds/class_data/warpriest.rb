# /////////////////////////////////////////
# <-*-*-----*-*-*- Actions-*-*-*-----*-*->
# /////////////////////////////////////////

standard = Action.find_or_create_by!(name: "Standard Action")
full_round = Action.find_or_create_by!(name: "Full-Round Action")
move = Action.find_or_create_by!(name: "Move Action")
swift = Action.find_or_create_by!(name: "Swift Action")
free = Action.find_or_create_by!(name: "Free Action")
immediate = Action.find_or_create_by!(name: "Immediate Action")
ten = Action.find_or_create_by!(name: "Ten Minutes")
one_minute = Action.find_or_create_by!(name: "One Minute")
three_rounds = Action.find_or_create_by!(name: "Three Rounds")
varies = Action.find_or_create_by!(name: "See Text")
thirty_minutes = Action.find_or_create_by!(name: "Thirty Minutes")

# /////////////////////////////////////////
# <-*-*-----*-*-*- Sources-*-*-*-----*-*->
# /////////////////////////////////////////

core_rulebook = Source.find_by!(title: "Core Rulebook", abbreviation: "CR", code: "PZO1110")
bestiary_1 = Source.find_by!(title: "Bestiary 1", abbreviation: "B1", code: "PZO1112")
advanced_players_guide = Source.find_by!(title: "Advanced Player's Guide", abbreviation: "APG", code: "PZO1115")
bestiary_2 = Source.find_by!(title: "Bestiary 2", abbreviation: "B2", code: "PZO1116")
ultimate_magic = Source.find_by!(title: "Ultimate Magic", abbreviation: "UM", code: "PZO1117")
ultimate_combat = Source.find_by!(title: "Ultimate Combat", abbreviation: "UC", code: "PZO1118")
bestiary_3 = Source.find_by!(title: "Bestiary 3", abbreviation: "B3", code: "PZO1120")
advanced_race_guide = Source.find_by!(title: "Advanced Race Guide", abbreviation: "ARG", code: "PZO1121")
bestiary_4 = Source.find_by!(title: "Bestiary 4", abbreviation: "B4", code: "PZO1127")
advanced_class_guide = Source.find_by!(title: "Advanced Class Guide", abbreviation: "ACG", code: "PZO1129")
bestiary_5 = Source.find_by!(title: "Bestiary 5", abbreviation: "B5", code: "PZO1133")
ultimate_intrigue = Source.find_by!(title: "Ultimate Intrigue", abbreviation: "UI", code: "PZO1134")
ultimate_wilderness = Source.find_by!(title: "Ultimate Wilderness", abbreviation: "UW", code: "PZO1140")
planar_adventures = Source.find_by!(title: "Planar Adventures", abbreviation: "PA", code: "PZO1141")
inner_sea_world_guide = Source.find_by!(title: "Pathfinder Campaign Setting: Inner Sea World Guide", abbreviation: "PCB: ISWG", code: "PZO9226")
inner_sea_bestiary = Source.find_by!(title: "Pathfinder Campaign Setting: Inner Sea Bestiary", abbreviation: "PCB: ISB", code: "PZO9251")
harrow_handbook = Source.find_by!(title: "Pathfinder Player Companion: The Harrow Handbook", abbreviation: "PPC: HH", code: "PZO9446")
custom = Source.find_by!(title: "Custom", abbreviation: "Custom", code: nil)


# //////////////////////////////////////////////////
# <-*-*-----*-*-*- Other References -*-*-*-----*-*->
# //////////////////////////////////////////////////

tower_shield = Armor.find_by!(name: 'Tower Shield', proficiency: 'Shield', price_in_gp: 30, bonus: 4, bonus_type: 'Shield', max_dex_bonus: 2, armor_check_penalty: -10, arcane_spell_failure: 50, spell_30: nil, spell_20: nil, don: "1 move action", don_hastily: nil, remove: "1 move action", weight: 45, source_id: core_rulebook.id)

cr = Skillset.find_by!(name: "Core Rulebook")
dmc = Skillset.find_by!(name: "DMCustom")
ravnica_custom = Skillset.find_by!(name: "Ravnica Custom")

warpriest = Klass.create!(name: "Warpriest", hit_die: 8, skill_ranks: 2, fortitude: 0.5, reflex: 0.34, will: 0.5, img_url: "https://i.pinimg.com/originals/28/49/47/2849479a8d7cf7c61438967a70ed1925.png", starting_wealth: "5d6 × 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", source_id: advanced_class_guide.id, description: "Capable of calling upon the power of the gods in the form of blessings and spells, warpriests blend divine magic with martial skill. They are unflinching bastions of their faith, shouting gospel as they pummel foes into submission, and never shy away from a challenge to their beliefs. While clerics might be subtle and use diplomacy to accomplish their aims, warpriests aren’t above using violence whenever the situation warrants it. In many faiths, warpriests form the core of the church’s martial forces—reclaiming lost relics, rescuing captured clergy, and defending the church’s tenets from all challenges.

Role: Warpriests can serve as capable healers or spellcasters, calling upon their divine powers from the center of the fight, where their armor and martial skills are put to the test.

Alignment: A warpriest’s alignment must be within one step of his deity’s, along either the law/chaos axis or the good/evil axis.")

ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Climb").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Diplomacy").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Handle Animal").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Heal").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Intimidate").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (engineering)").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (religion)").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Ride").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Sense Motive").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Spellcraft").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Survival").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Swim").id)

ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Climb").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Diplomacy").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Handle Animal").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Heal").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Intimidate").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Knowledge").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Religion").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Sense Motive").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Spellcraft", untrained: true).id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Survival").id)
ClassSkillsetSkill.create!(klass_id: warpriest.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Swim").id)


# /////////////////////////////////////////////////////
# <-*-*-----*-*-*- Base Class Features!-*-*-*-----*-*->
# /////////////////////////////////////////////////////

warpriest1 = KlassFeature.create!(klass_id: warpriest.id, name: "Weapon and Armor Proficiency", description: "A warpriest is proficient with all simple and martial weapons, as well as the favored weapon of his deity, and with all armor (heavy, light, and medium) and shields (except tower shields). If the warpriest worships a deity with unarmed strike as its favored weapon, the warpriest gains Improved Unarmed Strike as a bonus feat.")
  FeatureLevel.create!(klass_feature_id: warpriest1.id, level: 1, table_description: "")
  warpriest1_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: warpriest1.id, feature_id: warpriest1_feature.id)
    FeatureWeaponProficiency.create!(feature_id: warpriest1_feature.id, proficiency_group: "Simple")
    FeatureWeaponProficiency.create!(feature_id: warpriest1_feature.id, proficiency_group: "Martial")
    FeatureArmorProficiency.create!(feature_id: warpriest1_feature.id, proficiency_group: "Light")
    FeatureArmorProficiency.create!(feature_id: warpriest1_feature.id, proficiency_group: "Medium")
    FeatureArmorProficiency.create!(feature_id: warpriest1_feature.id, proficiency_group: "Heavy")
    FeatureArmorProficiency.create!(feature_id: warpriest1_feature.id, proficiency_group: "Shield")
    FeatureArmorProficiency.create!(feature_id: warpriest1_feature.id, armor_id: tower_shield.id, additive: false)

warpriest2 = KlassFeature.create!(klass_id: warpriest.id, name: "Spellcasting", description: "A warpriest casts divine spells drawn from the cleric spell list. His alignment, however, can restrict him from casting certain spells opposed to his moral or ethical beliefs; see the Chaotic, Evil, Good, and Lawful Spells section. A warpriest must choose and prepare his spells in advance.

A warpriest’s highest level of spells is 6th. Cleric spells of 7th level and above are not on the warpriest class spell list, and a warpriest cannot use spell completion or spell trigger magic items (without making a successful Use Magic Device check) of cleric spells of 7th level or higher.

To prepare or cast a spell, a warpriest must have a Wisdom score equal to at least 10 + the spell’s level. The saving throw DC against a warpriest’s spell is 10 + the spell’s level + the warpriest’s Wisdom modifier.

Like other spellcasters, a warpriest can cast only a certain number of spells of each spell level per day. His base daily spell allotment is given on Table Warpriest. In addition, he receives bonus spells per day if he had a high Wisdom score.

Warpriests meditate or pray for their spells. Each warpriest must choose a time when he must spend 1 hour each day in quiet contemplation or supplication to regain his daily allotment of spells. A warpriest can prepare and cast any spell on the cleric spell list, provided that he can cast spells of that level, but he must choose which spells to prepare during his daily meditation.")
  FeatureLevel.create!(klass_feature_id: warpriest2.id, level: 1, table_description: "")
  cleric_spell_list = SpellList.find_or_create_by!(name: "Cleric Spells List")
  warpriest2_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: warpriest2_feature.id, klass_feature_id: warpriest2.id)
    warpriest_spellcasting = FeatureSpellcasting.create!(feature_id: warpriest2_feature.id, ability_score: "wisdom", prepare_spells: true, expend_prepared_spells: true, infinite_zero_level: true, known_spell_list: false, apply_metamagic_when_casting: false, apply_metamagic_when_preparing: true, type_of_magic: "Divine", caster_level_penalty: 0, spell_list_id: cleric_spell_list.id)

    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 1, spells: 3, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 2, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 3, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 4, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 5, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 6, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 7, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 8, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 9, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 10, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 11, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 12, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 13, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 14, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 15, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 16, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 17, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 18, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 19, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 20, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 1, spells: 1, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 2, spells: 2, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 3, spells: 3, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 4, spells: 3, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 5, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 6, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 7, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 8, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 9, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 10, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 11, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 12, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 13, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 14, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 15, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 16, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 17, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 18, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 19, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 20, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 4, spells: 1, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 5, spells: 2, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 6, spells: 3, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 7, spells: 3, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 8, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 9, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 10, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 11, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 12, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 13, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 14, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 15, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 16, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 17, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 18, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 19, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 20, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 7, spells: 1, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 8, spells: 2, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 9, spells: 3, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 10, spells: 3, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 11, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 12, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 13, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 14, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 15, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 16, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 17, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 18, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 19, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 20, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 10, spells: 1, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 11, spells: 2, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 12, spells: 3, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 13, spells: 3, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 14, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 15, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 16, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 17, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 18, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 19, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 20, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 13, spells: 1, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 14, spells: 2, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 15, spells: 3, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 16, spells: 3, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 17, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 18, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 19, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 20, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 16, spells: 1, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 17, spells: 2, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 18, spells: 3, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 19, spells: 4, feature_spellcasting_id: warpriest_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 20, spells: 5, feature_spellcasting_id: warpriest_spellcasting.id)

warpriest3 = KlassFeature.create!(klass_id: warpriest.id, name: "Orisons", description: "Warpriests can prepare a number of orisons, or 0-level spells, each day as noted on Table Warpriest. These spells are cast as any other spell, but aren’t expended when cast and can be used again.")
  FeatureLevel.create!(klass_feature_id: warpriest3.id, level: 1, table_description: "Orisons")

warpriest4 = KlassFeature.create!(klass_id: warpriest.id, name: "Spontaneous Casting", description: "A good warpriest (or a neutral warpriest of a good deity) can channel stored spell energy into healing spells that he did not prepare ahead of time. The warpriest can expend any prepared spell that isn’t an orison to cast any cure spell of the same spell level or lower. A cure spell is any spell with “cure” in its name.

An evil warpriest (or a neutral warpriest of an evil deity) can’t convert spells to cure spells, but can convert them to inflict spells. An inflict spell is any spell with “inflict” in its name.

A warpriest that is neither good nor evil and whose deity is neither good nor evil chooses whether he can convert spells into either cure spells or inflict spells. Once this choice is made, it cannot be changed. This choice also determines whether the warpriest channels positive or negative energy (see Channel Energy, below).")
  FeatureLevel.create!(klass_feature_id: warpriest4.id, level: 1, table_description: "Spontaneous Casting")
  warpriest4_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: warpriest4.id, feature_id: warpriest4_feature.id)
    FeatureCharacterChoice.create!(feature_id: warpriest4_feature.id, sub_feature: "spontaneous_casting", option: "cure")
    FeatureCharacterChoice.create!(feature_id: warpriest4_feature.id, sub_feature: "spontaneous_casting", option: "inflict")

warpriest5 = KlassFeature.create!(klass_id: warpriest.id, name: "Chaotic, Evil, Good, and Lawful Spells", description: "A warpriest cannot cast spells of an alignment opposed to his own or his deity’s (if he has a deity). Spells associated with particular alignments are indicated by the chaotic, evil, good, and lawful descriptors in their spell descriptions.")
  FeatureLevel.create!(klass_feature_id: warpriest5.id, level: 1, table_description: "")

warpriest6 = KlassFeature.create!(klass_id: warpriest.id, name: "Aura", description: "A warpriest of a chaotic, evil, good, or lawful deity has a particularly powerful aura (as a cleric) corresponding to the deity’s alignment (see detect evil).")
  FeatureLevel.create!(klass_feature_id: warpriest6.id, level: 1, table_description: "Aura")
  warpriest6_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: warpriest6.id, feature_id: warpriest6_feature.id)
    FeatureDisplayDescription.create!(feature_id: warpriest6_feature.id, title: "Aura", description: "Faint", access_alignment: true, applicable_level: 1)
    FeatureDisplayDescription.create!(feature_id: warpriest6_feature.id, title: "Aura", description: "Moderate", access_alignment: true, applicable_level: 2)
    FeatureDisplayDescription.create!(feature_id: warpriest6_feature.id, title: "Aura", description: "Strong", access_alignment: true, applicable_level: 5)
    FeatureDisplayDescription.create!(feature_id: warpriest6_feature.id, title: "Aura", description: "Overwhelming", access_alignment: true, applicable_level: 11)

warpriest7 = KlassFeature.create!(klass_id: warpriest.id, name: "Blessings", description: "A warpriest’s deity influences his alignment, what magic he can perform, his values, and how others see him. Each warpriest can select two blessings from among those granted by his deity (each deity grants the blessings tied to its domains). A warpriest can select an alignment blessing (Chaos, Evil, Good, or Law) only if his alignment matches that domain. If a warpriest isn’t devoted to a particular deity, he still selects two blessings to represent his spiritual inclinations and abilities, subject to GM approval. The restriction on alignment domains still applies.

Each blessing grants a minor power at 1st level and a major power at 10th level. A warpriest can call upon the power of his blessings a number of times per day (in any combination) equal to 3 + 1/2 his warpriest level (to a maximum of 13 times per day at 20th level). Each time he calls upon any one of his blessings, it counts against his daily limit. The save DC for these blessings is equal to 10 + 1/2 the warpriest’s level + the warpriest’s Wisdom modifier.

If a warpriest also has levels in a class that grants cleric domains, the blessings chosen must match the domains selected by that class. Subject to GM discretion, the warpriest can change his former blessings or domains to make them conform.", specialization: true, choice_amount: 2)
  FeatureLevel.create!(klass_feature_id: warpriest7.id, level: 1, table_description: "Blessings (minor)")
  FeatureLevel.create!(klass_feature_id: warpriest7.id, level: 10, table_description: "Blessings (major)")
  warpriest7_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: warpriest7_feature.id, klass_feature_id: warpriest7.id)
    warpriest7_feature_usage = FeatureUsage.create!(feature_id: warpriest7_feature.id, limit_frequency: "Day", adjustable: true, base_limit: 3.5, limit_increase_per_level: 0.5)

warpriest8 = KlassFeature.create!(klass_id: warpriest.id, name: "Focus Weapon", description: "At 1st level, a warpriest receives Weapon Focus as a bonus feat (he can choose any weapon, not just his deity’s favored weapon).")
  FeatureLevel.create!(klass_feature_id: warpriest8.id, level: 1, table_description: "Focus Weapon")

warpriest9 = KlassFeature.create!(klass_id: warpriest.id, name: "Sacred Weapon", description: "At 1st level, weapons wielded by a warpriest are charged with the power of his faith. In addition to the favored weapon of his deity, the warpriest can designate a weapon as a sacred weapon by selecting that weapon with the Weapon Focus feat; if he has multiple Weapon Focus feats, this ability applies to all of them. Whenever the warpriest hits with his sacred weapon, the weapon damage is based on his level and not the weapon type. The damage for Medium warpriests is listed on Warpriest Table; see the table below for Small and Large warpriests. The warpriest can decide to use the weapon’s base damage instead of the sacred weapon damage—this must be declared before the attack roll is made. (If the weapon’s base damage exceeds the sacred weapon damage, its damage is unchanged.) This increase in damage does not affect any other aspect of the weapon, and doesn’t apply to alchemical items, bombs, or other weapons that only deal energy damage.

At 4th level, the warpriest gains the ability to enhance one of his sacred weapons with divine power as a swift action. This power grants the weapon a +1 enhancement bonus. For every 4 levels beyond 4th, this bonus increases by 1 (to a maximum of +5 at 20th level). If the warpriest has more than one sacred weapon, he can enhance another on the following round by using another swift action. The warpriest can use this ability a number of rounds per day equal to his warpriest level, but these rounds need not be consecutive.

These bonuses stack with any existing bonuses the weapon might have, to a maximum of +5. The warpriest can enhance a weapon with any of the following weapon special abilities: brilliant energy, defending, disruption, flaming, frost, keen, and shock. In addition, if the warpriest is chaotic, he can add anarchic and vicious. If he is evil, he can add mighty cleaving and unholy. If he is good, he can add ghost touch and holy. If he is lawful, he can add axiomatic and merciful. If he is neutral (with no other alignment components), he can add spell storing and thundering. Adding any of these special abilities replaces an amount of bonus equal to the special ability’s base cost. Duplicate abilities do not stack. The weapon must have at least a +1 enhancement bonus before any other special abilities can be added.

If multiple weapons are enhanced, each one consumes rounds of use individually. The enhancement bonus and special abilities are determined the first time the ability is used each day, and cannot be changed until the next day. These bonuses do not apply if another creature is wielding the weapon, but they continue to be in effect if the weapon otherwise leaves the warpriest’s possession (such as if the weapon is thrown). This ability can be ended as a free action at the start of the warpriest’s turn (that round does not count against the total duration, unless the ability is resumed during the same round). If the warpriest uses this ability on a double weapon, the effects apply to only one end of the weapon.

<table>
  <tr>
    <th>Level</th>
    <th>Damage (Small)</th>
    <th>Damage (Large)</th>
  </tr>
  <tr>
    <td>1st - 4th</td>
    <td>1d4</td>
    <td>1d8</td>
  </tr>
  <tr>
    <td>5th - 9th</td>
    <td>1d6</td>
    <td>2d6</td>
  </tr>
  <tr>
    <td>10th - 14th</td>
    <td>1d8</td>
    <td>2d8</td>
  </tr>
  <tr>
    <td>15th - 19th</td>
    <td>1d10</td>
    <td>3d6</td>
  </tr>
  <tr>
    <td>20th</td>
    <td>2d6</td>
    <td>3d8</td>
  </tr>
</table>")
  FeatureLevel.create!(klass_feature_id: warpriest9.id, level: 1, table_description: "Sacred Weapon (1d6 damage)")
  FeatureLevel.create!(klass_feature_id: warpriest9.id, level: 4, table_description: "Sacred Weapon +1")
  FeatureLevel.create!(klass_feature_id: warpriest9.id, level: 5, table_description: "Sacred Weapon (1d8 damage)")
  FeatureLevel.create!(klass_feature_id: warpriest9.id, level: 8, table_description: "Sacred Weapon +2")
  FeatureLevel.create!(klass_feature_id: warpriest9.id, level: 10, table_description: "Sacred Weapon (1d10 damage)")
  FeatureLevel.create!(klass_feature_id: warpriest9.id, level: 12, table_description: "Sacred Weapon +3")
  FeatureLevel.create!(klass_feature_id: warpriest9.id, level: 15, table_description: "Sacred Weapon (2d6 damage)")
  FeatureLevel.create!(klass_feature_id: warpriest9.id, level: 16, table_description: "Sacred Weapon +4")
  FeatureLevel.create!(klass_feature_id: warpriest9.id, level: 20, table_description: "Sacred Weapon (2d8 damage)")
  FeatureLevel.create!(klass_feature_id: warpriest9.id, level: 20, table_description: "Sacred Weapon +5")
  warpriest9_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: warpriest9_feature.id, klass_feature_id: warpriest9.id)
    FeatureAlternateAction.create!(feature_id: warpriest9_feature.id, level: 4, action_id: swift.id)

warpriest10 = KlassFeature.create!(klass_id: warpriest.id, name: "Bonus Languages", description: "A warpriest’s bonus language options include Abyssal, Celestial, and Infernal. These choices are in addition to the bonus languages available to the character because of his race.")
  FeatureLevel.create!(klass_feature_id: warpriest10.id, level: 1, table_description: "")

warpriest11 = KlassFeature.create!(klass_id: warpriest.id, name: "Fervor", description: "At 2nd level, a warpriest can draw upon the power of his faith to heal wounds or harm foes. He can also use this ability to quickly cast spells that aid in his struggles. This ability can be used a number of times per day equal to 1/2 his warpriest level + his Wisdom modifier. By expending one use of this ability, a good warpriest (or one who worships a good deity) can touch a creature to heal it of 1d6 points of damage, plus an additional 1d6 points of damage for every 3 warpriest levels he possesses above 2nd (to a maximum of 7d6 at 20th level). Using this ability is a standard action (unless the warpriest targets himself, in which case it’s a swift action). Alternatively, the warpriest can use this ability to harm an undead creature, dealing the same amount of damage he would otherwise heal with a melee touch attack. Using fervor in this way is a standard action that provokes an attack of opportunity. Undead do not receive a saving throw against this damage. This counts as positive energy.

An evil warpriest (or one who worships an evil deity) can use this ability to instead deal damage to living creatures with a melee touch attack and heal undead creatures with a touch. This counts as negative energy.

A neutral warpriest who worships a neutral deity (or one who is not devoted to a particular deity) uses this ability as a good warpriest if he chose to spontaneously cast cure spells or as an evil warpriest if he chose to spontaneously cast inflict spells.

As a swift action, a warpriest can expend one use of this ability to cast any one warpriest spell he has prepared with a casting time of 1 round or shorter. When cast in this way, the spell can target only the warpriest, even if it could normally affect other or multiple targets. Spells cast in this way ignore somatic components and do not provoke attacks of opportunity. The warpriest does not need to have a free hand to cast a spell in this way.")
  FeatureLevel.create!(klass_feature_id: warpriest11.id, level: 2, table_description: "Fervor 1d6")
  FeatureLevel.create!(klass_feature_id: warpriest11.id, level: 5, table_description: "Fervor 2d6")
  FeatureLevel.create!(klass_feature_id: warpriest11.id, level: 8, table_description: "Fervor 3d6")
  FeatureLevel.create!(klass_feature_id: warpriest11.id, level: 11, table_description: "Fervor 4d6")
  FeatureLevel.create!(klass_feature_id: warpriest11.id, level: 14, table_description: "Fervor 5d6")
  FeatureLevel.create!(klass_feature_id: warpriest11.id, level: 17, table_description: "Fervor 6d6")
  FeatureLevel.create!(klass_feature_id: warpriest11.id, level: 20, table_description: "Fervor 7d6")
  warpriest11_feature = Feature.create!(action_id: standard.id)
    KlassFeatureFeature.create!(feature_id: warpriest11_feature.id, klass_feature_id: warpriest11.id)
    warpriest11_feature_usage = FeatureUsage.create!(feature_id: warpriest11_feature.id, limit_frequency: "Day", adjustable: true, base_limit: 0.5, limit_increase_per_level: 0.5, base_limit_modifier: "wisdom")
    FeatureAlternateAction.create!(feature_id: warpriest11_feature.id, level: 1, action_id: swift.id)
    FeatureDamage.create!(feature_id: warpriest11_feature.id, num_of_dice: 1, damage_dice: 6, applicable_step: 1)
    FeatureDamage.create!(feature_id: warpriest11_feature.id, num_of_dice: 2, damage_dice: 6, applicable_step: 2)
    FeatureDamage.create!(feature_id: warpriest11_feature.id, num_of_dice: 3, damage_dice: 6, applicable_step: 3)
    FeatureDamage.create!(feature_id: warpriest11_feature.id, num_of_dice: 4, damage_dice: 6, applicable_step: 4)
    FeatureDamage.create!(feature_id: warpriest11_feature.id, num_of_dice: 5, damage_dice: 6, applicable_step: 5)
    FeatureDamage.create!(feature_id: warpriest11_feature.id, num_of_dice: 6, damage_dice: 6, applicable_step: 6)
    FeatureDamage.create!(feature_id: warpriest11_feature.id, num_of_dice: 7, damage_dice: 6, applicable_step: 7)
    FeatureStep.create!(feature_id: warpriest11_feature.id, applicable_level: 2, step: 1)
    FeatureStep.create!(feature_id: warpriest11_feature.id, applicable_level: 5, step: 2)
    FeatureStep.create!(feature_id: warpriest11_feature.id, applicable_level: 8, step: 3)
    FeatureStep.create!(feature_id: warpriest11_feature.id, applicable_level: 11, step: 4)
    FeatureStep.create!(feature_id: warpriest11_feature.id, applicable_level: 14, step: 5)
    FeatureStep.create!(feature_id: warpriest11_feature.id, applicable_level: 17, step: 6)
    FeatureStep.create!(feature_id: warpriest11_feature.id, applicable_level: 20, step: 7)

warpriest12 = KlassFeature.create!(klass_id: warpriest.id, name: "Bonus Feats", description: "At 3rd level and every 3 levels thereafter, a warpriest gains a bonus feat in addition to those gained from normal advancement. These bonus feats must be selected from those listed as combat feats. The warpriest must meet the prerequisites for these feats, but he treats his warpriest level as his base attack bonus (in addition to base attack bonuses gained from other classes and Hit Dice) for the purpose of qualifying for these feats.

Finally, for the purposes of these feats, the warpriest can select feats that have a minimum number of fighter levels as a prerequisite, treating his warpriest level as his fighter level.")
  FeatureLevel.create!(klass_feature_id: warpriest12.id, level: 3, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: warpriest12.id, level: 6, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: warpriest12.id, level: 9, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: warpriest12.id, level: 12, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: warpriest12.id, level: 15, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: warpriest12.id, level: 18, table_description: "Bonus Feat")

warpriest13 = KlassFeature.create!(klass_id: warpriest.id, name: "Channel Energy", description: "Starting at 4th level, a warpriest can release a wave of energy by channeling the power of his faith through his holy (or unholy) symbol. This energy can be used to deal or heal damage, depending on the type of energy channeled and the creatures targeted. Using this ability is a standard action that expends two uses of his fervor ability and doesn’t provoke an attack of opportunity. The warpriest must present a holy (or unholy) symbol to use this ability. A good warpriest (or one who worships a good deity) channels positive energy and can choose to heal living creatures or to deal damage to undead creatures. An evil warpriest (or one who worships an evil deity) channels negative energy and can choose to deal damage to living creatures or heal undead creatures. A neutral warpriest who worships a neutral deity (or one who is not devoted to a particular deity) channels positive energy if he chose to spontaneously cast cure spells or negative energy if he chose to spontaneously cast inflict spells.

Channeling energy causes a burst that affects all creatures of one type (either undead or living) in a 30-foot radius centered on the warpriest. The amount of damage dealt or healed is equal to the amount listed in the fervor ability. Creatures that take damage from channeled energy must succeed at a Will saving throw to halve the damage. The save DC is 10 + 1/2 the warpriest’s level + the warpriest’s Wisdom modifier. Creatures healed by channeled energy cannot exceed their maximum hit point total—all excess healing is lost. A warpriest can choose whether or not to include himself in this effect.")
  FeatureLevel.create!(klass_feature_id: warpriest13.id, level: 4, table_description: "Channel Energy")
  warpriest13_feature = Feature.create!(action_id: standard.id)
    KlassFeatureFeature.create!(feature_id: warpriest13_feature.id, klass_feature_id: warpriest13.id)
    warpriest13_feature_usage = FeatureUsage.create!(feature_id: warpriest13_feature.id)
    FeatureUsageFeatureOption.create!(base_feature_usage_id: warpriest11_feature_usage.id, option_feature_usage_id: warpriest13_feature_usage.id, option_name: "Channel Energy", cost: 2)

warpriest14 = KlassFeature.create!(klass_id: warpriest.id, name: "Sacred Armor", description: "At 7th level, the warpriest gains the ability to enhance his armor with divine power as a swift action. This power grants the armor a +1 enhancement bonus. For every 3 levels beyond 7th, this bonus increases by 1 (to a maximum of +5 at 19th level). The warpriest can use this ability a number of minutes per day equal to his warpriest level. This duration must be used in 1-minute increments, but they don’t need to be consecutive.

These bonuses stack with any existing bonuses the armor might have, to a maximum of +5. The warpriest can enhance armor any of the following armor special abilities: energy resistance (normal, improved, and greater), fortification (heavy, light, or moderate), glamered, and spell resistance (13, 15, 17, and 19). Adding any of these special abilities replaces an amount of bonus equal to the special ability’s base cost. For this purpose, glamered counts as a +1 bonus, energy resistance counts as +2, improved energy resistance counts as +4, and greater energy resistance counts as +5. Duplicate abilities do not stack. The armor must have at least a +1 enhancement bonus before any other special abilities can be added.

The enhancement bonus and armor special abilities are determined the first time the ability is used each day and cannot be changed until the next day. These bonuses apply only while the warpriest is wearing the armor, and end immediately if the armor is removed or leaves the warpriest’s possession. This ability can be ended as a free action at the start of the warpriest’s turn. This ability cannot be applied to a shield.

When the warpriest uses this ability, he can also use his sacred weapon ability as a free action by expending one use of his fervor.")
  FeatureLevel.create!(klass_feature_id: warpriest14.id, level: 7, table_description: "Sacred Armor +1")
  FeatureLevel.create!(klass_feature_id: warpriest14.id, level: 10, table_description: "Sacred Armor +2")
  FeatureLevel.create!(klass_feature_id: warpriest14.id, level: 13, table_description: "Sacred Armor +3")
  FeatureLevel.create!(klass_feature_id: warpriest14.id, level: 16, table_description: "Sacred Armor +4")
  FeatureLevel.create!(klass_feature_id: warpriest14.id, level: 19, table_description: "Sacred Armor +5")
  warpriest14_feature = Feature.create!(action_id: swift.id)
    KlassFeatureFeature.create!(feature_id: warpriest14_feature.id, klass_feature_id: warpriest14.id)

warpriest15 = KlassFeature.create!(klass_id: warpriest.id, name: "Aspect of War", description: "At 20th level, the warpriest can channel an aspect of war, growing in power and martial ability. Once per day as a swift action, a warpriest can treat his level as his base attack bonus, gains DR 10/—, and can move at his full speed regardless of the armor he is wearing or his encumbrance. In addition, the blessings he calls upon don’t count against his daily limit during this time. This ability lasts for 1 minute.")
  FeatureLevel.create!(klass_feature_id: warpriest15.id, level: 20, table_description: "Aspect of War")
  warpriest15_feature = Feature.create!(action_id: swift.id)
    KlassFeatureFeature.create!(feature_id: warpriest15_feature.id, klass_feature_id: warpriest15.id)

print "Warpriest features created! \r"

# ///////////////////////////////////////////////////////
# <-*-*-----*-*-*- Class Feature Options!-*-*-*-----*-*->
# ///////////////////////////////////////////////////////

death_blessing = KlassSpecialization.create!(name: "Death Blessing", description: "")
  KlassFeatureKlassSpecialization.create!(klass_feature_id: warpriest7.id, klass_specialization_id: death_blessing.id)
  death_blessing1 = KlassSpecializationFeature.create!(klass_specialization_id: death_blessing.id, name: "From the Grave (minor)", description: "At 1st level, you can take on a corpse-like visage for 1 minute, making you more intimidating and giving you undead-like protection from harm. You gain a +4 bonus on Disguise checks to resemble an undead creature and on Intimidate checks, as well as a +2 profane bonus on saving throws against disease, mind-affecting effects, paralysis, poison, and stun.", level: 1)
    death_blessing1_feature = Feature.create!(action_id: standard.id)
      KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: death_blessing1.id, feature_id: death_blessing1_feature.id)
  death_blessing2 = KlassSpecializationFeature.create!(klass_specialization_id: death_blessing.id, name: "Death's Touch (major)", description: "At 10th level, you can make a melee touch attack against an opponent to deliver grim suffering. If you succeed, you inflict 1 temporary negative level on the target for 1 minute. Alternatively, you can activate this ability as a swift action upon hitting an opponent with a melee attack. These temporary negative levels stack. You gain no benefit from imposing these negative levels (such as the temporary hit points undead gain from enervation).", level: 10)

healing_blessing = KlassSpecialization.create!(name: "Healing Blessing", description: "")
  KlassFeatureKlassSpecialization.create!(klass_feature_id: warpriest7.id, klass_specialization_id: healing_blessing.id)
  healing_blessing1 = KlassSpecializationFeature.create!(klass_specialization_id: healing_blessing.id, name: "Powerful Healer (minor)", description: "At 1st level, you can add power to a cure spell as you cast it. As a swift action, you can treat any cure spell as if it were empowered (as the Empower Spell feat), causing it to heal 50% more damage (or deal 50% more damage if used against undead). This ability doesn’t stack with itself or the Empower Spell feat.", level: 1)
    healing_blessing1_feature = Feature.create!(action_id: swift.id)
      KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: healing_blessing1.id, feature_id: healing_blessing1_feature.id)
  healing_blessing2 = KlassSpecializationFeature.create!(klass_specialization_id: healing_blessing.id, name: "Fast Healing (major)", description: "At 10th level, you can touch an ally and grant it fast healing 3 for 1 minute.", level: 10)


# //////////////////////////////////////////////////
# <-*-*-----*-*-*- Class Archetypes!-*-*-*-----*-*->
# //////////////////////////////////////////////////



puts "Warpriest Created!"
