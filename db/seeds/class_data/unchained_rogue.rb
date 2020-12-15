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

rapier = Weapon.find_by!(name: 'Rapier', category: 'One-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 20, num_of_dice: 1, damage_dice: 6, critical: 2, critical_range: 18, range: 0, thrown: false, weight: 2, damage_type: 'Piercing', source_id: core_rulebook.id)
hand_crossbow = Weapon.find_by!(name: 'Hand Crossbow', category: 'Ranged', proficiency: 'Exotic', weapon_type: 'Range', price_in_gp: 100, num_of_dice: 1, damage_dice: 4, critical: 2, critical_range: 19, range: 30, thrown: false, weight: 2, damage_type: 'Piercing', source_id: core_rulebook.id)
sap = Weapon.find_by!(name: 'Sap', category: 'Light', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 1, num_of_dice: 1, damage_dice: 6, range: 0, thrown: false, weight: 2, damage_type: 'Bludgeoning', source_id: core_rulebook.id)
shortbow = Weapon.find_by!(name: 'Shortbow', category: 'Ranged', proficiency: 'Martial', weapon_type: 'Range', price_in_gp: 30, num_of_dice: 1, damage_dice: 6, critical: 3, critical_range: 20, range: 60, thrown: false, weight: 2, damage_type: 'Piercing', source_id: core_rulebook.id)
shortsword = Weapon.find_by!(name: 'Shortsword', category: 'Light', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 10, num_of_dice: 1, damage_dice: 6, critical_range: 19, range: 0, thrown: false, weight: 2, damage_type: 'Piercing',source_id: core_rulebook.id)

cr = Skillset.find_by!(name: "Core Rulebook")
dmc = Skillset.find_by!(name: "DMCustom")
ravnica_custom = Skillset.find_by!(name: "Ravnica Custom")




unchained_rogue = Klass.create!(name: "Rogue", hit_die: 8, skill_ranks: 8, fortitude: 0.34, reflex: 0.5, will: 0.34, img_url: "http://www.d20pfsrd.com/wp-content/uploads/sites/12/2017/01/rogue__comm_by_yamaorce-d88oizc-320-2.png", starting_wealth: "4d6 × 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", source_id: core_rulebook.id, description: "Life is an endless adventure for those who live by their wits. Ever just one step ahead of danger, rogues bank on their cunning, skill, and charm to bend fate to their favor. Never knowing what to expect, they prepare for everything, becoming masters of a wide variety of skills, training themselves to be adept manipulators, agile acrobats, shadowy stalkers, or masters of any of dozens of other professions or talents. Thieves and gamblers, fast talkers and diplomats, bandits and bounty hunters, and explorers and investigators all might be considered rogues, as well as countless other professions that rely upon wits, prowess, or luck. Although many rogues favor cities and the innumerable opportunities of civilization, some embrace lives on the road, journeying far, meeting exotic people, and facing fantastic danger in pursuit of equally fantastic riches. In the end, any who desire to shape their fates and live life on their own terms might come to be called rogues.

Role: Rogues excel at moving about unseen and catching foes unaware, and tend to avoid head-to-head combat. Their varied skills and abilities allow them to be highly versatile, with great variations in expertise existing between different rogues. Most, however, excel in overcoming hindrances of all types, from unlocking doors and disarming traps to outwitting magical hazards and conning dull-witted opponents.

Alignment: Any")

ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Acrobatics").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Appraise").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Bluff").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Climb").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Diplomacy").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Disable Device").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Disguise").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Escape Artist").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Intimidate").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (dungeoneering)").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (local)").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Linguistics").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Perception").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Perform").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Sense Motive").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Sleight of Hand").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Stealth").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Swim").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Use Magic Device").id)

ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Acrobatics").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Bluff").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Climb").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Diplomacy").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Disguise").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Finesse").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Intimidate").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Investigation").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Knowledge").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Linguistics").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Perception").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Perform").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Sense Motive").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Society").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Stealth").id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Swim").id)


# /////////////////////////////////////////////////////
# <-*-*-----*-*-*- Base Class Features!-*-*-*-----*-*->
# /////////////////////////////////////////////////////

