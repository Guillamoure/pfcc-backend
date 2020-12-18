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



slayer = Klass.create!(name: "Slayer", hit_die: 10, skill_ranks: 6, fortitude: 0.5, reflex: 0.5, will: 0.34, img_url: "https://i.pinimg.com/originals/88/ba/93/88ba93eddfde553ee37e18709097c6f6.png", source_id: advanced_class_guide.id, starting_wealth: "5d6 × 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", description: "Skilled at tracking down targets, slayers are consummate hunters, living for the chase and the deadly stroke that brings it to a close. Slayers spend most of their time honing their weapon skills, studying the habits and anatomy of foes, and practicing combat maneuvers.

Role: The slayer is elusive, and good at finding the opportune time and location to strike. Combining the deadliest talents of rangers and rogues, a slayer’s abilities are all about getting into combat, dealing with a target, and then getting back out again.

Alignment: Any.

Parent Classes: Ranger and rogue.")

ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Acrobatics").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Bluff").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Climb").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Disguise").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Heal").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Intimidate").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (dungeoneering)").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (geography)").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (local)").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Perception").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Ride").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Sense Motive").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Stealth").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Survival").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Swim").id)

ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Acrobatics").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Bluff").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Climb").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Disguise").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Heal").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Intimidate").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Investigation").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Knowledge").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Nature").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Perception").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Sense Motive").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Stealth").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Survival").id)
ClassSkillsetSkill.create!(klass_id: slayer.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Swim").id)


# /////////////////////////////////////////////////////
# <-*-*-----*-*-*- Base Class Features!-*-*-*-----*-*->
# /////////////////////////////////////////////////////

slayer1 = KlassFeature.create!(klass_id: slayer.id, name: "Weapon and Armor Proficiency", description: "A slayer is proficient with all simple and martial weapons, as well as with light armor, medium armor, and shields (except tower shields).")
  FeatureLevel.create!(klass_feature_id: slayer1.id, level: 1, table_description: "")
  slayer1_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: slayer1.id, feature_id: slayer1_feature.id)
    FeatureWeaponProficiency.create!(feature_id: slayer1_feature.id, proficiency_group: "Simple")
    FeatureWeaponProficiency.create!(feature_id: slayer1_feature.id, proficiency_group: "Martial")
    FeatureArmorProficiency.create!(feature_id: slayer1_feature.id, proficiency_group: "Light")
    FeatureArmorProficiency.create!(feature_id: slayer1_feature.id, proficiency_group: "Medium")
    FeatureArmorProficiency.create!(feature_id: slayer1_feature.id, proficiency_group: "Shield")
    FeatureArmorProficiency.create!(feature_id: slayer1_feature.id, armor_id: tower_shield.id, additive: false)

