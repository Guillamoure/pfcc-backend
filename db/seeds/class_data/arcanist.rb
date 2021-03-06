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
inner_sea_bestariy = Source.find_by!(title: "Pathfinder Campaign Setting: Inner Sea Bestiary", abbreviation: "PCB: ISB", code: "PZO9251")
custom = Source.find_by!(title: "Custom", abbreviation: "Custom", code: nil)


# //////////////////////////////////////////////////
# <-*-*-----*-*-*- Other References -*-*-*-----*-*->
# //////////////////////////////////////////////////

cr = Skillset.find_by!(name: "Core Rulebook")
dmc = Skillset.find_by!(name: "DMCustom")
ravnica_custom = Skillset.find_by!(name: "Ravnica Custom")




arcanist = Klass.create!(name: "Arcanist", hit_die: 6, skill_ranks: 2, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: "https://i.pinimg.com/originals/59/af/7d/59af7defc23bcd2a6338ad3d67e52df8.png", starting_wealth: "2d6 × 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", source_id: advanced_class_guide.id, description: "Some spellcasters seek the secrets of magic, pursuing the power to make the impossible possible. Others are born with magic in their blood, commanding unbelievable forces as effortlessly as they breathe. Yet still others seek to meld the science of arcane scholars with the natural might of innate casters. These arcanists seek to discover the mysterious laws of magic and through will and expertise bend those forces to their whims. Arcanists are the shapers and tinkers of the arcane world, and no magic can resist their control.

Role: Arcanists are scholars of all things magical. They constantly seek out new forms of magic to discover how they work, and in many cases, to collect the energy of such magic for their own uses. Many arcanists are seen as reckless, more concerned with the potency of magic than the ramifications of unleashing such power.

Alignment: Any.")


ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Appraise").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Fly").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (arcana)").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (dungeoneering)").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (engineering)").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (geography)").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (history)").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (local)").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (nature)").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (nobility)").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (planes)").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (religion)").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Linguistics").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Spellcraft").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Use Magic Device").id)

ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Linguistics").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Knowledge").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Nature").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Religion").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Society").id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Spellcraft", untrained: true).id)

# /////////////////////////////////////////////////////
# <-*-*-----*-*-*- Base Class Features!-*-*-*-----*-*->
# /////////////////////////////////////////////////////

arcanist1 = KlassFeature.create!(klass_id: arcanist.id, name: "Weapon and Armor Proficiencies", description: "Arcanists are proficient with all simple weapons. They are not proficient with any type of armor or shield. Armor interferes with an arcanist’s gestures, which can cause her spells with somatic components to fail (see Arcane Spells and Armor).")
  FeatureLevel.create!(klass_feature_id: arcanist1.id, level: 1, table_description: "")
  arcanist1_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: arcanist1.id, feature_id: arcanist1_feature.id)
    FeatureWeaponProficiency.create!(feature_id: arcanist1_feature.id, proficiency_group: "Simple")