unchained_rogue1 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Weapon and Armor Proficiency", description: "Rogues are proficient with all simple weapons, plus the hand crossbow, rapier, sap, short sword, and shortbow. They are proficient with light armor, but not with shields.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue1.id, level: 1, table_description: "")
  unchained_rogue1_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: unchained_rogue1.id, feature_id: unchained_rogue1_feature.id)
    FeatureWeaponProficiency.create!(feature_id: unchained_rogue1_feature.id, proficiency_group: "Simple")
    FeatureWeaponProficiency.create!(feature_id: unchained_rogue1_feature.id, weapon_id: hand_crossbow.id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: unchained_rogue1_feature.id, weapon_id: rapier.id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: unchained_rogue1_feature.id, weapon_id: sap.id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: unchained_rogue1_feature.id, weapon_id: shortsword.id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: unchained_rogue1_feature.id, weapon_id: shortbow.id, additive: true)
    FeatureArmorProficiency.create!(feature_id: unchained_rogue1_feature.id, proficiency_group: "Light")

unchained_rogue2 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Sneak Attack", description: "If a rogue can catch an opponent when he is unable to defend himself effectively from her attack, she can strike a vital spot for extra damage.

The rogue’s attack deals extra damage anytime her target would be denied a Dexterity bonus to AC (whether the target actually has a Dexterity bonus or not), or when the rogue flanks her target. This extra damage is 1d6 at 1st level, and increases by 1d6 every 2 rogue levels thereafter. Ranged attacks can count as sneak attacks only if the target is within 30 feet. This additional damage is precision damage and is not multiplied on a critical hit.

With a weapon that deals nonlethal damage (such as a sap, unarmed strike, or whip), a rogue can make a sneak attack that deals nonlethal damage instead of lethal damage. She cannot use a weapon that deals lethal damage to deal nonlethal damage in a sneak attack—not even with the usual –4 penalty.

The rogue must be able to see the target well enough to pick out a vital spot and must be able to reach such a spot. A rogue cannot sneak attack while striking a creature with total concealment.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue2.id, level: 1, table_description: "Sneak Attack +1d6")
  FeatureLevel.create!(klass_feature_id: unchained_rogue2.id, level: 3, table_description: "Sneak Attack +2d6")
  FeatureLevel.create!(klass_feature_id: unchained_rogue2.id, level: 5, table_description: "Sneak Attack +3d6")
  FeatureLevel.create!(klass_feature_id: unchained_rogue2.id, level: 7, table_description: "Sneak Attack +4d6")
  FeatureLevel.create!(klass_feature_id: unchained_rogue2.id, level: 9, table_description: "Sneak Attack +5d6")
  FeatureLevel.create!(klass_feature_id: unchained_rogue2.id, level: 11, table_description: "Sneak Attack +6d6")
  FeatureLevel.create!(klass_feature_id: unchained_rogue2.id, level: 13, table_description: "Sneak Attack +7d6")
  FeatureLevel.create!(klass_feature_id: unchained_rogue2.id, level: 15, table_description: "Sneak Attack +8d6")
  FeatureLevel.create!(klass_feature_id: unchained_rogue2.id, level: 17, table_description: "Sneak Attack +9d6")
  FeatureLevel.create!(klass_feature_id: unchained_rogue2.id, level: 19, table_description: "Sneak Attack +10d6")

unchained_rogue3 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Trapfinding", description: "A rogue adds 1/2 her level on Perception checks to locate traps and on Disable Device checks (minimum +1). A rogue can use Disable Device to disarm magic traps.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue3.id, level: 1, table_description: "Trapfinding")

unchained_rogue4 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Finesse Training", description: "At 1st level, a rogue gains Weapon Finesse as a bonus feat. In addition, starting at 3rd level, she can select any one type of weapon that can be used with Weapon Finesse (such as rapiers or daggers). Once this choice is made, it cannot be changed. Whenever she makes a successful melee attack with the selected weapon, she adds her Dexterity modifier instead of her Strength modifier to the damage roll. If any effect would prevent the rogue from adding her Strength modifier to the damage roll, she does not add her Dexterity modifier. The rogue can select a second weapon at 11th level and a third at 19th level.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue4.id, level: 1, table_description: "Finesse Training")
  FeatureLevel.create!(klass_feature_id: unchained_rogue4.id, level: 3, table_description: "Finesse Training")
  FeatureLevel.create!(klass_feature_id: unchained_rogue4.id, level: 11, table_description: "Finesse Training")
  FeatureLevel.create!(klass_feature_id: unchained_rogue4.id, level: 19, table_description: "Finesse Training")

