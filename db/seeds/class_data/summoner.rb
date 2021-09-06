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

summoner = Klass.create!(name: "Summoner", hit_die: 8, skill_ranks: 2, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: "https://i.pinimg.com/originals/0e/b2/30/0eb230d00be10740957999ffd4709375.jpg", source_id: advanced_players_guide.id, starting_wealth: "2d6 × 10 gp (average 70gp.) In addition, each character begins play with an outfit worth 10 gp or less.", description: "While many who dabble in the arcane become adept at beckoning monsters from the farthest reaches of the planes, none are more skilled at it than the summoner. This practitioner of the arcane arts forms a close bond with one particular outsider, known as an eidolon, who gains power as the summoner becomes more proficient at his summoning. Over time, the two become linked, eventually even sharing a shard of the same soul. But this power comes with a price: the summoner’s spells and abilities are limited due to his time spent enhancing the power and exploring the nature of his eidolon.

Role: Summoners spend much of their time exploring the arcane arts alongside their eidolons. While their power comes from within, they rely heavily on their eidolon companions in dangerous situations. While a summoner and his eidolon function as individuals, their true power lies in what they can accomplish together.

Alignment: Any.")

ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Fly").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Handle Animal").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (arcana)").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (dungeoneering)").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (engineering)").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (geography)").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (history)").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (local)").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (nature)").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (nobility)").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (planes)").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (religion)").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Linguistics").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Ride").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Spellcraft").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Use Magic Device").id)

ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Handle Animal").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Linguistics").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Nature").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Religion").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Society").id)
ClassSkillsetSkill.create!(klass_id: summoner.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Spellcraft", untrained: true).id)

# /////////////////////////////////////////////////////
# <-*-*-----*-*-*- Base Class Features!-*-*-*-----*-*->
# /////////////////////////////////////////////////////

summoner1 = KlassFeature.create!(klass_id: summoner.id, name: "Weapon and Armor Proficiency", description: "Summoners are proficient with all simple weapons. Summoners are also proficient with light armor. A summoner can cast summoner spells while wearing light armor without incurring the normal arcane spell failure chance. Like any other arcane spellcaster, a summoner wearing medium or heavy armor, or using a shield, incurs a chance of arcane spell failure if the spell in question has a somatic component. A multiclass summoner still incurs the normal arcane spell failure chance for arcane spells received from other classes.")
  FeatureLevel.create!(klass_feature_id: summoner1.id, level: 1, table_description: "")
  summoner1_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: summoner1.id, feature_id: summoner1_feature.id)
    FeatureWeaponProficiency.create!(feature_id: summoner1_feature.id, proficiency_group: "Simple")
    FeatureArmorProficiency.create!(feature_id: summoner1_feature.id, proficiency_group: "Light")