arcanist2 = KlassFeature.create!(klass_id: arcanist.id, name: "Spells", description: "An arcanist casts arcane spells drawn from the sorcerer/wizard spell list. An arcanist must prepare her spells ahead of time, but unlike a wizard, her spells are not expended when they’re cast. Instead, she can cast any spell that she has prepared consuming a spell slot of the appropriate level, assuming she hasn’t yet used up her spell slots per day for that level.

To learn, prepare, or cast a spell, the arcanist must have an Intelligence score equal to at least 10 + the spell’s level. The saving throw DC against an arcanist’s spell is 10 + the spell’s level + the arcanist’s Intelligence modifier.

An arcanist can only cast a certain number of spells of each spell level per day. Her base daily spell allotment is given on Table: Arcanist under “Spells per Day.” In addition, she receives bonus spells per day if she has a high Intelligence score.

An arcanist may know any number of spells, but the number she can prepare each day is limited. At 1st level, she can prepare four 0-level spells and two 1st-level spells each day. At each new arcanist level, the number of spells she can prepare each day increases, adding new spell levels as indicated on Table: Arcanist Spells Prepared. Unlike the number of spells she can cast per day, the number of spells an arcanist can prepare each day is not affected by her Intelligence score. Feats and other effects that modify the number of spells known by a spellcaster instead affect the number of spells an arcanist can prepare.

An arcanist must choose and prepare her spells ahead of time by getting 8 hours of sleep and spending 1 hour studying her spellbook. While studying, the arcanist decides what spells to prepare and refreshes her available spell slots for the day.

Like a sorcerer, an arcanist can choose to apply any metamagic feats she knows to a prepared spell as she casts it, with the same increase in casting time (see Spontaneous Casting and Metamagic Feats). However, she may also prepare a spell with any metamagic feats she knows and cast it without increasing casting time like a wizard. She cannot combine these options—a spell prepared with metamagic feats cannot be further modified with another metamagic feat at the time of casting (unless she has the metamixing arcanist exploit, detailed below).

Spellbooks: An arcanist must study her spellbook each day to prepare her spells. She can’t prepare any spell not recorded in her spellbook, except for read magic (which all arcanists can prepare from memory).

An arcanist begins play with a spellbook containing all 0-level wizard/sorcerer spells plus three 1st-level spells of her choice. The arcanist also selects a number of additional 1st-level spells equal to her Intelligence modifier to add to the spellbook. At each new arcanist level, she gains two new spells of any spell level or levels that she can cast (based on her new arcanist level) for her spellbook. At any time, an arcanist can also add spells found in wizards‘ or other arcanists’ spellbooks to her own.

Cantrips: Arcanists can prepare a number of cantrips, or 0-level spells, each day as noted on Table: Arcanist Spells Prepared. These spells are cast like any other spell, but they do not consume spell slots. As with her other spells, these spells are not expended when cast.")
  FeatureLevel.create!(klass_feature_id: arcanist2.id, level: 1, table_description: "")
  wizard_spell_list = SpellList.find_or_create_by!(name: "Wizard Spells List")
  arcanist2_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: arcanist2_feature.id, klass_feature_id: arcanist2.id)
    arcanist_spellcasting = FeatureSpellcasting.create!(feature_id: arcanist2_feature.id, ability_score: "intelligence", prepare_spells: true, expend_prepared_spells: false, infinite_zero_level: true, known_spell_list: true, apply_metamagic_when_casting: true, apply_metamagic_when_preparing: true, type_of_magic: "Arcane", caster_level_penalty: 0, spell_list_id: wizard_spell_list.id)

  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 1, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 2, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 3, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 4, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 5, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 6, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 7, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 8, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 9, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 10, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 11, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 12, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 13, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 14, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 15, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 4, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 5, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 6, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 7, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 8, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 9, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 10, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 11, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 12, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 13, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 14, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 15, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 6, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 7, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 8, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 9, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 10, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 11, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 12, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 13, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 14, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 15, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 8, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 9, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 10, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 11, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 12, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 13, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 14, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 15, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 10, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 11, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 12, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 13, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 14, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 15, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 12, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 13, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 14, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 15, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 14, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 15, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 16, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 17, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 18, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 19, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)


  PreparedSpellsPerLevel.create!(spell_level: 0, klass_level: 1, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 0, klass_level: 2, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 0, klass_level: 3, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 0, klass_level: 4, spells: 6, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 0, klass_level: 5, spells: 6, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 0, klass_level: 6, spells: 7, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 0, klass_level: 7, spells: 7, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 0, klass_level: 8, spells: 8, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 0, klass_level: 9, spells: 8, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 0, klass_level: 10, spells: 9, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 0, klass_level: 11, spells: 9, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 0, klass_level: 12, spells: 9, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 0, klass_level: 13, spells: 9, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 0, klass_level: 14, spells: 9, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 0, klass_level: 15, spells: 9, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 0, klass_level: 16, spells: 9, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 0, klass_level: 17, spells: 9, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 0, klass_level: 18, spells: 9, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 0, klass_level: 19, spells: 9, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 0, klass_level: 20, spells: 9, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 1, klass_level: 1, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 1, klass_level: 2, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 1, klass_level: 3, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 1, klass_level: 4, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 1, klass_level: 5, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 1, klass_level: 6, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 1, klass_level: 7, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 1, klass_level: 8, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 1, klass_level: 9, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 1, klass_level: 10, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 1, klass_level: 11, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 1, klass_level: 12, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 1, klass_level: 13, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 1, klass_level: 14, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 1, klass_level: 15, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 1, klass_level: 16, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 1, klass_level: 17, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 1, klass_level: 18, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 1, klass_level: 19, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 1, klass_level: 20, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 2, klass_level: 4, spells: 1, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 2, klass_level: 5, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 2, klass_level: 6, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 2, klass_level: 7, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 2, klass_level: 8, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 2, klass_level: 9, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 2, klass_level: 10, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 2, klass_level: 11, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 2, klass_level: 12, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 2, klass_level: 13, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 2, klass_level: 14, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 2, klass_level: 15, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 2, klass_level: 16, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 2, klass_level: 17, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 2, klass_level: 18, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 2, klass_level: 19, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 2, klass_level: 20, spells: 5, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 3, klass_level: 6, spells: 1, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 3, klass_level: 7, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 3, klass_level: 8, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 3, klass_level: 9, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 3, klass_level: 10, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 3, klass_level: 11, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 3, klass_level: 12, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 3, klass_level: 13, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 3, klass_level: 14, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 3, klass_level: 15, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 3, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 3, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 3, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 3, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 3, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 4, klass_level: 8, spells: 1, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 4, klass_level: 9, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 4, klass_level: 10, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 4, klass_level: 11, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 4, klass_level: 12, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 4, klass_level: 13, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 4, klass_level: 14, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 4, klass_level: 15, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 4, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 4, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 4, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 4, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 4, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 5, klass_level: 10, spells: 1, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 5, klass_level: 11, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 5, klass_level: 12, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 5, klass_level: 13, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 5, klass_level: 14, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 5, klass_level: 15, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 5, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 5, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 5, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 5, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 5, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 6, klass_level: 12, spells: 1, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 6, klass_level: 13, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 6, klass_level: 14, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 6, klass_level: 15, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 6, klass_level: 16, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 6, klass_level: 17, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 6, klass_level: 18, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 6, klass_level: 19, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 6, klass_level: 20, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 7, klass_level: 14, spells: 1, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 7, klass_level: 15, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 7, klass_level: 16, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 7, klass_level: 17, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 7, klass_level: 18, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 7, klass_level: 19, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 7, klass_level: 20, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 8, klass_level: 16, spells: 1, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 8, klass_level: 17, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 8, klass_level: 18, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 8, klass_level: 19, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 8, klass_level: 20, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 9, klass_level: 18, spells: 1, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 9, klass_level: 19, spells: 2, feature_spellcasting_id: arcanist_spellcasting.id)
  PreparedSpellsPerLevel.create!(spell_level: 9, klass_level: 20, spells: 3, feature_spellcasting_id: arcanist_spellcasting.id)