unchained_rogue5 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Evasion", description: "At 2nd level, a rogue can avoid even magical and unusual attacks with great agility. If she succeeds at a Reflex saving throw against an attack that normally deals half damage on a successful save, she instead takes no damage. Evasion can be used only if the rogue is wearing light armor or no armor. A helpless rogue does not gain the benefit of evasion.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue5.id, level: 2, table_description: "Evasion")

unchained_rogue6 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Rogue Talent", has_klass_feature_options: true, description: "As a rogue gains experience, she learns a number of talents that aid her and confound her foes. Starting at 2nd level, a rogue gains one rogue talent. She gains an additional rogue talent for every 2 levels of rogue attained after 2nd level. A rogue cannot select an individual talent more than once.

Talents marked with an asterisk add effects to a rogue’s sneak attack. Only one of these talents can be applied to an individual attack, and the decision must be made before the attack roll is made.

A rogue cannot choose a ninja trick with the same name as a rogue talent.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue6.id, level: 2, table_description: "Rogue Talent")
  FeatureLevel.create!(klass_feature_id: unchained_rogue6.id, level: 4, table_description: "Rogue Talent")
  FeatureLevel.create!(klass_feature_id: unchained_rogue6.id, level: 6, table_description: "Rogue Talent")
  FeatureLevel.create!(klass_feature_id: unchained_rogue6.id, level: 8, table_description: "Rogue Talent")
  FeatureLevel.create!(klass_feature_id: unchained_rogue6.id, level: 10, table_description: "Rogue Talent")
  FeatureLevel.create!(klass_feature_id: unchained_rogue6.id, level: 12, table_description: "Rogue Talent")
  FeatureLevel.create!(klass_feature_id: unchained_rogue6.id, level: 14, table_description: "Rogue Talent")
  FeatureLevel.create!(klass_feature_id: unchained_rogue6.id, level: 16, table_description: "Rogue Talent")
  FeatureLevel.create!(klass_feature_id: unchained_rogue6.id, level: 18, table_description: "Rogue Talent")
  FeatureLevel.create!(klass_feature_id: unchained_rogue6.id, level: 20, table_description: "Rogue Talent")

unchained_rogue7 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Danger Sense", description: "At 3rd level, a rogue gains a +1 bonus on Reflex saves to avoid traps and a +1 dodge bonus to AC against attacks made by traps. In addition, she gains a +1 bonus on Perception checks to avoid being surprised by a foe. These bonuses increase by 1 every 3 rogue levels thereafter (to a maximum of +6 at 18th level). This ability counts as trap sense for the purpose of any feat or class prerequisite, and can be replaced by any archetype class feature that replaces trap sense. The bonuses gained from this ability stack with those gained from trap sense (from another class).")
  FeatureLevel.create!(klass_feature_id: unchained_rogue7.id, level: 3, table_description: "Danger Sense +1")
  FeatureLevel.create!(klass_feature_id: unchained_rogue7.id, level: 6, table_description: "Danger Sense +2")
  FeatureLevel.create!(klass_feature_id: unchained_rogue7.id, level: 9, table_description: "Danger Sense +3")
  FeatureLevel.create!(klass_feature_id: unchained_rogue7.id, level: 12, table_description: "Danger Sense +4")
  FeatureLevel.create!(klass_feature_id: unchained_rogue7.id, level: 15, table_description: "Danger Sense +5")
  FeatureLevel.create!(klass_feature_id: unchained_rogue7.id, level: 18, table_description: "Danger Sense +6")

unchained_rogue8 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Debilitating Injury", description: "At 4th level, whenever a rogue deals sneak attack damage to a foe, she can also debilitate the target of her attack, causing it to take a penalty for 1 round (this is in addition to any penalty caused by a rogue talent or other special ability). The rogue can choose to apply any one of the following penalties when the damage is dealt.

Bewildered: The target becomes bewildered, taking a –2 penalty to AC. The target takes an additional –2 penalty to AC against all attacks made by the rogue. At 10th level and 16th level, the penalty to AC against attacks made by the rogue increases by –2 (to a total maximum of –8).