summoner2 = KlassFeature.create!(klass_id: summoner.id, name: "Spells", description: "A summoner casts arcane spells drawn from the summoner spell list. He can cast any spell he knows without preparing it ahead of time, assuming he has not yet used up his allotment of spells per day for the spell’s level.

To learn or cast a spell, a summoner must have a Charisma score equal to at least 10 + the spell level. The Difficulty Class for a saving throw against a summoner’s spell is 10 + the spell level + the summoner’s Charisma modifier.

A summoner can cast only a certain number of spells of each spell level each day. His base daily spell allotment is given on Table: Summoner. In addition, he receives bonus spells per day if he has a high Charisma score.

A summoner’s selection of spells is extremely limited. A summoner begins play knowing four 0-level spells and two 1st-level spells of the summoner’s choice. At each new summoner level, he gains one or more new spells as indicated on Table: Summoner Spells Known.

Upon reaching 5th level, and at every third summoner level thereafter (8th, 11th, and so on), a summoner can choose to learn a new spell in place of one he already knows. In effect, the summoner “loses” the old spell in exchange for the new one. The new spell’s level must be the same as that of the spell being exchanged, and it must be at least one level lower than the highest-level summoner spell he can cast. A summoner may swap out only a single spell at any given level and must choose whether or not to swap the spell at the same time that he gains new spells known for the level.")
  FeatureLevel.create!(klass_feature_id: summoner2.id, level: 1, table_description: "")
  summoner_spell_list = SpellList.find_or_create_by!(name: "Summoner Spells List")
  summoner2_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: summoner2_feature.id, klass_feature_id: summoner2.id)
    summoner_spellcasting = FeatureSpellcasting.create!(feature_id: summoner2_feature.id, ability_score: "charisma", prepare_spells: false, expend_prepared_spells: false, infinite_zero_level: true, known_spell_list: true, apply_metamagic_when_casting: true, apply_metamagic_when_preparing: false, type_of_magic: "Arcane", caster_level_penalty: 0, spell_list_id: summoner_spell_list.id)

    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 1, spells: 1, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 2, spells: 2, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 3, spells: 3, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 4, spells: 3, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 5, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 6, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 7, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 8, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 9, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 10, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 11, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 12, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 13, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 14, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 15, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 16, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 17, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 18, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 19, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 20, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 4, spells: 1, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 5, spells: 2, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 6, spells: 3, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 7, spells: 3, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 8, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 9, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 10, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 11, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 12, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 13, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 14, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 15, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 16, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 17, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 18, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 19, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 20, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 7, spells: 1, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 8, spells: 2, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 9, spells: 3, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 10, spells: 3, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 11, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 12, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 13, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 14, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 15, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 16, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 17, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 18, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 19, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 20, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 10, spells: 1, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 11, spells: 2, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 12, spells: 3, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 13, spells: 3, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 14, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 15, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 16, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 17, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 18, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 19, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 20, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 13, spells: 1, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 14, spells: 2, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 15, spells: 3, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 16, spells: 3, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 17, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 18, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 19, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 20, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 16, spells: 1, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 17, spells: 2, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 18, spells: 3, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 19, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 20, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)

    KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 1, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 2, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 3, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 4, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 5, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 6, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 7, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 8, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 9, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 10, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 11, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 12, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 13, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 14, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 15, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 16, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 17, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 18, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 19, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 20, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 1, spells: 2, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 2, spells: 3, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 3, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 4, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 5, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 6, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 7, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 8, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 9, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 10, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 11, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 12, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 13, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 14, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 15, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 16, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 17, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 18, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 19, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 20, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 4, spells: 2, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 5, spells: 3, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 6, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 7, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 8, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 9, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 10, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 11, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 12, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 13, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 14, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 15, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 16, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 17, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 18, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 19, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 20, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 7, spells: 2, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 8, spells: 3, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 9, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 10, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 11, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 12, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 13, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 14, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 15, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 16, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 17, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 18, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 19, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 20, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 10, spells: 2, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 11, spells: 3, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 12, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 13, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 14, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 15, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 16, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 17, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 18, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 19, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 20, spells: 6, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 13, spells: 2, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 14, spells: 3, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 15, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 16, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 17, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 18, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 19, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 20, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 6, klass_level: 16, spells: 2, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 6, klass_level: 17, spells: 3, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 6, klass_level: 18, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 6, klass_level: 19, spells: 4, feature_spellcasting_id: summoner_spellcasting.id)
    KnownSpellsPerLevel.create!(spell_level: 6, klass_level: 20, spells: 5, feature_spellcasting_id: summoner_spellcasting.id)

summoner3 = KlassFeature.create!(klass_id: summoner.id, name: "Cantrips", description: "A summoner learns a number of cantrips, or 0-level spells, as noted on Table: Summoner Spells Known under “Spells Known.” These spells are cast like any other spell, but they may be cast any number of times per day. Cantrips prepared using other spell slots, due to metamagic feats, for example, consume spell slots as normally.")
  FeatureLevel.create!(klass_feature_id: summoner3.id, level: 1, table_description: "Cantrips")

