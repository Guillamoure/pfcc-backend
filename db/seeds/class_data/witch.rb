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

cr = Skillset.find_by!(name: "Core Rulebook")
dmc = Skillset.find_by!(name: "DMCustom")
ravnica_custom = Skillset.find_by!(name: "Ravnica Custom")




witch = Klass.create!(name: "Witch", hit_die: 6, skill_ranks: 2, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: "https://paizo.com/image/content/PathfinderCampaignSetting/PZO9249-WinterWitch.jpg", starting_wealth: "3d6 × 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", source_id: advanced_players_guide.id, description: "Some gain power through study, some through devotion, others through blood, but the witch gains power from her communion with the unknown. Generally feared and misunderstood, the witch draws her magic from a pact made with an otherworldly power. Communing with that source, using her familiar as a conduit, the witch gains not only a host of spells, but a number of strange abilities known as hexes. As a witch grows in power, she might learn about the source of her magic, but some remain blissfully unaware. Some are even afraid of that source, fearful of what it might be or where its true purposes lie.

Role: While many witches are recluses, living on the edge of civilization, some live within society, openly or in hiding. The blend of witches’ spells makes them adept at filling a number of different roles, from seer to healer, and their hexes grant them a number of abilities that are useful in a fight. Some witches travel about, seeking greater knowledge and better understanding of the mysterious powers that guide them.

Alignment: Any.")


ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Fly").id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Heal").id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Intimidate").id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (arcana)").id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (history)").id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (nature)").id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (planes)").id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge").id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Spellcraft").id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Use Magic Device").id)

ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Heal").id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Intimidate").id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Knowledge").id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Nature").id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Religion").id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Spellcraft", untrained: true).id)

# /////////////////////////////////////////////////////
# <-*-*-----*-*-*- Base Class Features!-*-*-*-----*-*->
# /////////////////////////////////////////////////////

witch1 = KlassFeature.create!(klass_id: witch.id, name: "Weapon and Armor Proficiency", description: "Witches are proficient with all simple weapons. They are not proficient with any type of armor or shield. Armor interferes with a witch’s gestures, which can cause her spells with somatic components to fail.")
  FeatureLevel.create!(klass_feature_id: witch1.id, level: 1, table_description: "")
  witch1_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: witch1.id, feature_id: witch1_feature.id)
    FeatureWeaponProficiency.create!(feature_id: witch1_feature.id, proficiency_group: "Simple")

witch2 = KlassFeature.create!(klass_id: witch.id, name: "Spells", description: "A witch casts arcane spells drawn from the witch spell list. A witch must choose and prepare her spells ahead of time.

  To learn or cast a spell, a witch must have an Intelligence score equal to at least 10 + the spell level. The Difficulty Class for a saving throw against a witch’s spell is 10 + the spell level + the witch’s Intelligence modifier.

  A witch can cast only a certain number of spells of each spell level per day. Her base daily spell allotment is given on Table: Witch. In addition, she receives bonus spells per day if she has a high Intelligence score (see Table: Ability Modifiers and Bonus Spells).

  A witch may know any number of spells. She must choose and prepare her spells ahead of time by getting 8 hours of sleep and spending 1 hour communing with her familiar. While communing, the witch decides which spells to prepare.

  Cantrips Witches can prepare a number of cantrips, or 0-level spells, each day, as noted on Table: Witch under “Spells per Day.” These spells are cast like any other spell, but they are not expended when cast and may be used again. Cantrips prepared using other spell slots, due to metamagic feats for example, are expended normally.")
    FeatureLevel.create!(klass_feature_id: witch2.id, level: 1, table_description: "")
    witch_spell_list = SpellList.create!(name: "Witch Spells List")
    witch2_feature = Feature.create!()
      KlassFeatureFeature.create!(feature_id: witch2_feature.id, klass_feature_id: witch2.id)
      witch_spellcasting = FeatureSpellcasting.create!(feature_id: witch2_feature.id, ability_score: "intelligence", prepare_spells: true, expend_prepared_spells: true, infinite_zero_level: true, known_spell_list: true, apply_metamagic_when_casting: false, apply_metamagic_when_preparing: true, type_of_magic: "Arcane", caster_level_penalty: 0, spell_list_id: witch_spell_list.id)

    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 1, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 2, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 3, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 4, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 5, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 6, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 7, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 8, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 9, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 10, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 11, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 12, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 13, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 14, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 15, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 16, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 17, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 18, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 19, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 20, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 1, spells: 1, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 2, spells: 2, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 3, spells: 2, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 4, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 5, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 6, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 7, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 8, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 9, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 10, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 11, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 12, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 13, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 14, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 15, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 16, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 17, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 18, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 19, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 20, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 3, spells: 1, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 4, spells: 2, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 5, spells: 2, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 6, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 7, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 8, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 9, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 10, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 11, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 12, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 13, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 14, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 15, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 16, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 17, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 18, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 19, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 20, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 5, spells: 1, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 6, spells: 2, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 7, spells: 2, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 8, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 9, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 10, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 11, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 12, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 13, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 14, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 15, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 16, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 17, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 18, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 19, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 20, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 7, spells: 1, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 8, spells: 2, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 9, spells: 2, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 10, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 11, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 12, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 13, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 14, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 15, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 16, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 17, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 18, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 19, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 20, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 9, spells: 1, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 10, spells: 2, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 11, spells: 2, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 12, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 13, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 14, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 15, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 16, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 17, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 18, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 19, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 20, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 11, spells: 1, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 12, spells: 2, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 13, spells: 2, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 14, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 15, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 16, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 17, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 18, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 19, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 20, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 13, spells: 1, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 14, spells: 2, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 15, spells: 2, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 16, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 17, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 18, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 19, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 20, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 15, spells: 1, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 16, spells: 2, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 17, spells: 2, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 18, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 19, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 20, spells: 4, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 17, spells: 1, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 18, spells: 2, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 19, spells: 3, feature_spellcasting_id: witch_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 20, spells: 4, feature_spellcasting_id: witch_spellcasting.id)


