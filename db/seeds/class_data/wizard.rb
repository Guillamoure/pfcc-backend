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

wizard = Klass.create!(name: "Wizard", hit_die: 6, skill_ranks: 2, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: "https://i.pinimg.com/originals/e0/cc/47/e0cc47ea55051b8221c15cfc208f3a20.png", source_id: core_rulebook.id, starting_wealth: "2d6 × 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", description: "Beyond the veil of the mundane hide the secrets of absolute power. The works of beings beyond mortals, the legends of realms where gods and spirits tread, the lore of creations both Wondrous Item and terrible—such mysteries call to those with the ambition and the intellect to rise above the common folk to grasp true might. Such is the path of the wizard. These shrewd magic-users seek, collect, and covet esoteric knowledge, drawing on cultic arts to work wonders beyond the abilities of mere mortals. While some might choose a particular field of magical study and become masters of such powers, others embrace versatility, reveling in the unbounded wonders of all magic. In either case, wizards prove a cunning and potent lot, capable of smiting their foes, empowering their allies, and shaping the world to their every desire.

Role: While universalist wizards might study to prepare themselves for any manner of danger, specialist wizards research schools of magic that make them exceptionally skilled within a specific focus. Yet no matter their specialty, all wizards are masters of the impossible and can aid their allies in overcoming any danger.

Alignment: Any")

ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Appraise").id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Fly").id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (arcana)").id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (dungeoneering)").id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (engineering)").id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (geography)").id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (history)").id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (local)").id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (nature)").id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (nobility)").id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (planes)").id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (religion)").id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Linguistics").id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Spellcraft").id)

ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Linguistics").id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Nature").id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Religion").id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Society").id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Spellcraft", untrained: true).id)


# /////////////////////////////////////////////////////
# <-*-*-----*-*-*- Base Class Features!-*-*-*-----*-*->
# /////////////////////////////////////////////////////

wizard_weapon_and_armor_proficiency = KlassFeature.create!(klass_id: wizard.id, name: "Weapon and Armor Proficiency", description: "Wizards are proficient with the club, dagger, heavy crossbow, light crossbow, and quarterstaff, but not with any type of armor or shield. Armor interferes with a wizard’s movements, which can cause his spells with somatic components to fail.")
FeatureLevel.create!(klass_feature_id: wizard_weapon_and_armor_proficiency.id, level: 1, table_description: "")
  wizard_weapon_and_armor_proficiency_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: wizard_weapon_and_armor_proficiency.id, feature_id: wizard_weapon_and_armor_proficiency_feature.id)
    FeatureWeaponProficiency.create!(feature_id: wizard_weapon_and_armor_proficiency_feature.id, weapon_id: Weapon.find_by!(name: "Club").id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: wizard_weapon_and_armor_proficiency_feature.id, weapon_id: Weapon.find_by!(name: "Dagger").id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: wizard_weapon_and_armor_proficiency_feature.id, weapon_id: Weapon.find_by!(name: "Light Crossbow").id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: wizard_weapon_and_armor_proficiency_feature.id, weapon_id: Weapon.find_by!(name: "Heavy Crossbow").id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: wizard_weapon_and_armor_proficiency_feature.id, weapon_id: Weapon.find_by!(name: "Quarterstaff").id, additive: true)