arcanist3 = KlassFeature.create!(klass_id: arcanist.id, name: 'Arcane Reservoir', description: 'An arcanist has an innate pool of magical energy that she can draw upon to fuel her arcanist exploits and enhance her spells. The arcanist’s arcane reservoir can hold a maximum amount of magical energy equal to 3 + the arcanist’s level. Each day, when the arcanist prepares spells, the arcanist’s arcane reservoir fills with raw magical energy, gaining a number of points equal to 3 + 1/2 her arcanist level. Any points she had from the previous day are lost. She can also regain these points through the consume spells class feature and some arcanist exploits. The arcane reservoir can never hold more points than the maximum amount noted above; points gained in excess of this total are lost.

Points from the arcane reservoir are used to fuel many of the arcanist’s powers. In addition, the arcanist can expend 1 point from her arcane reservoir as a free action whenever she casts an arcanist spell. If she does, she can choose to increase the caster level by 1 or increase the spell’s DC by 1. She can expend no more than 1 point from her reservoir on a given spell in this way.')
  FeatureLevel.create!(klass_feature_id: arcanist3.id, level: 1, table_description: 'Arcane Reservoir')
  arcanist3_feature = Feature.create!(action_id: free.id)
    KlassFeatureFeature.create!(klass_feature_id: arcanist3.id, feature_id: arcanist3_feature.id)

arcanist4 = KlassFeature.create!(klass_id: arcanist.id, name: 'Arcanist Exploit', description: 'By bending and sometimes even breaking the rules of magic, the arcanist learns to exploit gaps and exceptions in the laws of magic. Some of these exploits allow her to break down various forms of magic, adding their essence to her arcane reservoir. At 1st level and every 2 levels thereafter, the arcanist learns a new arcane exploit selected from the following list. An arcanist exploit cannot be selected more than once. Once an arcanist exploit has been selected, it cannot be changed. Most arcanist exploits require the arcanist to expend points from her arcane reservoir to function. Unless otherwise noted, the saving throw DC of an arcanist exploit is equal to 10 + 1/2 the arcanist’s level + the arcanist’s Charisma modifier.')
  FeatureLevel.create!(klass_feature_id: arcanist4.id, level: 1, table_description: 'Arcanist Exploit')
  FeatureLevel.create!(klass_feature_id: arcanist4.id, level: 3, table_description: 'Arcanist Exploit')
  FeatureLevel.create!(klass_feature_id: arcanist4.id, level: 5, table_description: 'Arcanist Exploit')
  FeatureLevel.create!(klass_feature_id: arcanist4.id, level: 7, table_description: 'Arcanist Exploit')
  FeatureLevel.create!(klass_feature_id: arcanist4.id, level: 9, table_description: 'Arcanist Exploit')
  FeatureLevel.create!(klass_feature_id: arcanist4.id, level: 11, table_description: 'Arcanist Exploit')
  FeatureLevel.create!(klass_feature_id: arcanist4.id, level: 13, table_description: 'Arcanist Exploit')
  FeatureLevel.create!(klass_feature_id: arcanist4.id, level: 15, table_description: 'Arcanist Exploit')
  FeatureLevel.create!(klass_feature_id: arcanist4.id, level: 17, table_description: 'Arcanist Exploit')
  FeatureLevel.create!(klass_feature_id: arcanist4.id, level: 19, table_description: 'Arcanist Exploit')

arcanist5 = KlassFeature.create!(klass_id: arcanist.id, name: 'Consume Spells', description: 'At 1st level, an arcanist can expend an available arcanist spell slot as a move action, making it unavailable for the rest of the day, just as if she had used it to cast a spell. She can use this ability a number of times per day equal to her Charisma modifier (minimum 1). Doing this adds a number of points to her arcane reservoir equal to the level of the spell slot consumed. She cannot consume cantrips (0 level spells) in this way. Points gained in excess of the reservoir’s maximum are lost.')
  FeatureLevel.create!(klass_feature_id: arcanist5.id, level: 1, table_description: 'Consume Spells')
  arcanist5_feature = Feature.create!(action_id: move.id, name: "Consume Spell")
    KlassFeatureFeature.create!(klass_feature_id: arcanist5.id, feature_id: arcanist5_feature.id)

arcanist6 = KlassFeature.create!(klass_id: arcanist.id, name: 'Greater Exploits', description: 'At 11th level and every 2 levels thereafter, an arcanist can choose one of the following greater exploits in place of an arcanist exploit.')
  FeatureLevel.create!(klass_feature_id: arcanist6.id, level: 11, table_description: 'Greater Exploits')

arcanist7 = KlassFeature.create!(klass_id: arcanist.id, name: 'Magical Supremacy', description: 'At 20th level, the arcanist learns how to convert her arcane reservoir into spells and back again. She can cast any spell she has prepared by expending a number of points from her arcane reservoir equal to 1 + the level of the spell to be cast instead of expending a spell slot. When she casts a spell in this fashion, she treats her caster level as 2 higher than normal, and the DCs of any saving throws associated with the spell increase by 2. She cannot further expend points from her arcane reservoir to enhance a spell cast in this way.')
  FeatureLevel.create!(klass_feature_id: arcanist7.id, level: 20, table_description: 'Magical Supremacy')

print "Arcanist features created! \r"


print "Arcanish features created! \r"

# //////////////////////////////////////////////////
# <-*-*-----*-*-*- Class Archetypes!-*-*-*-----*-*->
# //////////////////////////////////////////////////

occultist = KlassArchetype.create!(name: "Occultist", klass_id: arcanist.id, source_id: advanced_class_guide.id, description: "Not all arcanists peer inward to discern the deepest secrets of magic. Some look outward, connecting with extraplanar creatures and bartering for secrets, power, and favor.")

  occultist1 = KlassArchetypeFeature.create!(name: "Planar Spells", klass_archetype_id: occultist.id, description: "An occultist adds all planar ally spells to her spell list (using her arcanist level as the cleric level), and treats plane shift as a 5th-level arcanist spell.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: occultist1.id, level: 1, table_description: "Planar Spells")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_archetype_feature_id: occultist1.id, replace_or_alter: "alter")

  occultist2 = KlassArchetypeFeature.create!(name: "Conjurer's Focus", klass_archetype_id: occultist.id, description: "An occultist can spend 1 point from her arcane reservoir to cast summon monster I. She can cast this spell as a standard action and the summoned creatures remain for 1 minute per level (instead of 1 round per level). At 3rd level and every 2 levels thereafter, the power of this ability increases by one spell level, allowing her to summon more powerful creatures (to a maximum of summon monster IX at 17th level), at the cost of an additional point from her arcane spell reserve per spell level. An occultist cannot have more than one summon monster spell active in this way at one time. If this ability is used again, any existing summon monster immediately ends.

  This ability replaces the arcanist exploit gained at 1st level.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: occultist2.id, level: 1, table_description: "Conjurer's Focus")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: arcanist4.id, klass_archetype_feature_id: occultist2.id, replace_or_alter: "replace", affects_specific_level: 1)

  occultist3 = KlassArchetypeFeature.create!(name: "Planar Contact", klass_archetype_id: occultist.id, description: "At 7th level, an occultist can cast augury once per day and contact other plane once per week, using her arcanist level as her caster level.

  This ability replaces the arcanist exploit gained at 7th level.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: occultist3.id, level: 7, table_description: "Planar Contact")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: arcanist4.id, klass_archetype_feature_id: occultist3.id, replace_or_alter: "replace", affects_specific_level: 7)

  occultist4 = KlassArchetypeFeature.create!(name: "Perfect Summoner", klass_archetype_id: occultist.id, description: "At 20th level, an occultist can use her conjurer’s focus without spending points from her arcane reservoir, and the creatures summoned last until dismissed.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: occultist4.id, level: 20, table_description: "Perfect Summoner")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: arcanist7.id, klass_archetype_feature_id: occultist4.id, replace_or_alter: "replace")

  print "Occultist Archetype Created! \r"


puts "Arcanist Created!"
