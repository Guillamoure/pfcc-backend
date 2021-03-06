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

tower_shield = Armor.find_by!(name: 'Tower Shield', proficiency: 'Shield', price_in_gp: 30, bonus: 4, bonus_type: 'Shield', max_dex_bonus: 2, armor_check_penalty: -10, arcane_spell_failure: 50, spell_30: nil, spell_20: nil, don: "1 move action", don_hastily: nil, remove: "1 move action", weight: 45, source_id: core_rulebook.id)

cr = Skillset.find_by!(name: "Core Rulebook")
dmc = Skillset.find_by!(name: "DMCustom")
ravnica_custom = Skillset.find_by!(name: "Ravnica Custom")



ranger = Klass.create!(name: "Ranger", hit_die: 10, skill_ranks: 6, fortitude: 0.5, reflex: 0.5, will: 0.34, img_url: "https://i.pinimg.com/originals/dc/9f/41/dc9f416c690f5a7416bfe3f55ee54534.png", source_id: core_rulebook.id, starting_wealth: "5d6 × 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", description: "For those who relish the thrill of the hunt, there are only predators and prey. Be they scouts, trackers, or bounty hunters, rangers share much in common: unique mastery of specialized weapons, skill at stalking even the most elusive game, and the expertise to defeat a wide range of quarries. Knowledgeable, patient, and skilled hunters, these rangers hound man, beast, and monster alike, gaining insight into the way of the predator, skill in varied environments, and ever more lethal martial prowess. While some track man-eating creatures to protect the frontier, others pursue more cunning game—even fugitives among their own people.

Role: Ranger are deft skirmishers, either in melee or at range, capable of skillfully dancing in and out of battle. Their abilities allow them to deal significant harm to specific types of foes, but their skills are valuable against all manner of enemies.

Alignment: Any")

ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Climb").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Handle Animal").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Heal").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Intimidate").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (dungeoneering)").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (geography)").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (nature)").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Perception").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Ride").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Spellcraft").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Stealth").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Survival").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Swim").id)

ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Climb").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Handle Animal").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Heal").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Intimidate").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Investigation").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Knowledge").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Nature").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Perception").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Spellcraft", untrained: true).id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Stealth").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Survival").id)
ClassSkillsetSkill.create!(klass_id: ranger.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Swim").id)


# /////////////////////////////////////////////////////
# <-*-*-----*-*-*- Base Class Features!-*-*-*-----*-*->
# /////////////////////////////////////////////////////

ranger1 = KlassFeature.create!(klass_id: ranger.id, name: "Weapon and Armor Proficiency", description: "A ranger is proficient with all simple and martial weapons and with light armor, medium armor, and shields (except tower shields).")
  FeatureLevel.create!(klass_feature_id: ranger1.id, level: 1, table_description: "")
  ranger1_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: ranger1.id, feature_id: ranger1_feature.id)
    FeatureWeaponProficiency.create!(feature_id: ranger1_feature.id, proficiency_group: "Simple")
    FeatureWeaponProficiency.create!(feature_id: ranger1_feature.id, proficiency_group: "Martial")
    FeatureArmorProficiency.create!(feature_id: ranger1_feature.id, proficiency_group: "Light")
    FeatureArmorProficiency.create!(feature_id: ranger1_feature.id, proficiency_group: "Medium")
    FeatureArmorProficiency.create!(feature_id: ranger1_feature.id, proficiency_group: "Shield")
    FeatureArmorProficiency.create!(feature_id: ranger1_feature.id, armor_id: tower_shield.id, additive: false)