wizard_spells = KlassFeature.create!(klass_id: wizard.id, name: "Spells", description: "A wizard casts arcane spells drawn from the sorcerer/wizard spell list. A wizard must choose and prepare his spells ahead of time.

To learn, prepare, or cast a spell, the wizard must have an Intelligence score equal to at least 10 + the spell level. The Difficulty Class for a saving throw against a wizard’s spell is 10 + the spell level + the wizard’s Intelligence modifier.

A wizard can cast only a certain number of spells of each spell level per day. His base daily spell allotment is given on Table: Wizard. In addition, he receives bonus spells per day if he has a high Intelligence score (see Table: Ability Modifiers and Bonus Spells).

A wizard may know any number of spells. He must choose and prepare his spells ahead of time by getting 8 hours of sleep and spending 1 hour studying his spellbook. While studying, the wizard decides which spells to prepare.

Starting Spells (See Spellbooks below): A wizard begins play with a spellbook containing all 0-level wizard spells (except those from his opposed schools, if any; see Arcane Schools) plus three 1st-level spells of his choice. The wizard also selects a number of additional 1st-level spells equal to his Intelligence modifier to add to the spellbook. At each new wizard level, he gains two new spells of any spell level or levels that he can cast (based on his new wizard level) for his spellbook. At any time, a wizard can also add spells found in other wizards’ spellbooks to his own (see Magic).

Spells Gained at a New Level: Wizards perform a certain amount of spell research between adventures. Each time a character attains a new wizard level, he gains two spells of his choice to add to his spellbook. The two free spells must be of spell levels he can cast.")
  FeatureLevel.create!(klass_feature_id: wizard_spells.id, level: 1, table_description: "")
  wizard_spell_list = SpellList.find_or_create_by!(name: "Wizard Spells List")
  wizard_spells_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: wizard_spells.id, feature_id: wizard_spells_feature.id)
    wizard_spellcasting = FeatureSpellcasting.create!(feature_id: wizard_spells_feature.id, ability_score: "intelligence", prepare_spells: true, expend_prepared_spells: true, infinite_zero_level: true, known_spell_list: true, apply_metamagic_when_casting: false, apply_metamagic_when_preparing: true, type_of_magic: "Arcane", caster_level_penalty: 0, spell_list_id: wizard_spell_list.id)

  SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 1, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 2, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 3, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 4, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 5, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 6, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 7, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 8, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 9, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 10, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 11, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 12, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 13, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 14, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 15, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 16, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 17, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 18, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 19, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 20, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 1, spells: 1, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 2, spells: 2, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 3, spells: 2, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 4, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 5, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 6, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 7, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 8, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 9, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 10, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 11, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 12, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 13, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 14, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 15, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 16, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 17, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 18, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 19, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 20, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 3, spells: 1, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 4, spells: 2, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 5, spells: 2, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 6, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 7, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 8, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 9, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 10, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 11, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 12, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 13, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 14, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 15, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 16, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 17, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 18, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 19, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 20, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 5, spells: 1, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 6, spells: 2, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 7, spells: 2, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 8, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 9, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 10, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 11, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 12, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 13, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 14, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 15, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 16, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 17, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 18, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 19, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 20, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 7, spells: 1, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 8, spells: 2, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 9, spells: 2, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 10, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 11, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 12, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 13, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 14, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 15, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 16, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 17, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 18, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 19, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 20, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 9, spells: 1, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 10, spells: 2, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 11, spells: 2, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 12, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 13, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 14, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 15, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 16, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 17, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 18, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 19, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 20, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 11, spells: 1, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 12, spells: 2, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 13, spells: 2, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 14, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 15, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 16, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 17, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 18, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 19, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 20, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 13, spells: 1, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 14, spells: 2, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 15, spells: 2, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 16, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 17, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 18, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 19, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 20, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 15, spells: 1, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 16, spells: 2, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 17, spells: 2, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 18, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 19, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 20, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 17, spells: 1, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 18, spells: 2, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 19, spells: 3, feature_spellcasting_id: wizard_spellcasting.id)
  SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 20, spells: 4, feature_spellcasting_id: wizard_spellcasting.id)

wizard_bonus_languages = KlassFeature.create!(klass_id: wizard.id, name: "Bonus Languages", description: "A wizard may substitute Draconic for one of the bonus languages available to the character because of his race.")
  FeatureLevel.create!(klass_feature_id: wizard_bonus_languages.id, level: 1, table_description: "")

wizard_arcane_bond = KlassFeature.create!(klass_id: wizard.id, name: "Arcane Bond", description: "At 1st level, wizards form a powerful bond with an object or a creature. This bond can take one of two forms: a familiar or a bonded object. A familiar is a magical pet that enhances the wizard’s skills and senses and can aid him in magic, while a bonded object is an item a wizard can use to cast additional spells or to serve as a magical item. Once a wizard makes this choice, it is permanent and cannot be changed.

Rules for bonded items are given below, while rules for familiars are located elsewhere.

Wizards who select a bonded object begin play with one at no cost. Objects that are the subject of an arcane bond must fall into one of the following categories: amulet, ring, staff, wand, or weapon. These objects are always masterwork quality. Weapons acquired at 1st level are not made of any special material. If the object is an amulet or ring, it must be worn to have effect, while staves, wands, and weapons must be held in one hand. If a wizard attempts to cast a spell without his bonded object worn or in hand, he must make a concentration check or lose the spell. The DC for this check is equal to 20 + the spell’s level. If the object is a ring or amulet, it occupies the ring or neck slot accordingly.

A bonded object can be used once per day to cast any one spell that the wizard has in his spellbook and is capable of casting, even if the spell is not prepared. This spell is treated like any other spell cast by the wizard, including casting time, duration, and other effects dependent on the wizard’s level. This spell cannot be modified by metamagic feats or other abilities. The bonded object cannot be used to cast spells from the wizard’s opposition schools (see arcane school below).

A wizard can add additional magic abilities to his bonded object as if he has the required Item Creation Feats and if he meets the level prerequisites of the feat. For example, a wizard with a bonded dagger must be at least 5th level to add magic abilities to the dagger (see Craft Magic Arms and Armor feat). If the bonded object is a wand, it loses its wand abilities when its last charge is consumed, but it is not destroyed and it retains all of its bonded object properties and can be used to craft a new wand. The magic properties of a bonded object, including any magic abilities added to the object, only function for the wizard who owns it. If a bonded object’s owner dies, or the item is replaced, the object reverts to being an ordinary masterwork item of the appropriate type.

If a bonded object is damaged, it is restored to full hit points the next time the wizard prepares his spells. If the object of an arcane bond is lost or destroyed, it can be replaced after 1 week in a special ritual that costs 200 gp per wizard level plus the cost of the masterwork item. This ritual takes 8 hours to complete. Items replaced in this way do not possess any of the additional enchantments of the previous bonded item. A wizard can designate an existing magic item as his bonded item. This functions in the same way as replacing a lost or destroyed item except that the new magic item retains its abilities while gaining the benefits and drawbacks of becoming a bonded item.")
  FeatureLevel.create!(klass_feature_id: wizard_arcane_bond.id, level: 1, table_description: "Arcane Bond")

  print "Wizard features created! \r"

puts "Wizard Created!"