witch3 = KlassFeature.create!(klass_id: witch.id, name: "Hex", description: "Witches learn a number of magic tricks, called hexes, that grant them powers or weaken foes. At 1st level, a witch gains one hex of her choice. She gains an additional hex at 2nd level and for every 2 levels attained after 2nd level, as noted on Table: Witch. A witch cannot select an individual hex more than once.

  Unless otherwise noted, using a hex is a standard action that does not provoke an attack of opportunity. The save to resist a hex is equal to 10 + 1/2 the witch’s level + the witch’s Intelligence modifier.", has_klass_feature_options: true)
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 1, table_description: "Hex")
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 2, table_description: "Hex")
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 4, table_description: "Hex")
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 6, table_description: "Hex")
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 8, table_description: "Hex")
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 10, table_description: "Hex")
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 12, table_description: "Hex")
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 14, table_description: "Hex")
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 16, table_description: "Hex")
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 18, table_description: "Hex")
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 20, table_description: "Hex")

witch4 = KlassFeature.create!(klass_id: witch.id, name: "Patron Spells", description: "At 1st level, when a witch gains her familiar, she must also select a patron. This patron is a vague and mysterious force, granting the witch power for reasons that she might not entirely understand. While these forces need not be named, they typically hold influence over one of the following forces.

At 2nd level, and every two levels thereafter, a witch’s patron adds new spells to a witch’s list of spells known. These spells are also automatically added to the list of spells stored by the familiar. The spells gained depend upon the patron chosen. Each patron is listed by its theme. Its actual name is up to the GM and the witch to decide.")
  FeatureLevel.create!(klass_feature_id: witch4.id, level: 1, table_description: "Patron Spells")

witch5 = KlassFeature.create!(klass_id: witch.id, name: "Witch's Familiar", description: "At 1st level, a witch forms a close bond with a familiar, a creature that teaches her magic and helps to guide her along her path. Familiars also aid a witch by granting her skill bonuses, additional spells, and help with some types of magic. This functions like the wizard’s arcane bond class feature, except as noted in the Witch’s Familiar section.

A witch must commune with her familiar each day to prepare her spells. Familiars store all of the spells that a witch knows, and a witch cannot prepare a spell that is not stored by her familiar. A witch’s familiar begins play storing all of the 0-level witch spells plus three 1st level spells of the witch’s choice. The witch also selects a number of additional 1st-level spells equal to her Intelligence modifier to store in her familiar. At each new witch level, she adds two new spells of any spell level or levels that she can cast (based on her new witch level) to her familiar. A witch can also add additional spells to her familiar through a special ritual.")
  FeatureLevel.create!(klass_feature_id: witch5.id, level: 1, table_description: "Witch's Familiar")

witch6 = KlassFeature.create!(klass_id: witch.id, name: "Major Hex", description: "Starting at 10th level, and every two levels thereafter, a witch can choose one of the following major hexes whenever she could select a new hex.")
  FeatureLevel.create!(klass_feature_id: witch6.id, level: 10, table_description: "Major Hex")

witch7 = KlassFeature.create!(klass_id: witch.id, name: "Grand Hex", description: "Starting at 18th level, and every two levels thereafter, a witch can choose one of the following grand hexes whenever she could select a new hex.")
  FeatureLevel.create!(klass_feature_id: witch7.id, level: 18, table_description: "Grand Hex")

print "Witch features created! \r"

# ///////////////////////////////////////////////////////
# <-*-*-----*-*-*- Class Specializations!-*-*-*-----*-*->
# ///////////////////////////////////////////////////////

trickery = KlassSpecialization.create!(name: "Trickery", description: "animate rope, mirror image, major image, hallucinary terrain, mirage arcana, mislead, reverse gravity, screen, time stop")
  KlassFeatureKlassSpecialization.create!(klass_feature_id: witch4.id, klass_specialization_id: trickery.id)

# ///////////////////////////////////////////////////////
# <-*-*-----*-*-*- Class Feature Options!-*-*-*-----*-*->
# ///////////////////////////////////////////////////////

FeatureOption.create!(name: "Evil Eye", klass_feature_id: witch3.id, level_available: 1, description: "The target takes a –2 penalty on one of the following (witch’s choice): AC, ability checks, attack rolls, saving throws, or skill checks. This hex lasts for a number of rounds equal to 3 + the witch’s Intelligence modifier. A Will save reduces this to just 1 round.

This is a mind-affecting effect. At 8th level the penalty increases to –4.")

FeatureOption.create!(name: "Healing", klass_feature_id: witch3.id, level_available: 1, description: "This acts as a cure light wounds spell, using the witch’s caster level. Once a creature has benefited from the healing hex, it cannot benefit from it again for 24 hours. At 5th level, this hex acts like cure moderate wounds.")

FeatureOption.create!(name: "Misfortune", klass_feature_id: witch3.id, level_available: 1, description: "The witch can cause a creature within 30 feet to suffer grave misfortune for 1 round. Anytime the creature makes an ability check, attack roll, saving throw, or skill check, it must roll twice and take the worse result. A Will save negates this hex. At 8th level and 16th level, the duration of this hex is extended by 1 round. This hex affects all rolls the target must make while it lasts. Whether or not the save is successful, a creature cannot be the target of this hex again for 1 day.")

FeatureOption.create!(name: "Prehensile Hair", klass_feature_id: witch3.id, level_available: 1, description: "The witch can instantly cause her hair (or even her eyebrows) to grow up to 10 feet long or to shrink to its normal length, and can manipulate her hair as if it were a limb with a Strength score equal to her Intelligence score. Her hair has reach 10 feet, and she can use it as a secondary natural attack that deals 1d3 points of damage (1d2 for a Small witch). Her hair can manipulate objects (but not weapons) as dexterously as a human hand.

The hair cannot be sundered or attacked as a separate creature. Pieces cut from the witch’s elongated hair shrink away to nothing. Using her hair does not harm the witch’s head or neck, even if she lifts something heavy with it. The witch can manipulate her hair a number of minutes each day equal to her level; these minutes do not need to be consecutive, but must be spent in 1-minute increments. A typical male witch with this hex can also manipulate his beard, moustache, or eyebrows.")

# //////////////////////////////////////////////////
# <-*-*-----*-*-*- Class Archetypes!-*-*-*-----*-*->
# //////////////////////////////////////////////////

cartomancer = KlassArchetype.create!(name: "Cartomancer", klass_id: witch.id, source_id: harrow_handbook.id, description: "More than mere playing cards, harrow decks allow individuals to communicate with powers beyond mortal ken. A witch who serves the spirits of the harrow in exchange for mystical power is known as a cartomancer. Rather than connecting with a familiar, a cartomancer communes with her patron through a consecrated harrow deck.

Hexes: The following witch hexes complement the cartomancer archetype: evil eye, fortune, misfortune, soothsayer.

Major Hexes: The following major hexes complement the cartomancer archetype: harrowing curse, vision.

Grand Hexes: The following grand hex complements the cartomancer archetype: Dire Prophecy.")

  cartomancer1 = KlassArchetypeFeature.create!(name: "Spell Deck", klass_archetype_id: cartomancer.id, description: "Each cartomancer carries a special harrow deck that allows her to communicate with her patron. Its ability to hold spells functions identically to the way a witch’s spells are granted by her familiar. The cartomancer must consult her harrow deck each day to prepare her spells and cannot prepare spells that are not stored in the deck. The spell deck cannot be used for this purpose if any cards are missing.

  This ability replaces the witch’s familiar.

  The following familiar ability works differently for a cartomancer.

  Deliver Touch Spells (Su)

  At 3rd level, when the cartomancer uses the Deadly Dealer feat with a card from her spell deck, the card is not destroyed and gains the returning weapon special ability.

  In addition, the cartomancer can deliver a touch spell with a thrown card. This uses the Deadly Dealer feat (see below), except the attack is resolved as a ranged touch attack and the card deals no damage of its own. This ability can be used with any card (not just one from the cartomancer’s spell deck).")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: cartomancer1.id, level: 1, table_description: "Spell Deck")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: witch5.id, klass_archetype_feature_id: cartomancer1.id, replace_or_alter: "replace")

  cartomancer2 = KlassArchetypeFeature.create!(name: "Deadly Dealer", klass_archetype_id: cartomancer.id, description: "At 2nd level, a cartomancer gains the Deadly Dealer feat as a bonus feat, even if she does not meet the prerequisites. The cartomancer gains the benefits of the Arcane Strike feat, but only for the purposes of using Deadly Dealer.

  This replaces the witch’s 2nd-level hex.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: cartomancer2.id, level: 2, table_description: "Deadly Dealer")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: witch3.id, klass_archetype_feature_id: cartomancer2.id, replace_or_alter: "replace", affects_specific_level: 2)

  print "Cartomancer Archetype Created! \r"


  # IDENTIFIER = KlassArchetypeFeature.create!(name: "NAME", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "NAME")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")

  # IDENTIFIER = KlassArchetypeFeature.create!(name: "NAME", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "NAME")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")

  # IDENTIFIER = KlassArchetypeFeature.create!(name: "NAME", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "NAME")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")

puts "Witch Created!"