slayer2 = KlassFeature.create!(klass_id: slayer.id, name: "Studied Target", description: "A slayer can study an opponent he can see as a move action. The slayer then gains a +1 bonus on Bluff, Knowledge, Perception, Sense Motive, and Survival checks attempted against that opponent, and a +1 bonus on weapon attack and damage rolls against it. The DCs of slayer class abilities against that opponent increase by 1. A slayer can only maintain these bonuses against one opponent at a time; these bonuses remain in effect until either the opponent is dead or the slayer studies a new target.

If a slayer deals sneak attack damage to a target, he can study that target as an immediate action, allowing him to apply his studied target bonuses against that target (including to the normal weapon damage roll).

At 5th, 10th, 15th, and 20th levels, the bonuses on weapon attack rolls, damage rolls, and skill checks and to slayer DCs against a studied target increase by 1. In addition, at each such interval, the slayer is able to maintain these bonuses against an additional studied target at the same time. The slayer may discard this connection to a studied target as a free action, allowing him to study another target in its place.

At 7th level, a slayer can study an opponent as a move or swift action.")
  FeatureLevel.create!(klass_feature_id: slayer2.id, level: 1, table_description: "Studied Target")
  FeatureLevel.create!(klass_feature_id: slayer2.id, level: 5, table_description: "2nd Studied Target")
  FeatureLevel.create!(klass_feature_id: slayer2.id, level: 10, table_description: "3rd Studied Target")
  FeatureLevel.create!(klass_feature_id: slayer2.id, level: 15, table_description: "4th Studied Target")
  FeatureLevel.create!(klass_feature_id: slayer2.id, level: 20, table_description: "5th Studied Target")

slayer3 = KlassFeature.create!(klass_id: slayer.id, name: "Track", description: "A slayer adds half his level (minimum 1) to Survival skill checks made to follow tracks.")
  FeatureLevel.create!(klass_feature_id: slayer3.id, level: 1, table_description: "Track")

slayer4 = KlassFeature.create!(klass_id: slayer.id, name: "Slayer Talents", description: "As a slayer gains experience, he learns a number of talents that aid him and confound his foes. Starting at 2nd level and every 2 levels thereafter, a slayer gains one slayer talent. Unless otherwise noted, a slayer cannot select an individual talent more than once.

Talents marked with an asterisk (*) add effects to a slayer’s sneak attack. Only one of these talents can be applied to an individual attack, and the decision of which to use must be made before the attack roll is made.")
  FeatureLevel.create!(klass_feature_id: slayer4.id, level: 2, table_description: "Slayer Talent")
  FeatureLevel.create!(klass_feature_id: slayer4.id, level: 4, table_description: "Slayer Talent")
  FeatureLevel.create!(klass_feature_id: slayer4.id, level: 6, table_description: "Slayer Talent")
  FeatureLevel.create!(klass_feature_id: slayer4.id, level: 8, table_description: "Slayer Talent")
  FeatureLevel.create!(klass_feature_id: slayer4.id, level: 10, table_description: "Slayer Talent")
  FeatureLevel.create!(klass_feature_id: slayer4.id, level: 12, table_description: "Slayer Talent")
  FeatureLevel.create!(klass_feature_id: slayer4.id, level: 14, table_description: "Slayer Talent")
  FeatureLevel.create!(klass_feature_id: slayer4.id, level: 16, table_description: "Slayer Talent")
  FeatureLevel.create!(klass_feature_id: slayer4.id, level: 18, table_description: "Slayer Talent")
  FeatureLevel.create!(klass_feature_id: slayer4.id, level: 20, table_description: "Slayer Talent")

slayer5 = KlassFeature.create!(klass_id: slayer.id, name: "Sneak Attack", description: "At 3rd level, if a slayer catches an opponent unable to defend itself effectively from his attack, he can strike a vital spot for extra damage. The slayer’s attack deals extra damage anytime his target would be denied a Dexterity bonus to AC (whether the target actually has a Dexterity bonus or not), or when the slayer flanks his target. This additional damage is 1d6 at 3rd level, and increases by 1d6 every 3 levels thereafter. Should the slayer score a critical hit with a sneak attack, this additional damage is not multiplied. Ranged attacks can count as sneak attacks only if the target is within 30 feet.

With a weapon that deals nonlethal damage (like a sap, whip, or unarmed strike), a slayer can make a sneak attack that deals nonlethal damage instead of lethal damage. He cannot use a weapon that deals lethal damage to deal nonlethal damage in a sneak attack, not even with the usual –4 penalty.

The slayer must be able to see the target well enough to pick out a vital spot and must be able to reach such a spot. A slayer cannot use sneak attack while striking a creature with concealment.")
  FeatureLevel.create!(klass_feature_id: slayer5.id, level: 3, table_description: "Sneak Attack +1d6")
  FeatureLevel.create!(klass_feature_id: slayer5.id, level: 6, table_description: "Sneak Attack +2d6")
  FeatureLevel.create!(klass_feature_id: slayer5.id, level: 9, table_description: "Sneak Attack +3d6")
  FeatureLevel.create!(klass_feature_id: slayer5.id, level: 12, table_description: "Sneak Attack +4d6")
  FeatureLevel.create!(klass_feature_id: slayer5.id, level: 15, table_description: "Sneak Attack +5d6")
  FeatureLevel.create!(klass_feature_id: slayer5.id, level: 18, table_description: "Sneak Attack +6d6")

slayer6 = KlassFeature.create!(klass_id: slayer.id, name: "Stalker", description: "At 7th level, a slayer gains his studied target bonus on Disguise, Intimidate, and Stealth checks against his studied opponent.")
  FeatureLevel.create!(klass_feature_id: slayer6.id, level: 7, table_description: "Stalker")

slayer7 = KlassFeature.create!(klass_id: slayer.id, name: "Advanced Talents", description: "At 10th level and every 2 levels thereafter, a slayer can select one of the following advanced talents in place of a slayer talent.")
  FeatureLevel.create!(klass_feature_id: slayer7.id, level: 10, table_description: "Advanced Talents")

slayer8 = KlassFeature.create!(klass_id: slayer.id, name: "Swift Tracker", description: "At 11th level, a slayer can move at his normal speed while using Survival to follow tracks without taking the normal –5 penalty. When moving at up to twice his normal speed while tracking, he takes only a –10 penalty instead of the normal –20.")
  FeatureLevel.create!(klass_feature_id: slayer8.id, level: 11, table_description: "Swift Tracker")

slayer9 = KlassFeature.create!(klass_id: slayer.id, name: "Slayer's Advance", description: "At 13th level, a slayer can once per day move up to twice his base speed as a move action. He may use Stealth as part of this movement, but takes a –10 penalty to his check for doing so. At 17th level, he can do this twice per day.")
  FeatureLevel.create!(klass_feature_id: slayer9.id, level: 13, table_description: "Slayer's Advance 1/day")
  FeatureLevel.create!(klass_feature_id: slayer9.id, level: 17, table_description: "Slayer's Advance 2/day")

slayer10 = KlassFeature.create!(klass_id: slayer.id, name: "Quarry", description: "At 14th level, a slayer can as a standard action denote one target within his line of sight as his quarry. Whenever he is following the tracks of his quarry, a slayer can take 10 on his Survival skill checks while moving at normal speed, without penalty. In addition, he gains a +2 insight bonus on attack rolls made against his quarry, and all critical threats against his quarry are automatically confirmed. A slayer can have no more than one quarry at a time, and the target must be selected as a studied target. He can dismiss this effect at any time as a free action, but he cannot select a new quarry target for 24 hours. If the slayer sees proof that his quarry is dead, he can select a new quarry target after 1 hour.")
  FeatureLevel.create!(klass_feature_id: slayer10.id, level: 14, table_description: "Quarry")

slayer11 = KlassFeature.create!(klass_id: slayer.id, name: "Improved Quarry", description: "At 19th level, the slayer’s ability to hunt his quarry improves. He can now select a quarry as a free action, and can now take 20 while using Survival to track his quarry, while moving at normal speed without penalty. His insight bonus to attack his quarry increases to +4. If his quarry is killed or dismissed, he can select a new one after 10 minutes have passed.")
  FeatureLevel.create!(klass_feature_id: slayer11.id, level: 19, table_description: "Improved Quarry")

slayer12 = KlassFeature.create!(klass_id: slayer.id, name: "Master Slayer", description: "At 20th level, the slayer becomes a master at capturing or killing his studied targets. As a standard action, he can make a single attack against a studied target at his full attack bonus, choosing one of the following effects: kill, knock unconscious for 1d4 hours, or paralyze for 2d6 rounds. If the attack succeeds, the target takes damage normally and must succeed at a Fortitude saving throw or suffer the additional effect. The DC for this save is 10 + 1/2 the slayer’s level + the slayer’s Intelligence modifier. Whether or not the target succeeds, it cannot be targeted by this ability again (by any slayer) for 24 hours.")
  FeatureLevel.create!(klass_feature_id: slayer12.id, level: 20, table_description: "Master Slayer")


print "Slayer Features Created! \r"

# //////////////////////////////////////////////////
# <-*-*-----*-*-*- Class Archetypes!-*-*-*-----*-*->
# //////////////////////////////////////////////////


puts "Slayer Created!"
