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




magus = Klass.create!(name: "Magus", hit_die: 8, skill_ranks: 2, fortitude: 0.5, reflex: 0.34, will: 0.5, img_url: "https://i.pinimg.com/originals/22/ee/20/22ee20e80b622daabfd4967c653536b9.png", source_id: ultimate_magic.id, starting_wealth: "4d6 × 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", description: "There are those who spend their lives poring over ancient tomes and texts, unlocking the power of magic, and there are those who spend their time perfecting the use of individual weapons, becoming masters without equal. The magus is at once a student of both philosophies, blending magical ability and martial prowess into something entirely unique, a discipline in which both spell and steel are used to devastating effect. As he grows in power, the magus unlocks powerful forms of arcana that allow him to merge his talents further, and at the pinnacle of his art, the magus becomes a blur of steel and magic, a force that few foes would dare to stand against.

Role: Magi spend much of their time traveling the world, learning whatever martial or arcane secrets they can find. They might spend months learning a new sword-fighting style from a master warrior, while simultaneously moonlighting in the local library, poring through tomes of ancient lore. Most who take this path dabble in all sorts of lore, picking up anything that might aid them in their search for perfection.

Alignment: Any.")


ClassSkillsetSkill.create!(klass_id: magus.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Climb").id)
ClassSkillsetSkill.create!(klass_id: magus.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: magus.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Fly").id)
ClassSkillsetSkill.create!(klass_id: magus.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Intimidate").id)
ClassSkillsetSkill.create!(klass_id: magus.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (arcana)").id)
ClassSkillsetSkill.create!(klass_id: magus.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (dungeoneering)").id)
ClassSkillsetSkill.create!(klass_id: magus.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (planes)").id)
ClassSkillsetSkill.create!(klass_id: magus.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: magus.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Ride").id)
ClassSkillsetSkill.create!(klass_id: magus.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Spellcraft").id)
ClassSkillsetSkill.create!(klass_id: magus.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Swim").id)
ClassSkillsetSkill.create!(klass_id: magus.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Use Magic Device").id)

ClassSkillsetSkill.create!(klass_id: magus.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Climb").id)
ClassSkillsetSkill.create!(klass_id: magus.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: magus.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Intimidate").id)
ClassSkillsetSkill.create!(klass_id: magus.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Investigation").id)
ClassSkillsetSkill.create!(klass_id: magus.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Nature").id)
ClassSkillsetSkill.create!(klass_id: magus.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: magus.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Religion").id)
ClassSkillsetSkill.create!(klass_id: magus.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Spellcraft", untrained: true).id)
ClassSkillsetSkill.create!(klass_id: magus.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Swim").id)

# /////////////////////////////////////////////////////
# <-*-*-----*-*-*- Base Class Features!-*-*-*-----*-*->
# /////////////////////////////////////////////////////

magus1 = KlassFeature.create!(klass_id: magus.id, name: "Weapon and Armor Proficiency", description: "A magus is proficient with all simple and martial weapons. A magus is also proficient with light armor. He can cast magus spells while wearing light armor without incurring the normal arcane spell failure chance. Like any other arcane spellcaster, a magus wearing medium armor, heavy armor, or a shield incurs a chance of arcane spell failure if the spell in question has a somatic component. A multiclass magus still incurs the normal arcane spell failure chance for arcane spells received from other classes.")
  FeatureLevel.create!(klass_feature_id: magus1.id, level: 1, table_description: "")
  magus1_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: magus1.id, feature_id: magus1_feature.id)
    FeatureWeaponProficiency.create!(feature_id: magus1_feature.id, proficiency_group: "Simple")
    FeatureWeaponProficiency.create!(feature_id: magus1_feature.id, proficiency_group: "Martial")
    FeatureArmorProficiency.create!(feature_id: magus1_feature.id, proficiency_group: "Light")

magus2 = KlassFeature.create!(klass_id: magus.id, name: "Spells", description: "A magus casts arcane spells drawn from the magus spell list. A magus must choose and prepare his spells ahead of time.

To learn, prepare, or cast a spell, the magus must have an Intelligence score equal to at least 10 + the spell level. The Difficulty Class for a saving throw against a magus’s spell is 10 + the spell level + the magus’s Intelligence modifier.

A magus can cast only a certain number of spells of each spell level per day. His base daily spell allotment is given on Table: Magus. In addition, he receives bonus spells per day if he has a high Intelligence score.

A magus may know any number of spells. He must choose and prepare his spells ahead of time by getting 8 hours of sleep and spending 1 hour studying his spellbook. While studying, the magus decides which spells to prepare.

Cantrips: A magus can prepare a number of cantrips, or 0-level spells, each day, as noted on Table: Magus under “Spells per Day.” These spells are cast like any other spell, but they are not expended when cast and may be used again.

Spellbooks: A magus must study his spellbook each day to prepare his spells. He cannot prepare any spell not recorded in his spellbook except for read magic, which all magi can prepare from memory. A magus begins play with a spellbook containing all 0-level magus spells plus three 1st-level magus spells of his choice. The magus also selects a number of additional 1st-level magus spells equal to his Intelligence modifier to add to his spellbook. At each new magus level, he gains two new magus spells of any spell level or levels that he can cast (based on his new magus level) for his spellbook. At any time, a magus can also add spells found in other spellbooks to his own.

A magus can learn spells from a wizard’s spellbook, just as a wizard can from a magus’s spellbook. The spells learned must be on the magus spell list, as normal. An alchemist can learn formulae from a magus’s spellbook, if the spells are also on the alchemist spell list. A magus cannot learn spells from an alchemist.")
  FeatureLevel.create!(klass_feature_id: magus2.id, level: 1, table_description: "")
  magus_spell_list = SpellList.create!(name: "Magus Spells List")
  magus2_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: magus2_feature.id, klass_feature_id: magus2.id)
    magus_spellcasting = FeatureSpellcasting.create!(feature_id: magus2_feature.id, ability_score: "intelligence", prepare_spells: true, expend_prepared_spells: true, infinite_zero_level: false, known_spell_list: true, apply_metamagic_when_casting: false, apply_metamagic_when_preparing: true, type_of_magic: "Arcane", caster_level_penalty: 0, spell_list_id: magus_spell_list.id)

    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 1, spells: 3, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 2, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 3, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 4, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 5, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 6, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 7, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 8, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 9, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 10, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 11, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 12, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 13, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 14, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 15, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 16, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 17, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 18, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 19, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 20, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 1, spells: 3, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 2, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 3, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 4, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 5, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 6, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 7, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 8, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 9, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 10, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 11, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 12, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 13, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 14, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 15, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 16, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 17, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 18, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 19, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 20, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 1, spells: 1, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 2, spells: 2, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 3, spells: 3, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 4, spells: 3, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 5, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 6, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 7, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 8, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 9, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 10, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 11, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 12, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 13, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 14, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 15, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 16, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 17, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 18, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 19, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 20, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 4, spells: 1, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 5, spells: 2, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 6, spells: 3, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 7, spells: 3, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 8, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 9, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 10, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 11, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 12, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 13, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 14, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 15, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 16, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 17, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 18, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 19, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 20, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 7, spells: 1, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 8, spells: 2, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 9, spells: 3, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 10, spells: 3, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 11, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 12, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 13, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 14, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 15, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 16, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 17, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 18, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 19, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 20, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 10, spells: 1, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 11, spells: 2, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 12, spells: 3, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 13, spells: 3, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 14, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 15, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 16, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 17, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 18, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 19, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 20, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 13, spells: 1, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 14, spells: 2, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 15, spells: 3, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 16, spells: 3, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 17, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 18, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 19, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 20, spells: 5, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 16, spells: 1, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 17, spells: 2, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 18, spells: 3, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 19, spells: 4, feature_spellcasting_id: magus_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 20, spells: 5, feature_spellcasting_id: magus_spellcasting.id)

magus3 = KlassFeature.create!(klass_id: magus.id, name: "Arcane Pool", description: "At 1st level, the magus gains a reservoir of mystical arcane energy that he can draw upon to fuel his powers and enhance his weapon. This arcane pool has a number of points equal to 1/2 his magus level (minimum 1) + his Intelligence modifier. The pool refreshes once per day when the magus prepares his spells.

At 1st level, a magus can expend 1 point from his arcane pool as a swift action to grant any weapon he is holding a +1 enhancement bonus for 1 minute. For every four levels beyond 1st, the weapon gains another +1 enhancement bonus, to a maximum of +5 at 17th level. These bonuses can be added to the weapon, stacking with existing weapon enhancement to a maximum of +5. Multiple uses of this ability do not stack with themselves.

At 5th level, these bonuses can be used to add any of the following weapon properties: dancing, flaming, flaming burst, frost, icy burst, keen, shock, shocking burst, speed, or vorpal.

Adding these properties consumes an amount of bonus equal to the property’s base price modifier. These properties are added to any the weapon already has, but duplicates do not stack. If the weapon is not magical, at least a +1 enhancement bonus must be added before any other properties can be added. These bonuses and properties are decided when the arcane pool point is spent and cannot be changed until the next time the magus uses this ability. These bonuses do not function if the weapon is wielded by anyone other than the magus.

A magus can only enhance one weapon in this way at one time. If he uses this ability again, the first use immediately ends.")
  FeatureLevel.create!(klass_feature_id: magus3.id, level: 1, table_description: "Arcane Pool")

magus4 = KlassFeature.create!(klass_id: magus.id, name: "Spell Combat", description: "At 1st level, a magus learns to cast spells and wield his weapons at the same time. This functions much like two-weapon fighting, but the off-hand weapon is a spell that is being cast. To use this ability, the magus must have one hand free (even if the spell being cast does not have somatic components), while wielding a light or one-handed melee weapon in the other hand. As a full-round action, he can make all of his attacks with his melee weapon at a –2 penalty and can also cast any spell from the magus spell list with a casting time of 1 standard action (any attack roll made as part of this spell also takes this penalty). If he casts this spell defensively, he can decide to take an additional penalty on his attack rolls, up to his Intelligence bonus, and add the same amount as a circumstance bonus on his concentration check. If the check fails, the spell is wasted, but the attacks still take the penalty. A magus can choose to cast the spell first or make the weapon attacks first, but if he has more than one attack, he cannot cast the spell between weapon attacks.")
  FeatureLevel.create!(klass_feature_id: magus4.id, level: 1, table_description: "Spell Combat")

magus5 = KlassFeature.create!(klass_id: magus.id, name: "Spellstrike", description: "At 2nd level, whenever a magus casts a spell with a range of “touch” from the magus spell list, he can deliver the spell through any weapon he is wielding as part of a melee attack. Instead of the free melee touch attack normally allowed to deliver the spell, a magus can make one free melee attack with his weapon (at his highest base attack bonus) as part of casting this spell. If successful, this melee attack deals its normal damage as well as the effects of the spell. If the magus makes this attack in concert with spell combat, this melee attack takes all the penalties accrued by spell combat melee attacks. This attack uses the weapon’s critical range (20, 19–20, or 18–20 and modified by the keen weapon property or similar effects), but the spell effect only deals ×2 damage on a successful critical hit, while the weapon damage uses its own critical modifier.")
  FeatureLevel.create!(klass_feature_id: magus5.id, level: 2, table_description: "Spellstrike")

magus6 = KlassFeature.create!(klass_id: magus.id, name: "Magus Arcana", has_klass_feature_options: true, description: "As he gains levels, a magus learns arcane secrets tailored to his specific way of blending martial puissance and magical skill. Starting at 3rd level, a magus gains one magus arcana. He gains an additional magus arcana for every three levels of magus attained after 3rd level. Unless specifically noted in a magus arcana’s description, a magus cannot select a particular magus arcana more than once. Magus arcana that affect spells can only be used to modify spells from the magus spell list unless otherwise noted.")
  FeatureLevel.create!(klass_feature_id: magus6.id, level: 3, table_description: "Magus Arcana")
  FeatureLevel.create!(klass_feature_id: magus6.id, level: 6, table_description: "Magus Arcana")
  FeatureLevel.create!(klass_feature_id: magus6.id, level: 9, table_description: "Magus Arcana")
  FeatureLevel.create!(klass_feature_id: magus6.id, level: 12, table_description: "Magus Arcana")
  FeatureLevel.create!(klass_feature_id: magus6.id, level: 15, table_description: "Magus Arcana")
  FeatureLevel.create!(klass_feature_id: magus6.id, level: 18, table_description: "Magus Arcana")

magus7 = KlassFeature.create!(klass_id: magus.id, name: "Spell Recall", description: "At 4th level, the magus learns to use his arcane pool to recall spells he has already cast. With a swift action he can recall any single magus spell that he has already prepared and cast that day by expending a number of points from his arcane pool equal to the spell’s level (minimum 1). The spell is prepared again, just as if it had not been cast.")
  FeatureLevel.create!(klass_feature_id: magus7.id, level: 4, table_description: "Spell Recall")

magus8 = KlassFeature.create!(klass_id: magus.id, name: "Bonus Feats", description: "At 5th level, and every six levels thereafter, a magus gains a bonus feat in addition to those gained from normal advancement. These bonus feats must be selected from those listed as combat, item creation, or metamagic feats. He must meet the prerequisites for these feats as normal.")
  FeatureLevel.create!(klass_feature_id: magus8.id, level: 5, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: magus8.id, level: 11, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: magus8.id, level: 17, table_description: "Bonus Feat")

magus9 = KlassFeature.create!(klass_id: magus.id, name: "Knowledge Pool", description: "At 7th level, when a magus prepares his magus spells, he can decide to expend 1 or more points from his arcane pool, up to his Intelligence bonus. For each point he expends, he can treat any one spell from the magus spell list as if it were in his spellbook and can prepare that spell as normal that day. If he does not cast spells prepared in this way before the next time he prepares spells, he loses those spells. He can also cast spells added in this way using his spell recall ability, but only until he prepares spells again.")
  FeatureLevel.create!(klass_feature_id: magus9.id, level: 7, table_description: "Knowledge Pool")

magus10 = KlassFeature.create!(klass_id: magus.id, name: "Medium Armor", description: "At 7th level, a magus gains proficiency with medium armor. A magus can cast magus spells while wearing medium armor without incurring the normal arcane spell failure chance. Like any other arcane spellcaster, a magus wearing heavy armor or using a shield incurs a chance of arcane spell failure if the spell in question has a somatic component.")
  FeatureLevel.create!(klass_feature_id: magus10.id, level: 7, table_description: "Medium Armor")

magus11 = KlassFeature.create!(klass_id: magus.id, name: "Improved Spell Combat", description: "At 8th level, the magus’s ability to cast spells and make melee attacks improves. When using the spell combat ability, the magus receives a +2 circumstance bonus on concentration checks, in addition to any bonus granted by taking an additional penalty on the attack roll.")
  FeatureLevel.create!(klass_feature_id: magus11.id, level: 8, table_description: "Improved Spell Combat")

magus12 = KlassFeature.create!(klass_id: magus.id, name: "Fighter Training", description: "Starting at 10th level, a magus counts 1/2 his total magus level as his fighter level for the purpose of qualifying for feats. If he has levels in fighter, these levels stack.")
  FeatureLevel.create!(klass_feature_id: magus12.id, level: 10, table_description: "Fighter Training")

magus13 = KlassFeature.create!(klass_id: magus.id, name: "Improved Spell Recall", description: "At 11th level, the magus’s ability to recall spells using his arcane pool becomes more efficient. Whenever he recalls a spell with spell recall, he expends a number of points from his arcane pool equal to 1/2 the spell’s level (minimum 1). Furthermore, instead of recalling a used spell, as a swift action the magus can prepare a spell of the same level that he has in his spellbook. He does so by expending a number of points from his arcane pool equal to the spell’s level (minimum 1). The magus cannot apply metamagic feats to a spell prepared in this way. The magus does not need to reference his spellbook to prepare a spell in this way.")
  FeatureLevel.create!(klass_feature_id: magus13.id, level: 11, table_description: "Improved Spell Recall")

magus14 = KlassFeature.create!(klass_id: magus.id, name: "Heavy Armor", description: "At 13th level, a magus gains proficiency with heavy armor. A magus can cast magus spells while wearing heavy armor without incurring the normal arcane spell failure chance. Like any other arcane spellcaster, a magus using a shield incurs a chance of arcane spell failure if the spell in question has a somatic component.")
  FeatureLevel.create!(klass_feature_id: magus14.id, level: 13, table_description: "Heavy Armor")

magus15 = KlassFeature.create!(klass_id: magus.id, name: "Greater Spell Combat", description: "At 14th level, the magus gains the ability to seamlessly cast spells and make melee attacks. Whenever he uses the spell combat ability, his concentration check bonus equals double the amount of the attack penalty taken.")
  FeatureLevel.create!(klass_feature_id: magus15.id, level: 14, table_description: "Greater Spell Combat")

magus16 = KlassFeature.create!(klass_id: magus.id, name: "Counterstrike", description: "At 16th level, whenever an enemy within reach of the magus successfully casts a spell defensively, that enemy provokes an attack of opportunity from the magus after the spell is complete. This attack of opportunity cannot disrupt the spell.")
  FeatureLevel.create!(klass_feature_id: magus16.id, level: 16, table_description: "Counterstrike")

magus17 = KlassFeature.create!(klass_id: magus.id, name: "Greater Spell Access", description: "At 19th level, the magus gains access to an expanded spell list. He learns and places 14 spells from the wizard’s spell list into his spellbook as magus spells of their wizard level. He gains two of each of the following wizard spells not on the magus spell list:

0-level, 1st-level, 2nd-level, 3rd-level, 4th-level, 5th-level, and 6th-level.

He can ignore the somatic component of these spells, casting them without the normal chance of spell failure.")
  FeatureLevel.create!(klass_feature_id: magus17.id, level: 19, table_description: "Greater Spell Access")

magus18 = KlassFeature.create!(klass_id: magus.id, name: "True Magus", description: "At 20th level, the magus becomes a master of spells and combat. Whenever he uses his spell combat ability, he does not need to make a concentration check to cast the spell defensively. Whenever the magus uses spell combat and his spell targets the same creature as his melee attacks, he can choose to either increase the DC to resist the spell by +2, grant himself a +2 circumstance bonus on any checks made to overcome spell resistance, or grant himself a +2 circumstance bonus on all attack rolls made against the target during his turn.")
  FeatureLevel.create!(klass_feature_id: magus18.id, level: 20, table_description: "True Magus")

print "Magus features created! \r"

# ///////////////////////////////////////////////////////
# <-*-*-----*-*-*- Class Feature Options!-*-*-*-----*-*->
# ///////////////////////////////////////////////////////

FeatureOption.create!(name: "Arcane Accuracy", klass_feature_id: magus6.id, level_available: 3, description: "The magus can expend 1 point from his arcane pool as a swift action to grant himself an insight bonus equal to his Intelligence bonus on all attack rolls until the end of his turn.")

FeatureOption.create!(name: "Familiar", klass_feature_id: magus6.id, level_available: 3, description: "The magus gains a familiar, using his magus level as his effective wizard level. This familiar follows the rules for familiars presented in the arcane bond wizard class feature.")

FeatureOption.create!(name: "Maneuvery Master", klass_feature_id: magus6.id, level_available: 3, description: "The magus has mastered one combat maneuver. He selects one maneuver when selecting this arcana. Whenever he is attempting the selected maneuver, he uses his magus level in place of his base attack bonus (in addition to any base attack bonus gained from other classes).

Special: A magus can select this magus arcana more than once. Its effects do not stack. Each time he selects this arcana, he selects another combat maneuver.")

FeatureOption.create!(name: "Spell Blending", klass_feature_id: magus6.id, level_available: 3, description: "When a magus selects this arcana, he must select one spell from the wizard spell list that is of a magus spell level he can cast. He adds this spell to his spellbook and list of magus spells known as a magus spell of its wizard spell level. He can instead select two spells to add in this way, but both must be at least one level lower than the highest-level magus spell he can cast.

Special: A magus can select this magus arcana more than once.")


# //////////////////////////////////////////////////
# <-*-*-----*-*-*- Class Archetypes!-*-*-*-----*-*->
# //////////////////////////////////////////////////

bladebound = KlassArchetype.create!(name: "Bladebound", klass_id: magus.id, source_id: ultimate_magic.id, description: "A bladebound studies bodies to better understand their function. Unlike a chirurgeon, a bladebound’s goals are not related to healing, but rather to experimentation and knowledge that most people would consider evil.

Magus Arcana: The following magus arcana complement the bladebound magus archetype: arcane accuracy, broad study, dispelling strike, and reflection.")

  bladebound1 = KlassArchetypeFeature.create!(name: "Black Blade", klass_archetype_id: bladebound.id, description: "At 3rd level, the bladebound magus’ gains a powerful sentient weapon called a black blade, whose weapon type is chosen by the magus (see sidebar). A magus with this class feature cannot take the familiar magus arcana, and cannot have a familiar of any kind, even from another class.

  Instead of the normal arcane pool amount, the bladebound magus’s arcane pool has a number of points equal to 1/3 his level (minimum 1) plus his Intelligence bonus.

  This ability changes the Arcane Pool class feature and replaces the magus arcana gained at 3rd level.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: bladebound1.id, level: 3, table_description: "Black Blade")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: magus6.id, klass_archetype_feature_id: bladebound1.id, replace_or_alter: "replace", affects_specific_level: 3)
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: magus3.id, klass_archetype_feature_id: bladebound1.id, replace_or_alter: "alter")

  bladebound2 = KlassArchetypeFeature.create!(name: "Black Blades", klass_archetype_id: bladebound.id, description: "A black blade is a particular form of intelligent weapon gained by a magus with the bladebound archetype. There are several ways a magus might gain this weapon. Sometimes it just appears among the magus’s possessions, and its origin is a mystery. Other times the magus finds a black blade during an adventure or event of some kind. Sometimes a black blade is passed down generation to generation in an ongoing search for a magus who can unlock its true potential.

  A black blade is always a one-handed slashing weapon, a rapier, or a sword cane. The magus chooses the blade’s type upon gaining the blade, and once chosen, it can’t be changed. As a bladebound magus increases in level, his black blade gains power.

  A black blade is independently conscious but features some personality traits reflecting its wielder. A black blade always has the same alignment as its wielder and even changes its alignment if its wielder does. The blade typically works toward its wielder’s goals, but not always without argument or backlash. Each black blade has a mission, and while sometimes two or more black blades will work in concert, each mission is singular in purpose (the black blade’s mission is usually up to the GM and the needs of the campaign or the adventure, or a GM can determine the weapon’s purpose randomly using Table: Intelligent Item Purpose). Some black blades are very open about their missions, but most are secretive. Certain sages have speculated that an invisible hand or arcane purpose moves these weapons.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: bladebound2.id, level: 3, table_description: "")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_archetype_feature_id: bladebound2.id, replace_or_alter: "replace")

  bladebound3 = KlassArchetypeFeature.create!(name: "Black Blade Basics", klass_archetype_id: bladebound.id, description: "A black blade is bonded to a particular magus, much like a familiar, but in more of a partnership than a master-servant relationship.

  Intelligence: This is the intelligence score of the black blade. It starts at 10 and increases by 1 for every two levels of the bladebound magus (at 3rd level, 5th level, and so on).

  Wisdom and Charisma: As the bladebound magus increases in level, so do the Wisdom and Charisma of the black blade. These abilities start at 6 and increase by 1 for every two levels of magus.

  Ego: A black blade starts with an ego of 5, and that ego increases as the blade becomes more powerful, as per Table: Black Blade Progression below. In cases where a wielder and the black blade come into conflict, like any intelligent item, a black blade can attempt to exert its dominance (see Intelligent Items). Due to its flexible and powerful nature, a black blade has a nonstandard ego progression.

  Languages and Skills: A black blade starts with Common as a language. As the black blade increases in Intelligence, it manifests knowledge of languages and arcane lore. Upon reaching an Intelligence of 12, it gains a bonus language of the GM’s choice, and gains 1 rank in Knowledge (arcana). Each time the sword gains a bonus to Intelligence, it gains another language and another rank in Knowledge (arcana).

  Senses: A black blade is aware of everything around it like a creature that can see and hear. It can be blinded and deafened as if it were a creature. It uses the saving throws of its magus, even if the magus is not currently wielding the black blade.

  Black Blade Arcane Pool: A black blade has an arcane pool with a number of points equal to 1 + its Intelligence bonus.

  <table>
    <tr>
      <th>Magus Class Level</th>
      <th>Enhancement Bonus</th>
      <th>Int</th>
      <th>Wis/Cha</th>
      <th>Ego</th>
      <th>Special</th>
    </tr>
    <tr>
      <td>3rd - 4th</td>
      <td>+1</td>
      <td>11</td>
      <td>7</td>
      <td>5</td>
      <td>Alertness, Black Blade Strike, Telepathy, Unbreakable</td>
    </tr>
    <tr>
      <td>5th - 6th</td>
      <td>+2</td>
      <td>12</td>
      <td>8</td>
      <td>8</td>
      <td>Energy Attunement</td>
    </tr>
    <tr>
      <td>7th - 8th</td>
      <td>+2</td>
      <td>13</td>
      <td>9</td>
      <td>10</td>
      <td></td>
    </tr>
    <tr>
      <td>9th - 10th</td>
      <td>+3</td>
      <td>14</td>
      <td>10</td>
      <td>12</td>
      <td>Teleport Blade</td>
    </tr>
    <tr>
      <td>11th - 12th</td>
      <td>+3</td>
      <td>15</td>
      <td>11</td>
      <td>14</td>
      <td></td>
    </tr>
    <tr>
      <td>13th - 14th</td>
      <td>+4</td>
      <td>16</td>
      <td>12</td>
      <td>16</td>
      <td>Transfer Arcana</td>
    </tr>
    <tr>
      <td>15th - 16th</td>
      <td>+4</td>
      <td>17</td>
      <td>13</td>
      <td>18</td>
      <td></td>
    </tr>
    <tr>
      <td>17th - 18th</td>
      <td>+5</td>
      <td>18</td>
      <td>14</td>
      <td>22</td>
      <td>Spell Defense</td>
    </tr>
    <tr>
      <td>19th - 20th</td>
      <td>+5</td>
      <td>19</td>
      <td>15</td>
      <td>24</td>
      <td>Life Drinker</td>
    </tr>
  </table>")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: bladebound3.id, level: 3, table_description: "")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_archetype_feature_id: bladebound3.id, replace_or_alter: "replace")

  bladebound4 = KlassArchetypeFeature.create!(name: "Black Blade Ability Descriptions", klass_archetype_id: bladebound.id, description: "A black blade has special abilities (or imparts abilities to its wielder) depending on the wielder’s magus level. The abilities are cumulative. A black blade normally refuses to use any of its abilities when wielded by anyone other than its magus, and acts as a masterwork weapon of its type.

  Alertness (Ex): While a magus is wielding his black blade, he gains the Alertness feat.

  Black Blade Strike (Sp): As a free action, the magus can spend a point from the black blade’s arcane pool to grant the black blade a +1 bonus on damage rolls for 1 minute. For every four levels beyond 1st, this ability gives the black blade another +1 on damage rolls.

  Telepathy (Su): While a magus is wielding or carrying his black blade, he can communicate telepathically with the blade in a language that the magus and the black blade share.

  Unbreakable (Ex): As long as it has at least 1 point in its arcane pool, a black blade is immune to the broken condition. If broken, the black blade is unconscious and powerless until repaired. If destroyed, the black blade can be reforged 1 week later through a special ritual that costs 200 gp per magus level. The ritual takes 24 hours to complete.

  Energy Attunement (Su): At 5th level, as a free action, a magus can spend a point of his black blade’s arcane pool to have it deal one of the following types of damage instead of weapon damage: cold, electricity, or fire. He can spend 2 points from the black blade’s arcane pool to deal sonic or force damage instead of weapon damage. This effect lasts until the start of the magus’s next turn.

  Teleport Blade (Sp): As a standard action, a magus of 9th level or higher can expend an arcane point from his or his black blade’s arcane pool, and can call his black blade from as far as 1 mile away, causing it to instantaneously teleport to his hand.

  Transfer Arcana (Su): At 13th level, once per day, a magus can attempt to siphon points from his black blade’s arcane pool into his own arcane pool. Doing so takes a full-round action and the magus must succeed at a Will saving throw with a DC equal to the black blade’s ego. If the magus succeeds, he regains 1 point to his arcane pool for every 2 points he saps from his black blade. If he fails the saving throw, the magus becomes fatigued (but can try again). If he is fatigued, he becomes exhausted instead. He cannot use this ability if he is exhausted.

  Spell Defense (Sp): A magus of 17th level or higher can expend an arcane point from his weapon’s arcane pool as a free action; he then gains SR equal to his black blade’s ego until the start of his next turn.

  Life Drinker (Su): At 19th level, each time the magus kills a living creature with the black blade, he can pick one of the following effects: the black blade restores 2 points to its arcane pool; the black blade restores 1 point to its arcane pool and the magus restores 1 point to his arcane pool; the magus gains a number of temporary hit points equal to the black blade’s ego (these temporary hit points last until spent or 1 minute, whichever is shorter). The creature killed must have a number of Hit Dice equal to half the magus’s character level for this to occur.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: bladebound4.id, level: 3, table_description: "Alertness")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: bladebound4.id, level: 3, table_description: "Black Blade Strike")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: bladebound4.id, level: 3, table_description: "Telepathy")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: bladebound4.id, level: 3, table_description: "Unbreakable")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: bladebound4.id, level: 5, table_description: "Energy Attunement")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: bladebound4.id, level: 9, table_description: "Teleport Blade")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: bladebound4.id, level: 13, table_description: "Transfer Arcana")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: bladebound4.id, level: 17, table_description: "Spell Defense")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: bladebound4.id, level: 19, table_description: "Life Drinker")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_archetype_feature_id: bladebound4.id, replace_or_alter: "replace")

  print "Blackblade Archetype Created! \r"


  # IDENTIFIER = KlassArchetypeFeature.create!(name: "NAME", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "NAME")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")

  # IDENTIFIER = KlassArchetypeFeature.create!(name: "NAME", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "NAME")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")

  # IDENTIFIER = KlassArchetypeFeature.create!(name: "NAME", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "NAME")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")

puts "Magus Created!"