ranger2 = KlassFeature.create!(klass_id: ranger.id, name: "Favored Enemy", description: "At 1st level, a ranger selects a creature type from the below list. He gains a +2 bonus on Bluff, Knowledge, Perception, Sense Motive, and Survival checks against creatures of his selected type. Likewise, he gets a +2 bonus on weapon attack and damage rolls against them. A ranger may make Knowledge skill checks untrained when attempting to identify these creatures.

At 5th level and every five levels thereafter (10th, 15th, and 20th level), the ranger may select an additional favored enemy. In addition, at each such interval, the bonus against any one favored enemy (including the one just selected, if so desired) increases by +2.

If the ranger chooses humanoids or outsiders as a favored enemy, he must also choose an associated subtype, as indicated on the table below. (Note that there are other types of humanoid to choose from—those called out specifically on the table below are merely the most common.) If a specific creature falls into more than one category of favored enemy, the ranger’s bonuses do not stack; he simply uses whichever bonus is higher.

Aberration
Animal
Construct
Dragon
Fey
Humanoid (aquatic)
Humanoid (dwarf)
Humanoid (elf)
Humanoid (giant)
Humanoid (goblinoid)
Humanoid (gnoll)
Humanoid (gnome)
Humanoid (halfling)
Humanoid (human)
Humanoid (orc)
Humanoid (reptilian)
Humanoid (other subtype)
Magical beast
Monstrous humanoid
Ooze
Outsider (air)
Outsider (chaotic)
Outsider (earth)
Outsider (evil)
Outsider (fire)
Outsider (good)
Outsider (lawful)
Outsider (native)
Outsider (water)
Plant
Undead
Vermin")
  FeatureLevel.create!(klass_feature_id: ranger2.id, level: 1, table_description: "1st Favored Enemy")
  FeatureLevel.create!(klass_feature_id: ranger2.id, level: 5, table_description: "2nd Favored Enemy")
  FeatureLevel.create!(klass_feature_id: ranger2.id, level: 10, table_description: "3rd Favored Enemy")
  FeatureLevel.create!(klass_feature_id: ranger2.id, level: 15, table_description: "4th Favored Enemy")
  FeatureLevel.create!(klass_feature_id: ranger2.id, level: 20, table_description: "5th Favored Enemy")

ranger3 = KlassFeature.create!(klass_id: ranger.id, name: "Track", description: "A ranger adds half his level (minimum 1) to Survival skill checks made to follow tracks.")
  FeatureLevel.create!(klass_feature_id: ranger3.id, level: 1, table_description: "Track")

ranger4 = KlassFeature.create!(klass_id: ranger.id, name: "Wild Empathy", description: "A ranger can improve the initial attitude of an animal. This ability functions just like a Diplomacy check to improve the attitude of a person (see Using Skills). The ranger rolls 1d20 and adds his ranger level and his Charisma bonus to determine the wild empathy check result. The typical domestic animal has a starting attitude of indifferent, while wild animals are usually unfriendly.

To use wild empathy, the ranger and the animal must be within 30 feet of one another under normal visibility conditions. Generally, influencing an animal in this way takes 1 minute, but, as with influencing people, it might take more or less time.

The ranger can also use this ability to influence a magical beast with an Intelligence score of 1 or 2, but he takes a –4 penalty on the check.")
  FeatureLevel.create!(klass_feature_id: ranger4.id, level: 1, table_description: "Wild Empathy")

ranger5 = KlassFeature.create!(klass_id: ranger.id, name: "Combat Style Feat", description: "At 2nd level, a ranger must select one combat style to pursue.

The ranger’s expertise manifests in the form of bonus feats at 2nd, 6th, 10th, 14th, and 18th level. He can choose feats from his selected combat style, even if he does not have the normal prerequisites.

The benefits of the ranger’s chosen style feats apply only when he wears light, medium, or no armor. He loses all benefits of his combat style feats when wearing heavy armor. Once a ranger selects a combat style, it cannot be changed.", specialization: true, choice_amount: 1)
  FeatureLevel.create!(klass_feature_id: ranger5.id, level: 2, table_description: "Combat Style Feat")
  FeatureLevel.create!(klass_feature_id: ranger5.id, level: 6, table_description: "Combat Style Feat")
  FeatureLevel.create!(klass_feature_id: ranger5.id, level: 10, table_description: "Combat Style Feat")
  FeatureLevel.create!(klass_feature_id: ranger5.id, level: 14, table_description: "Combat Style Feat")
  FeatureLevel.create!(klass_feature_id: ranger5.id, level: 18, table_description: "Combat Style Feat")

  archery = KlassSpecialization.create!(name: "Archery", description: "Far Shot, Focused Shot, Point Blank Shot, Precise Shot, and Rapid Shot. At 6th level, he adds Crossbow Mastery, Improved Precise Shot, Parting Shot, Point Blank Master and Manyshot to the list. At 10th level, he adds Pinpoint Targeting and Shot on the Run to the list.")
    KlassFeatureKlassSpecialization.create!(klass_feature_id: ranger5.id, klass_specialization_id: archery.id)
  two_weapon_combat = KlassSpecialization.create!(name: "Two-Weapon Combat", description: "Double Slice, Improved Shield Bash, Quick Draw, and Two-Weapon Fighting. At 6th level, he adds Improved Two-Weapon Fighting and Two-Weapon Defense to the list. At 10th level, he adds Greater Two-Weapon Fighting and Two-Weapon Rend to the list.")
    KlassFeatureKlassSpecialization.create!(klass_feature_id: ranger5.id, klass_specialization_id: two_weapon_combat.id)

ranger6 = KlassFeature.create!(klass_id: ranger.id, name: "Endurance", description: "A ranger gains Endurance as a bonus feat at 3rd level.")
  FeatureLevel.create!(klass_feature_id: ranger6.id, level: 3, table_description: "Endurance")

ranger7 = KlassFeature.create!(klass_id: ranger.id, name: "Favored Terrain", description: "At 3rd level, a ranger may select a type of terrain from the below list. The ranger gains a +2 bonus on initiative checks and Knowledge (geography), Perception, Stealth, and Survival skill checks when he is in this terrain. A ranger traveling through his favored terrain normally leaves no trail and cannot be tracked (though he may leave a trail if he so chooses).

At 8th level and every five levels thereafter, the ranger may select an additional favored terrain. In addition, at each such interval, the skill bonus and initiative bonus in any one favored terrain (including the one just selected, if so desired), increases by +2.

If a specific terrain falls into more than one category of favored terrain, the ranger’s bonuses do not stack; he simply uses whichever bonus is higher.

Cold (ice, glaciers, snow, and tundra)
Desert (sand and wastelands)
Forest (coniferous and deciduous)
Jungle
Mountain (including hills)
Plains
Planes (pick one, other than Material Plane)
Swamp
Underground (caves and dungeons)
Urban (buildings, streets, and sewers)
Water (above and below the surface)")
  FeatureLevel.create!(klass_feature_id: ranger7.id, level: 3, table_description: "1st Favored Terrain")
  FeatureLevel.create!(klass_feature_id: ranger7.id, level: 8, table_description: "2nd Favored Terrain")
  FeatureLevel.create!(klass_feature_id: ranger7.id, level: 13, table_description: "3rd Favored Terrain")
  FeatureLevel.create!(klass_feature_id: ranger7.id, level: 18, table_description: "4th Favored Terrain")

ranger8 = KlassFeature.create!(klass_id: ranger.id, name: "Hunter's Bond", description: "At 4th level, a ranger forms a bond with his hunting companions. This bond can take one of two forms. Once the form is chosen, it cannot be changed. The first is a bond to his companions. This bond allows him to spend a move action to grant half his favored enemy bonus against a single target of the appropriate type to all allies within 30 feet who can see or hear him. This bonus lasts for a number of rounds equal to the ranger’s Wisdom modifier (minimum 1). This bonus does not stack with any favored enemy bonuses possessed by his allies; they use whichever bonus is higher.

The second option is to form a close bond with an animal companion. A ranger who selects an animal companion can choose from the following list: antelope, armorfish, baboon, badger, bird, bustard, camel, capybara, cat (small), dire rat, dog, elk, falcon, horse, kangaroo, lizard (giant gecko), marsupial devil, pony, ram, reindeer, snake (viper, constrictor, reef snake, or spitting cobra), stag, stringray, trumpeter swan, thylacine, wolf, wolfdog, yak, or zebra. If the campaign takes place wholly or partly in an aquatic environment, the ranger may choose a shark instead. This animal is a loyal companion that accompanies the ranger on his adventures as appropriate for its kind. A ranger’s animal companion shares his favored enemy and favored terrain bonuses.

This ability functions like the druid animal companion ability (which is part of the Nature Bond class feature), except that the ranger’s effective druid level is equal to his ranger level –3.")
  FeatureLevel.create!(klass_feature_id: ranger8.id, level: 4, table_description: "Hunter's Bond")

ranger9 = KlassFeature.create!(klass_id: ranger.id, name: "Spells", description: "Beginning at 4th level, a ranger gains the ability to cast a small number of divine spells, which are drawn from the ranger spell list. A ranger must choose and prepare his spells in advance.

To prepare or cast a spell, a ranger must have a Wisdom score equal to at least 10 + the spell level. The Difficulty Class for a saving throw against a ranger’s spell is 10 + the spell level + the ranger’s Wisdom modifier.

Like other spellcasters, a ranger can cast only a certain number of spells of each spell level per day. His base daily spell allotment is given on Table: Ranger. In addition, he receives bonus spells per day if he has a high Wisdom score (see Table: Ability Modifiers and Bonus Spells). When Table: Ranger indicates that the ranger gets 0 spells per day of a given spell level, he gains only the bonus spells he would be entitled to based on his Wisdom score for that spell level.

A ranger must spend 1 hour per day in quiet meditation to regain his daily allotment of spells. A ranger may prepare and cast any spell on the ranger spell list, provided that he can cast spells of that level, but he must choose which spells to prepare during his daily meditation.

Through 3rd level, a ranger has no caster level. At 4th level and higher, his caster level is equal to his ranger level – 3.")
  FeatureLevel.create!(klass_feature_id: ranger9.id, level: 4, table_description: "")
  ranger_spell_list = SpellList.create!(name: "Ranger Spells List")
  ranger9_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: ranger9_feature.id, klass_feature_id: ranger9.id)
    ranger_spellcasting = FeatureSpellcasting.create!(feature_id: ranger9_feature.id, ability_score: "wisdom", prepare_spells: true, expend_prepared_spells: true, infinite_zero_level: false, known_spell_list: false, apply_metamagic_when_casting: false, apply_metamagic_when_preparing: true, type_of_magic: "Divine", caster_level_penalty: 3, spell_list_id: ranger_spell_list.id)

    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 4, spells: 0, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 5, spells: 1, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 6, spells: 1, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 7, spells: 1, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 8, spells: 1, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 9, spells: 2, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 10, spells: 2, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 11, spells: 2, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 12, spells: 2, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 13, spells: 3, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 14, spells: 3, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 15, spells: 3, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 16, spells: 3, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 17, spells: 4, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 18, spells: 4, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 19, spells: 4, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 20, spells: 4, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 7, spells: 0, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 8, spells: 1, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 9, spells: 1, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 10, spells: 1, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 11, spells: 1, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 12, spells: 2, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 13, spells: 2, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 14, spells: 2, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 15, spells: 2, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 16, spells: 3, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 17, spells: 3, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 18, spells: 3, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 19, spells: 3, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 20, spells: 4, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 10, spells: 0, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 11, spells: 1, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 12, spells: 1, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 13, spells: 1, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 14, spells: 1, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 15, spells: 2, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 16, spells: 2, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 17, spells: 2, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 18, spells: 2, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 19, spells: 3, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 20, spells: 3, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 13, spells: 0, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 14, spells: 1, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 15, spells: 1, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 16, spells: 1, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 17, spells: 1, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 18, spells: 2, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 19, spells: 2, feature_spellcasting_id: ranger_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 20, spells: 3, feature_spellcasting_id: ranger_spellcasting.id)

ranger10 = KlassFeature.create!(klass_id: ranger.id, name: "Woodland Stride", description: "Starting at 7th level, a ranger may move through any sort of undergrowth (such as natural thorns, briars, overgrown areas, and similar terrain) at his normal speed and without taking damage or suffering any other impairment.

Thorns, briars, and overgrown areas that are enchanted or magically manipulated to impede motion, however, still affect him.")
  FeatureLevel.create!(klass_feature_id: ranger10.id, level: 7, table_description: "Woodland Stride")

ranger11 = KlassFeature.create!(klass_id: ranger.id, name: "Swift Tracker", description: "Beginning at 8th level, a ranger can move at his normal speed while using Survival to follow tracks without taking the normal –5 penalty. He takes only a –10 penalty (instead of the normal –20) when moving at up to twice normal speed while tracking.")
  FeatureLevel.create!(klass_feature_id: ranger11.id, level: 8, table_description: "Swift Tracker")

ranger12 = KlassFeature.create!(klass_id: ranger.id, name: "Evasion", description: "When he reaches 9th level, a ranger can avoid even magical and unusual attacks with great agility. If he makes a successful Reflex saving throw against an attack that normally deals half damage on a successful save, he instead takes no damage. Evasion can be used only if the ranger is wearing light armor, medium armor, or no armor. A helpless ranger does not gain the benefit of evasion.")
  FeatureLevel.create!(klass_feature_id: ranger12.id, level: 9, table_description: "Evasion")

ranger13 = KlassFeature.create!(klass_id: ranger.id, name: "Quarry", description: "At 11th level, a ranger can, as a standard action, denote one target within his line of sight as his quarry. Whenever he is following the tracks of his quarry, a ranger can take 10 on his Survival skill checks while moving at normal speed, without penalty. In addition, he receives a +2 insight bonus on attack rolls made against his quarry, and all critical threats are automatically confirmed. A ranger can have no more than one quarry at a time and the creature’s type must correspond to one of his favored enemy types. He can dismiss this effect at any time as a free action, but he cannot select a new quarry for 24 hours. If the ranger sees proof that his quarry is dead, he can select a new quarry after waiting 1 hour.")
  FeatureLevel.create!(klass_feature_id: ranger13.id, level: 11, table_description: "Quarry")

ranger14 = KlassFeature.create!(klass_id: ranger.id, name: "Camouflage", description: "A ranger of 12th level or higher can use the Stealth skill to hide in any of his favored terrains, even if the terrain doesn’t grant cover or concealment.")
  FeatureLevel.create!(klass_feature_id: ranger14.id, level: 12, table_description: "Camouflage")

ranger15 = KlassFeature.create!(klass_id: ranger.id, name: "Improved Evasion", description: "At 16th level, a ranger’s evasion improves. This ability works like evasion, except that while the ranger still takes no damage on a successful Reflex saving throw against attacks, he henceforth takes only half damage on a failed save. A helpless ranger does not gain the benefit of improved evasion.")
  FeatureLevel.create!(klass_feature_id: ranger15.id, level: 16, table_description: "Improved Evasion")

ranger16 = KlassFeature.create!(klass_id: ranger.id, name: "Hide in Plain Sight", description: "While in any of his favored terrains, a ranger of 17th level or higher can use the Stealth skill even while being observed.")
  FeatureLevel.create!(klass_feature_id: ranger16.id, level: 17, table_description: "Hide in Plain Sight")

ranger17 = KlassFeature.create!(klass_id: ranger.id, name: "Improved Quarry", description: "At 19th level, the ranger’s ability to hunt his quarry improves. He can now select a quarry as a free action, and can now take 20 while using Survival to track his quarry, while moving at normal speed without penalty. His insight bonus to attack his quarry increases to +4. If his quarry is killed or dismissed, he can select a new one after 10 minutes have passed.")
  FeatureLevel.create!(klass_feature_id: ranger17.id, level: 19, table_description: "Improved Quarry")

ranger18 = KlassFeature.create!(klass_id: ranger.id, name: "Master Hunter", description: "A ranger of 20th level becomes a master hunter. He can always move at full speed while using Survival to follow tracks without penalty. He can, as a standard action, make a single attack against a favored enemy at his full attack bonus. If the attack hits, the target takes damage normally and must make a Fortitude save or die. The DC of this save is equal to 10 + 1/2 the ranger’s level + the ranger’s Wisdom modifier. A ranger can choose instead to deal an amount of nonlethal damage equal to the creature’s current hit points. A successful save negates this damage. A ranger can use this ability once per day against each favored enemy type he possesses, but not against the same creature more than once in a 24-hour period.")
  FeatureLevel.create!(klass_feature_id: ranger18.id, level: 20, table_description: "Master Hunter")

print "Ranger Features Created! \r"

# //////////////////////////////////////////////////
# <-*-*-----*-*-*- Class Archetypes!-*-*-*-----*-*->
# //////////////////////////////////////////////////

dandy = KlassArchetype.create!(name: "Dandy", klass_id: ranger.id, source_id: ultimate_intrigue.id, description: "The antithesis of the gruff and wild woodsmen, a dandy takes effort to master the subtle etiquette of noble courts, the whispers of dark rumors, and the customs of the cultured world. Nonetheless, he is still a ranger at heart, and he hunts for rumors and gossip throughout the grand ballrooms of the wealthy and powerful just as most rangers hunt for enemies in the wilderness.")

  dandy1 = KlassArchetypeFeature.create!(name: "Class Skills", klass_archetype_id: dandy.id, description: "A dandy adds Bluff, Diplomacy, Knowledge (local), Knowledge (nobility), and Sense Motive to his list of class skills, instead of Handle Animal, Knowledge (dungeoneering), Knowledge (geography), Knowledge (nature), and Survival.

  This alters the ranger’s class skills.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: dandy1.id, level: 1, table_description: "")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_archetype_feature_id: dandy1.id, alters_class_skills: true, replace_or_alter: "alter")

  dandy2 = KlassArchetypeFeature.create!(name: "Favored Nation", klass_archetype_id: dandy.id, description: "Each time he would select a favored enemy, a dandy instead selects a country with whose courtly graces he is wholly versed and studied. He gains a +2 bonus on Bluff, Diplomacy, Knowledge, Perception, Sense Motive, and Survival checks against courtiers, officials, nobles, and gentry from that nation. Likewise, he gains a +2 bonus on weapon attack and damage rolls against them.

  A dandy can attempt the appropriate Knowledge checks untrained to identify such people from the selected country. A dandy gains additional favored nations, and can increase the bonuses of one of his current favored nations, in the same way he would with a normal ranger’s favored enemy.

  This ability replaces favored enemy.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: dandy2.id, level: 1, table_description: "1st Favored Nation")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: dandy2.id, level: 5, table_description: "2nd Favored Nation")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: dandy2.id, level: 10, table_description: "3rd Favored Nation")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: dandy2.id, level: 15, table_description: "4th Favored Nation")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: dandy2.id, level: 20, table_description: "5th Favored Nation")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: ranger2.id, klass_archetype_feature_id: dandy2.id, replace_or_alter: "replace")

  dandy3 = KlassArchetypeFeature.create!(name: "Rumor Empathy", klass_archetype_id: dandy.id, description: "A dandy can alter the flow and spread of rumors in his favor. This functions similarly to wild empathy, except that it takes 1 day (8 hours of work), instead of 1 minute, and it affects the general tenor of a rumor instead of a wild animal.

  A successful rumor empathy check allows the dandy to increase or decrease the rumor’s tone by one step. For example, he could make an indifferent rumor friendly and thus positive toward its target, or an unfriendly rumor hostile and thus even more negative toward its target than it was originally.

  The difficulty of influencing a rumor depends on the size of the community in which it is spreading. The DC of the check is 15 in a village or smaller settlement. This DC increases by 5 and the number of days required to attempt the check increases by 2 for every settlement size category larger than a village—to a maximum of DC 40 and 11 days to affect a rumor spreading through an entire metropolis.

  If the rumor is only spreading through a smaller segment of the population, such as the elven district in a larger metropolis, use the population of that smaller segment to determine the DC and number of days of work required to use rumor empathy. The DC also increases by 10 if the rumor is about the dandy himself, since the dandy is obviously a biased source with respects to rumors about his own person.

  This ability replaces wild empathy.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: dandy3.id, level: 1, table_description: "Rumor Empathy")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: ranger4.id, klass_archetype_feature_id: dandy3.id, replace_or_alter: "replace")

  dandy4 = KlassArchetypeFeature.create!(name: "Favored Terrain", klass_archetype_id: dandy.id, description: "At 3rd level, a dandy gains favored terrain (urban), and though the ability continues to increase at the same levels, he doesn’t add additional terrains. However, at 8th level, whenever he is at a courtly function or party, his favored terrain bonuses increase by an additional 2.

  This ability alters favored terrain.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: dandy4.id, level: 3, table_description: "Favored Terrain")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: dandy4.id, level: 8, table_description: "Favored Terrain")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: ranger7.id, klass_archetype_feature_id: dandy4.id, replace_or_alter: "alter")

  dandy5 = KlassArchetypeFeature.create!(name: "Hobnob", klass_archetype_id: dandy.id, description: "At 4th level, a dandy must choose his allies as his hunter’s bond, not an animal companion.

  In addition to the usual hunter’s bond ability, the dandy can spend 10 minutes at a particular event or party hobnobbing and introducing his allies to the right people in order to provide them with half the skill bonuses of his favored nation (though not the bonuses on attack and damage rolls) for the duration of the event.

  This ability alters hunter’s bond.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: dandy5.id, level: 4, table_description: "Hobnob")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: ranger8.id, klass_archetype_feature_id: dandy5.id, replace_or_alter: "alter")

  dandy6 = KlassArchetypeFeature.create!(name: "Dandy Spells", klass_archetype_id: dandy.id, description: "At 4th level, the dandy gains a different sort of spellcasting than most rangers. A dandy uses his Charisma instead of his Wisdom to determine spells per day, DCs, and other factors related to spellcasting. He casts spells spontaneously from the bard spell list (rather than the ranger spell list) with the same number of spells known and spells per day as a medium of his ranger level.

  This ability alters the ranger’s spellcasting.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: dandy6.id, level: 4, table_description: "")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: ranger9.id, klass_archetype_feature_id: dandy6.id, replace_or_alter: "alter")

  dandy7 = KlassArchetypeFeature.create!(name: "Party Crasher", klass_archetype_id: dandy.id, description: "At 7th level, the dandy is able to finagle his way into fancy parties, kings’ balls, and other social events meant for the cream of society. To do so, he must attempt a DC 25 Diplomacy check, which takes 1d4 hours. If he succeeds, he finds himself an invitation, an invitee looking for a date, a staff member willing to look the other way, or some other way to enter the party.

  This does not allow him to break into restricted areas or to infiltrate strictly closed gatherings, such as secret meetings; it only allows him access to social events.

  This ability replaces woodland stride.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: dandy7.id, level: 7, table_description: "Party Crasher")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: ranger10.id, klass_archetype_feature_id: dandy7.id, replace_or_alter: "replace")

  print "Dandy Archetype Created! \r"

puts "Ranger Created!"