Disoriented: The target takes a –2 penalty on attack rolls. In addition, the target takes an additional –2 penalty on all attack rolls it makes against the rogue. At 10th level and 16th level, the penalty on attack rolls made against the rogue increases by –2 (to a total maximum of –8).

Hampered: All of the target’s speeds are reduced by half (to a minimum of 5 feet). In addition, the target cannot take a 5-foot step.

These penalties do not stack with themselves, but additional attacks that deal sneak attack damage extend the duration by 1 round. A creature cannot suffer from more than one penalty from this ability at a time. If a new penalty is applied, the old penalty immediately ends. Any form of healing applied to a target suffering from one of these penalties also removes the penalty.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue8.id, level: 4, table_description: "Debilitating Injury")

unchained_rogue9 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Uncanny Dodge", description: "At 4th level, a rogue can react to danger before her senses would normally allow her to do so. She cannot be caught flat-footed, nor does she lose her Dexterity bonus to AC if the attacker is invisible. She still loses her Dexterity bonus to AC if immobilized. A rogue with this ability can still lose her Dexterity bonus to AC if an opponent successfully uses the feint action against her.

If a rogue already has uncanny dodge from a different class, she automatically gains improved uncanny dodge (see below) instead.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue9.id, level: 4, table_description: "Uncanny Dodge")

unchained_rogue10 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Rogue's Edge", description: "At 5th level, a rogue has mastered a single skill beyond that skill’s normal boundaries, gaining results that others can only dream about. She gains the skill unlock powers for that skill as appropriate for her number of ranks in that skill. At 10th, 15th, and 20th levels, she chooses an additional skill and gains skill unlock powers for that skill as well.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue10.id, level: 5, table_description: "Rogue's Edge")
  FeatureLevel.create!(klass_feature_id: unchained_rogue10.id, level: 10, table_description: "Rogue's Edge")
  FeatureLevel.create!(klass_feature_id: unchained_rogue10.id, level: 15, table_description: "Rogue's Edge")
  FeatureLevel.create!(klass_feature_id: unchained_rogue10.id, level: 20, table_description: "Rogue's Edge")

unchained_rogue11 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Improved Uncanny Dodge", description: "At 8th level, a rogue can no longer be flanked.

This defense denies another rogue the ability to sneak attack the character by flanking her, unless the attacker has at least four more rogue levels than the target does.

If a character already has uncanny dodge from another class, the levels from the classes that grant uncanny dodge stack to determine the minimum rogue level required to flank the character.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue11.id, level: 8, table_description: "Improved Uncanny Dodge")

unchained_rogue12 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Advanced Talents", description: "At 10th level and every 2 levels thereafter, a rogue can choose one of the following advanced talents in place of a rogue talent.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue12.id, level: 10, table_description: "Advanced Talents")

unchained_rogue13 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Master Strike", description: "At 20th level, an rogue becomes incredibly deadly when dealing sneak attack damage. Each time the rogue deals sneak attack damage, she can choose one of the following three effects: the target can be put to sleep for 1d4 hours, paralyzed for 2d6 rounds, or slain. Regardless of the effect chosen, the target can attempt a Fortitude save to negate the additional effect. The DC of this save is equal to 10 + 1/2 the rogue’s level + the rogue’s Dexterity modifier. Once a creature has been the target of a master strike, regardless of whether or not the save is successful, that creature is immune to that rogue’s master strike for 24 hours. Creatures that are immune to sneak attack damage are also immune to this ability.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue13.id, level: 20, table_description: "Master Strike")

print "Unchained Rogue features created! \r"

# ///////////////////////////////////////////////////////
# <-*-*-----*-*-*- Class Feature Options!-*-*-*-----*-*->
# ///////////////////////////////////////////////////////

FeatureOption.create!(name: "Minor Magic", klass_feature_id: unchained_rogue6.id, level_available: 2, description: "A rogue with this talent gains the ability to cast a 0-level spell from the sorcerer/wizard spell list. This spell can be cast at will as a spell-like ability. The rogue’s caster level for this ability is equal to her rogue level. The save DC for this spell is 10 + the rogue’s Intelligence modifier. A rogue must have an Intelligence score of at least 10 to select this talent.")

FeatureOption.create!(name: "Fast Stealth", klass_feature_id: unchained_rogue6.id, level_available: 2, description: "This ability allows a rogue to move at full speed using the Stealth skill without penalty.")

