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


monk = Klass.create!(name: "Monk", hit_die: 10, skill_ranks: 4, fortitude: 0.5, reflex: 0.5, will: 0.34, img_url: "https://i.pinimg.com/originals/f6/ea/94/f6ea94b026fb0c757c931d0d0e127ecd.jpg", starting_wealth: "1d6 × 10 gp (average 35 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", source_id: core_rulebook.id, description: "For the truly exemplary, martial skill transcends the battlefield—it is a lifestyle, a doctrine, a state of mind. These warrior-artists search out methods of battle beyond swords and shields, finding weapons within themselves just as capable of crippling or killing as any blade. These monks (so called since they adhere to ancient philosophies and strict martial disciplines) elevate their bodies to become weapons of war, from battle-minded ascetics to self-taught brawlers. Monks tread the path of discipline, and those with the will to endure that path discover within themselves not what they are, but what they are meant to be.

Role: Monks excel at overcoming even the most daunting perils, striking where it’s least expected, and taking advantage of enemy vulnerabilities. Fleet of foot and skilled in combat, monks can navigate any battlefield with ease, aiding allies wherever they are needed most.

Unchained: Much of the monk has been reworked, including its base attack bonus, Hit Die, saves, and many of its special abilities. The result is a version of the monk that not only is easier to play, but also possesses a great deal more versatility. Flurry of blows is now much simpler to use in play. Many of the higher-level abilities of the monk, such as abundant step and quivering palm, have been incorporated into the new system of ki powers. As a monk advances in level, he can select from a variety of ki powers, allowing the player to truly customize his character.

Alignment: Any lawful")

ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Acrobatics").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Climb").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Escape Artist").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Intimidate").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (history)").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (religion)").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Perception").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Perform").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Ride").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Sense Motive").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Stealth").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Swim").id)

ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Acrobatics").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Climb").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Intimidate").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Perception").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Perform").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Religion").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Sense Motive").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Stealth").id)
ClassSkillsetSkill.create!(klass_id: monk.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Swim").id)

# /////////////////////////////////////////////////////
# <-*-*-----*-*-*- Base Class Features!-*-*-*-----*-*->
# /////////////////////////////////////////////////////

monk1 = KlassFeature.create!(klass_id: monk.id, name: "Weapon and Armor Proficiency", description: "Monks are proficient with the club, crossbow (light or heavy), dagger, handaxe, javelin, kama, nunchaku, quarterstaff, sai, short sword, shortspear, shuriken, siangham, sling, spear, and any weapon with the monk special weapon quality.

Monks are not proficient with any armor or shields.

When wearing armor, using a shield, or carrying a medium or heavy load, a monk loses his AC bonus, as well as his fast movement and flurry of blows abilities.")
  FeatureLevel.create!(klass_feature_id: monk1.id, level: 1, table_description: "")
  monk1_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: monk1.id, feature_id: monk1_feature.id)
    FeatureWeaponProficiency.create!(feature_id: monk1_feature.id, weapon_id: Weapon.find_by!(name: "Club").id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: monk1_feature.id, weapon_id: Weapon.find_by!(name: "Light Crossbow").id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: monk1_feature.id, weapon_id: Weapon.find_by!(name: "Heavy Crossbow").id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: monk1_feature.id, weapon_id: Weapon.find_by!(name: "Dagger").id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: monk1_feature.id, weapon_id: Weapon.find_by!(name: "Handaxe").id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: monk1_feature.id, weapon_id: Weapon.find_by!(name: "Javelin").id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: monk1_feature.id, weapon_id: Weapon.find_by!(name: "Kama").id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: monk1_feature.id, weapon_id: Weapon.find_by!(name: "Nunchaku").id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: monk1_feature.id, weapon_id: Weapon.find_by!(name: "Quarterstaff").id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: monk1_feature.id, weapon_id: Weapon.find_by!(name: "Sai").id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: monk1_feature.id, weapon_id: Weapon.find_by!(name: "Shortsword").id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: monk1_feature.id, weapon_id: Weapon.find_by!(name: "Shortspear").id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: monk1_feature.id, weapon_id: Weapon.find_by!(name: "Shuriken").id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: monk1_feature.id, weapon_id: Weapon.find_by!(name: "Siangham").id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: monk1_feature.id, weapon_id: Weapon.find_by!(name: "Sling").id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: monk1_feature.id, weapon_id: Weapon.find_by!(name: "Spear").id, additive: true)

monk2 = KlassFeature.create!(klass_id: monk.id, name: "AC Bonus", description: "When unarmored and unencumbered, the monk adds his Wisdom bonus (if any) to his AC and CMD. In addition, a monk gains a +1 bonus to AC and CMD at 4th level. This bonus increases by 1 for every four monk levels thereafter, up to a maximum of +5 at 20th level.

These bonuses to AC apply even against touch attacks or when the monk is flat-footed. He loses these bonuses when he is immobilized or helpless, when he wears any armor, when he carries a shield, or when he carries a medium or heavy load.")
  FeatureLevel.create!(klass_feature_id: monk2.id, level: 1, table_description: "AC Bonus")
  FeatureLevel.create!(klass_feature_id: monk2.id, level: 4, table_description: "AC Bonus +1")
  FeatureLevel.create!(klass_feature_id: monk2.id, level: 8, table_description: "AC Bonus +2")
  FeatureLevel.create!(klass_feature_id: monk2.id, level: 12, table_description: "AC Bonus +3")
  FeatureLevel.create!(klass_feature_id: monk2.id, level: 16, table_description: "AC Bonus +4")
  FeatureLevel.create!(klass_feature_id: monk2.id, level: 20, table_description: "AC Bonus +5")

monk3 = KlassFeature.create!(klass_id: monk.id, name: "Bonus Feats", description: "At 1st level, 2nd level, and every 4 levels thereafter, a monk can select a bonus feat. These feats must be taken from the following list: Catch Off-Guard, Combat Reflexes, Deflect Arrows, Dodge, Improved Grapple, Scorpion Style, and Throw Anything.

At 6th level, the following feats are added to the list: Gorgon’s Fist, Improved Bull Rush, Improved Disarm, Improved Feint, Improved Trip, and Mobility.

At 10th level, the following feats are added to the list: Improved Critical, Medusa’s Wrath, Snatch Arrows, and Spring Attack.

A monk need not have any of the prerequisites normally required for these feats to select them.")
  FeatureLevel.create!(klass_feature_id: monk3.id, level: 1, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: monk3.id, level: 2, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: monk3.id, level: 6, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: monk3.id, level: 10, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: monk3.id, level: 14, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: monk3.id, level: 18, table_description: "Bonus Feat")

monk4 = KlassFeature.create!(klass_id: monk.id, name: "Flurry of Blows", description: "At 1st level, a monk can make a flurry of blows as a full-attack action. When making a flurry of blows, the monk can make one additional attack at his highest base attack bonus. This additional attack stacks with the bonus attacks from haste and other similar effects. When using this ability, the monk can make these attacks with any combination of his unarmed strikes and weapons that have the monk special weapon quality. He takes no penalty for using multiple weapons when making a flurry of blows, but he does not gain any additional attacks beyond what’s already granted by the flurry for doing so. (He can still gain additional attacks from a high base attack bonus, from this ability, and from haste and similar effects).

At 11th level, a monk can make an additional attack at his highest base attack bonus whenever he makes a flurry of blows. This stacks with the first attack from this ability and additional attacks from haste and similar effects.")
  FeatureLevel.create!(klass_feature_id: monk4.id, level: 1, table_description: "Flurry of Blows (bonus attack)")
  FeatureLevel.create!(klass_feature_id: monk4.id, level: 11, table_description: "Flurry of Blows (bonus attack)")

monk5 = KlassFeature.create!(klass_id: monk.id, name: "Stunning Fist", description: "At 1st level, the monk gains Stunning Fist as a bonus feat, even if he does not meet the prerequisites.

At 4th level, and every 4 levels thereafter, the monk gains the ability to apply a new condition to the target of his Stunning Fist. This condition replaces stunning the target for 1 round, and a successful saving throw still negates the effect.

At 4th level, the monk can choose to make the target fatigued. At 8th level, he can make the target sickened for 1 minute. At 12th level, he can make the target staggered for 1d6+1 rounds. At 16th level, he can permanently blind or deafen the target. At 20th level, he can paralyze the target for 1d6+1 rounds. The monk must choose which condition will apply before the attack roll is made. These effects do not stack with themselves (a creature fatigued by Stunning Fist cannot become exhausted if hit by Stunning Fist again), but additional hits do increase the duration.")
  FeatureLevel.create!(klass_feature_id: monk5.id, level: 1, table_description: "Stunning Fist")
  FeatureLevel.create!(klass_feature_id: monk5.id, level: 4, table_description: "Stunning Fist")
  FeatureLevel.create!(klass_feature_id: monk5.id, level: 8, table_description: "Stunning Fist")
  FeatureLevel.create!(klass_feature_id: monk5.id, level: 12, table_description: "Stunning Fist")
  FeatureLevel.create!(klass_feature_id: monk5.id, level: 16, table_description: "Stunning Fist")
  FeatureLevel.create!(klass_feature_id: monk5.id, level: 20, table_description: "Stunning Fist")

monk6 = KlassFeature.create!(klass_id: monk.id, name: "Unarmed Strike", description: "At 1st level, a monk gains Improved Unarmed Strike as a bonus feat. A monk’s attacks can be with fists, elbows, knees, and feet. This means that a monk can make unarmed strikes with his hands full. There is no such thing as an off-hand attack for a monk striking unarmed. A monk can apply his full Strength bonus on damage rolls for all his unarmed strikes. A monk’s unarmed strikes deal lethal damage, although he can choose to deal nonlethal damage with no penalty on his attack roll. He can make this choice while grappling as well.

A monk’s unarmed strike is treated as both a manufactured weapon and a natural weapon for the purpose of spells and effects that enhance or improve either manufactured weapons or natural weapons.

The damage dealt by a monk’s unarmed strike is determined in the features table. The damage listed is for Medium monks.

The damage for Small or Large monks is listed below.

<table>
  <tr>
    <th>Level</th>
    <th>Small Monk Damage</th>
    <th>Large Monk Damage</th>
  </tr>
  <tr>
    <td>1st - 3rd</td>
    <td>1d4</td>
    <td>1d8</td>
  </tr>
  <tr>
    <td>4th - 7th</td>
    <td>1d6</td>
    <td>2d6</td>
  </tr>
  <tr>
    <td>8th - 11th</td>
    <td>1d8</td>
    <td>2d8</td>
  </tr>
  <tr>
    <td>12th - 15th</td>
    <td>1d10</td>
    <td>3d6</td>
  </tr>
  <tr>
    <td>16th - 19th</td>
    <td>2d6</td>
    <td>3d8</td>
  </tr>
  <tr>
    <td>20th</td>
    <td>2d8</td>
    <td>4d8</td>
  </tr>
</table>")
  FeatureLevel.create!(klass_feature_id: monk6.id, level: 1, table_description: "Unarmed Strike (1d6)")
  FeatureLevel.create!(klass_feature_id: monk6.id, level: 4, table_description: "Unarmed Strike (1d8)")
  FeatureLevel.create!(klass_feature_id: monk6.id, level: 8, table_description: "Unarmed Strike (1d10)")
  FeatureLevel.create!(klass_feature_id: monk6.id, level: 12, table_description: "Unarmed Strike (2d6)")
  FeatureLevel.create!(klass_feature_id: monk6.id, level: 16, table_description: "Unarmed Strike (2d8)")
  FeatureLevel.create!(klass_feature_id: monk6.id, level: 20, table_description: "Unarmed Strike (2d10)")

monk7 = KlassFeature.create!(klass_id: monk.id, name: "Evasion", description: "At 2nd level, a monk can avoid damage from many area-effect attacks. If a monk succeeds at a Reflex saving throw against an attack that normally deals half damage on a successful save, he instead takes no damage. Evasion can be used only if a monk is wearing light armor or no armor. A helpless monk does not gain the benefit of evasion.")
  FeatureLevel.create!(klass_feature_id: monk7.id, level: 2, table_description: "Evasion")

monk8 = KlassFeature.create!(klass_id: monk.id, name: "Fast Movement", description: "At 3rd level, a monk gains an enhancement bonus to his land speed, as shown on the features table. A monk in armor or carrying a medium or heavy load loses this extra speed.")
  FeatureLevel.create!(klass_feature_id: monk8.id, level: 3, table_description: "Fast Movement (+10 Feet)")
  FeatureLevel.create!(klass_feature_id: monk8.id, level: 6, table_description: "Fast Movement (+20 Feet)")
  FeatureLevel.create!(klass_feature_id: monk8.id, level: 9, table_description: "Fast Movement (+30 Feet)")
  FeatureLevel.create!(klass_feature_id: monk8.id, level: 12, table_description: "Fast Movement (+40 Feet)")
  FeatureLevel.create!(klass_feature_id: monk8.id, level: 15, table_description: "Fast Movement (+50 Feet)")
  FeatureLevel.create!(klass_feature_id: monk8.id, level: 18, table_description: "Fast Movement (+60 Feet)")

monk9 = KlassFeature.create!(klass_id: monk.id, name: "Ki Pool", description: "At 3rd level, a monk gains a pool of ki points, supernatural energy he can use to accomplish amazing feats. The number of points in a monk’s ki pool is equal to 1/2 his monk level + his Wisdom modifier. As long as he has at least 1 point in his ki pool, he can make a ki strike.

At 3rd level, ki strike allows his unarmed attacks to be treated as magic weapons for the purpose of overcoming damage reduction.
At 7th level, his unarmed attacks are also treated as cold iron and silver for the purpose of overcoming damage reduction.
At 10th level, his unarmed attacks are also treated as lawful weapons for the purpose of overcoming damage reduction.
At 16th level, his unarmed attacks are treated as adamantine weapons for the purpose of overcoming damage reduction and bypassing hardness.

By spending 1 point from his ki pool as a swift action, a monk can make one additional unarmed strike at his highest attack bonus when making a flurry of blows attack. This bonus attack stacks with all bonus attacks gained from flurry of blows, as well as those from haste and similar effects. A monk gains additional powers that consume points from his ki pool as he gains levels.
The ki pool is replenished each morning after 8 hours of rest or meditation; these hours do not need to be consecutive.")
  FeatureLevel.create!(klass_feature_id: monk9.id, level: 3, table_description: "Ki Pool")
  FeatureLevel.create!(klass_feature_id: monk9.id, level: 3, table_description: "Ki Strike (magic)")
  FeatureLevel.create!(klass_feature_id: monk9.id, level: 7, table_description: "Ki Strike (cold iron/silver)")
  FeatureLevel.create!(klass_feature_id: monk9.id, level: 10, table_description: "Ki Strike (lawful)")
  FeatureLevel.create!(klass_feature_id: monk9.id, level: 16, table_description: "Ki Strike (adamantine)")

monk10 = KlassFeature.create!(klass_id: monk.id, name: "Ki Power", description: "At 4th level and every 2 levels thereafter, a monk can select one ki power. These powers allow the monk to perform amazing feats of mystical power and acrobatic prowess by expending points from his ki pool. Once a ki power is selected, it cannot be changed. Some ki powers require the monk to be of a specific level or higher before they can be chosen. Unless otherwise noted, a monk cannot select an individual ki power more than once.", has_klass_feature_options: true)
  FeatureLevel.create!(klass_feature_id: monk10.id, level: 4, table_description: "Ki Power")
  FeatureLevel.create!(klass_feature_id: monk10.id, level: 6, table_description: "Ki Power")
  FeatureLevel.create!(klass_feature_id: monk10.id, level: 8, table_description: "Ki Power")
  FeatureLevel.create!(klass_feature_id: monk10.id, level: 10, table_description: "Ki Power")
  FeatureLevel.create!(klass_feature_id: monk10.id, level: 12, table_description: "Ki Power")
  FeatureLevel.create!(klass_feature_id: monk10.id, level: 14, table_description: "Ki Power")
  FeatureLevel.create!(klass_feature_id: monk10.id, level: 16, table_description: "Ki Power")
  FeatureLevel.create!(klass_feature_id: monk10.id, level: 18, table_description: "Ki Power")

monk11 = KlassFeature.create!(klass_id: monk.id, name: "Still Mind", description: "At 4th level, a monk gains a +2 bonus on saving throws against enchantment spells and effects.")
  FeatureLevel.create!(klass_feature_id: monk11.id, level: 4, table_description: "Still Mind")

monk12 = KlassFeature.create!(klass_id: monk.id, name: "Purity of Body", description: "At 5th level, a monk gains immunity to all diseases, including supernatural and magical diseases.")
  FeatureLevel.create!(klass_feature_id: monk12.id, level: 5, table_description: "Purity of Body")

monk13 = KlassFeature.create!(klass_id: monk.id, name: "Style Strike", description: "At 5th level, a monk can learn one type of style strike. Whenever he makes a flurry of blows, he can designate one of his unarmed strikes as a style strike. This attack is resolved as normal, but it has an additional effect depending on the type of strike chosen. At 9th level, and every 4 levels thereafter, a monk learns an additional style strike. He must choose which style strike to apply before the attack roll is made. At 15th level, he can designate up to two of his unarmed strikes each round as a style strike, and each one can be a different type.", has_klass_feature_options: true)
  FeatureLevel.create!(klass_feature_id: monk13.id, level: 5, table_description: "Style Strike (1/round)")
  FeatureLevel.create!(klass_feature_id: monk13.id, level: 9, table_description: "Style Strike")
  FeatureLevel.create!(klass_feature_id: monk13.id, level: 13, table_description: "Style Strike")
  FeatureLevel.create!(klass_feature_id: monk13.id, level: 15, table_description: "Style Strike (1/round)")
  FeatureLevel.create!(klass_feature_id: monk13.id, level: 17, table_description: "Style Strike")

monk14 = KlassFeature.create!(klass_id: monk.id, name: "Improved Evasion", description: "At 9th level, a monk’s evasion ability improves. He still takes no damage on successful Reflex saving throws against attacks, but henceforth he takes only half damage on failed saves. A helpless monk does not gain the benefit of improved evasion.")
  FeatureLevel.create!(klass_feature_id: monk14.id, level: 9, table_description: "Improved Evasion")

monk15 = KlassFeature.create!(klass_id: monk.id, name: "Tongue of the Sun and Moon", description: "At 13th level, a monk can understand and speak with any living creature, as if under a permanent tongues effect.")
  FeatureLevel.create!(klass_feature_id: monk15.id, level: 13, table_description: "Tongue of the Sun and Moon")

monk16 = KlassFeature.create!(klass_id: monk.id, name: "Timeless Body", description: "At 17th level, a monk no longer takes penalties to his ability scores for aging and cannot be magically aged. Any such penalties that he has already taken, however, remain in place. Age bonuses still accrue, and the monk still dies of old age when his time is up.")
  FeatureLevel.create!(klass_feature_id: monk16.id, level: 17, table_description: "Timeless Body")

monk17 = KlassFeature.create!(klass_id: monk.id, name: "Flawless Mind", description: "At 19th level, a monk gains total control over his mental faculties. Whenever he attempts a Will save, he can roll twice and take the better result. If he fails a Will saving throw against a spell or effect that has a duration longer than 1 hour, the monk can attempt a new saving throw at the end of each hour to end the effect.")
  FeatureLevel.create!(klass_feature_id: monk17.id, level: 19, table_description: "Flawless Mind")

monk18 = KlassFeature.create!(klass_id: monk.id, name: "Perfect Self", description: "At 20th level, a monk becomes a magical creature. He is forevermore treated as an outsider rather than a humanoid (or whatever his original creature type was) for the purpose of spells and magical effects. Additionally, the monk gains damage reduction 10/chaotic, which allows him to ignore the first 10 points of damage from any attack made by a nonchaotic weapon. Unlike other outsiders, the monk can still be brought back from the dead as if he were a member of his previous creature type. Finally, the monk gains the ability to enter a state of perfect calm. During this time, the monk can take no actions, but he does regain ki at the rate of 1 point per 10 minutes spent at calm. He cannot use this ability to gain an amount of ki in excess of his maximum.")
  FeatureLevel.create!(klass_feature_id: monk18.id, level: 20, table_description: "Perfect Self")

print "Monk features created! \r"


# ///////////////////////////////////////////////////////
# <-*-*-----*-*-*- Class Feature Options!-*-*-*-----*-*->
# ///////////////////////////////////////////////////////

FeatureOption.create!(name: "Feather Balance", klass_feature_id: monk10.id, level_available: 4, description: "A monk with this ability can spend 1 ki point as a swift action to achieve perfect balance. While this is active, the monk treats any Acrobatics attempt made to balance as if he had rolled a 20. This ability lasts for 1 minute.")

FeatureOption.create!(name: "Ki Range", klass_feature_id: monk10.id, level_available: 4, description: "A monk with this ability can spend 1 ki point as a swift action to increase the range increment of any thrown monk weapon by 20 feet. Apply this benefit before doubling the range increment with the Far Shot feat.")

FeatureOption.create!(name: "Qinggong Power", klass_feature_id: monk10.id, level_available: 4, description: "A monk with this power selects any of the qinggong monk ki powers for which he qualifies based on his monk level. A monk can select this ability multiple times. Each time, he must select a different qinggong monk ki power.")

FeatureOption.create!(name: "Sudden Speed", klass_feature_id: monk10.id, level_available: 4, description: "A monk with this ki power can spend 1 point from his ki pool as a swift action to grant himself a sudden burst of speed. This increases the monk’s base land speed by 30 feet for 1 minute.")


# //////////////////////////////////////////////////
# <-*-*-----*-*-*- Class Archetypes!-*-*-*-----*-*->
# //////////////////////////////////////////////////

zen_archer = KlassArchetype.create!(klass_id: monk.id, name: "Zen Archer", source_id: advanced_players_guide.id, description: "Some monks seek to become one with another weapon entirely—the bow. The zen archer takes a weapon most other monks eschew and seeks perfection in the pull of a taut bowstring, the flex of a bow’s limbs, and the flight of an arrow fired true.")

  zen_archer1 = KlassArchetypeFeature.create!(name: "Weapon and Armor Proficiency", klass_archetype_id: zen_archer.id, description: "Zen archers are proficient with longbows, shortbows, composite longbows, and composite shortbows in addition to their normal weapon proficiencies.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: zen_archer1.id, level: 1, table_description: "")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: monk1.id, klass_archetype_feature_id: zen_archer1.id, replace_or_alter: "alter")

  zen_archer2 = KlassArchetypeFeature.create!(name: "Flurry of Blows", klass_archetype_id: zen_archer.id, description: "Starting at 1st level, a zen archer can make a flurry of blows as a full-attack action, but only when using a bow (even though it is a ranged weapon). He may not make a flurry of blows with his unarmed attacks or any other weapons. A zen archer does not apply his Strength bonus on damage rolls made with flurry of blows unless he is using a composite bow with a Strength rating.

  A zen archer’s flurry of blows otherwise functions as normal for a monk of his level.

  A zen archer cannot use Rapid Shot or Manyshot when making a flurry of blows with his bow.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: zen_archer2.id, level: 1, table_description: "")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: monk4.id, klass_archetype_feature_id: zen_archer2.id, replace_or_alter: "alter")

  zen_archer3 = KlassArchetypeFeature.create!(name: "Bonus Feats", klass_archetype_id: zen_archer.id, description: "At 1st level, 2nd level, and every 4 levels thereafter, a zen archer monk can select a bonus feat. A zen archer’s bonus feats must be taken from the following list: Combat Reflexes, Deflect Arrows, Dodge, Far Shot, Point-Blank Shot, Precise Shot, and Rapid Shot.

  At 6th level, the following feats are added to the list: Focused Shot*, Improved Precise Shot, Manyshot, Mobility, and Parting Shot*.

  At 10th level, the following feats are added to the list: Improved Critical, Pinpoint Targeting, Shot on the Run, and Snatch Arrows.

  A monk need not have any of the prerequisites normally required for these feats to select them.

  These feats replace the monk’s normal bonus feats.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: zen_archer3.id, level: 1, table_description: "Bonus Feat")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: zen_archer3.id, level: 2, table_description: "Bonus Feat")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: zen_archer3.id, level: 6, table_description: "Bonus Feat")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: zen_archer3.id, level: 10, table_description: "Bonus Feat")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: zen_archer3.id, level: 14, table_description: "Bonus Feat")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: zen_archer3.id, level: 18, table_description: "Bonus Feat")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: monk3.id, klass_archetype_feature_id: zen_archer3.id, replace_or_alter: "replace")

  zen_archer4 = KlassArchetypeFeature.create!(name: "Perfect Strike", klass_archetype_id: zen_archer.id, description: "At 1st level, a zen archer gains Perfect Strike as a bonus feat, even if he does not meet the prerequisites. A zen archer can use Perfect Strike with any bow. At 10th level, the monk can roll his attack roll three times and take the highest result. If one of these rolls is a critical threat, the monk must choose one of his other two rolls to use as his confirmation roll.

  This ability replaces stunning fist.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: zen_archer4.id, level: 1, table_description: "Perfect Strike")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: monk5.id, klass_archetype_feature_id: zen_archer4.id, replace_or_alter: "replace")

  zen_archer5 = KlassArchetypeFeature.create!(name: "Way of the Bow", klass_archetype_id: zen_archer.id, description: "At 2nd level, a zen archer gains Weapon Focus as a bonus feat with one type of bow.

  At 6th level, the monk gains Weapon Specialization with the same weapon as a bonus feat, even if he does not meet the prerequisites.

  This ability replaces evasion.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: zen_archer5.id, level: 2, table_description: "Way of the Bow")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: zen_archer5.id, level: 6, table_description: "Way of the Bow")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: monk7.id, klass_archetype_feature_id: zen_archer5.id, replace_or_alter: "replace")

  zen_archer6 = KlassArchetypeFeature.create!(name: "Zen Archery", klass_archetype_id: zen_archer.id, description: "At 3rd level, a zen archer may use his Wisdom modifier instead of his Dexterity modifier on ranged attack rolls when using a bow.

  This ability replaces the ki power normally gained at 4th level.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: zen_archer6.id, level: 3, table_description: "Zen Archery")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: monk10.id, klass_archetype_feature_id: zen_archer6.id, replace_or_alter: "replace", affects_specific_level: 4)

  zen_archer7 = KlassArchetypeFeature.create!(name: "Point Blank Master", klass_archetype_id: zen_archer.id, description: "At 3rd level, a zen archer gains Point Blank Master* as a bonus feat, even if he does not meet the prerequisites.

  This ability replaces still mind.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: zen_archer7.id, level: 3, table_description: "Point Blank Master")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: monk11.id, klass_archetype_feature_id: zen_archer7.id, replace_or_alter: "replace")

  zen_archer8 = KlassArchetypeFeature.create!(name: "Ki Pool", klass_archetype_id: zen_archer.id, description: "At 3rd level, in addition to the normal abilities of his ki pool, a zen archer may spend 1 point from his ki pool to increase the range increment for his bow by 50 feet for 1 round.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: zen_archer8.id, level: 3, table_description: "")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: monk9.id, klass_archetype_feature_id: zen_archer8.id, replace_or_alter: "alter")

  zen_archer9 = KlassArchetypeFeature.create!(name: "Ki Arrows", klass_archetype_id: zen_archer.id, description: "At 5th level, a zen archer may spend 1 point from his ki pool as a swift action to change the damage dice of arrows he shoots to that of his unarmed strikes. This lasts until the start of his next turn. For example, a Medium zen archer’s short bow normally deals 1d6 damage; using this ability, his arrows deal 1d8 damage until the start of his next turn.

  This ability replaces purity of body.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: zen_archer9.id, level: 5, table_description: "Ki Arrows")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: monk12.id, klass_archetype_feature_id: zen_archer9.id, replace_or_alter: "replace")

  zen_archer10 = KlassArchetypeFeature.create!(name: "Reflexive Shot", klass_archetype_id: zen_archer.id, description: "At 9th level, a zen archer can make attacks of opportunity with arrows from his bow. The monk still threatens squares he could reach with unarmed strikes, and can still only make one attack of opportunity per round (unless he has Combat Reflexes).

  This ability replaces improved evasion.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: zen_archer10.id, level: 9, table_description: "Reflexive Shot")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: monk14.id, klass_archetype_feature_id: zen_archer10.id, replace_or_alter: "replace")

  zen_archer11 = KlassArchetypeFeature.create!(name: "Trick Shot", klass_archetype_id: zen_archer.id, description: "At 11th level, a zen archer may hit targets that he might otherwise miss. By spending 1 point from his ki pool as a swift action, the zen archer can ignore concealment. By spending 2 points, he can ignore total concealment or cover. By spending 3 points, he can ignore total cover, even firing arrows around corners. The arrow must still be able to reach the target; a target inside a closed building with no open doors or windows cannot be attacked. These effects last for 1 round.

  This ability replaces the ki power normally gained at 4th level.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: zen_archer11.id, level: 11, table_description: "Trick Shot")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: monk10.id, klass_archetype_feature_id: zen_archer11.id, replace_or_alter: "replace", affects_specific_level: 12)

  zen_archer12 = KlassArchetypeFeature.create!(name: "Ki Focus Bow", klass_archetype_id: zen_archer.id, description: "At 17th level, as long as he has at least 1 point of ki in his ki pool, a zen archer may treat arrows fired from his bow as if they were ki focus weapons, allowing him to use his special ki attacks as if his arrows were unarmed attacks.

  This ability replaces tongue of the sun and moon.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: zen_archer12.id, level: 17, table_description: "Ki Focus Bow")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: monk15.id, klass_archetype_feature_id: zen_archer12.id, replace_or_alter: "replace")

  print "Zen Archer Archetype created! \r"

  # IDENTIFIER = KlassArchetypeFeature.create!(name: "NAME", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "NAME")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")

  # IDENTIFIER = KlassArchetypeFeature.create!(name: "NAME", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "NAME")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")

  # IDENTIFIER = KlassArchetypeFeature.create!(name: "NAME", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "NAME")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")

  # IDENTIFIER = KlassArchetypeFeature.create!(name: "NAME", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "NAME")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")

  # IDENTIFIER = KlassArchetypeFeature.create!(name: "NAME", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "NAME")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")

  # IDENTIFIER = KlassArchetypeFeature.create!(name: "NAME", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "NAME")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")

puts "Monk Created!"