summoner4 = KlassFeature.create!(klass_id: summoner.id, name: "Eidolon", description: "A summoner begins play with the ability to summon to his side a powerful outsider called an eidolon. The eidolon forms a link with the summoner, who, forever after, summons an aspect of the same creature. An eidolon has the same alignment as the summoner that calls it and can speak all of his languages. Eidolons are treated as summoned creatures, except that they are not sent back to their home plane until reduced to a number of negative hit points equal to or greater than their Constitution score. In addition, due to its tie to its summoner, an eidolon can touch and attack creatures warded by protection from evil and similar effects that prevent contact with summoned creatures.

A summoner can summon his eidolon in a ritual that takes 1 minute to perform. When summoned in this way, the eidolon hit points are unchanged from the last time it was dismissed or banished. The only exception to this is if the eidolon was slain, in which case it returns with half its normal hit points. The eidolon does not heal naturally. The eidolon remains until dismissed by the summoner (a standard action). If the eidolon is sent back to its home plane due to death, it cannot be summoned again until the following day. The eidolon cannot be sent back to its home plane by means of dispel magic, but spells such as dismissal and banishment work normally. If the summoner is unconscious, asleep, or killed, his eidolon is immediately banished. The eidolon takes a form shaped by the summoner’s desires. The eidolon’s Hit Dice, saving throws, skills, feats, and abilities are tied to the summoner’s class level and increase as the summoner gains levels. In addition, each eidolon receives a pool of evolution points, based on the summoner’s class level, that can be used to give the eidolon different abilities and powers. Whenever the summoner gains a level, he must decide how these points are spent, and they are set until he gains another level of summoner.

The eidolon’s physical appearance is up to the summoner, but it always appears as some sort of fantastical creature. This control is not fine enough to make the eidolon appear like a specific creature. The eidolon also bears a glowing rune that is identical to a rune that appears on the summoner’s forehead as long as the eidolon is summoned. While this rune can be hidden through mundane means, it cannot be concealed through magic that changes appearance, such as alter self or polymorph (although invisibility does conceal it as long as the spell lasts).")
  FeatureLevel.create!(klass_feature_id: summoner4.id, level: 1, table_description: "Eidolon")

summoner5 = KlassFeature.create!(klass_id: summoner.id, name: "Life Link", description: "Starting at 1st level, a summoner forms a close bond with his eidolon. Whenever the eidolon takes enough damage to send it back to its home plane, the summoner can sacrifice any number of hit points. Each hit point sacrificed in this way prevents 1 point of damage done to the eidolon. This can prevent the eidolon from being sent back to its home plane.

In addition, the eidolon and the summoner must remain within 100 feet of one another for the eidolon to remain at full strength. If the eidolon is beyond 100 feet but closer than 1,000 feet, its current and maximum hit point totals are reduced by 50%. If the eidolon is more than 1,000 feet away but closer than 10,000 feet, its current and maximum hit point totals are reduced by 75%. If the eidolon is more than 10,000 feet away, it is immediately returned to its home plane. Current hit points lost in this way are not restored when the eidolon gets closer to its summoner, but its maximum hit point total does return to normal.")
  FeatureLevel.create!(klass_feature_id: summoner5.id, level: 1, table_description: "Eidolon")

summoner6 = KlassFeature.create!(klass_id: summoner.id, name: "Summon Monster", description: "Starting at 1st level, a summoner can cast summon monster I as a spell-like ability a number of times per day equal to 3 + his Charisma modifier. Drawing upon this ability uses up the same power as the summoner uses to call his eidolon. As a result, he can only use this ability when his eidolon is not summoned. He can cast this spell as a standard action and the creatures remain for 1 minute per level (instead of 1 round per level). At 3rd level, and every 2 levels thereafter, the power of this ability increases by one spell level, allowing him to summon more powerful creatures (to a maximum of summon monster IX at 17th level). At 19th level, this ability can be used as gate or summon monster IX. If used as gate, the summoner must pay any required material components. A summoner cannot have more than one summon monster or gate spell active in this way at one time. If this ability is used again, any existing summon monster or gate immediately ends. These summon spells are considered to be part of his spell list for the purposes of spell trigger and spell completion items. In addition, he can expend uses of this ability to fufill the construction requirements of any magic item he creates, so long as he can use this ability to cast the required spell.")
  FeatureLevel.create!(klass_feature_id: summoner6.id, level: 1, table_description: "Summon Monster I")
  FeatureLevel.create!(klass_feature_id: summoner6.id, level: 3, table_description: "Summon Monster II")
  FeatureLevel.create!(klass_feature_id: summoner6.id, level: 5, table_description: "Summon Monster III")
  FeatureLevel.create!(klass_feature_id: summoner6.id, level: 7, table_description: "Summon Monster IV")
  FeatureLevel.create!(klass_feature_id: summoner6.id, level: 9, table_description: "Summon Monster V")
  FeatureLevel.create!(klass_feature_id: summoner6.id, level: 11, table_description: "Summon Monster VI")
  FeatureLevel.create!(klass_feature_id: summoner6.id, level: 13, table_description: "Summon Monster VII")
  FeatureLevel.create!(klass_feature_id: summoner6.id, level: 15, table_description: "Summon Monster VIII")
  FeatureLevel.create!(klass_feature_id: summoner6.id, level: 17, table_description: "Summon Monster IX")
  FeatureLevel.create!(klass_feature_id: summoner6.id, level: 19, table_description: "Gate")

summoner7 = KlassFeature.create!(klass_id: summoner.id, name: "Bond Senses", description: "Starting at 2nd level, a summoner can, as a standard action, share the senses of his eidolon, hearing, seeing, smelling, tasting, and touching everything the eidolon does. He can use this ability a number of rounds per day equal to his summoner level. There is no range to this effect, but the eidolon and the summoner must be on the same plane. The summoner can end this effect as a free action.")
  FeatureLevel.create!(klass_feature_id: summoner7.id, level: 2, table_description: "Bond Senses")

summoner8 = KlassFeature.create!(klass_id: summoner.id, name: "Shield Ally", description: "At 4th level, whenever a summoner is within his eidolon’s reach, the summoner receives a +2 shield bonus to his Armor Class and a +2 circumstance bonus on his saving throws. This bonus does not apply if the eidolon is grappled, helpless, paralyzed, stunned, or unconscious.")
  FeatureLevel.create!(klass_feature_id: summoner8.id, level: 4, table_description: "Shield Ally")

summoner9 = KlassFeature.create!(klass_id: summoner.id, name: "Maker's Call", description: "At 6th level, as a standard action, a summoner can call his eidolon to his side. This functions as dimension door, using the summoner’s caster level. When used, the eidolon appears adjacent to the summoner (or as close as possible if all adjacent spaces are occupied). If the eidolon is out of range, the ability is wasted. The summoner can use this ability once per day at 6th level, plus one additional time per day for every four levels beyond 6th.")
  FeatureLevel.create!(klass_feature_id: summoner9.id, level: 6, table_description: "Maker's Call")

summoner10 = KlassFeature.create!(klass_id: summoner.id, name: "Transposition", description: "At 8th level, a summoner can use his maker’s call ability to swap locations with his eidolon. If it is larger than him, he can appear in any square occupied by the eidolon. The eidolon must occupy the square that was occupied by the summoner if able, or as close as possible if it is not able.")
  FeatureLevel.create!(klass_feature_id: summoner10.id, level: 8, table_description: "Transposition")

summoner11 = KlassFeature.create!(klass_id: summoner.id, name: "Aspect", description: "At 10th level, a summoner can divert up to 2 points from his eidolon’s evolution pool to add evolutions to himself. He cannot select any evolution that the eidolon could not possess, and he must be able to meet the requirements as well. He cannot select the ability increase evolution through this ability. Any points spent in this way are taken from the eidolon’s evolution pool (reducing the total number available to the eidolon). The summoner can change the evolutions he receives from these points any time he can change the eidolon’s evolutions.")
  FeatureLevel.create!(klass_feature_id: summoner11.id, level: 10, table_description: "Aspect")

summoner12 = KlassFeature.create!(klass_id: summoner.id, name: "Greater Shield Ally", description: "At 12th level, whenever an ally is within an eidolon’s reach, the ally receives a +2 shield bonus to its Armor Class and a +2 circumstance bonus on its saving throws. If this ally is the summoner, these bonuses increase to +4. This bonus does not apply if the eidolon is grappled, helpless, paralyzed, stunned, or unconscious.")
  FeatureLevel.create!(klass_feature_id: summoner12.id, level: 12, table_description: "Greater Shield Ally")

summoner13 = KlassFeature.create!(klass_id: summoner.id, name: "Life Bond", description: "At 14th level, a summoner’s life becomes linked to his eidolon’s. As long as the eidolon has 1 or more hit points, the summoner is protected from harm. Damage in excess of that which would reduce the summoner to fewer than 0 hit points is instead transferred to the eidolon. This damage is transferred 1 point at a time, meaning that as soon as the eidolon is reduced to a number of negative hit points equal to its Constitution score, all excess damage remains with the summoner.

Effects that cause death but not damage are unaffected by this ability. This ability does not affect spells like baleful polymorph, flesh to stone, or imprisonment, or other spells that do not cause actual damage.")
  FeatureLevel.create!(klass_feature_id: summoner13.id, level: 14, table_description: "Life Bond")

summoner14 = KlassFeature.create!(klass_id: summoner.id, name: "Merge Forms", description: "At 16th level, as a full-round action, a summoner can touch his eidolon and the two can merge forms. This transformation includes all of the summoner’s gear. While merged in this way, the summoner is protected from harm and cannot be the target of spells or effects. All effects and spells currently targeting the summoner are suspended until the summoner emerges from the eidolon (although durations continue to expire).

The summoner can cast spells while inside the eidolon by taking control of the eidolon for the duration of the casting. Any material components used for these spells are taken from the summoner’s gear, even though they are otherwise inaccessible. The summoner can direct all of the eidolon’s actions while merged, can perceive through its senses, and can speak through its voice.

The summoner can use this ability for a number of rounds per day equal to his summoner level. He can end this effect at any time as a swift action. The summoner emerges in a square adjacent to the eidolon if able. If the eidolon is returned to its home plane while the summoner is merged with it, the summoner is immediately ejected, taking 4d6 points of damage, and is stunned for 1 round.")
  FeatureLevel.create!(klass_feature_id: summoner14.id, level: 16, table_description: "Merge Forms")

summoner15 = KlassFeature.create!(klass_id: summoner.id, name: "Greater Aspect", description: "At 18th level, a summoner can divert more of his eidolon’s evolutions to himself. This ability functions as the aspect ability, but up to 6 evolution points can be taken. Unlike the aspect ability, the eidolon loses 1 point from its evolution pool for every 2 points (or fraction thereof) diverted to the summoner.")
  FeatureLevel.create!(klass_feature_id: summoner15.id, level: 18, table_description: "Greater Aspect")

summoner16 = KlassFeature.create!(klass_id: summoner.id, name: "Twin Eidolon", description: "At 20th level, a summoner and his eidolon share a true connection. As a standard action, the summoner can assume the shape of his eidolon, copying all of its evolutions, form, and abilities. His Strength, Dexterity, and Constitution scores change to match the base scores of his eidolon. He can choose to have any gear that he carries become absorbed by his new form, as with spells from the polymorph subschool. Items with continuous effects continue to function while absorbed in this way. The summoner loses his natural attacks and all racial traits (except bonus feats, skills, and languages) in favor of the abilities granted by his eidolon’s evolutions. The summoner retains all of his class features. The summoner can keep this form for a number of minutes per day equal to his summoner level. This duration does not need to be consecutive, but it must be spent in 1-minute increments. The summoner can end this effect as a free action.")
  FeatureLevel.create!(klass_feature_id: summoner16.id, level: 20, table_description: "Twin Eidolon")

print "Summoner features created! \r"

# //////////////////////////////////////////////////
# <-*-*-----*-*-*- Class Archetypes!-*-*-*-----*-*->
# //////////////////////////////////////////////////

synthesist = KlassArchetype.create!(name: "Synthesist", klass_id: summoner.id, source_id: ultimate_magic.id, description: "Rather than summon an eidolon to serve by his side, the synthesist fuses his eidolon’s essence to his own. Instead of two creatures, the synthesist is a fusion of the summoner and eidolon into a single being.")

  synthesist1 = KlassArchetypeFeature.create!(name: "Fused Eidolon", klass_archetype_id: synthesist.id, description: "A synthesist summons the essence of a powerful outsider to meld with his own being. The synthesist wears the eidolon like translucent, living armor. The eidolon mimics all of the synthesist’s movements, and the synthesist perceives through the eidolon’s senses and speaks through its voice, as the two are now one creature.

  While fused with his eidolon, the synthesist uses the eidolon’s physical ability scores (Strength, Dexterity, and Constitution), but retains his own mental ability scores (Intelligence, Wisdom, and Charisma). The synthesist gains the eidolon’s hit points as temporary hit points. When these hit points reach 0, the eidolon is killed and sent back to its home plane. The synthesist uses the eidolon’s base attack bonus, and gains the eidolon’s armor and natural armor bonuses and modifiers to ability scores. The synthesist also gains access to the eidolon’s special abilities and the eidolon’s evolutions. The synthesist is still limited to the eidolon’s maximum number of natural attacks. The eidolon has no skills or feats of its own. The eidolon must be at least the same size as the synthesist. The eidolon must have limbs for the synthesist to cast spells with somatic components. The eidolon’s temporary hit points can be restored with the rejuvenate eidolon spell.

  While fused, the synthesist loses the benefits of his armor. He counts as both his original type and as an outsider for any effect related to type, whichever is worse for the synthesist. Spells such as banishment or dismissal work normally on the eidolon, but the synthesist is unaffected. Neither the synthesist nor his eidolon can be targeted separately, as they are fused into one creature. The synthesist and eidolon cannot take separate actions. While fused with his eidolon, the synthesist can use all of his own abilities and gear, except for his armor. In all other cases, this ability functions as the summoner’s normal eidolon ability (for example, the synthesist cannot use his summon monster ability while the eidolon is present).

  This ability replaces the class’s eidolon ability, bond senses, and life bond.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: synthesist1.id, level: 1, table_description: "Fused Eidolon")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: summoner2.id, klass_archetype_feature_id: synthesist1.id, replace_or_alter: "replace")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: summoner7.id, klass_archetype_feature_id: synthesist1.id, replace_or_alter: "replace")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: summoner14.id, klass_archetype_feature_id: synthesist1.id, replace_or_alter: "replace")

  synthesist2 = KlassArchetypeFeature.create!(name: "Fused Link", klass_archetype_id: synthesist.id, description: "Starting at 1st level, the synthesist forms a close bond with his eidolon. Whenever the temporary hit points from his eidolon would be reduced to 0, the summoner can, as a free action, sacrifice any number of his own hit points. Each hit point sacrificed this way prevents 1 point of damage done to the eidolon (thus preventing the loss of the summoner’s temporary hit points), preventing the eidolon from being killed and sent back to its home plane.

  This ability replaces life link.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: synthesist2.id, level: 1, table_description: "Fused Link")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: summoner5.id, klass_archetype_feature_id: synthesist2.id, replace_or_alter: "replace")

  synthesist3 = KlassArchetypeFeature.create!(name: "Shielded Meld", klass_archetype_id: synthesist.id, description: "At 4th level, whenever the synthesist is fused with his eidolon, he gains a +2 shield bonus to his Armor Class and a +2 circumstance bonus on his saving throws.

  This ability replaces shield ally.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: synthesist3.id, level: 4, table_description: "Shielded Meld")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: summoner4.id, klass_archetype_feature_id: synthesist3.id, replace_or_alter: "replace")

  synthesist4 = KlassArchetypeFeature.create!(name: "Maker's Jump", klass_archetype_id: synthesist.id, description: "At 6th level, whenever the synthesist is fused with his eidolon, the synthesist can cast dimension door as a spell-like ability using his caster level. This ability only affects the fused synthesist and eidolon. The synthesist can use this ability once per day at 6th level, plus one additional time per day for every six levels beyond 6th.

  This ability replaces maker’s call and transposition.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: synthesist4.id, level: 6, table_description: "Maker's Jump 1/day")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: synthesist4.id, level: 12, table_description: "Maker's Jump 2/day")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: synthesist4.id, level: 18, table_description: "Maker's Jump 3/day")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: summoner9.id, klass_archetype_feature_id: synthesist4.id, replace_or_alter: "replace")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: summoner10.id, klass_archetype_feature_id: synthesist4.id, replace_or_alter: "replace")

  synthesist5 = KlassArchetypeFeature.create!(name: "Greater Shielded Meld", klass_archetype_id: synthesist.id, description: "At 12th level, whenever the synthesist is fused with his eidolon, he gains a +4 shield bonus to his Armor Class and a +4 circumstance bonus on his saving throws.

  This ability replaces greater shield ally.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: synthesist5.id, level: 12, table_description: "Greater Shielded Meld")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: summoner12.id, klass_archetype_feature_id: synthesist5.id, replace_or_alter: "replace")

  synthesist6 = KlassArchetypeFeature.create!(name: "Split Forms", klass_archetype_id: synthesist.id, description: "At 16th level, as a swift action, the synthesist and his fused eidolon can split into two creatures: the synthesist and the eidolon. Both have the same evolutions. The synthesist emerges in a square adjacent to the eidolon if possible. All effects and spells currently targeting the fused synthesist-eidolon affect both the synthesist and the eidolon.

  The synthesist can use this ability for a number of rounds per day equal to his summoner level. He can end this effect at any time as a full-round action. For the duration of this effect, the eidolon functions as a normal eidolon of the summoner’s class level.

  This ability replaces merge forms.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: synthesist6.id, level: 16, table_description: "Split Forms")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: summoner14.id, klass_archetype_feature_id: synthesist6.id, replace_or_alter: "replace")

  print "Synthesist Archetype Created! \r"


  # IDENTIFIER = KlassArchetypeFeature.create!(name: "", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")

puts "Summoner Created!"