FeatureOption.create!(name: "Ledge Walker", klass_feature_id: unchained_rogue6.id, level_available: 2, description: "This ability allows a rogue to move along narrow, uneven, or slippery surfaces (such as ice) at full speed using the Acrobatics skill without penalty. In addition, a rogue with this talent is not flat-footed when using Acrobatics to move along such surfaces, and retains her Dexterity bonus to AC.")

FeatureOption.create!(name: "Powerful Sneak", klass_feature_id: unchained_rogue6.id, level_available: 2, description: "Whenever a rogue with this talent takes a full-attack action, she can take a –2 penalty on all attack rolls until the start of her next turn. If she does, she can reroll any sneak attack damage dice that result in 1s. She can reroll multiple dice, but she can’t reroll any individual die more than once per attack.")

# //////////////////////////////////////////////////
# <-*-*-----*-*-*- Class Archetypes!-*-*-*-----*-*->
# //////////////////////////////////////////////////

pirate = KlassArchetype.create!(name: "Pirate", klass_id: unchained_rogue.id, source_id: ultimate_combat.id, description: "A pirate breaks from the confines of country and king to commit her crimes upon the high seas. She holds allegiance only to her ship and its captain (if even that much is true), and lives a lawless life upon the waves, plundering ships and shorelines as suits her whim.

Rogue Talents: The following rogue talents complement the pirate archetype: black market connections, combat trick, finesse rogue, firearm training, hold breath, rope master, and strong stroke.

Advanced Talents: The following advanced rogue talents complement the pirate archetype: getaway master, hard to fool, and unwitting ally.")

  pirate1 = KlassArchetypeFeature.create!(name: "Sea Legs", klass_archetype_id: pirate.id, description: "At 1st level, a pirate becomes adept at moving on ships, boats, and similar vessels. She gains the Sea Legs feat as a bonus feat, even if she does not meet the prerequisites.

    This ability replaces trapfinding.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: pirate1.id, level: 1, table_description: "Sea Legs")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: unchained_rogue3.id, klass_archetype_feature_id: pirate1.id, replace_or_alter: "replace")

  pirate2 = KlassArchetypeFeature.create!(name: "Swinging Reposition", klass_archetype_id: pirate.id, description: "At 2nd level, a pirate incorporates a ship’s masts, rigging, ropes, sails, and other such structures into her combat style. Provided she is wearing light armor or no armor, when fighting in an environment where such structures exist, the rogue incorporates them into her movement, and does not have to move in a straight line when making either a charge attack or bull rush combat maneuver. Once she completes her attack or maneuver, she can reposition herself. Immediately after making the charge or bull rush, she can move 5 feet as a free action, even if the charge ends her turn. This movement does not provoke attacks of opportunity.

    This ability replaces the 2nd-level rogue talent.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: pirate2.id, level: 2, table_description: "Swinging Reposition")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: unchained_rogue6.id, klass_archetype_feature_id: pirate2.id, replace_or_alter: "replace", affects_specific_level: 2)

  pirate3 = KlassArchetypeFeature.create!(name: "Unflinching", klass_archetype_id: pirate.id, description: "Pirates are a salty and steadfast lot. At 3rd level, a pirate gains a +1 bonus on saving throws against fear and mind-affecting effects. This bonus increases by +1 for every three levels, to a maximum of +6 at 18th level.

  This ability replaces trap sense.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: pirate3.id, level: 3, table_description: "Unflinching +1")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: pirate3.id, level: 6, table_description: "Unflinching +2")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: pirate3.id, level: 9, table_description: "Unflinching +3")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: pirate3.id, level: 12, table_description: "Unflinching +4")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: pirate3.id, level: 15, table_description: "Unflinching +5")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: pirate3.id, level: 18, table_description: "Unflinching +6")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: unchained_rogue7.id, klass_archetype_feature_id: pirate3.id, replace_or_alter: "replace")

  print "Pirate Archetype Created! \r"


  # IDENTIFIER = KlassArchetypeFeature.create!(name: "", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")

  # IDENTIFIER = KlassArchetypeFeature.create!(name: "", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")

  # IDENTIFIER = KlassArchetypeFeature.create!(name: "", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")

  # IDENTIFIER = KlassArchetypeFeature.create!(name: "", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")


puts "Unchained Rogue Created!"
