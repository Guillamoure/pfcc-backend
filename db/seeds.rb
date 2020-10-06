# /////////////////////////////////////////
# <-*-*-----*-*-*- Sources-*-*-*-----*-*->
# /////////////////////////////////////////

core_rulebook = Source.create!(title: "Core Rulebook", abbreviation: "CR", code: "PZO1110")
bestiary_1 = Source.create!(title: "Bestiary 1", abbreviation: "B1", code: "PZO1112")
advanced_players_guide = Source.create!(title: "Advanced Player's Guide", abbreviation: "APG", code: "PZO1115")
bestiary_2 = Source.create!(title: "Bestiary 2", abbreviation: "B2", code: "PZO1116")
bestiary_3 = Source.create!(title: "Bestiary 3", abbreviation: "B3", code: "PZO1120")
advanced_race_guide = Source.create!(title: "Advanced Race Guide", abbreviation: "ARG", code: "PZO1121")
bestiary_4 = Source.create!(title: "Bestiary 4", abbreviation: "B4", code: "PZO1127")
advanced_class_guide = Source.create!(title: "Advanced Class Guide", abbreviation: "ACG", code: "PZO1129")
ultimate_intrigue = Source.create!(title: "Ultimate Intrigue", abbreviation: "UI", code: "PZO1134")
ultimate_wilderness = Source.create!(title: "Ultimate Wilderness", abbreviation: "UW", code: "PZO1140")
custom = Source.create!(title: "Custom", abbreviation: "Custom", code: nil)

# /////////////////////////////////////////
# <-*-*-----*-*-*- Actions-*-*-*-----*-*->
# /////////////////////////////////////////

standard = Action.create!(name: "Standard Action")
full_round = Action.create!(name: "Full-Round Action")
move = Action.create!(name: "Move Action")
swift = Action.create!(name: "Swift Action")
free = Action.create!(name: "Free Action")
immediate = Action.create!(name: "Immediate Action")
ten = Action.create!(name: "Ten Minutes")
one_minute = Action.create!(name: "One Minute")
three_rounds = Action.create!(name: "Three Rounds")


# /////////////////////////////////////////
# <-*-*-----*-*-*- Skillsets!-*-*-*-----*-*->
# /////////////////////////////////////////
cr = Skillset.create!(name: "Core Rulebook")
dmc = Skillset.create!(name: "DMCustom")


# /////////////////////////////////////////
# <-*-*-----*-*-*- Skills!-*-*-*-----*-*->
# /////////////////////////////////////////

acrobatics = Skill.create!(name: "Acrobatics", ability_score: "Dexterity", untrained: true, description: "")
appraise = Skill.create!(name: "Appraise", ability_score: "Intelligence", untrained: true, description: "")
bluff = Skill.create!(name: "Bluff", ability_score: "Charisma", untrained: true, description: "")
climb = Skill.create!(name: "Climb", ability_score: "Strength", untrained: true, description: "")
craft = Skill.create!(name: "Craft", ability_score: "Intelligence", untrained: true, description: "", customizable: true)
diplomacy = Skill.create!(name: "Diplomacy", ability_score: "Charisma", untrained: true, description: "")
disable_device = Skill.create!(name: "Disable Device", ability_score: "Dexterity", untrained: false, description: "")
disguise = Skill.create!(name: "Disguise", ability_score: "Charisma", untrained: true, description: "")
escape_artist = Skill.create!(name: "Escape Artist", ability_score: "Dexterity", untrained: true, description: "")
fly = Skill.create!(name: "Fly", ability_score: "Dexterity", untrained: true, description: "")
handle_animal = Skill.create!(name: "Handle Animal", ability_score: "Charisma", untrained: false, description: "")
heal = Skill.create!(name: "Heal", ability_score: "Wisdom", untrained: true, description: "")
intimidate = Skill.create!(name: "Intimidate", ability_score: "Charisma", untrained: true, description: "")
knowledge_arcana = Skill.create!(name: "Knowledge (arcana)", ability_score: "Intelligence", untrained: false, description: "", knowledge: true)
knowledge_dungeoneering = Skill.create!(name: "Knowledge (dungeoneering)", ability_score: "Intelligence", untrained: false, description: "", knowledge: true)
knowledge_engineering = Skill.create!(name: "Knowledge (engineering)", ability_score: "Intelligence", untrained: false, description: "", knowledge: true)
knowledge_geography = Skill.create!(name: "Knowledge (geography)", ability_score: "Intelligence", untrained: false, description: "", knowledge: true)
knowledge_history = Skill.create!(name: "Knowledge (history)", ability_score: "Intelligence", untrained: false, description: "", knowledge: true)
knowledge_local = Skill.create!(name: "Knowledge (local)", ability_score: "Intelligence", untrained: false, description: "", knowledge: true)
knowledge_nature = Skill.create!(name: "Knowledge (nature)", ability_score: "Intelligence", untrained: false, description: "", knowledge: true)
knowledge_nobility = Skill.create!(name: "Knowledge (nobility)", ability_score: "Intelligence", untrained: false, description: "", knowledge: true)
knowledge_planes = Skill.create!(name: "Knowledge (planes)", ability_score: "Intelligence", untrained: false, description: "", knowledge: true)
knowledge_religion = Skill.create!(name: "Knowledge (religion)", ability_score: "Intelligence", untrained: false, description: "", knowledge: true)
linguistics = Skill.create!(name: "Linguistics", ability_score: "Intelligence", untrained: false, description: "")
perception = Skill.create!(name: "Perception", ability_score: "Wisdom", untrained: true, description: "")
perform = Skill.create!(name: "Perform", ability_score: "Charisma", untrained: true, description: "", customizable: true)
profession = Skill.create!(name: "Profession", ability_score: "Wisdom", untrained: false, description: "", customizable: true)
ride = Skill.create!(name: "Ride", ability_score: "Dexterity", untrained: true, description: "")
sense_motive = Skill.create!(name: "Sense Motive", ability_score: "Wisdom", untrained: true, description: "")
sleight_of_hand = Skill.create!(name: "Sleight of Hand", ability_score: "Dexterity", untrained: false, description: "")
spellcraft = Skill.create!(name: "Spellcraft", ability_score: "Intelligence", untrained: false, description: "")
stealth = Skill.create!(name: "Stealth", ability_score: "Dexterity", untrained: true, description: "")
survival = Skill.create!(name: "Survival", ability_score: "Wisdom", untrained: true, description: "")
swim = Skill.create!(name: "Swim", ability_score: "Strength", untrained: true, description: "")
use_magic_device = Skill.create!(name: "Use Magic Device", ability_score: "Charisma", untrained: false, description: "")
# rand = Skill.create!(name: "", ability_score: "", untrained: true, description: "")

finesse_unchained = Skill.create!(name: "Finesse", ability_score: "Dexterity", untrained: true, description: "")
nature_unchained = Skill.create!(name: "Nature", ability_score: "Intelligence", untrained: true, description: "", knowledge: true)
investigation = Skill.create!(name: "Investigation", ability_score: "Intelligence", untrained: true, description: "")
religion_unchained = Skill.create!(name: "Religion", ability_score: "Intelligence", untrained: true, description: "", knowledge: true)
society_unchained = Skill.create!(name: "Society", ability_score: "Intelligence", untrained: true, description: "", knowledge: true)
spellcraft_unchained = Skill.create!(name: "Spellcraft", ability_score: "Intelligence", untrained: true, description: "", knowledge: true)
# rand = Skill.create!(name: "", ability_score: "", untrained: true, description: "")

puts "Skills Created!"

# /////////////////////////////////////////////////
# <-*-*-----*-*-*- Skillset Skills!-*-*-*-----*-*->
# /////////////////////////////////////////////////

SkillsetSkill.create!(skillset_id: cr.id, skill_id: acrobatics.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: appraise.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: bluff.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: climb.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: craft.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: diplomacy.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: disable_device.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: disguise.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: escape_artist.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: fly.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: handle_animal.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: intimidate.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: knowledge_arcana.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: knowledge_dungeoneering.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: knowledge_engineering.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: knowledge_geography.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: knowledge_history.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: knowledge_local.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: knowledge_nature.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: knowledge_nobility.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: knowledge_planes.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: knowledge_religion.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: linguistics.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: perception.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: perform.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: profession.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: ride.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: sense_motive.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: sleight_of_hand.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: spellcraft.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: stealth.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: survival.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: swim.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: use_magic_device.id)


SkillsetSkill.create!(skillset_id: dmc.id, skill_id: acrobatics.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: bluff.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: climb.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: craft.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: diplomacy.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: disguise.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: finesse_unchained.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: handle_animal.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: heal.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: intimidate.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: investigation.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: linguistics.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: nature_unchained.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: perception.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: perform.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: profession.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: religion_unchained.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: sense_motive.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: society_unchained.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: spellcraft_unchained.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: stealth.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: survival.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: swim.id)


# //////////////////////////////////////////////////
# <-*-*-----*-*-*- Weapon Group!-*-*-*-----*-*->
# //////////////////////////////////////////////////

axes = WeaponGroup.create!(name: 'Axes')
close = WeaponGroup.create!(name: 'Close')
crossbows = WeaponGroup.create!(name: 'Crossbows')
double_group = WeaponGroup.create!(name: 'Double')
flails = WeaponGroup.create!(name: 'Flails')
hammers = WeaponGroup.create!(name: 'Hammers')
light_blades = WeaponGroup.create!(name: 'Light Blades')
monk_group = WeaponGroup.create!(name: 'Monk')
spears = WeaponGroup.create!(name: 'Spears')
thrown = WeaponGroup.create!(name: 'Thrown')
tribal = WeaponGroup.create!(name: 'Tribal')
heavy_blades = WeaponGroup.create!(name: 'Heavy Blades')
polearms = WeaponGroup.create!(name: 'Polearms')
bows = WeaponGroup.create!(name: 'Bows')

# //////////////////////////////////////////////////
# <-*-*-----*-*-*- Weapon Qualities!-*-*-*-----*-*->
# //////////////////////////////////////////////////

brace = WeaponQuality.create!(name: 'brace', description: 'If you use a readied action to set a brace weapon against a charge, you deal double damage on a successful hit against a charging creature.')
double_quality = WeaponQuality.create!(name: 'double', description: 'You can use a double weapon to fight as if fighting with two weapons, but if you do, you incur all the normal attack penalties associated with fighting with two weapons, just as if you were using a one-handed weapon and a light weapon. You can choose to wield one end of a double weapon two-handed, but it cannot be used as a double weapon when wielded in this way—only one end of the weapon can be used in any given round.')
monk_quality = WeaponQuality.create!(name: 'monk', description: 'A monk weapon can be used by a monk to perform a flurry of blows.')
nonlethal = WeaponQuality.create!(name: 'nonlethal', description: 'These weapons deal nonlethal damage.')
reach = WeaponQuality.create!(name: 'reach', description: 'You use a reach weapon to strike opponents 10 feet away, but you can’t use it against an adjacent foe.')
trip = WeaponQuality.create!(name: 'trip', description: 'You can use a trip weapon to make trip attacks. If you are tripped during your own trip attempt, you can drop the weapon to avoid being tripped.')
disarm = WeaponQuality.create!(name: 'disarm', description: 'When you use a disarm weapon, you get a +2 bonus on Combat Maneuver Checks to disarm an enemy.')
finesse = WeaponQuality.create!(name: 'Finesse', description: 'You can use the Weapon Finesse feat to apply your Dexterity modifier instead of your Strength modifier to attack rolls with a rapier sized for you, even though it isn’t a light weapon.')


# /////////////////////////////////////////
# <-*-*-----*-*-*- Weapons!-*-*-*-----*-*->
# /////////////////////////////////////////

unarmed = Weapon.create!(name: 'Unarmed', category: 'Unarmed', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 0, num_of_dice: 1, damage_dice: 3, range: 0, thrown: false, weight: 0, damage_type: 'Bludgeoning', description: 'An unarmed strike is always considered a light weapon. Therefore, you can use the Weapon Finesse feat to apply your Dexterity modifier instead of your Strength modifier to attack rolls with an unarmed strike. Unarmed strikes do not count as natural weapons. The damage from an unarmed strike is considered weapon damage for the purposes of effects that give you a bonus on weapon damage rolls.

A monk or any character with the Improved Unarmed Strike feat can deal lethal or nonlethal damage with unarmed strikes, at his discretion.', source_id: core_rulebook.id)
  WeaponWeaponQuality.create!(weapon_id: unarmed.id, weapon_quality_id: nonlethal.id)
  WeaponWeaponGroup.create!(weapon_id: unarmed.id, weapon_group_id: close.id)

gauntlet = Weapon.create!(name: 'Gauntlet', category: 'Unarmed', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 2, num_of_dice: 1, damage_dice: 3, range: 0, thrown: false, weight: 1, damage_type: 'Bludgeoning', description: 'This metal glove lets you deal lethal damage rather than nonlethal damage with unarmed strikes. A strike with a gauntlet is otherwise considered an unarmed attack. Your opponent cannot use a disarm action to disarm you of gauntlets.

The cost and weight given are for a single gauntlet. Medium and heavy armors (except breastplate) come with gauntlets.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: gauntlet.id, weapon_group_id: close.id)

dagger = Weapon.create!(name: 'Dagger', category: 'Light', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 2, num_of_dice: 1, damage_dice: 4, range: 10, thrown: true, weight: 1, damage_type: 'Piercing or Slashing', critical_range: 19, description: 'A dagger has a blade that is about 1 foot in length.

You get a +2 bonus on Sleight of Hand skill checks made to conceal a dagger on your body.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: dagger.id, weapon_group_id: light_blades.id)
  WeaponWeaponGroup.create!(weapon_id: dagger.id, weapon_group_id: thrown.id)
  WeaponWeaponGroup.create!(weapon_id: dagger.id, weapon_group_id: tribal.id)

punching_dagger = Weapon.create!(name: 'Punching Dagger', category: 'Light', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 2, num_of_dice: 1, damage_dice: 4, critical: 3, range: 0, thrown: false, weight: 1, damage_type: 'Piercing', description: 'A punching dagger’s blade is attached to a horizontal handle that projects out from the fist when held.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: punching_dagger.id, weapon_group_id: close.id)

spiked_gauntlet = Weapon.create!(name: 'Spiked Gauntlet', category: 'Light', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 5, num_of_dice: 1, damage_dice: 4, range: 10, thrown: false, weight: 1, damage_type: 'Piercing', description: 'An attack with a spiked gauntlet is considered an armed attack. Your opponent cannot use a disarm action to disarm you of spiked gauntlets.

Note: The cost and weight given are for a single gauntlet.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: spiked_gauntlet.id, weapon_group_id: close.id)

light_mace = Weapon.create!(name: 'Light Mace', category: 'Light', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 5, num_of_dice: 1, damage_dice: 6, range: 0, thrown: false, weight: 4, damage_type: 'Bludgeoning', description: 'A light mace is made up of an ornate metal head attached to a simple wooden or metal shaft.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: light_mace.id, weapon_group_id: hammers.id)

sickle = Weapon.create!(name: 'Sickle', category: 'Light', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 6, num_of_dice: 1, damage_dice: 6, range: 0, thrown: false, weight: 2, damage_type: 'Slashing', description: '', source_id: core_rulebook.id)
  WeaponWeaponQuality.create!(weapon_id: sickle.id, weapon_quality_id: trip.id)
  WeaponWeaponGroup.create!(weapon_id: sickle.id, weapon_group_id: light_blades.id)

club = Weapon.create!(name: 'Club', category: 'One-Handed', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 0, num_of_dice: 1, damage_dice: 6, range: 10, thrown: true, weight: 3, damage_type: 'Bludgeoning', description: 'This weapon is usually just a shaped piece of wood, sometimes with a few nails or studs embedded in it.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: club.id, weapon_group_id: hammers.id)
  WeaponWeaponGroup.create!(weapon_id: club.id, weapon_group_id: tribal.id)

heavy_mace = Weapon.create!(name: 'Heavy Mace', category: 'One-Handed', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 12, num_of_dice: 1, damage_dice: 8, range: 0, thrown: false, weight: 8, damage_type: 'Bludgeoning', description: 'A heavy mace has a larger head and a longer handle than a normal (light) mace.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: heavy_mace.id, weapon_group_id: hammers.id)

morningstar = Weapon.create!(name: 'Morningstar', category: 'One-Handed', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 8, num_of_dice: 1, damage_dice: 8, range: 0, thrown: false, weight: 6, damage_type: 'Blugeoning and Piercing', description: 'A morningstar is a spiked metal ball, affixed to the top of a long handle.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: morningstar.id, weapon_group_id: flails.id)

shortspear = Weapon.create!(name: 'Shortspear', category: 'One-Handed', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 1, num_of_dice: 1, damage_dice: 6, range: 20, thrown: true, weight: 3, damage_type: 'Piercing', description: 'A shortspear is about 3 feet in length, making it a suitable thrown weapon.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: shortspear.id, weapon_group_id: spears.id)
  WeaponWeaponGroup.create!(weapon_id: shortspear.id, weapon_group_id: thrown.id)
  WeaponWeaponGroup.create!(weapon_id: shortspear.id, weapon_group_id: tribal.id)

longspear = Weapon.create!(name: 'Longspear', category: 'Two-Handed', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 5, num_of_dice: 1, damage_dice: 8, critical: 3, range: 0, thrown: false, weight: 9, damage_type: 'Piercing', description: 'A longspear is about 8 feet in length.', source_id: core_rulebook.id)
  WeaponWeaponQuality.create!(weapon_id: longspear.id, weapon_quality_id: brace.id)
  WeaponWeaponQuality.create!(weapon_id: longspear.id, weapon_quality_id: reach.id)
  WeaponWeaponGroup.create!(weapon_id: longspear.id, weapon_group_id: spears.id)

quarterstaff = Weapon.create!(name: 'Quarterstaff', category: 'Two-Handed', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 0, num_of_dice: 1, damage_dice: 6, range: 0, thrown: false, weight: 4, damage_type: 'Bludgeoning', double_weapon: true, double_num_of_dice: 1, double_damage_dice: 6, double_damage_type: 'Bludgeoning', description: 'A quarterstaff is a simple piece of wood, about 5 feet in length.', source_id: core_rulebook.id)
  WeaponWeaponQuality.create!(weapon_id: quarterstaff.id, weapon_quality_id: monk_quality.id)
  WeaponWeaponQuality.create!(weapon_id: quarterstaff.id, weapon_quality_id: double_quality.id)
  WeaponWeaponGroup.create!(weapon_id: quarterstaff.id, weapon_group_id: double_group.id)
  WeaponWeaponGroup.create!(weapon_id: quarterstaff.id, weapon_group_id: monk_group.id)

spear = Weapon.create!(name: 'Spear', category: 'Two-Handed', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 2, num_of_dice: 1, damage_dice: 8, range: 20, critical: 3, thrown: true, weight: 6, damage_type: 'Piercing', description: 'A spear is 5 feet in length and can be thrown.', source_id: core_rulebook.id)
  WeaponWeaponQuality.create!(weapon_id: spear.id, weapon_quality_id: brace.id)
  WeaponWeaponGroup.create!(weapon_id: spear.id, weapon_group_id: spears.id)
  WeaponWeaponGroup.create!(weapon_id: spear.id, weapon_group_id: tribal.id)
  WeaponWeaponGroup.create!(weapon_id: spear.id, weapon_group_id: thrown.id)

blowgun = Weapon.create!(name: 'Blowgun', category: 'Ranged', proficiency: 'Simple', weapon_type: 'Range', price_in_gp: 2, num_of_dice: 1, damage_dice: 2, range: 20, thrown: false, weight: 1, damage_type: 'Piercing', description: 'Blowguns are generally used to deliver debilitating (but rarely fatal) poisons from a distance. They are nearly silent when fired.', ammunition_type: 'blowgun', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: blowgun.id, weapon_group_id: thrown.id)
  WeaponHand.create!(weapon_id: blowgun.id, hands: "Two")

heavy_crossbow = Weapon.create!(name: 'Heavy Crossbow', category: 'Ranged', proficiency: 'Simple', weapon_type: 'Range', price_in_gp: 50, num_of_dice: 1, damage_dice: 10, range: 120, critical_range: 19, thrown: false, weight: 8, damage_type: 'Piercing', description: 'Load: Loading a heavy crossbow is a full-round action that provokes attacks of opportunity.

You draw a heavy crossbow back by turning a small winch. Normally, operating a heavy crossbow requires two hands. However, you can shoot, but not load, a heavy crossbow with one hand at a –4 penalty on attack rolls. You can shoot a heavy crossbow with each hand, but you take a penalty on attack rolls as if attacking with two one-handed weapons. This penalty is cumulative with the penalty for one-handed firing.', ammunition_type: 'crossbow', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: heavy_crossbow.id, weapon_group_id: crossbows.id)
  heavy_crossbow_feature1 = Feature.create!(name: 'Load', action_id: full_round.id, attack_of_opportunity: true)
    WeaponFeature.create!(weapon_id: heavy_crossbow.id, feature_id: heavy_crossbow_feature1.id)
    FeatureLoading.create(feature_id: heavy_crossbow_feature1.id, capacity: 1, must_reload_after_use: true)
  WeaponHand.create!(weapon_id: heavy_crossbow.id, hands: "Two")
  WeaponHand.create!(weapon_id: heavy_crossbow.id, hands: "One", bonus: -4)

light_crossbow = Weapon.create!(name: 'Light Crossbow', category: 'Ranged', proficiency: 'Simple', weapon_type: 'Range', price_in_gp: 35, num_of_dice: 1, damage_dice: 8, range: 80, critical_range: 19, thrown: false, weight: 4, damage_type: 'Piercing', description: 'Load: Loading a light crossbow is a move action that provokes attacks of opportunity.

You draw a light crossbow back by pulling a lever. Normally, operating a light crossbow requires two hands. However, you can shoot, but not load, a light crossbow with one hand at a –2 penalty on attack rolls. You can shoot a light crossbow with each hand, but you take a penalty on attack rolls as if attacking with two light weapons. This penalty is cumulative with the penalty for one-handed firing.', ammunition_type: 'crossbow', source_id: core_rulebook.id)
  WeaponWeaponQuality.create!(weapon_id: light_crossbow.id, weapon_quality_id: crossbows.id)
  light_crossbow_feature1 = Feature.create!(name: 'Load', action_id: move.id, attack_of_opportunity: true)
    WeaponFeature.create!(weapon_id: light_crossbow.id, feature_id: light_crossbow_feature1.id)
    FeatureLoading.create(feature_id: light_crossbow_feature1.id, capacity: 1, must_reload_after_use: true)
  WeaponHand.create!(weapon_id: light_crossbow.id, hands: "Two")
  WeaponHand.create!(weapon_id: light_crossbow.id, hands: "One", bonus: -2)

dart = Weapon.create!(name: 'Dart', category: 'Ranged', proficiency: 'Simple', weapon_type: 'Range', price_in_gp: 0.5, num_of_dice: 1, damage_dice: 4, range: 20, thrown: true, weight: 0.5, damage_type: 'Piercing', description: 'Darts are missile weapons, designed to fly such that a sharp, often weighted point will strike first. They can be distinguished from javelins by fletching (i.e., feathers on the tail) and a shaft that is shorter and/or more flexible, and from arrows by the fact that they are not of the right length to use with a normal bow.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: dart.id, weapon_group_id: thrown.id)
  WeaponHand.create!(weapon_id: dart.id, hands: "One")

javelin = Weapon.create!(name: 'Javelin', category: 'Ranged', proficiency: 'Simple', weapon_type: 'Range', price_in_gp: 1, num_of_dice: 1, damage_dice: 6, range: 30, thrown: true, weight: 2, damage_type: 'Piercing', description: 'A javelin is a thin throwing spear.

Since a javelin is not designed for melee, you are treated as non-proficient with it and take a –4 penalty on attack rolls if you use a javelin as a melee weapon.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: javelin.id, weapon_group_id: spears.id)
  WeaponWeaponGroup.create!(weapon_id: javelin.id, weapon_group_id: thrown.id)
  WeaponHand.create!(weapon_id: javelin.id, hands: "One")

sling = Weapon.create!(name: 'Sling', category: 'Ranged', proficiency: 'Simple', weapon_type: 'Range', price_in_gp: 0, num_of_dice: 1, damage_dice: 4, range: 50, thrown: true, weight: 1, damage_type: 'Bludgeoning', description: 'A sling is little more than a leather cup attached to a pair of strings.

Your Strength modifier applies to damage rolls when you use a sling, just as it does for thrown weapons. You can fire, but not load, a sling with one hand.

Loading a sling is a move action that requires two hands and provokes attacks of opportunity.

You can hurl ordinary stones with a sling, but stones are not as dense or as round as bullets. Thus, such an attack deals damage as if the weapon were designed for a creature one size category smaller than you and you take a –1 penalty on attack rolls.', ammunition_type: 'sling', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: sling.id, weapon_group_id: thrown.id)
  sling_feature1 = Feature.create!(name: 'Load', action_id: move.id, attack_of_opportunity: true)
    WeaponFeature.create!(weapon_id: sling.id, feature_id: sling_feature1.id)
    FeatureLoading.create(feature_id: sling_feature1.id, capacity: 1, must_reload_after_use: true, wrong_ammo: true, wrong_ammo_attack_penalty: -1, wrong_ammo_size_decrease_steps: 1)
  WeaponHand.create!(weapon_id: sling.id, hands: "One")


crossbow_bolt = Weapon.create!(name: 'Crossbow Bolt', category: 'Ammunition', proficiency: 'Simple', weapon_type: 'Range', price_in_gp: 0.1, num_of_dice: 0, damage_dice: 0, range: 0, thrown: false, weight: 0.1, damage_type: '', description: 'Bolts come in a case or quiver that holds 10 bolts.

A crossbow bolt used as a melee weapon is treated as a light improvised weapon (–4 penalty on attack rolls) and deals damage as a dagger of its size (crit ×2).', ammunition: true, ammunition_type: 'crossbow', source_id: core_rulebook.id)

sling_bullet = Weapon.create!(name: 'Sling Bullet', category: 'Ammunition', proficiency: 'Simple', weapon_type: 'Range', price_in_gp: 0.01, num_of_dice: 0, damage_dice: 0, range: 0, thrown: false, weight: 0.5, damage_type: '', description: 'Bullets come in a leather pouch that holds 10 bullets.', ammunition: true, ammunition_type: 'sling', source_id: core_rulebook.id)

blowgun_dart = Weapon.create!(name: 'Blowgun Dart', category: 'Ammunition', proficiency: 'Simple', weapon_type: 'Range', price_in_gp: 0.05, num_of_dice: 0, damage_dice: 0, range: 0, thrown: false, weight: 0.1, damage_type: '', description: 'These light darts have tiny grooves behind the tips.

A character can apply poison to a blowgun dart without risk of poisoning himself.', ammunition: true, ammunition_type: 'blowgun', source_id: core_rulebook.id)

throwing_axe = Weapon.create!(name: 'Throwing Axe', category: 'Light', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 8, num_of_dice: 1, damage_dice: 6, range: 10, thrown: true, weight: 2, damage_type: 'Slashing', description: 'This is a small axe balanced for throwing.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: throwing_axe.id, weapon_group_id: axes.id)
  WeaponWeaponGroup.create!(weapon_id: throwing_axe.id, weapon_group_id: thrown.id)
  WeaponWeaponGroup.create!(weapon_id: throwing_axe.id, weapon_group_id: tribal.id)

light_hammer = Weapon.create!(name: 'Light Hammer', category: 'Light', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 1, num_of_dice: 1, damage_dice: 4, range: 20, thrown: true, weight: 2, damage_type: 'Bludgeoning', description: 'A lighter version of a warhammer, this weapon usually has a sleek metal head with one striking surface.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: light_hammer.id, weapon_group_id: hammers.id)
  WeaponWeaponGroup.create!(weapon_id: light_hammer.id, weapon_group_id: thrown.id)

handaxe = Weapon.create!(name: 'Handaxe', category: 'Light', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 6, num_of_dice: 1, damage_dice: 6, critical: 3, range: 0, thrown: false, weight: 3, damage_type: 'Slashing', description: 'This one-handed axe is short (roughly 1 foot long) and designed for use with one hand. Unlike throwing axes, it is not well balanced for a graceful tumbling motion, and is instead heavier at its head. Tomahawks, war hatchets, and other such names usually refer to hand axes.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: handaxe.id, weapon_group_id: axes.id)
  WeaponWeaponGroup.create!(weapon_id: handaxe.id, weapon_group_id: tribal.id)

kukri = Weapon.create!(name: 'Kukri', category: 'Light', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 8, num_of_dice: 1, damage_dice: 4, range: 0, critical_range: 18, thrown: false, weight: 2, damage_type: 'Slashing', description: 'A kukri is a curved blade, about 1 foot in length.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: kukri.id, weapon_group_id: light_blades.id)

light_pick = Weapon.create!(name: 'Light Pick', category: 'Light', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 4, num_of_dice: 1, damage_dice: 6, critical: 4, range: 0, thrown: false, weight: 3, damage_type: 'Piercing', description: 'This weapon, adapted from the pickaxe tool, has a head with a slightly curved, armorpiercing spike and a hammerlike counterweight.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: light_pick.id, weapon_group_id: axes.id)

sap = Weapon.create!(name: 'Sap', category: 'Light', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 1, num_of_dice: 1, damage_dice: 6, range: 0, thrown: false, weight: 2, damage_type: 'Bludgeoning', description: 'This weapon consists of a soft wrapping around a hard, dense core, typically a leather sheath around a lead rod. The head is wider than the handle and designed to spread out the force of the blow, making it less likely to draw blood or break bones.', source_id: core_rulebook.id)
  WeaponWeaponQuality.create!(weapon_id: sap.id, weapon_quality_id: nonlethal.id)
  WeaponWeaponGroup.create!(weapon_id: sap.id, weapon_group_id: close.id)

starknife = Weapon.create!(name: 'Starknife', category: 'Light', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 24, num_of_dice: 1, damage_dice: 4, critical: 3, range: 20, thrown: true, weight: 3, damage_type: 'Piercing', description: 'From a central metal ring, four tapering metal blades extend from this weapon like points on a compass rose. By gripping the crossbar that runs through the weapon’s open middle, a wielder can strike with it as a deadly melee weapon. Alternatively, by gripping it by the outer rim, a starknife’s light, aerodynamic design allows it to be thrown short distances in a manner similar to a chakram.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: starknife.id, weapon_group_id: light_blades.id)
  WeaponWeaponGroup.create!(weapon_id: starknife.id, weapon_group_id: thrown.id)

shortsword = Weapon.create!(name: 'Shortsword', category: 'Light', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 10, num_of_dice: 1, damage_dice: 6, critical_range: 19, range: 0, thrown: false, weight: 2, damage_type: 'Piercing', description: 'Short swords are some of the most common weapons found in any martial society, and thus designs are extremely varied, depending on the region and creator. Most are around 2 feet in length. Their blades can be curved or straight, single- or double-edged, and wide or narrow. Hilts may be ornate or simple, with crossguards, basket hilts, or no guard at all. Such weapons are often used on their own, but can also be paired as a matched set, or used in conjunction with a dagger or longer sword.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: shortsword.id, weapon_group_id: light_blades.id)

battleaxe = Weapon.create!(name: 'Battleaxe', category: 'One-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 10, num_of_dice: 1, damage_dice: 8, critical: 3, range: 0, thrown: false, weight: 6, damage_type: 'Slashing', description: 'The handle of this axe is long enough that you can wield it one-handed or two-handed. The head may have one blade or two, with blade shapes ranging from half-moons to squared edges like narrower versions of woodcutting axes. The wooden haft may be protected and strengthened with metal bands called langets.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: battleaxe.id, weapon_group_id: axes.id)

light_flail = Weapon.create!(name: 'Light Flail', category: 'One-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 8, num_of_dice: 1, damage_dice: 8, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 5, damage_type: 'Bludgeoning', source_id: core_rulebook.id, description: 'A light flail consists of a weighted striking end connected to a handle by a sturdy chain. Though often imagined as a ball, sometimes spiked like the head of a morningstar, the head of a light flail can actually take many different shapes, such as short bars. Military flails are sturdier evolutions of agricultural flails, which are used for threshing – beating stacks of grains to separate the useful grains from their husks.')
  WeaponWeaponQuality.create!(weapon_id: light_flail.id, weapon_quality_id: disarm.id)
  WeaponWeaponQuality.create!(weapon_id: light_flail.id, weapon_quality_id: trip.id)
  WeaponWeaponGroup.create!(weapon_id: light_flail.id, weapon_group_id: flails.id)

longsword = Weapon.create!(name: 'Longsword', category: 'One-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 15, num_of_dice: 1, damage_dice: 8, critical: 2, critical_range: 19, range: 0, thrown: false, weight: 4, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'This sword is about 3½ feet in length.')
  WeaponWeaponGroup.create!(weapon_id: longsword.id, weapon_group_id: heavy_blades.id)

heavy_pick = Weapon.create!(name: 'Heavy Pick', category: 'One-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 8, num_of_dice: 1, damage_dice: 6, critical: 4, critical_range: 20, range: 0, thrown: false, weight: 6, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'This variant of the light pick has a longer handle and can be used with one or two hands. It is a common, inexpensive weapon for mounted soldiers since it can be used effectively from horseback.')
  WeaponWeaponGroup.create!(weapon_id: heavy_pick.id, weapon_group_id: axes.id)

rapier = Weapon.create!(name: 'Rapier', category: 'One-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 20, num_of_dice: 1, damage_dice: 6, critical: 2, critical_range: 18, range: 0, thrown: false, weight: 2, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'You can use the Weapon Finesse feat to apply your Dexterity modifier instead of your Strength modifier to attack rolls with a rapier sized for you, even though it isn’t a light weapon.

You can’t wield a rapier in two hands in order to apply 1-1/2 times your Strength bonus to damage.')
  WeaponWeaponQuality.create!(weapon_id: rapier.id, weapon_quality_id: finesse.id)
  WeaponWeaponGroup.create!(weapon_id: rapier.id, weapon_group_id: light_blades.id)
  WeaponHand.create!(weapon_id: rapier.id, hands: "One")

scimitar = Weapon.create!(name: 'Scimitar', category: 'One-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 15, num_of_dice: 1, damage_dice: 6, critical: 2, critical_range: 18, range: 0, thrown: false, weight: 4, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'This curved sword is shorter than a longsword and longer than a shortsword. Only the outer edge is sharp, and the back is flat, giving the blade a triangular cross-section.')
  WeaponWeaponGroup.create!(weapon_id: scimitar.id, weapon_group_id: heavy_blades.id)

trident = Weapon.create!(name: 'Trident', category: 'One-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 15, num_of_dice: 1, damage_dice: 8, critical: 2, critical_range: 20, range: 10, thrown: true, weight: 4, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'A trident has three metal prongs at the end of a 4-foot-long shaft.')
  WeaponWeaponQuality.create!(weapon_id: trident.id, weapon_quality_id: brace.id)
  WeaponWeaponGroup.create!(weapon_id: trident.id, weapon_group_id: spears.id)
  WeaponWeaponGroup.create!(weapon_id: trident.id, weapon_group_id: thrown.id)

warhammer = Weapon.create!(name: 'Warhammer', category: 'One-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 12, num_of_dice: 1, damage_dice: 8, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 5, damage_type: 'Bludgeoning', source_id: core_rulebook.id, description: 'This weapon consists of a wooden haft and a heavy, metal head. The head may be single (like a carpenter’s hammer) or double (like a sledgehammer). The haft is long enough that you may wield it one- or two-handed. Though heavy and relatively slow to wield, warhammers are capable of delivering immense blows, crushing armor and flesh alike.')
  WeaponWeaponGroup.create!(weapon_id: warhammer.id, weapon_group_id: hammers.id)

falchion = Weapon.create!(name: 'Falchion', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 75, num_of_dice: 2, damage_dice: 4, critical: 2, critical_range: 18, range: 0, thrown: false, weight: 8, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'This sword has one curved, sharp edge like a scimitar, with the back edge unsharpened and either flat or slightly curved. Its weight is greater toward the end, making it better for chopping rather than stabbing.')
  WeaponWeaponGroup.create!(weapon_id: falchion.id, weapon_group_id: heavy_blades.id)

heavy_flail = Weapon.create!(name: 'Heavy Flail', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 15, num_of_dice: 1, damage_dice: 10, critical: 2, critical_range: 19, range: 0, thrown: false, weight: 10, damage_type: 'Bludgeoning', source_id: core_rulebook.id, description: 'Similar to a light flail, a heavy flail has a larger metal ball and a longer handle.')
  WeaponWeaponQuality.create!(weapon_id: heavy_flail.id, weapon_quality_id: disarm.id)
  WeaponWeaponQuality.create!(weapon_id: heavy_flail.id, weapon_quality_id: trip.id)
  WeaponWeaponGroup.create!(weapon_id: heavy_flail.id, weapon_group_id: flails.id)

glaive = Weapon.create!(name: 'Glaive', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 8, num_of_dice: 1, damage_dice: 10, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 10, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'A glaive is composed of a simple blade mounted on the end of a pole about 7 feet in length.')
  WeaponWeaponQuality.create!(weapon_id: glaive.id, weapon_quality_id: reach.id)
  WeaponWeaponGroup.create!(weapon_id: glaive.id, weapon_group_id: polearms.id)

greataxe = Weapon.create!(name: 'Greataxe', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 20, num_of_dice: 1, damage_dice: 12, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 12, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'This two-handed battle axe is heavy enough that you can’t wield it with one hand. The head may have one blade or two, and may be “bearded” (meaning hooked or trailing at the bottom) to increase cleaving power and help pull down enemy shields. The haft is usually 3 to 4 feet long.')
  WeaponWeaponGroup.create!(weapon_id: greataxe.id, weapon_group_id: axes.id)

great_club = Weapon.create!(name: 'Great Club', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 5, num_of_dice: 1, damage_dice: 10, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 8, damage_type: 'Bludgeoning', source_id: core_rulebook.id, description: 'This larger, bulkier version of the common club is heavy enough that you can’t wield it with one hand. It may be ornate and carved, reinforced with metal, or a simple branch from a tree. Like simple clubs, greatclubs have many names, such as cudgels, bludgeons, shillelaghs, and more.')
  WeaponWeaponGroup.create!(weapon_id: great_club.id, weapon_group_id: hammers.id)
  WeaponWeaponGroup.create!(weapon_id: great_club.id, weapon_group_id: tribal.id)

greatsword = Weapon.create!(name: 'Greatsword', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 50, num_of_dice: 2, damage_dice: 6, critical: 2, critical_range: 19, range: 0, thrown: false, weight: 8, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'This immense two-handed sword is about 5 feet in length. A greatsword may have a dulled lower blade that can be gripped.')
  WeaponWeaponGroup.create!(weapon_id: greatsword.id, weapon_group_id: heavy_blades.id)

guisarme = Weapon.create!(name: 'Guisarme', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 9, num_of_dice: 2, damage_dice: 4, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 1, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'A guisarme is an 8-foot-long shaft with a blade and a hook mounted at the tip.')
  WeaponWeaponQuality.create!(weapon_id: guisarme.id, weapon_quality_id: reach.id)
  WeaponWeaponQuality.create!(weapon_id: guisarme.id, weapon_quality_id: trip.id)
  WeaponWeaponGroup.create!(weapon_id: guisarme.id, weapon_group_id: polearms.id)

halberd = Weapon.create!(name: 'Halberd', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 10, num_of_dice: 1, damage_dice: 10, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 12, damage_type: 'Piercing or Slashing', source_id: core_rulebook.id, description: 'A halberd is similar to a 5-foot-long spear, but it also has a small, axe-like head mounted near the tip.')
  WeaponWeaponQuality.create!(weapon_id: halberd.id, weapon_quality_id: brace.id)
  WeaponWeaponQuality.create!(weapon_id: halberd.id, weapon_quality_id: trip.id)
  WeaponWeaponGroup.create!(weapon_id: halberd.id, weapon_group_id: polearms.id)

lance = Weapon.create!(name: 'Lance', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 10, num_of_dice: 1, damage_dice: 8, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 10, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'A lance deals double damage when used from the back of a charging mount. While mounted, you can wield a lance with one hand.')
  WeaponWeaponQuality.create!(weapon_id: lance.id, weapon_quality_id: reach.id)
  WeaponWeaponGroup.create!(weapon_id: lance.id, weapon_group_id: spears.id)

ranseur = Weapon.create!(name: 'Ranseur', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 10, num_of_dice: 2, damage_dice: 4, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 12, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'Similar in appearance to a trident, a ranseur has a single spear at its tip, flanked by a pair of short, curving blades.')
  WeaponWeaponQuality.create!(weapon_id: ranseur.id, weapon_quality_id: disarm.id)
  WeaponWeaponQuality.create!(weapon_id: ranseur.id, weapon_quality_id: reach.id)
  WeaponWeaponGroup.create!(weapon_id: ranseur.id, weapon_group_id: polearms.id)

scythe = Weapon.create!(name: 'Scythe', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 18, num_of_dice: 2, damage_dice: 4, critical: 4, critical_range: 20, range: 0, thrown: false, weight: 10, damage_type: 'Piercing or Slashing', source_id: core_rulebook.id, description: 'This weapon consists of a long wooden shaft with protruding handles and a sharp curved blade set at a right angle. Derived from a farm tool used to mow down crops, a scythe requires two hands to use, and is unwieldy but capable of inflicting grievous wounds. Its connotations as a symbol of death make it an intimidating weapon.')
  WeaponWeaponQuality.create!(weapon_id: scythe.id, weapon_quality_id: trip.id)
  WeaponWeaponGroup.create!(weapon_id: scythe.id, weapon_group_id: heavy_blades.id)

longbow = Weapon.create!(name: 'Longbow', category: 'Ranged', proficiency: 'Martial', weapon_type: 'Range', price_in_gp: 75, num_of_dice: 1, damage_dice: 8, critical: 3, critical_range: 20, range: 100, thrown: false, weight: 3, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'At almost 5 feet in height, a longbow is made up of one solid piece of carefully curved wood.

You need two hands to use a bow, regardless of its size. A longbow can’t be used while mounted. If you have a penalty for low Strength, apply it to damage rolls when you use a longbow. You can apply your Strength modifier to damage rolls when you use a composite longbow, but not a regular longbow. A longbow fires arrows.', ammunition_type: 'bow')
  WeaponWeaponGroup.create!(weapon_id: longbow.id, weapon_group_id: bows.id)
  WeaponHand.create!(weapon_id: longbow.id, hands: "Two")

compositve_longbow = Weapon.create!(name: 'Composite Longbow', category: 'Ranged', proficiency: 'Martial', weapon_type: 'Range', price_in_gp: 100, num_of_dice: 1, damage_dice: 8, critical: 3, critical_range: 20, range: 110, thrown: false, weight: 3, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'You need at least two hands to use a bow, regardless of its size. You can use a composite longbow while mounted.

All composite bows are made with a particular Strength rating (that is, each requires a minimum Strength modifier to use with proficiency). If your Strength bonus is less than the strength rating of the composite bow, you can’t effectively use it, so you take a –2 penalty on attacks with it. The default composite longbow requires a Strength modifier of +0 or higher to use with proficiency. A composite longbow can be made with a high strength rating to take advantage of an above-average Strength score; this feature allows you to add your Strength bonus to damage, up to the maximum bonus indicated for the bow. Each point of Strength bonus granted by the bow adds 100 gp to its cost. If you have a penalty for low Strength, apply it to damage rolls when you use a composite longbow.

For purposes of Weapon Proficiency and similar feats, a composite longbow is treated as if it were a longbow.', ammunition_type: 'bow')
  WeaponWeaponGroup.create!(weapon_id: compositve_longbow.id, weapon_group_id: bows.id)
  WeaponHand.create!(weapon_id: compositve_longbow.id, hands: "Two")

shortbow = Weapon.create!(name: 'Shortbow', category: 'Ranged', proficiency: 'Martial', weapon_type: 'Range', price_in_gp: 30, num_of_dice: 1, damage_dice: 6, critical: 3, critical_range: 20, range: 60, thrown: false, weight: 2, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'A shortbow is made up of one piece of wood, about 3 feet in length.

You need two hands to use a bow, regardless of its size. You can use a shortbow while mounted. If you have a penalty for low Strength, apply it to damage rolls when you use a shortbow. If you have a bonus for high Strength, you can apply it to damage rolls when you use a composite shortbow, but not a regular shortbow. A shortbow fires arrows.', ammunition_type: 'bow')
  WeaponWeaponGroup.create!(weapon_id: shortbow.id, weapon_group_id: bows.id)
  WeaponHand.create!(weapon_id: shortbow.id, hands: "Two")

compositve_shortbow = Weapon.create!(name: 'Composite Shortbow', category: 'Ranged', proficiency: 'Martial', weapon_type: 'Range', price_in_gp: 75, num_of_dice: 1, damage_dice: 6, critical: 3, critical_range: 20, range: 70, thrown: false, weight: 2, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'You need at least two hands to use a bow, regardless of its size. You can use a composite shortbow while mounted.

All composite bows are made with a particular Strength rating (that is, each requires a minimum Strength modifier to use with proficiency). If your Strength bonus is lower than the strength rating of the composite bow, you can’t effectively use it, so you take a –2 penalty on attacks with it. The default composite shortbow requires a Strength modifier of +0 or higher to use with proficiency. A composite shortbow can be made with a high strength rating to take advantage of an above-average Strength score; this feature allows you to add your Strength bonus to damage, up to the maximum bonus indicated for the bow. Each point of Strength bonus granted by the bow adds 75 gp to its cost. If you have a penalty for low Strength, apply it to damage rolls when you use a composite shortbow.

For purposes of Weapon Proficiency, Weapon Focus, and similar feats, a composite shortbow is treated as if it were a shortbow.', ammunition_type: 'bow')
  WeaponWeaponGroup.create!(weapon_id: compositve_shortbow.id, weapon_group_id: bows.id)
  WeaponHand.create!(weapon_id: compositve_shortbow.id, hands: "Two")

arrow = Weapon.create!(name: 'Arrow', category: 'Ammunition', proficiency: 'Martial', weapon_type: 'Range', price_in_gp: 0.05, num_of_dice: 0, damage_dice: 0, range: 0, thrown: false, weight: 0.15, damage_type: '', description: 'A standard (common) arrow used as a melee weapon is treated as a light improvised weapon (–4 penalty on attack rolls) and deals damage as a dagger of its size (critical multiplier ×2). Unless indicated otherwise, arrows come in a leather quiver that holds 20 arrows.', ammunition: true, ammunition_type: 'bow', source_id: core_rulebook.id)

kama = Weapon.create!(name: 'Kama', category: 'Light', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 2, num_of_dice: 1, damage_dice: 6, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 2, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'Similar to a sickle—and in some regions still used to reap grain—a kama is a short, curved blade attached to a simple handle, usually made of wood. It is sometimes also referred to as a kai, and is frequently used in pairs by martial artists.')
  WeaponWeaponQuality.create!(weapon_id: kama.id, weapon_quality_id: monk_quality.id)
  WeaponWeaponQuality.create!(weapon_id: kama.id, weapon_quality_id: trip.id)
  WeaponWeaponGroup.create!(weapon_id: kama.id, weapon_group_id: light_blades.id)
  WeaponWeaponGroup.create!(weapon_id: kama.id, weapon_group_id: monk_group.id)

nunchaku = Weapon.create!(name: 'Nunchaku', category: 'Light', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 2, num_of_dice: 1, damage_dice: 6, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 2, damage_type: 'Bludgeoning', source_id: core_rulebook.id, description: 'A nunchaku is made up of two wooden or metal bars connected by a small length of rope or chain.')
  WeaponWeaponQuality.create!(weapon_id: nunchaku.id, weapon_quality_id: monk_quality.id)
  WeaponWeaponQuality.create!(weapon_id: nunchaku.id, weapon_quality_id: disarm.id)
  WeaponWeaponGroup.create!(weapon_id: nunchaku.id, weapon_group_id: flails.id)
  WeaponWeaponGroup.create!(weapon_id: nunchaku.id, weapon_group_id: monk_group.id)

sai = Weapon.create!(name: 'Sai', category: 'Light', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 1, num_of_dice: 1, damage_dice: 4, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 1, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'A sai is a metal spike flanked by a pair of prongs used to trap an enemy’s weapon. Though pointed, a sai is not usually used for stabbing. Instead, it is used primarily to bludgeon foes, punching with the hilt, or else to catch and disarm weapons between its tines. Sais are often wielded in pairs.

When wielding a sai, you get a +2 bonus on combat maneuver checks to sunder an enemy’s weapon.')
  WeaponWeaponQuality.create!(weapon_id: sai.id, weapon_quality_id: monk_quality.id)
  WeaponWeaponGroup.create!(weapon_id: sai.id, weapon_group_id: disarm.id)
  WeaponWeaponGroup.create!(weapon_id: sai.id, weapon_group_id: monk_group.id)

siangham = Weapon.create!(name: 'Siangham', category: 'Light', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 3, num_of_dice: 1, damage_dice: 6, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 1, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'This weapon is a handheld shaft fitted with a pointed tip for stabbing foes. It resembles a (much sturdier) arrow with a grip designed for melee combat.')
  WeaponWeaponQuality.create!(weapon_id: siangham.id, weapon_quality_id: monk_quality.id)
  WeaponWeaponGroup.create!(weapon_id: siangham.id, weapon_group_id: monk_group.id)

bastard_sword = Weapon.create!(name: 'Bastard Sword', category: 'One-Handed', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 35, num_of_dice: 1, damage_dice: 10, critical: 2, critical_range: 19, range: 0, thrown: false, weight: 6, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'A bastard sword is about 4 feet in length, making it too large to use in one hand without special training; thus, it is an exotic weapon. A character can use a bastard sword two-handed as a martial weapon.')
  WeaponWeaponGroup.create!(weapon_id: bastard_sword.id, weapon_group_id: heavy_blades.id)

dwarven_waraxe = Weapon.create!(name: 'Dwarven Waraxe', category: 'One-Handed', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 30, num_of_dice: 1, damage_dice: 10, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 8, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'A dwarven waraxe has a large, ornate head mounted to a thick handle, making it too large to use in one hand without special training.

Due to its size, a dwarven waraxe is an exotic weapon. A Medium character can use a dwarven waraxe two-handed as a martial weapon, or a Large creature can use it one-handed in the same way.

A dwarf treats a dwarven waraxe as a martial weapon even when using it in one hand.')
  WeaponWeaponGroup.create!(weapon_id: dwarven_waraxe.id, weapon_group_id: axes.id)

whip = Weapon.create!(name: 'Whip', category: 'One-Handed', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 1, num_of_dice: 1, damage_dice: 3, critical: 2, critical_range: 20, range: 15, thrown: false, weight: 2, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'A whip deals no damage to any creature with an armor bonus of +1 or higher or a natural armor bonus of +3 or higher. The whip is treated as a melee weapon with 15-foot reach, though you don’t threaten the area into which you can make an attack. In addition, unlike most other weapons with reach, you can use it against foes anywhere within your reach (including adjacent foes).

Using a whip provokes an attack of opportunity, just as if you had used a ranged weapon.

You can use the Weapon Finesse feat to apply your Dexterity modifier instead of your Strength modifier to attack rolls with a whip sized for you, even though it isn’t a light weapon. Wielding a whip in two hands does not add 1-1/2 times your Strength modifier to damage rolls as with other weapons (UE update).')
  WeaponWeaponQuality.create!(weapon_id: whip.id, weapon_quality_id: disarm.id)
  WeaponWeaponQuality.create!(weapon_id: whip.id, weapon_quality_id: nonlethal.id)
  WeaponWeaponQuality.create!(weapon_id: whip.id, weapon_quality_id: reach.id)
  WeaponWeaponQuality.create!(weapon_id: whip.id, weapon_quality_id: trip.id)
  WeaponWeaponQuality.create!(weapon_id: whip.id, weapon_quality_id: finesse.id)
  WeaponWeaponGroup.create!(weapon_id: whip.id, weapon_group_id: flails.id)


orc_double_axe = Weapon.create!(name: 'Orc Double Axe', category: 'Two-Handed', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 60, num_of_dice: 1, damage_dice: 8, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 15, damage_type: 'Slashing', double_weapon: true, double_num_of_dice: 1, double_damage_dice: 8, double_damage_type: 'Slashing', source_id: core_rulebook.id, description: 'A cruel weapon with blades placed at opposite ends of a long haft, an orc double axe is a double weapon. Though invented by and traditionally associated with orcs, the double axe can be crafted and wielded by other races as well, though many disdain it for its extreme weight and clumsiness. Because of the blades at either end of the axe, the wielder must hold an orc double axe in the middle of its haft, and utilize a weaving, slashing fighting style more akin to that of a quarterstaff than to that of a greataxe or battleaxe.')
  WeaponWeaponQuality.create!(weapon_id: orc_double_axe.id, weapon_quality_id: double_quality.id)
  WeaponWeaponGroup.create!(weapon_id: orc_double_axe.id, weapon_group_id: axes.id)
  WeaponWeaponGroup.create!(weapon_id: orc_double_axe.id, weapon_group_id: double_group.id)

spiked_chain = Weapon.create!(name: 'Spiked Chain', category: 'Two-Handed', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 25, num_of_dice: 2, damage_dice: 4, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 10, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'A spiked chain is about 4 feet in length, covered in wicked barbs.

You can use the Weapon Finesse feat to apply your Dexterity modifier instead of your Strength modifier to attack rolls with a spiked chain sized for you, even though it isn’t a light weapon.')
  WeaponWeaponQuality.create!(weapon_id: spiked_chain.id, weapon_quality_id: disarm.id)
  WeaponWeaponQuality.create!(weapon_id: spiked_chain.id, weapon_quality_id: trip.id)
  WeaponWeaponQuality.create!(weapon_id: spiked_chain.id, weapon_quality_id: finesse.id)
  WeaponWeaponGroup.create!(weapon_id: spiked_chain.id, weapon_group_id: flails.id)

elven_curve_blade = Weapon.create!(name: 'Elven Curve Blade', category: 'Two-Handed', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 80, num_of_dice: 1, damage_dice: 10, critical: 2, critical_range: 18, range: 0, thrown: false, weight: 7, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'Essentially a longer version of a scimitar, but with a thinner blade, the elven curve blade is exceptionally rare.

You receive a +2 circumstance bonus to your Combat Maneuver Defense whenever a foe attempts to sunder your elven curve blade due to its flexible metal.

You can use the Weapon Finesse feat to apply your Dexterity modifier instead of your Strength modifier to attack rolls with an elven curve blade sized for you, even though it isn’t a light weapon.')
  WeaponWeaponGroup.create!(weapon_id: elven_curve_blade.id, weapon_group_id: heavy_blades.id)
  WeaponWeaponQuality.create!(weapon_id: elven_curve_blade.id, weapon_quality_id: finesse.id)


dire_flail = Weapon.create!(name: 'Dire Flail', category: 'Two-Handed', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 90, num_of_dice: 1, damage_dice: 8, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 10, damage_type: 'Bludgeoning', double_weapon: true, double_num_of_dice: 1, double_damage_dice: 8, double_damage_type: 'Bludgeoning', source_id: core_rulebook.id, description: 'A dire flail consists of two spheres of spiked iron dangling from chains at opposite ends of a long haft. This weapon excels at short but powerful strikes, and is typically swung in a constant churning motion. The wielder of a dire flail must have great strength, both to use the weapon effectively and to keep from tiring out.')
  WeaponWeaponQuality.create!(weapon_id: dire_flail.id, weapon_quality_id: double_quality.id)
  WeaponWeaponQuality.create!(weapon_id: dire_flail.id, weapon_quality_id: flails.id)
  WeaponWeaponGroup.create!(weapon_id: dire_flail.id, weapon_group_id: disarm.id)
  WeaponWeaponGroup.create!(weapon_id: dire_flail.id, weapon_group_id: double_group.id)
  WeaponWeaponGroup.create!(weapon_id: dire_flail.id, weapon_group_id: trip.id)

gnome_hooked_hammer = Weapon.create!(name: 'Gnome Hooked Hammer', category: 'Two-Handed', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 20, num_of_dice: 1, damage_dice: 8, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 6, damage_type: 'Bludgeoning', double_weapon: true, double_num_of_dice: 1, double_damage_dice: 6, double_damage_type: 'Piercing', source_id: core_rulebook.id, description: 'A gnome hooked hammer is a double weapon—an ingenious tool with a hammer head at one end of its haft and a long, curved pick at the other.

The hammer’s blunt head is a bludgeoning weapon that deals 1d6 points of damage (crit ×3). Its hook is a piercing weapon that deals 1d4 points of damage (crit ×4). You can use either head as the primary weapon.

Gnomes treat hooked hammers as martial weapons.')
  WeaponWeaponQuality.create!(weapon_id: gnome_hooked_hammer.id, weapon_quality_id: double_quality.id)
  WeaponWeaponQuality.create!(weapon_id: gnome_hooked_hammer.id, weapon_quality_id: trip.id)
  WeaponWeaponGroup.create!(weapon_id: gnome_hooked_hammer.id, weapon_group_id: double_group.id)

two_bladed_sword = Weapon.create!(name: 'Two-Bladed Sword', category: 'Two-Handed', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 100, num_of_dice: 1, damage_dice: 8, critical: 2, critical_range: 19, range: 0, thrown: false, weight: 10, damage_type: 'Slashing', double_weapon: true, double_num_of_dice: 1, double_damage_dice: 8, double_damage_type: 'Slashing', source_id: core_rulebook.id, description: 'A two-bladed sword is a double weapon—twin blades extend from either side of a central, short haft, allowing the wielder to attack with graceful but deadly flourishes.')
  WeaponWeaponQuality.create!(weapon_id: two_bladed_sword.id, weapon_quality_id: double_quality.id)
  WeaponWeaponGroup.create!(weapon_id: two_bladed_sword.id, weapon_group_id: double_group.id)
  WeaponWeaponGroup.create!(weapon_id: two_bladed_sword.id, weapon_group_id: heavy_blades.id)

dwarven_urgrosh = Weapon.create!(name: 'Dwarven Urgrosh', category: 'Two-Handed', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 50, num_of_dice: 1, damage_dice: 8, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 12, damage_type: 'Slashing', double_weapon: true, double_num_of_dice: 1, double_damage_dice: 6, double_damage_type: 'Piercing', source_id: core_rulebook.id, description: 'A dwarven urgrosh is a double weapon—an axe head and a spear point on opposite ends of a long haft. The urgrosh’s axe head is a slashing weapon that deals 1d8 points of damage. Its spear head is a piercing weapon that deals 1d6 points of damage. You can use either head as the primary weapon. The other becomes the off-hand weapon. If you use an urgrosh against a charging character, the spear head is the part of the weapon that deals damage.

Dwarves treat dwarven urgroshes as martial weapons.')
  WeaponWeaponQuality.create!(weapon_id: dwarven_urgrosh.id, weapon_quality_id: double_quality.id)
  WeaponWeaponQuality.create!(weapon_id: dwarven_urgrosh.id, weapon_quality_id: brace.id)
  WeaponWeaponGroup.create!(weapon_id: dwarven_urgrosh.id, weapon_group_id: double_group.id)

bolas = Weapon.create!(name: 'Bolas', category: 'Ranged', proficiency: 'Exotic', weapon_type: 'Range', price_in_gp: 5, num_of_dice: 1, damage_dice: 4, critical: 2, critical_range: 20, range: 10, thrown: true, weight: 2, damage_type: 'Bludgeoning', source_id: core_rulebook.id, description: 'A bolas is a pair of wooden, stone, or metal weights connected by a thin rope or cord.

You can whirl and throw this weapon to make a ranged trip attack against an opponent. You can’t be tripped during your own trip attempt when using a bolas.')
  WeaponWeaponQuality.create!(weapon_id: bolas.id, weapon_quality_id: nonlethal.id)
  WeaponWeaponQuality.create!(weapon_id: bolas.id, weapon_quality_id: trip.id)
  WeaponWeaponGroup.create!(weapon_id: bolas.id, weapon_group_id: thrown.id)
  WeaponHand.create!(weapon_id: bolas.id, hands: "One")

hand_crossbow = Weapon.create!(name: 'Hand Crossbow', category: 'Ranged', proficiency: 'Exotic', weapon_type: 'Range', price_in_gp: 100, num_of_dice: 1, damage_dice: 4, critical: 2, critical_range: 19, range: 30, thrown: false, weight: 2, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'You can draw a hand crossbow back by hand.

Loading a hand crossbow is a move action that provokes attacks of opportunity.

You can shoot, but not load, a hand crossbow with one hand at no penalty. You can shoot a hand crossbow with each hand, but you take a penalty on attack rolls as if attacking with two light weapons.', ammunition_type: 'crossbow')
  WeaponWeaponGroup.create!(weapon_id: hand_crossbow.id, weapon_group_id: crossbows.id)
  hand_crossbow_feature1 = Feature.create!(name: 'Load', action_id: move.id, attack_of_opportunity: true)
    WeaponFeature.create!(weapon_id: hand_crossbow.id, feature_id: hand_crossbow_feature1.id)
    FeatureLoading.create(feature_id: hand_crossbow_feature1.id, capacity: 1, must_reload_after_use: true)
  WeaponHand.create!(weapon_id: hand_crossbow.id, hands: "One")
  WeaponHand.create!(weapon_id: hand_crossbow.id, hands: "Two")


repeating_heavy_crossbow = Weapon.create!(name: 'Repeating Heavy Crossbow', category: 'Ranged', proficiency: 'Exotic', weapon_type: 'Range', price_in_gp: 400, num_of_dice: 1, damage_dice: 10, critical: 2, critical_range: 19, range: 120, thrown: false, weight: 12, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'The repeating heavy crossbow holds 5 repeating crossbow bolts.

As long as it holds bolts, you can reload it by pulling the reloading lever (a free action). Loading a new case of 5 bolts is a full-round action that provokes attacks of opportunity.

You can fire a repeating crossbow with one hand or fire a repeating crossbow in each hand in the same manner as you would a normal crossbow of the same size. However, you must fire the weapon with two hands in order to use the reloading lever, and you must use two hands to load a new case of bolts.', ammunition_type: 'repeating crossbow')
  WeaponWeaponGroup.create!(weapon_id: repeating_heavy_crossbow.id, weapon_group_id: crossbows.id)
  repeating_heavy_crossbow_feature1 = Feature.create!(name: 'Load', action_id: full_round.id, attack_of_opportunity: true)
    WeaponFeature.create!(weapon_id: repeating_heavy_crossbow.id, feature_id: repeating_heavy_crossbow_feature1.id)
    FeatureLoading.create(feature_id: repeating_heavy_crossbow_feature1.id, capacity: 5, must_reload_after_use: true)
  WeaponHand.create!(weapon_id: repeating_heavy_crossbow.id, hands: "One")
  WeaponHand.create!(weapon_id: repeating_heavy_crossbow.id, hands: "Two")

repeating_light_crossbow = Weapon.create!(name: 'Repeating Heavy Crossbow', category: 'Ranged', proficiency: 'Exotic', weapon_type: 'Range', price_in_gp: 250, num_of_dice: 1, damage_dice: 8, critical: 2, critical_range: 19, range: 80, thrown: false, weight: 6, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'This weapon functions identically to a repeating light crossbow, except that its damage, critical, and range values are equivalent to those of a light crossbow instead of a heavy crossbow. Its significantly lighter construction and pull make it both more portable and more useful to those who rely on stealth or speed.

As long as it holds bolts, you can reload it by pulling the reloading lever (a free action). Loading a new case of 5 bolts is a full-round action that provokes attacks of opportunity.

You can fire a repeating crossbow with one hand or fire a repeating crossbow in each hand in the same manner as you would a normal crossbow of the same size. However, you must fire the weapon with two hands in order to use the reloading lever, and you must use two hands to load a new case of bolts.', ammunition_type: 'repeating crossbow')
  WeaponWeaponGroup.create!(weapon_id: repeating_light_crossbow.id, weapon_group_id: crossbows.id)
  repeating_light_crossbow_feature1 = Feature.create!(name: 'Load', action_id: full_round.id, attack_of_opportunity: true)
    WeaponFeature.create!(weapon_id: repeating_light_crossbow.id, feature_id: repeating_light_crossbow_feature1.id)
    FeatureLoading.create(feature_id: repeating_light_crossbow_feature1.id, capacity: 5, must_reload_after_use: true)
  WeaponHand.create!(weapon_id: repeating_light_crossbow.id, hands: "One")
  WeaponHand.create!(weapon_id: repeating_light_crossbow.id, hands: "Two")

net = Weapon.create!(name: 'Net', category: 'Ranged', proficiency: 'Exotic', weapon_type: 'Range', price_in_gp: 20, num_of_dice: 0, damage_dice: 0, critical: 0, critical_range: 0, range: 10, thrown: true, weight: 6, damage_type: '', source_id: core_rulebook.id, description: 'When you throw a net, you make a ranged touch attack against your target. A net’s maximum range is 10 feet. If you hit, the target is entangled.

If you control the trailing rope by succeeding on an opposed Strength check while holding it, the entangled creature can move only within the limits that the rope allows. If the entangled creature attempts to cast a spell, it must make a concentration check with a DC of 15 + the spell’s level or be unable to cast the spell.

An entangled creature can escape with a DC 20 Escape Artist check (a full-round action). The net has 5 hit points and can be burst with a DC 25 Strength check (also a full-round action). A net is useful only against creatures within one size category of you.

A net must be folded to be thrown effectively. The first time you throw your net in a fight, you make a normal ranged touch attack roll. After the net is unfolded, you take a –4 penalty on attack rolls with it. It takes 2 rounds for a proficient user to fold a net and twice that long for a non-proficient one to do so.')
  WeaponWeaponGroup.create!(weapon_id: net.id, weapon_group_id: thrown.id)
  WeaponHand.create!(weapon_id: net.id, hands: "One")

halfling_sling_staff = Weapon.create!(name: 'Halfling Sling Staff', category: 'Ranged', proficiency: 'Exotic', weapon_type: 'Range', price_in_gp: 20, num_of_dice: 1, damage_dice: 8, critical: 3, critical_range: 20, range: 80, thrown: false, weight: 3, damage_type: 'Bludgeoning', source_id: core_rulebook.id, description: 'Made from a specially designed sling attached to a short club, a halfling sling staff can be used by a proficient wielder to devastating effect.

Your Strength modifier applies to damage rolls when you use a halfling sling staff just as it does for thrown weapons. You can fire, but not load, a halfling sling staff with one hand. You can hurl ordinary stones with a halfling sling staff, but stones are not as dense or as round as bullets. Thus, such an attack deals damage as if the weapon were designed for a creature one size category smaller than you and you take a –1 penalty on attack rolls. A halfling sling staff can be used as a simple weapon that deals bludgeoning damage equal to that of a club of its size.

Loading a halfling sling staff is a move action that requires two hands and provokes attacks of opportunity.

Halflings treat halfling sling staves as martial weapons.', ammunition_type: 'sling')
  WeaponWeaponGroup.create!(weapon_id: halfling_sling_staff.id, weapon_group_id: thrown.id)
  halfling_sling_staff_feature1 = Feature.create!(name: 'Load', action_id: move.id, attack_of_opportunity: true)
    WeaponFeature.create!(weapon_id: halfling_sling_staff.id, feature_id: halfling_sling_staff_feature1.id)
    FeatureLoading.create(feature_id: halfling_sling_staff_feature1.id, capacity: 1, must_reload_after_use: true, wrong_ammo: true, wrong_ammo_attack_penalty: -1, wrong_ammo_size_decrease_steps: 1)
  WeaponHand.create!(weapon_id: halfling_sling_staff.id, hands: "One")

repeating_crossbow_bolt = Weapon.create!(name: 'Repeating Crossbow Bolt', category: 'Ammunition', proficiency: 'Exotic', weapon_type: 'Range', price_in_gp: 0.2, num_of_dice: 0, damage_dice: 0, range: 0, thrown: false, weight: 0.2, damage_type: '', description: 'Repeating crossbow bolts come in a case that holds 5 bolts.

A crossbow bolt used as a melee weapon is treated as a light improvised weapon (–4 penalty on attack rolls) and deals damage as a dagger of its size (crit ×2).', ammunition: true, ammunition_type: 'repeating crossbow', source_id: core_rulebook.id)

shuriken = Weapon.create!(name: 'Shuriken', category: 'Ranged', proficiency: 'Exotic', weapon_type: 'Range', price_in_gp: 0.2, num_of_dice: 1, damage_dice: 2, critical: 2, critical_range: 20, range: 10, thrown: true, weight: 0.1, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'A shuriken is a small piece of metal with sharpened edges, designed for throwing.

A shuriken can’t be used as a melee weapon.

Although they are thrown weapons, shuriken are treated as ammunition for the purposes of drawing them and crafting masterwork or otherwise special versions of them, and of what happens to them after they are thrown.', ammunition: true, ammunition_type: "Shuriken")
  WeaponWeaponQuality.create!(weapon_id: shuriken.id, weapon_quality_id: monk_quality.id)
  WeaponWeaponGroup.create!(weapon_id: shuriken.id, weapon_group_id: thrown.id)
  WeaponWeaponGroup.create!(weapon_id: shuriken.id, weapon_group_id: monk_group.id)
  WeaponHand.create!(weapon_id: shuriken.id, hands: "One")

# IDENTIFIER = Weapon.create!(name: '', category: '', proficiency: '', weapon_type: '', price_in_gp: 0, num_of_dice: 1, damage_dice: 6, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 1, damage_type: '', source_id: SOURCE.id, description: '')
  # WeaponWeaponQuality.create!(weapon_id: IDENTIFIER.id, weapon_quality_id: QUALITY.id)
  # WeaponWeaponGroup.create!(weapon_id: IDENTIFIER.id, weapon_group_id: GROUP.id)

# IDENTIFIER = Weapon.create!(name: '', category: '', proficiency: '', weapon_type: '', price_in_gp: 0, num_of_dice: 1, damage_dice: 6, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 1, damage_type: '', source_id: SOURCE.id, description: '')
  # WeaponWeaponQuality.create!(weapon_id: IDENTIFIER.id, weapon_quality_id: QUALITY.id)
  # WeaponWeaponGroup.create!(weapon_id: IDENTIFIER.id, weapon_group_id: GROUP.id)

# IDENTIFIER = Weapon.create!(name: '', category: '', proficiency: '', weapon_type: '', price_in_gp: 0, num_of_dice: 1, damage_dice: 6, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 1, damage_type: '', source_id: SOURCE.id, description: '')
  # WeaponWeaponQuality.create!(weapon_id: IDENTIFIER.id, weapon_quality_id: QUALITY.id)
  # WeaponWeaponGroup.create!(weapon_id: IDENTIFIER.id, weapon_group_id: GROUP.id)

# IDENTIFIER = Weapon.create!(name: '', category: '', proficiency: '', weapon_type: '', price_in_gp: 0, num_of_dice: 1, damage_dice: 6, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 1, damage_type: '', source_id: SOURCE.id, description: '')
  # WeaponWeaponQuality.create!(weapon_id: IDENTIFIER.id, weapon_quality_id: QUALITY.id)
  # WeaponWeaponGroup.create!(weapon_id: IDENTIFIER.id, weapon_group_id: GROUP.id)

# IDENTIFIER = Weapon.create!(name: '', category: '', proficiency: '', weapon_type: '', price_in_gp: 0, num_of_dice: 1, damage_dice: 6, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 1, damage_type: '', source_id: SOURCE.id, description: '')
  # WeaponWeaponQuality.create!(weapon_id: IDENTIFIER.id, weapon_quality_id: QUALITY.id)
  # WeaponWeaponGroup.create!(weapon_id: IDENTIFIER.id, weapon_group_id: GROUP.id)


puts "Weapons Created!!"

# /////////////////////////////////////////
# <-*-*-----*-*-*- Armors!-*-*-*-----*-*->
# /////////////////////////////////////////

padded = Armor.create!(name: 'Padded', proficiency: 'Light', price_in_gp: 5, bonus: 1, bonus_type: 'Armor', max_dex_bonus: 8, armor_check_penalty: 0, arcane_spell_failure: 5, spell_30: 30, spell_20: 20, don: "1 minute", don_hastily: "5 rounds", remove: "1 minute", weight: 10, source_id: core_rulebook.id, description: 'More than simple clothing, padded armor combines heavy, quilted cloth and layers of densely packed stuffing to create a cheap and basic protection. It is typically worn by those not intending to face lethal combat or those who wish their maneuverability to be impacted as little as possible.')

leather = Armor.create!(name: 'Leather', proficiency: 'Light', price_in_gp: 10, bonus: 2, bonus_type: 'Armor', max_dex_bonus: 6, armor_check_penalty: 0, arcane_spell_failure: 10, spell_30: 30, spell_20: 20, don: "1 minute", don_hastily: "5 rounds", remove: "1 minute", weight: 15, source_id: core_rulebook.id, description: 'Leather armor is made up of multiple overlapping pieces of leather, boiled to increase their natural toughness and then deliberately stitched together. Although not as sturdy as metal armor, the flexibility it allows wearers makes it among the most widely used types of armor.')

studded_leather = Armor.create!(name: 'Studded Leather', proficiency: 'Light', price_in_gp: 25, bonus: 3, bonus_type: 'Armor', max_dex_bonus: 5, armor_check_penalty: -1, arcane_spell_failure: 15, spell_30: 30, spell_20: 20, don: "1 minute", don_hastily: "5 rounds", remove: "1 minute", weight: 20, source_id: core_rulebook.id, description: 'An improved form of leather armor, studded leather armor is covered with dozens of metal protuberances. While these rounded studs offer little defense individually, in the numbers they are arrayed in upon such armor, they help catch lethal edges and channel them away from vital spots. The rigidity caused by the additional metal does, however, result in less mobility than is afforded by a suit of normal leather armor.')

chain_shirt = Armor.create!(name: 'Chain Shirt', proficiency: 'Light', price_in_gp: 100, bonus: 4, bonus_type: 'Armor', max_dex_bonus: 4, armor_check_penalty: -2, arcane_spell_failure: 20, spell_30: 30, spell_20: 20, don: "1 minute", don_hastily: "5 rounds", remove: "1 minute", weight: 25, source_id: core_rulebook.id, description: 'Covering the torso, this shirt is made up of thousands of interlocking metal rings.')

hide = Armor.create!(name: 'Hide', proficiency: 'Medium', price_in_gp: 15, bonus: 4, bonus_type: 'Armor', max_dex_bonus: 4, armor_check_penalty: -3, arcane_spell_failure: 20, spell_30: 20, spell_20: 15, don: "1 minute", don_hastily: "5 rounds", remove: "1 minute", weight: 25, source_id: core_rulebook.id, description: 'Hide armor is made from the tanned skin of particularly thick-hided beasts, stitched with either multiple overlapping layers of crude leather or exterior pieces of leather stuffed with padding or fur. Damage to the armor is typically repaired by restitching gashes or adding new pieces of hide, giving the most heavily used suits a distinctively patchwork quality.')

scale_mail = Armor.create!(name: 'Scale Mail', proficiency: 'Medium', price_in_gp: 50, bonus: 5, bonus_type: 'Armor', max_dex_bonus: 3, armor_check_penalty: -4, arcane_spell_failure: 25, spell_30: 20, spell_20: 15, don: "4 minutes", don_hastily: "1 minute", remove: "1 minute", weight: 30, source_id: core_rulebook.id, description: 'Scale mail is made up of dozens of small, overlapping metal plates. Similar to both splint mail and banded mail, scalemail has a flexible arrangement of scales in an attempt to avoid hindering the wearer’s mobility, but at the expense of omitting additional protective layers of armor. A suit of scale mail includes gauntlets.')

breastplate = Armor.create!(name: 'Breastplate', proficiency: 'Medium', price_in_gp: 200, bonus: 6, bonus_type: 'Armor', max_dex_bonus: 3, armor_check_penalty: -4, arcane_spell_failure: 25, spell_30: 20, spell_20: 15, don: "4 minutes", don_hastily: "1 minute", remove: "1 minute", weight: 30, source_id: core_rulebook.id, description: 'A breastplate protects a wearer’s torso with a single piece of sculpted metal, similar to the core piece of a suit of full plate. Despite its sturdiness, its inflexibility and open back make it inferior to complete suits of metal armor, but still an improvement over most non-metal armors.')

chainmail = Armor.create!(name: 'Chainmail', proficiency: 'Medium', price_in_gp: 150, bonus: 6, bonus_type: 'Armor', max_dex_bonus: 2, armor_check_penalty: -5, arcane_spell_failure: 30, spell_30: 20, spell_20: 15, don: "4 minutes", don_hastily: "1 minute", remove: "1 minute", weight: 40, source_id: core_rulebook.id, description: 'Unlike a chain shirt, which covers only the chest, chainmail protects the wearer with a complete mesh of chain links that cover the torso and arms, and extends below the waist. Multiple interconnected pieces offer additional protection over vital areas. The suit includes gauntlets.')

banded_mail = Armor.create!(name: 'Banded Mail', proficiency: 'Heavy', price_in_gp: 250, bonus: 7, bonus_type: 'Armor', max_dex_bonus: 1, armor_check_penalty: -6, arcane_spell_failure: 35, spell_30: 20, spell_20: 15, don: "4 minutes", don_hastily: "1 minute", remove: "1 minute", weight: 35, source_id: core_rulebook.id, description: 'Banded mail is made up of overlapping strips of metal, fastened to a sturdy backing of leather and chain. The size of the metal plates, interconnected metal bands, and layers of underlying armor make it a more significant defense than similar armors, like scale mail or splint mail.')

splint_mail = Armor.create!(name: 'Splint Mail', proficiency: 'Heavy', price_in_gp: 200, bonus: 7, bonus_type: 'Armor', max_dex_bonus: 0, armor_check_penalty: -7, arcane_spell_failure: 40, spell_30: 20, spell_20: 15, don: "4 minutes", don_hastily: "1 minute", remove: "1 minute", weight: 45, source_id: core_rulebook.id, description: 'Splint mail is made up of overlapping layers of metal strips attached to a backing of leather or sturdy fabric. These splints are of greater size and durability than those that compose a suit of scale mail, improving the protection they afford the wearer, but at the cost of flexibility. A suit of splint mail includes gauntlets.')

half_plate = Armor.create!(name: 'Half-Plate', proficiency: 'Heavy', price_in_gp: 600, bonus: 8, bonus_type: 'Armor', max_dex_bonus: 0, armor_check_penalty: -7, arcane_spell_failure: 40, spell_30: 20, spell_20: 15, don: "4 minutes, with help", don_hastily: "4 minutes", remove: "1d4+1 minutes", weight: 50, source_id: core_rulebook.id, description: 'Half-plate armor combines elements of full plate and chainmail, incorporating several sizable plates of sculpted metal with an underlying mesh of chain links. While this suit protects vital areas with several layers of armor, it is not sculpted to a single individual’s frame, reducing its wearer’s mobility even more than a suit of full plate. Half-plate armor includes gauntlets and a helm.')

full_plate = Armor.create!(name: 'Full Plate', proficiency: 'Heavy', price_in_gp: 1500, bonus: 9, bonus_type: 'Armor', max_dex_bonus: 1, armor_check_penalty: -6, arcane_spell_failure: 35, spell_30: 20, spell_20: 15, don: "4 minutes, with help", don_hastily: "4 minutes", remove: "1d4+1 minutes", weight: 50, source_id: core_rulebook.id, description: 'This metal suit comprises multiple pieces of interconnected and overlaying metal plates, incorporating the benefits of numerous types of lesser armor. A complete suit of full plate (or platemail, as it is often called) includes gauntlets, heavy leather boots, a visored helmet, and a thick layer of padding that is worn underneath the armor. Each suit of full plate must be individually fitted to its owner by a master armorsmith, although a captured suit can be resized to fit a new owner at a cost of 200 to 800 (2d4 100) gold pieces.')

buckler = Armor.create!(name: 'Buckler', proficiency: 'Shield', price_in_gp: 5, bonus: 1, bonus_type: 'Shield', max_dex_bonus: nil, armor_check_penalty: -1, arcane_spell_failure: 5, spell_30: nil, spell_20: nil, don: "1 move action", don_hastily: nil, remove: "1 move action", weight: 5, source_id: core_rulebook.id, description: 'This small metal shield is worn strapped to your forearm. You can use a bow or crossbow without penalty while carrying it. You can also use your shield arm to wield a weapon (whether you are using an offhand weapon or using your off hand to help wield a two-handed weapon), but you take a –1 penalty on attack rolls while doing so. This penalty stacks with those that may apply for fighting with your off hand and for fighting with two weapons. In any case, if you use a weapon in your off hand, you lose the buckler’s Armor Class bonus until your next turn. You can cast a spell with somatic components using your shield arm, but you lose the buckler’s Armor Class bonus until your next turn. You can’t make a shield bash with a buckler.')

light_steel_shield = Armor.create!(name: 'Light Steel Shield', proficiency: 'Shield', price_in_gp: 9, bonus: 1, bonus_type: 'Shield', max_dex_bonus: nil, armor_check_penalty: -1, arcane_spell_failure: 5, spell_30: nil, spell_20: nil, don: "1 move action", don_hastily: nil, remove: "1 move action", weight: 6, source_id: core_rulebook.id, description: 'You can bash an opponent with a light shield. See “shield, light” on Table: Weapons for the damage dealt by a shield bash. Used this way, a light shield is a martial bludgeoning weapon. For the purpose of penalties on attack rolls, treat a light shield as a light weapon. If you use your shield as a weapon, you lose its Armor Class bonus until your next turn. An enhancement bonus on a shield does not improve the effectiveness of a shield bash made with it, but the shield can be made into a magic weapon in its own right.', damage_dice: 3, num_of_dice: 1, weapon_proficiency: "Martial", weapon_category: "Light")

# IDENTIFIER = Armor.create!(name: '', proficiency: '', price_in_gp: 0, bonus: 0, bonus_type: '', max_dex_bonus: 0, armor_check_penalty: 0, arcane_spell_failure: 0, spell_30: 30, spell_20: 20, don: "", don_hastily: "", remove: "", weight: 1, source_id: SOURCE.id, description: '')

# IDENTIFIER = Armor.create!(name: '', proficiency: '', price_in_gp: 0, bonus: 0, bonus_type: '', max_dex_bonus: 0, armor_check_penalty: 0, arcane_spell_failure: 0, spell_30: 30, spell_20: 20, don: "", don_hastily: "", remove: "", weight: 1, source_id: SOURCE.id, description: '')

# IDENTIFIER = Armor.create!(name: '', proficiency: '', price_in_gp: 0, bonus: 0, bonus_type: '', max_dex_bonus: 0, armor_check_penalty: 0, arcane_spell_failure: 0, spell_30: 30, spell_20: 20, don: "", don_hastily: "", remove: "", weight: 1, source_id: SOURCE.id, description: '')

# IDENTIFIER = Armor.create!(name: '', proficiency: '', price_in_gp: 0, bonus: 0, bonus_type: '', max_dex_bonus: 0, armor_check_penalty: 0, arcane_spell_failure: 0, spell_30: 30, spell_20: 20, don: "", don_hastily: "", remove: "", weight: 1, source_id: SOURCE.id, description: '')

# IDENTIFIER = Armor.create!(name: '', proficiency: '', price_in_gp: 0, bonus: 0, bonus_type: '', max_dex_bonus: 0, armor_check_penalty: 0, arcane_spell_failure: 0, spell_30: 30, spell_20: 20, don: "", don_hastily: "", remove: "", weight: 1, source_id: SOURCE.id, description: '')

# IDENTIFIER = Armor.create!(name: '', proficiency: '', price_in_gp: 0, bonus: 0, bonus_type: '', max_dex_bonus: 0, armor_check_penalty: 0, arcane_spell_failure: 0, spell_30: 30, spell_20: 20, don: "", don_hastily: "", remove: "", weight: 1, source_id: SOURCE.id, description: '')

# IDENTIFIER = Armor.create!(name: '', proficiency: '', price_in_gp: 0, bonus: 0, bonus_type: '', max_dex_bonus: 0, armor_check_penalty: 0, arcane_spell_failure: 0, spell_30: 30, spell_20: 20, don: "", don_hastily: "", remove: "", weight: 1, source_id: SOURCE.id, description: '')

# IDENTIFIER = Armor.create!(name: '', proficiency: '', price_in_gp: 0, bonus: 0, bonus_type: '', max_dex_bonus: 0, armor_check_penalty: 0, arcane_spell_failure: 0, spell_30: 30, spell_20: 20, don: "", don_hastily: "", remove: "", weight: 1, source_id: SOURCE.id, description: '')

# IDENTIFIER = Armor.create!(name: '', proficiency: '', price_in_gp: 0, bonus: 0, bonus_type: '', max_dex_bonus: 0, armor_check_penalty: 0, arcane_spell_failure: 0, spell_30: 30, spell_20: 20, don: "", don_hastily: "", remove: "", weight: 1, source_id: SOURCE.id, description: '')

tower_shield = Armor.create!(name: 'Tower Shield', proficiency: 'Shield', price_in_gp: 30, bonus: 4, bonus_type: 'Shield', max_dex_bonus: 2, armor_check_penalty: -10, arcane_spell_failure: 50, spell_30: nil, spell_20: nil, don: "1 move action", don_hastily: nil, remove: "1 move action", weight: 45, source_id: core_rulebook.id, description: 'In most situations, a tower shield provides the indicated shield bonus to your Armor Class. As a standard action, however, you can use a tower shield to grant you total cover until the beginning of your next turn. When using a tower shield in this way, you must choose one edge of your space. That edge is treated as a solid wall for attacks targeting you only. You gain total cover for attacks that pass through this edge and no cover for attacks that do not pass through this edge (see Combat). The shield does not, however, provide cover against targeted spells; a spellcaster can cast a spell on you by targeting the shield you are holding. You cannot bash with a tower shield, nor can you use your shield hand for anything else.

When employing a tower shield in combat, you take a –2 penalty on attack rolls because of the shield’s encumbrance.')


armor_spikes = Armor.create!(name: 'Armor Spikes', proficiency: '', price_in_gp: 50, bonus: 0, bonus_type: '', max_dex_bonus: 0, armor_check_penalty: 0, arcane_spell_failure: 0, spell_30: 30, spell_20: 20, don: "", don_hastily: "", remove: "", weight: 10, source_id: core_rulebook.id, description: 'Armor spikes deal extra piercing damage (see “spiked armor” on Table: Weapons) on a successful grapple attack. The spikes count as a martial weapon. If you are not proficient with them, you take a –4 penalty on grapple checks when you try to use them. You can also make a regular melee attack (or off-hand attack) with the spikes, and they count as a light weapon in this case. (You can’t also make an attack with armor spikes if you have already made an attack with another off-hand weapon, and vice versa.) An enhancement bonus to a suit of armor does not improve the spikes’ effectiveness, but the spikes can be made into magic weapons in their own right.', extra: true, bonus_price_in_gp: true)

puts "Armor Created!"

# /////////////////////////////////////////
# <-*-*-----*-*-*- Users!-*-*-*-----*-*->
# /////////////////////////////////////////

admin = User.create!(username: "jack", password: "ey", admin: true, skillset_id: dmc.id)
cole = User.create!(username: "cole", password: "password", admin: false, skillset_id: dmc.id)
jeff = User.create!(username: "jeff", password: "password", admin: false, skillset_id: dmc.id)
michael = User.create!(username: "michael", password: "password", admin: false, skillset_id: dmc.id)
clare = User.create!(username: "clare", password: "password", admin: false, skillset_id: dmc.id)
iggy = User.create!(username: "iggy", password: "password", admin: false, skillset_id: dmc.id)
jenn = User.create!(username: "jenn", password: "password", admin: false, skillset_id: dmc.id)
sarah = User.create!(username: "sarah", password: "password", admin: false, skillset_id: dmc.id)
scott = User.create!(username: "scott", password: "password", admin: false, skillset_id: dmc.id)





# /////////////////////////////////////////
# <-*-*-----*-*-*- Races!-*-*-*-----*-*->
# /////////////////////////////////////////

aasimar = Race.create!(name: "Aasimar", speed: 30, size: "Medium", img_url: "https://vignette.wikia.nocookie.net/phaeselis/images/8/8e/Angel_Avatar.jpg", source_id: advanced_race_guide.id, description: "Aasimars are humans with a significant amount of celestial or other good outsider blood in their ancestry. While not always benevolent, aasimars are more inclined toward acts of kindness rather than evil, and they gravitate toward faiths or organizations associated with celestials. Aasimar heritage can lie dormant for generations, only to appear suddenly in the child of two apparently human parents. Most societies interpret aasimar births as good omens, though it must be acknowledged that some aasimars take advantage of the reputation of their kind, brutally subverting the expectations of others with acts of terrifying cruelty or abject venality. “It’s always the one you least suspect” is the axiom these evil aasimars live by, and they often lead double lives as upstanding citizens or false heroes, keeping their corruption well hidden. Thankfully, these few are the exception and not the rule.

Physical Description: Aasimars look mostly human except for some minor physical trait that reveals their unusual heritage. Typical aasimar features include hair that shines like metal, jewel-toned eyes, lustrous skin color, or even glowing, golden halos.

Society: Aasimars cannot truly be said to have an independent society of their own. As an offshoot of humanity, they adopt the societal norms around them, though most find themselves drawn to those elements of society that work for the redress of injustice and the assuagement of suffering. This sometimes puts them on the wrong side of the law in more tyrannical societies, but aasimars can be careful and cunning when necessary, able to put on a dissembling guise to divert the attention of oppressors elsewhere. While corrupt aasimars may be loners or may establish secret societies to conceal their involvement in crime, righteous aasimars are often found congregating in numbers as part of good-aligned organizations, especially (though not always) churches and religious orders.

Relations: Aasimars are most common and most comfortable in human communities. This is especially true of those whose lineage is more distant and who bear only faint marks of their heavenly ancestry. It is unclear why the touch of the celestial is felt so much more strongly in humanity than other races, though it may be that humanity’s inherent adaptability and affinity for change is responsible for the evolution of aasimars as a distinct race. Perhaps the endemic racial traits of other races are too deeply bred, too strongly present, and too resistant to change. Whatever dalliances other races may have had with the denizens of the upper planes, the progeny of such couplings are vanishingly rare and have never bred true. However, even if they generally tend toward human societies, aasimars can become comfortable in virtually any environment. They have an easy social grace and are disarmingly personable. They get on well with half-elves, who share a similar not-quite-human marginal status, though their relations are often less cordial with half-orcs, who have no patience for aasimars’ overly pretty words and faces. Elven courtiers sometimes dismiss aasimars as unsophisticated, and criticize them for relying on natural charm to overcome faux pas. Perhaps of all the known races, gnomes find aasimars most fascinating, and have an intense appreciation for their varied appearances as well as the mystique surrounding their celestial heritage.

Alignment and Religion: Aasimars are most often of good alignment, though this isn’t necessarily universal, and aasimars that have turned their back on righteousness may fall into an unfathomable abyss of depravity. For the most part, however, aasimars favor deities of honor, valor, protection, healing, and refuge, or simple and prosaic faiths of home, community, and family. Some also follow the paths of art, music, and lore, finding truth and wisdom in beauty and learning.

Adventurers: Aasimars frequently become adventurers, as they often do not quite feel at home in human society and feel the pull of some greater destiny. Clerics, oracles, and paladins are most plentiful in their ranks, though bards, sorcerers, and summoners are not uncommon among those with a fondness for arcane magic. Aasimar barbarians are rare, but when born into such tribes they often rise to leadership and encourage their clans to embrace celestial totems.

Male Names: Aritian, Beltin, Cernan, Cronwier, Eran, Ilamin, Maudril, Okrin, Parant, Tural, Wyran, Zaigan.

Female Names: Arken, Arsinoe, Davina, Drinma, Imesah, Masozi, Nijena, Niramour, Ondrea, Rhialla, Valtyra.")

RaceAbilityScoreModifier.create!(race_id: aasimar.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: aasimar.id, ability_score: "Charisma", bonus: 2)

RacialTrait.create!(name: "Languages", race_id: aasimar.id, description: "Aasimars begin play speaking Common and Celestial. Aasimars with high Intelligence scores can choose from the following languages: Draconic, Dwarven, Elven, Gnome, Halfling, and Sylvan. See the Linguistics skill page for more information about these languages.")
RacialTrait.create!(name: "Celestial Resistance", race_id: aasimar.id, description: "Aasimars have acid resistance 5, cold resistance 5, and electricity resistance 5.")
RacialTrait.create!(name: "Skilled", race_id: aasimar.id, description: "Aasimar have a +2 racial bonus on Diplomacy and Perception checks.")
RacialTrait.create!(name: "Spell-like Ability", race_id: aasimar.id, description: "Aasimars can use daylight once per day as a spell-like ability (caster level equal to the aasimar’s class level).")
RacialTrait.create!(name: "Darkvision", race_id: aasimar.id, description: "Darkvision: Aasimar have darkvision 60 ft. (they can see perfectly in the dark up to 60 feet.)")
# RacialTrait.create!(name: "", race_id: , description: "")

print "Aasimar created! \r"

kitsune = Race.create!(name: "Kitsune", speed: 30, size: "Medium", img_url: "https://db4sgowjqfwig.cloudfront.net/assets/254331/Kitsune.jpg", source_id: advanced_race_guide.id, description: "Kitsune, or fox folk, are vulpine shapeshifters known for their love of both trickery and art. Kitsune possess two forms: that of an attractive human of slender build with salient eyes, and their true form of an anthropomorphic fox. Despite an irrepressible penchant for deception, kitsune prize loyalty and make true companions. They delight in the arts, particularly riddles and storytelling, and settle in ancestral clans, taking their wisdom from both the living and spirits.

Quick-witted and nimble, kitsune make excellent bards and rogues. It is not uncommon for one to pursue sorcery, while those few born with white fur and pale eyes usually become oracles.

Physical Description: A kitsune has two forms—a single human form and its true form, that of a humanoid fox. In their human forms, kitsune tend toward quickness and lithe beauty. In all forms they possess golden, amber, or brilliant blue eyes. In their true forms, they are covered with a downy coat of auburn fur, although more exotic coloration is possible.

Society: Kitsune society is enigmatic, as kitsune prize loyalty among their friends but delight in good-natured mischief and trickery. Kitsune take pleasure in the pursuit of creative arts and in all forms of competition, especially the telling of stories interwoven with tall tales and falsehoods.

Relations: Kitsune deal well with elves and samsarans, but their reputation as tricksters follows them when they interact with other races. Many kitsune, particularly those who dwell in mixed-race societies, choose to hide their true natures and pose as humans in public.

Alignment and Religion: Kitsune tend to be neutral, or of alignments with a neutral component. Most kitsune worship the goddess of craftsmanship.

Adventurers: Keenly interested in adding their own names to the myths and legends of explorers and heroes of old, Kitsune adventurers range across the world.

Female Names: Ayaki, Jiyoki, Kyomi, Miyaro, Shinyai, Yulai

Male Names: Chankotu, Imhakaru, Kyrsaku, Namkitu, Yanyeeku")

RaceAbilityScoreModifier.create!(race_id: kitsune.id, ability_score: "Dexterity", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: kitsune.id, ability_score: "Charisma", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: kitsune.id, ability_score: "Strength", bonus: -2)

RacialTrait.create!(name: "Languages", race_id: kitsune.id, description: "Kitsune begin play speaking Common and Sylvan. Kitsune with high Intelligence scores can choose from the following: any human language, Aklo, Celestial, Elven, Gnome, and Tengu. See the Linguistics skill page for more information about these languages.")
RacialTrait.create!(name: "Agile", race_id: kitsune.id, description: "Kitsune receive a +2 racial bonus on Acrobatics checks.")
RacialTrait.create!(name: "Change Shape", race_id: kitsune.id, description: "A kitsune can assume the appearance of a specific single human form of the same sex. The kitsune always takes this specific form when she uses this ability. A kitsune in human form cannot use her bite attack, but gains a +10 racial bonus on Disguise checks made to appear human. Changing shape is a standard action. This ability otherwise functions as alter self, except that the kitsune does not adjust her ability scores and can remain in this form indefinitely.")
RacialTrait.create!(name: "Kitsune Magic", race_id: kitsune.id, description: "Kitsune add +1 to the DC of any saving throws against enchantment spells that they cast. Kitsune with a Charisma score of 11 or higher gain the following spell-like ability: 3/day—dancing lights (caster level equals the kitsune’s level).")
RacialTrait.create!(name: "Natural Weapons", race_id: kitsune.id, description: "In her natural form, a kitsune has a bite attack that deals 1d4 points of damage.")
RacialTrait.create!(name: "Low-Light Vision", race_id: kitsune.id, description: "Kitsune can see twice as far as humans in conditions of dim light.")
# RacialTrait.create!(name: "", race_id: , description: "")

print "Kitsune created! \r"

grippli = Race.create!(name: "Grippli", speed: 30, size: "Small", img_url: "https://i.pinimg.com/originals/d2/a7/e8/d2a7e8b34c06bf381e08f3eadfda781d.png", source_id: advanced_race_guide.id, description: "Gripplis stand just over 2 feet tall and have mottled green-and-brown skin. Most gripplis are primitive hunter gatherers, living on large insects and fish found near their treetop homes, and are unconcerned about events outside their swamps. The rare grippli who leaves the safety of the swamp tends to be a ranger or alchemist seeking to trade for metals and gems.")

RaceAbilityScoreModifier.create!(race_id: grippli.id, ability_score: "Dexterity", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: grippli.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: grippli.id, ability_score: "Strength", bonus: -2)

RacialTrait.create!(name: "Climb Speed", race_id: grippli.id, description: "Gripplis have a climb speed of 20 feet")
RacialTrait.create!(name: "Languages", race_id: grippli.id, description: "Gripplis begin play speaking Common and Grippli. Gripplis with high Intelligence scores can choose from the following: Boggard, Draconic, Elven, Gnome, Goblin, and Sylvan. See the Linguistics skill page for more information about these languages.")
RacialTrait.create!(name: "Camouflage", race_id: grippli.id, description: "Gripplis receive a +4 racial bonus on Stealth checks in marshes and forested areas.")
RacialTrait.create!(name: "Swamp Stride", race_id: grippli.id, description: "A grippli can move through difficult terrain at its normal speed while within a swamp. Magically altered terrain affects a grippli normally.")
RacialTrait.create!(name: "Weapon Familiarity", race_id: grippli.id, description: "Gripplis are proficient with nets.")
RacialTrait.create!(name: "Darkvision", race_id: grippli.id, description: "Gripplis can see perfectly in the dark up to 60 feet.")
# RacialTrait.create!(name: "", race_id: , description: "")

print "Grippli created! \r"

orc = Race.create!(name: "Orc", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/55/3a/df/553adf14108659b44c5e67642ce9cf5b.jpg", source_id: advanced_race_guide.id, description: "Orcs are aggressive, callous, and domineering. Bullies by nature, they respect strength and power as the highest virtues. On an almost instinctive level, orcs believe they are entitled to anything they want unless someone stronger can stop them from seizing it. They rarely exert themselves off the battlefield except when forced to do so; this attitude stems not just from laziness but also from an ingrained belief that work should trickle down through the pecking order until it falls upon the shoulders of the weak. They take slaves from other races, orc men brutalize orc women, and both abuse children and elders, on the grounds that anyone too feeble to fight back deserves little more than a life of suffering. Surrounded at all times by bitter enemies, orcs cultivate an attitude of indifference to pain, vicious tempers, and a fierce willingness to commit unspeakable acts of vengeance against anyone who dares to defy them.

Physical Description: Powerfully built, orcs typically stand just a few inches taller than most humans but have much greater muscle mass, their broad shoulders and thick, brawny hips often giving them a slightly lurching gait. They typically have dull green skin, coarse dark hair, beady red eyes, and protruding, tusk-like teeth. Orcs consider scars a mark of distinction and frequently use them as a form of body art.

Society: Orcs usually live amid squalor and constant mayhem, and intimidation and brutal violence are the glue that holds orc culture together. They settle disputes by making increasingly grisly threats until, when a rival fails to back down, the conflict escalates into actual bloodshed. Orcs who win these ferocious brawls not only feel free to take whatever they want from the loser, but also frequently indulge in humiliating physical violation, casual mutilation, and even outright murder. Orcs rarely spend much time improving their homes or belongings since doing so merely encourages a stronger orc to seize them. In fact, whenever possible, they prefer to occupy buildings and communities originally built by other races.

Relations: Orcs admire strength above all things. Even members of enemy races can sometimes win an orc’s grudging respect, or at least tolerance, if they break his nose enough times.

Orcs regard dwarves and elves with an odd mix of fierce hatred, sullen resentment, and a trace of wariness. They respect power, and, on some level, understand that these two races have kept them at bay for countless ages. Though they never miss a chance to torment a dwarf or elf who falls into their clutches, they tend to proceed cautiously unless certain of victory. Orcs dismiss halflings and gnomes as weaklings barely worth the trouble of enslaving. They often regard half-elves, who appear less threatening than full-blooded elves but have many elven features, as particularly appealing targets. Orcs view humans as race of sheep with a few wolves living in their midst. They freely kill or oppress humans too weak to fend them off but always keep one eye on the nearest exit in case they run into a formidable human.

Orcs look upon half-orcs with a strange mixture of contempt, envy, and pride. Though weaker than typical orcs, these half-breeds are also usually smarter, more cunning, and better leaders. Tribes led, or at least advised, by half-orcs are often more successful than those led by pure-blooded orcs. On a more fundamental level, orcs believe each half-orc also represents an orc exerting dominance over a weaker race.

Alignment and Religion: Orcs have few redeeming qualities. Most are violent, cruel, and selfish. Concepts such as honor or loyalty usually strike them as odd character flaws that tend to afflict members of the weaker races. Orcs are typically not just evil, but chaotic to boot, though those with greater self-control may gravitate toward lawful evil. Orcs pray to gods of fire, war, and blood, often creating tribal “pantheons” by combining these aspects into uniquely orc concepts.

Adventurers: Orcs usually leave their tribes only after losing out in a power struggle. Facing humiliation, slavery, or even death at the hands of their own kind, they opt instead to live and work with members of other races. Orcs who fail to rein in their tempers and the instinctive drive to dominate rarely last long once they strike out on their own. Though orcs who do manage to get by in other societies often enjoy the luxuries and comforts these societies can deliver, they still tend to dream of returning home, seizing power, and taking revenge.

Male Names: Arkus, Carrug, Felzak, Murdut, Prabur.

Female Names: Durra, Grillgiss, Ilyat, Krugga, Leffit, Olbin, Trisgrak.")

RaceAbilityScoreModifier.create!(race_id: orc.id, ability_score: "Strength", bonus: 4)
RaceAbilityScoreModifier.create!(race_id: orc.id, ability_score: "Intelligence", bonus: -2)
RaceAbilityScoreModifier.create!(race_id: orc.id, ability_score: "Wisdom", bonus: -2)
RaceAbilityScoreModifier.create!(race_id: orc.id, ability_score: "Charisma", bonus: -2)

RacialTrait.create!(name: "Languages", race_id: orc.id, description: "Orcs begin play speaking Common and Orc. Orcs with high Intelligence scores can chose from the following: Dwarven, Giant, Gnoll, Goblin, Undercommon. See the Linguistics skill page for more information about these languages.")
RacialTrait.create!(name: "Ferocity", race_id: orc.id, description: "Orcs possess the ferocity ability which allows them to remain conscious and continue fighting even if their hit point totals fall below 0. Orcs are still staggered at 0 hit points or lower and lose 1 hit point each round as normal.")
RacialTrait.create!(name: "Weapon Familiarity", race_id: orc.id, description: "Orcs are always proficient with greataxes and falchions, and treat any weapon with the word “orc” in its name as a martial weapon.")
RacialTrait.create!(name: "Darkvision", race_id: orc.id, description: "Orcs can see perfectly in the dark up to 60 feet.")
RacialTrait.create!(name: "Light Sensitivity", race_id: orc.id, description: "Orcs are dazzled in areas of bright sunlight or within the radius of a daylight spell.")
# RacialTrait.create!(name: "", race_id: , description: "")

print "Orc created! \r"

changeling = Race.create!(name: "Changeling", speed: 30, size: "Medium", img_url: "https://pathfinderwiki.com/mediawiki/images/7/7d/Siova_Stormhilt.jpg", source_id: advanced_race_guide.id, description: "Changelings are the offspring of hags and their lovers taken through magic or madness. Dropped off on doorsteps of prospective foster parents, changelings are raised by strangers. Typically tall, slender, dark haired, and attractive, changelings otherwise resemble their fathers’ race. They are always female, and their mismatched colored eyes and abnormally pale skin hint at their true heritage. At puberty, changelings receive “the call,” a hypnotic spiritual voice that beckons them to travel and discover their true origins. Changelings who ignore this call choose their own destiny; those who heed it discover their “mother” and may come into great power by transforming into hags themselves.")

RaceAbilityScoreModifier.create!(race_id: changeling.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: changeling.id, ability_score: "Charisma", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: changeling.id, ability_score: "Constitution", bonus: -2)

RacialTrait.create!(name: "Languages", race_id: changeling.id, description: "Changelings begin play speaking Common and the primary language of their host society. Changelings with high Intelligence scores can choose from the following: Aklo, Draconic, Dwarven, Elven, Giant, Gnoll, Goblin, and Orc.")
RacialTrait.create!(name: "Natural Armor", race_id: changeling.id, description: "Changelings have a +1 natural armor bonus.")
RacialTrait.create!(name: "Claws", race_id: changeling.id, description: "Changelings’ fingernails are hard and sharp, granting them two claw attacks (1d4 points of damage each).")
RacialTrait.create!(name: "Darkvision", race_id: changeling.id, description: "Changelings see perfectly in the dark up to 60 feet.")
RacialTrait.create!(name: "Green Widow", race_id: changeling.id, description: "(Green Hag): The changeling gains a +2 racial bonus on Bluff checks against creatures that are sexually attracted to her.")
RacialTrait.create!(name: "Hulking Changeling", race_id: changeling.id, description: "(Annis Hag): The changeling gains a +1 racial bonus on melee damage.")
RacialTrait.create!(name: "Sea Lungs", race_id: changeling.id, description: "(Sea Hag): The changeling may hold her breath for a number of rounds equal to three times her Constitution before she risks drowning.")
# RacialTrait.create!(name: "", race_id: , description: "")

print "Changeling created! \r"

samsaran = Race.create!(name: "Samsaran", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/9c/ed/eb/9cedeb9c454258b301f8912c0f229801.png", source_id: advanced_race_guide.id, description: "Mysterious humanoids with pale blue flesh and transparent blood like the waters of a trickling brook, samsarans are ancient creatures even in their youth. A samsaran’s life is not a linear progression from birth to death, but rather a circle of birth to death to rebirth. Whenever a samsaran dies, it reincarnates anew as a young samsaran to live a new life. Her past memories remain vague and indistinct—and each new incarnation is as different a creature and personality as a child is to a parent. Samsarans appear similar to humans, with dark hair and solid white eyes with no pupils or irises. Skin tones are generally shades of light blue.

Capable of recalling the lessons and failings of their previous incarnations, the samsarans seek to live lives of balance and enlightenment in order to ensure they are reborn upon death to continue their trek through history.

Physical Description: Samsarans appear as humans with pale blue skin, solid white eyes with no pupil or iris, and dark hair. A samsaran’s blood is crystal clear, like the water of a pure mountain spring.

Society: Samsarans prefer to live simple lives of reflection, scholarship, and worship. They try to live their lives free of the ambitions and greed that mortality often imposes, since they view their lives as only the latest incarnation of many to come. Any accomplishments left undone in this current life can surely be achieved in the next, or the one after that. Samsarans’ memories of their past lives are not complete—they most often feel like half-remembered dreams. Samsarans can give birth, yet they do not give birth to samsarans—instead, they birth human children. Typically, samsarans give up their children not long after birth to be raised in human society, where the children grow and live their lives normally. Upon death, such offspring sometimes reincarnate as samsaran children, if they lived their lives in keeping with harmony. While most samsarans who die also reincarnate as samsaran children, this is not always the case. When a samsaran has utterly failed at maintaining harmony in her current life, or when she has succeeded perfectly at it, her soul instead travels to the Great Beyond to receive its final, long-delayed reward or doom. Samsarans do not keep family names, but often retain the names of their previous one or two incarnations, regardless of gender, as a sort of replacement for a family name to honor their previous lives’ accomplishments or to remind them of their past shames.

Relations: Humans and others often misunderstand samsarans’ nature. Many fear or even hate samsarans’ unusual association with death, thinking them to be strangely cursed souls at best or vengeful spirits made flesh at worst.

Alignment and Religion: Most samsarans are lawful good—but samsarans of any alignment are possible. Deeply religious, the majority of samsarans take patron deities even if they aren’t clerics.

Adventurers: Adventuring allows samsarans to see the world’s wonders, deepens their understanding of life, and lets them visit places half remembered from their previous lives.

Female Names: Chimi, Mindu, Nalita, Rema, Sonitri, Treeni, Yeshing

Male Names: Agyen, Bakji, Dakash, Henar, Puran, Sonan, Thukten")

RaceAbilityScoreModifier.create!(race_id: samsaran.id, ability_score: "Intelligence", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: samsaran.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: samsaran.id, ability_score: "Constitution", bonus: -2)

RacialTrait.create!(name: "Languages", race_id: samsaran.id, description: "Samsarans begin play speaking Common and Samsaran. Samsarans with high Intelligence scores can choose from the following: any human language, Abyssal, Aquan, Auran, Celestial, Draconic, Giant, Ignan, Infernal, Nagaji, Tengu, and Terran. See the Linguistics skill page for more information about these languages.")
RacialTrait.create!(name: "Lifebound", race_id: samsaran.id, description: "Samsarans gain a +2 racial bonus on all saving throws made to resist death effects, saving throws against negative energy effects, Fortitude saves made to remove negative levels, and Constitution checks made to stabilize if reduced to negative hit points.")
RacialTrait.create!(name: "Shards of the Past", race_id: samsaran.id, description: "A samsaran’s past lives grant her bonuses on two particular skills. A samsaran chooses two skills—she gains a +2 racial bonus on both of these skills, and they are treated as class skills regardless of what class she actually takes.")
RacialTrait.create!(name: "Low-Light Vision", race_id: samsaran.id, description: "Samsarans can see twice as far as humans in conditions of dim light.")
RacialTrait.create!(name: "Samsaran Magic", race_id: samsaran.id, description: "Samsarans with a Charisma score of 11 or higher gain the following spell-like abilities: 1/day—comprehend languages, deathwatch, and stabilize. The caster level for these effects is equal to the samsaran’s level.")
# RacialTrait.create!(name: "", race_id: , description: "")

print "Samsaran created! \r"

half_elf = Race.create!(name: "Half-elf", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/9e/a7/89/9ea7895e06d5bfc3dfafbc857a658783.png", source_id: core_rulebook.id, description: "Elves have long drawn the covetous gazes of other races. Their generous lifespans, magical affinity, and inherent grace each contribute to the admiration or bitter envy of their neighbors. Of all their traits, however, none so entrance their human associates as their beauty. Since the two races first came into contact with each other, humans have held up elves as models of physical perfection, seeing in these fair folk idealized versions of themselves. For their part, many elves find humans attractive despite their comparatively barbaric ways, and are drawn to the passion and impetuosity with which members of the younger race play out their brief lives.

Sometimes this mutual infatuation leads to romantic relationships. Though usually short-lived, even by human standards, such trysts may lead to the birth of half-elves, a race descended from two cultures yet inheritor of neither. Half-elves can breed with one another, but even these “pureblood” half-elves tend to be viewed as bastards by humans and elves alike. Caught between destiny and derision, half-elves often view themselves as the middle children of the world.

Physical Description: Half-elves stand taller than humans but shorter than elves. They inherit the lean build and comely features of their elven lineage, but their skin color is normally dictated by their human side. While half-elves retain the pointed ears of elves, theirs are more rounded and less pronounced. Their eyes tend to be human-like in shape, but feature an exotic range of colors from amber or violet to emerald green and deep blue. This pattern changes for half-elves of drow descent, however. Such elves are almost unfailingly marked with the white or silver hair of the drow parent, and more often than not have dusky gray skin that takes on a purplish or bluish tinge in the right light, while their eye color usually favors that of the human parent.

Society: Their lack of a unified homeland and culture forces half-elves to remain versatile, able to conform to nearly any environment. While often considered attractive to both races for the same reasons as their parents, half-elves rarely fit in with either humans or elves, as both races see too much evidence of the other in them. This lack of acceptance weighs heavily on many half-elves, yet others are bolstered by their unique status, seeing in their lack of a formalized culture the ultimate freedom. As a result, half-elves are incredibly adaptable, capable of adjusting their mind-sets and talents to whatever societies they find themselves in. Even half-elves welcomed by one side of their heritage often find themselves caught between cultures, as they are encouraged, cajoled, or even forced into taking on diplomatic responsibilities between human and elven kind. Many half-elves rise to the occasion of such service, seeing it as a chance to prove their worth to both races. Others, however, come to resent the pressures and presumptions foisted upon them by both races and turn any opportunity to broker power, make peace, or advance trade between humans and elves into an exercise in personal profit.

Relations: Half-elves understand loneliness, and know that character is often less a product of race than of life experience. As such, they are often open to friendships and alliances with other races, and less likely than most to rely on first impressions when forming opinions of new acquaintances. While many races join together to produce mixed offspring of notable power, such as half-orcs, half-dragons, and half-fiends, half-elves seem to have a unique position in the eyes of their progenitors and the rest of the world. Those humans who admire elvenkind see half-elves as a living link or bridge between the two races. But this attitude often foists unfair expectations and elevated standards upon half-elves, and quickly turns to derision when they do not live up to the grand destinies that others set for them. Additionally, those half-elves raised by or in the company of elves often have the human half of their parentage dubbed a mere obstacle, something to be overcome with proper immersion and schooling in the elven ways, and even the most well-meaning elven mentors often push their half-elven charges to reject a full half of themselves in order to “better” themselves. The exception is those few half-elves born of humans and drow. Not unlike most half-orcs, such unions are commonly born out of violence and savagery that leaves the child unwanted by its mother if not killed outright. Moreover, as the physical features of half-drow clearly mark their parentage, crafting a reputation founded on deeds and character instead of heritage is more challenging for them. Even the most empathetic of other half-elves balk at the sight of a half-drow. Among other races, half-elves form unique and often unexpected bonds. Dwarves, despite their traditional mistrust of elves, see a half-elf’s human parentage as something hopeful, and treat them as half-humans rather than half-elves. Additionally, while dwarves are long-lived, the lifespan of the stout folk is closer to a half-elf’s own than that of either of her parents. As a result, half-elves and dwarves often form lasting bonds, be they ones of friendship, business, or even competitive rivalry.

Gnomes and halflings often see half-elves as a curiosity. Those half-elves who have seen themselves pushed to the edges of society, truly without a home, typically find gnomes and halflings frivolous and worthy of disdain, but secretly envy their seemingly carefree ways. Clever and enterprising gnomes and halflings sometimes partner with a half-elf for adventures or even business ventures, using the half-elf’s participation to lend their own endeavors an air of legitimacy that they cannot acquire on their own.

Perhaps the most peculiar and dichotomous relations exist between half-elves and half-orcs. Those half-orcs and half-elves who were raised among their non-human kin normally see one another as hated and ancient foes. However, half-elves who have been marginalized by society feel a deep, almost instant kinship with half-orcs, knowing their burdens are often that much harder because of their appearance and somewhat brutish nature. Not all half-orcs are inclined or able to understand such empathy, but those who do often find themselves with a dedicated diplomat, liaison, and apologist. For their own part, half-orcs usually return the favor by acting as bodyguards or intimidators, and take on other roles uniquely suited to their brawny forms.

Alignment and Religion: Half-elves’ isolation strongly influences their characters and philosophies. Cruelty does not come naturally to them, nor does blending in or bending to societal convention—as a result, most half-elves are chaotic good. Half-elves’ lack of a unified culture makes them less likely to turn to religion, but those who do generally follow the common faiths of their homeland. Others come to religion and worship later in their lives, especially if they have been made to feel part of a community through faith or the work of clerical figures. Some half-elves feel the pull of the divine but live beyond the formal religious instruction of society. Such individuals often worship ideas and concepts like freedom, harmony, or balance, or the primal forces of the world. Still others gravitate toward long-forgotten gods, finding comfort and kinship in the idea that even deities can be overlooked.

Adventurers: Half-elves tend to be itinerants, wandering the lands in search of a place they might finally call home. The desire to prove themselves to the community and establish a personal identity—or even a legacy—drives many half-elf adventurers to lives of bravery. Some half-elves claim that despite their longevity, they perceive the passage of time more like humans than elves, and are driven to amass wealth, power, or fame early on in life so they may spend the rest of their years enjoying it.

Males Names: Calathes, Encinal, Iradli, Kyras, Narciso, Quinray, Seltyiel, Zirul.

Female Names: Cathran, Elsbeth, Iandoli, Kieyanna, Lialda, Maddela, Reda, Tamarie.")

RaceAbilityScoreModifier.create!(race_id: half_elf.id, ability_score: "Any", bonus: 2)

RacialTrait.create!(name: "Languages", race_id: half_elf.id, description: "Half-elves begin play speaking Common and Elven. Half-elves with high Intelligence scores can choose any languages they want (except secret languages, such as Druidic). See the Linguistics skill page for more information about these languages.")
RacialTrait.create!(name: "Elven Immunities", race_id: half_elf.id, description: "Half-elves are immune to magic sleep effects and gain a +2 racial saving throw bonus against enchantment spells and effects.")
RacialTrait.create!(name: "Adaptability", race_id: half_elf.id, description: "Half-elves receive Skill Focus as a bonus feat at 1st level.")
RacialTrait.create!(name: "Keen Senses", race_id: half_elf.id, description: "Half-elves receive a +2 racial bonus on Perception checks.")
RacialTrait.create!(name: "Low-Light Vision", race_id: half_elf.id, description: "Half-elves can see twice as far as humans in conditions of dim light.")
RacialTrait.create!(name: "Elf Blood", race_id: half_elf.id, description: "Half-elves count as both elves and humans for any effect related to race.")
RacialTrait.create!(name: "Multitalented", race_id: half_elf.id, description: "Half-elves choose two favored classes at first level and gain +1 hit point or +1 skill point whenever they take a level in either one of those classes.")
# RacialTrait.create!(name: "", race_id: , description: "")

print "Half-Elf created! \r"

vine_leshy = Race.create!(name: "Vine Leshy", speed: 20, size: "Small", img_url: "https://i.pinimg.com/originals/95/2f/4a/952f4a813b92fdde2da083dc934c36b3.png", source_id: ultimate_wilderness.id, description: "Vine leshys are born by ritual, called forth when a druid channels a nature spirit into a plant’s form. The nature spirit that answers the call for a vine leshy creation ritual is always one that has keenly felt the influence of mortal beings. Compared to other leshys, vine leshys have an easier time relating to non-plant creatures and a deeper sense of curiosity about the wonders of the natural world beyond those plants closely related to them, as well as a fascination with the societies of humans and other creatures.

Physical Description: A vine leshy’s body is made of masses of twisted vines and leaves, sometimes incorporating flowers and fruits as well. Their appearance is mostly determined by the species of vine used in their creation, but most have a large cluster of leaves that forms a face with round eyes, a small mouth, and no visible nose.

Society: Because of their ritual-based genesis, vine leshys do not have a traditional family structure. They form strong friendships with those who accompany them on explorations or who assist them in protecting a natural site. Unlike most leshys, vine leshys usually feel a strong desire to seek out the one who create!d them. They see their creators as friends and allies rather than as parents.

While most leshys devote themselves to protecting a particular ward for long stretches of time, vine leshys are far more likely to travel and explore, stopping to care for many different wards for short periods throughout their lifetime. Vine leshys love storytelling, but they place more importance on the meaning and message of the story than the details, both because they can’t always remember the details and because they find many details to be unnecessary. A story that has passed through several vine leshys is likely to undergo significant changes in characters and setting but usually retains its core message.

Relations: Vine leshys are interested in learning about the cultures of many other races. Their initial attitudes when they encounter new races are based on biases from the nature spirit’s past incarnations, but they evolve over time through the leshy’s experiences. In unfamiliar situations, vine leshys prefer to blend in with vegetation to observe before venturing out and introducing themselves.

Consistent with the plant species from which they derive their bodies, vine leshys recognize a spectrum of genders. Some vine leshys are exclusively female or male, while many vine leshys are both. The biological features of a leshy’s flowers do not necessarily indicate its gender, as the nature spirit that inhabits the leshy plays a strong role in determining the leshy’s identity.

Vine leshys have an unusual relationship with other leshys, for unlike standard leshys, vine leshys are not grown to be servants. They are free-willed and individualistic creatures. Whether or not an individual vine leshy views the servitude other leshys endure as akin to slavery or as something more like an honorable tradition of service to a powerful druid depends on the vine leshy’s opinion and alignment. While it’s unusual for a vine leshy to take on another leshy as a minion in the traditional way, it’s not unusual to see vine leshys take on sponsorship of a sort over other leshys, treating them almost as adopted children or wayward exiles in need of guidance and protection from those who would force their servitude.

Alignment and Religion: Vine leshys see themselves as part of the ancient cycle of nature. They care for their friends and any natural areas under their care, but rarely feel compelled toward either charity or malice. Most vine leshys are truly neutral, and they almost always have at least one neutral aspect to their alignments. Religion is not particularly important to vine leshys.

Adventurers: Like most leshys, vine leshys typically do not fear death. They know that if their bodies die, their spirits will return to the natural world and may someday find themselves in new bodies. This lack of fear combined with their curiosity leads them to take risks. However, they typically avoid excessively dangerous activities, as they would rather gather a story from their adventures to tell later. Vine leshys gravitate toward classes that let them use their connection to nature, such as druid and ranger.

Names: Vine leshys’ names change throughout their lives. A young vine leshy typically names herself after her physical characteristics or a natural feature that she particularly enjoys. As vine leshys age, they modify their names to better reflect their personality and experiences. A leshy may even have several names that she cycles among, such as one name for each season. Most vine leshys select names that are at least two words long. Example vine leshy names include Burbling Waterfall, Lovely Triple Leaves, Masterful Sun Drinker, Snowy Pine Branches, Verdant Taleweaver, and Vibrant Tree Climber.")

RaceAbilityScoreModifier.create!(race_id: vine_leshy.id, ability_score: "Constitution", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: vine_leshy.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: vine_leshy.id, ability_score: "Intelligence", bonus: -2)

RacialTrait.create!(name: "Type", race_id: vine_leshy.id, description: "Vine leshys are plants with the leshy subtype but lack the immunities to mind-affecting effects, paralysis, poison, polymorph, sleep, and stunning that the plant type usually grants, and they lack the immunity to electricity and sonic that the leshy subtype usually grants.")
RacialTrait.create!(name: "Languages", race_id: vine_leshy.id, description: "Vine leshys begin play speaking Common and Sylvan. Vine leshys with high Intelligence scores can choose from the following: Aquan, Auran, Aklo, Elven, Gnome, Goblin, Terran, or Undercommon.")
RacialTrait.create!(name: "Plantspeech", race_id: vine_leshy.id, description: "Vine leshys can speak with vines as if subject to a continual speak with plants spell.")
RacialTrait.create!(name: "Darkvision", race_id: vine_leshy.id, description: "Vine leshys can see in the dark up to 60 feet.")
RacialTrait.create!(name: "Low-Light Vision", race_id: vine_leshy.id, description: "Vine leshys can see twice as far as humans under conditions of dim light.")
RacialTrait.create!(name: "Pass without Trace", race_id: vine_leshy.id, description: "Vine leshys have pass without trace as a constant spell-like ability (caster level 2nd).")
RacialTrait.create!(name: "Change Shape", race_id: vine_leshy.id, description: "Vine leshys can transform into vines, with results similar to tree shape. In this form, the leshy appears as a particularly healthy Small vine. The leshy can assume plant form or revert to its true form as a swift action.")
RacialTrait.create!(name: "Verdant Burst", race_id: vine_leshy.id, description: "When slain, a vine leshy explodes in a burst of fertile energies. All plant creatures within 30 feet of the slain leshy regain hit 1d8 points, and vines quickly infest the area. If the terrain can support vines, the undergrowth is dense enough to make the region into difficult terrain for 24 hours, after which the plant life diminishes to a normal level; otherwise, this plant life has no significant effect on movement and withers and dies within an hour.")
RacialTrait.create!(name: "Unassuming Foliage", race_id: vine_leshy.id, description: "Vine leshys gain a +4 racial bonus on Stealth checks in forests.")
RacialTrait.create!(name: "Climber", race_id: vine_leshy.id, description: "Vine leshys gain a +2 racial bonus on Climb checks.")
# RacialTrait.create!(name: "", race_id: , description: "")

print "Vine Leshy created! \r"

human = Race.create!(name: 'Human', speed: 30, size: 'Medium', img_url: 'https://i.pinimg.com/474x/d1/a3/7d/d1a37d1463e284fe516ccd48ba0d46af.jpg', source_id: core_rulebook.id, description: 'Humans possess exceptional drive and a great capacity to endure and expand, and as such are currently the dominant race in the world. Their empires and nations are vast, sprawling things, and the citizens of these societies carve names for themselves with the strength of their sword arms and the power of their spells. Humanity is best characterized by its tumultuousness and diversity, and human cultures run the gamut from savage but honorable tribes to decadent, devil-worshiping noble families in the most cosmopolitan cities. Humans’ curiosity and ambition often triumph over their predilection for a sedentary lifestyle, and many leave their homes to explore the innumerable forgotten corners of the world or lead mighty armies to conquer their neighbors, simply because they can.

Human society is a strange amalgam of nostalgia and futurism, being enamored of past glories and wistfully remembered “golden ages,” yet at the same time quick to discard tradition and history and strike off into new ventures. Relics of the past are kept as prized antiques and museum pieces, as humans love to collect things—not only inanimate relics but also living creatures—to display for their amusement or to serve by their side. Other races suggest this behavior is due to a deep-rooted urge to dominate and assert power in the human psyche, an urge to take, till, or tame the wild things and places of the world. Those with a more charitable view believe humans are simply collectors of experiences, and the things they take and keep, whether living, dead, or never alive, are just tokens to remind themselves of the places they have gone, the things they have seen, and the deeds they have accomplished. Their present and future value is just a bonus; their real value is as an ongoing reminder of the inevitable progress of humanity.

Humans in many places are fascinated by older races and cultures, though at times they grow frustrated or even contemptuous of ancient and (to their mind) outmoded traditions. Their attitudes toward other races are thus a curious mix of exoticism and even fetishism, though usually with a very superficial level of understanding and appreciation of those cultures, alongside a deeply rooted arrogance that means most humans have a hard time regarding themselves as anything other than the default standard of society. Human scholars engaged in the study of other races—who might be assumed to be the most cosmopolitan and well versed in their nature and culture—have often proved no better than the less-learned members of their race when it comes to genuine closing of the social distance. Humans are gregarious, often friendly, and willing to mix and interact with others, but their sheer obliviousness to their off handed marginalization of others is what so chagrins other races when dealing with them.

Of course, well-meaning, blundering ignorance and numerical superiority are not the only things that make other races suspicious of humans. Entirely too many examples can be found throughout history wherein human xenophobia and intolerance has led to social isolationism, civil oppression, bloody purges, inquisitions, mob violence, and open war. Humans are not the only race to hate what is different among them, but they seem to have a susceptibility to fear-mongering and suspicion, whether about race, language, religion, class, gender, or another difference. More moderate human citizens often sit idly by while their more extreme compatriots dominate the political and cultural conversation, yet there are also many who stand in opposition to extremists and embody a spirit of unity across the bounds of difference, transcending barriers and forming alliances and relationships both large and small across every color, creed, country, or species.

Physical Description: The physical characteristics of humans are as varied as the world’s climes. From the dark-skinned tribesmen of the southern continents to the pale and barbaric raiders of the northern lands, humans possess a wide variety of skin colors, body types, and facial features. Generally speaking, humans’ skin color assumes a darker hue the closer to the equator they live. At the same time, bone structure, hair color and texture, eye color, and a host of facial and bodily phenotypic characteristics vary immensely from one locale to another. Cheekbones may be high or broad, noses aquiline or flat, and lips full or thin; eyes range wildly in hue, some deep set in their sockets, and others with full epicanthic folds. Appearance is hardly random, of course, and familial, tribal, or national commonalities often allow the knowledgeable to identify a human’s place of origin on sight, or at least to hazard a good guess. Humans’ origins are also indicated through their traditional styles of bodily decoration, not only in the clothing or jewelry worn, but also in elaborate hairstyles, piercing, tattooing, and even scarification.

Society: Human society comprises a multitude of governments, attitudes, and lifestyles. Though the oldest human cultures trace their histories thousands of years into the past, when compared to the societies of other races like elves and dwarves, human society seems to be in a state of constant flux as empires fragment and new kingdoms subsume the old. In general, humans are known for their flexibility, ingenuity, and ambition. Other races sometimes envy humans their seemingly limitless adaptability, not so much biologically speaking but in their willingness to step beyond the known and press on to whatever might await them. While many or even most humans as individuals are content to stay within their comfortable routine, there is a dauntless spirit of discovery endemic to humans as a species that drives them in striving toward possibilities beyond every horizon.

Relations: Humans are fecund, and their drive and numbers often spur them into contact with other races during bouts of territorial expansion and colonization. In many cases, this tendency leads to violence and war, yet humans are also swift to forgive and forge alliances with races who do not try to match or exceed them in violence. Proud, sometimes to the point of arrogance, humans might look upon dwarves as miserly drunkards, elves as flighty fops, halflings as craven thieves, gnomes as twisted maniacs, and half-elves and half-orcs as embarrassments—but the race’s diversity among its own members also makes many humans quite adept at accepting others for what they are. Humans may become so absorbed in their own affairs that they remain ignorant of the language and culture of others, and some take this ignorance to a hateful extreme of intolerance, oppression, and rarely even extermination of others they perceive as dangerous, strange, or “impure.” Thankfully, while such incidents and movements may taint all of humanity in the eyes of some, they are more often the exception than the rule.

Alignment and Religion: Humanity is perhaps the most diverse of all the common races, with a capacity for both great evil and boundless good. Some humans assemble into vast barbaric hordes, while others build sprawling cities that cover miles. Taken as a whole, most humans are neutral, yet they generally tend to congregate in nations and civilizations with specific alignments. Humans also have the widest range of gods and religions, lacking other races’ ties to tradition and eager to turn to anyone offering them glory or protection.

Adventurers: Ambition alone drives countless humans, and for many, adventuring serves as a means to an end, whether it be wealth, acclaim, social status, or arcane knowledge. A few pursue adventuring careers simply for the thrill of danger. Humans hail from myriad regions and backgrounds, and as such can fill any role within an adventuring party.

Female Names: Alerdene, Alinza, Aula, Bach Hien, Belka, Beshkee, Chammady, Chao, Do Quyen, Eshe, Eudomia, Gerda, Hiriko, Ilinica, Indah, Ingirt, Izora, Jalket, Jayazi, Kaede, Kalizama, Kamshi, Lestari, Leyli, Marisan, Me’amesa, Meilin, Mirelinda, Mpaandi, Nalmida, Nanya, Narantuyaa, Ntisi, Pasara, Pontia, Que Xuan, Revhi, Runa, Sahba, Shirin, Shivkah, Sinkitah, Surenchinua, Udara, Umie, Valki, Waajida, Xemne, Xue, Zalika, Zova.

Male Names: Aakif, Andrezi, Arasmes, Bahram, Baolo, Barid, Batsaikhan, Belor, Budi, Darvan, Dolok, Eilif, Garidan, Gellius, Hadzi, Hamengku, Harisko, Iacobus, Jaali, Jianguo, Kjell, Kousei, Kronug, Menas, Mitabu, Narsius, Nonek, Pateba, Pratavh, Qorchi, Ragnar, Rubani, Seckor, Shokamb, Shuo, Sunaki, Suryo, Tabansi, Teruawa, Thanh Liem, Toan Hao, Tomorbataar, Tuong Kinh, Ursion, Vachedi, Viorec, Yekskya, Zaiho, Zhen.')

RaceAbilityScoreModifier.create!(race_id: human.id, ability_score: "Any", bonus: 2)

RacialTrait.create!(name: "Languages", race_id: human.id, description: "Humans begin play speaking Common. Humans with high Intelligence scores can choose any languages they want (except secret languages, such as Druidic).")
RacialTrait.create!(name: "Bonus Feat", race_id: human.id, description: "Humans select one extra feat at 1st level.")
RacialTrait.create!(name: "Skilled", race_id: human.id, description: "Humans gain an additional skill rank at first level and one additional rank whenever they gain a level.")
# RacialTrait.create!(name: "", race_id: , description: "")

print "Human created! \r"

tiefling = Race.create!(name: 'Tiefling', speed: 30, size: 'Medium', img_url: 'https://vignette.wikia.nocookie.net/thelostfrontier/images/b/b7/Female_nephilim.jpg', source_id: advanced_race_guide.id, description: 'Simultaneously more and less than mortal, tieflings are the offspring of humans and fiends. With otherworldly blood and traits to match, tieflings are often shunned and despised out of reactionary fear. Most tieflings never know their fiendish sire, as the coupling that produced their curse occurred generations earlier. The taint is long-lasting and persistent, often manifesting at birth or sometimes later in life, as a powerful, though often unwanted, boon. Despite their fiendish appearance and netherworld origins, tieflings have a human’s capacity of choosing their fate, and while many embrace their dark heritage and side with fiendish powers, others reject their darker predilections. Though the power of their blood calls nearly every tiefling to fury, destruction, and wrath, even the spawn of a succubus can become a saint and the grandchild of a pit fiend an unsuspecting hero.

Physical Description: No two tieflings look alike; the fiendish blood running through their veins manifests inconsistently, granting them an array of fiendish traits. One tiefling might appear as a human with small horns, a barbed tail, and oddly colored eyes, while another might manifest a mouth of fangs, tiny wings, and claws, and yet another might possess the perpetual smell of blood, foul incenses, and brimstone. Typically, these qualities hearken back in some way to the manner of fiend that spawned the tiefling’s bloodline, but even then the admixture of human and fiendish blood is rarely ruled by sane, mortal laws, and the vast flexibility it produces in tieflings is a thing of wonder, running the gamut from oddly beautiful to utterly terrible.

Society: Tieflings on the Material Plane rarely create their own settlements and holdings. Instead, they live on the fringes of the land where they were born or choose to settle. Most societies view tieflings as aberrations or curses, but in cultures where there are frequent interactions with summoned fiends, and especially where the worship of demons, devils, or other evil outsiders is legal or obligatory, tieflings might be much more populous and accepted, even cherished as blessings of their fiendish overlords. Tieflings seldom see another of their own kind, and thus they usually simply adopt the culture and mannerisms of their human parents. On other planes, tieflings form enclaves of their own kind. But often such enclaves are less than harmonious—the diversity of tiefling forms and philosophies is an inherent source of conflict between members of the race, and cliques and factions constantly form in an ever-shifting hierarchy where only the most opportunistic or devious gain advantage. Only those of common bloodlines or those who manage to divorce their worldview from the inherently selfish, devious, and evil nature of their birth manage to find true acceptance, camaraderie, and common ground among others of their kind.

Relations: Tieflings face a significant amount of prejudice from most other races, who view them as fiend-spawn, seeds of evil, monsters, and lingering curses placed upon the world. Far too often, civilized races shun or marginalize them, while more monstrous ones simply fear and reject them unless forced or cowed into acceptance. But half-elves, half-orcs, fetchlings and—most oddly—aasimars tend to view them as kindred spirits who are too often rejected or who don’t fit into most societies by virtue of their birth. The widespread assumption that tieflings are innately evil—ill-founded though it may be—prevents many from easily fitting into most cultures on the Material Plane except in exceedingly cosmopolitan or planar-influenced nations.

Alignment and Religion: Despite their fiendish heritage and the insidious influence of prejudice, tieflings can be of any alignment. Many of them fall prey to the dark desires that haunt their psyches, and give in to the seduction of the whispering evil within, yet others steadfastly reject their origins and actively fight against evil lures and the negative assumptions they face from others by performing acts of good. Most, however, strive to simply find their own way in the world, though they tend to adopt a very amoral, neutral view when they do. Though many creatures just assume that tieflings worship devils and demons, their religious views are as varied as their physical forms. Individual tieflings worship all manner of deities, but they are just as likely to shun religion all together. Those who give in to the dark whispers that haunt the psyche of all tieflings serve all manner of powerful fiends.

Adventurers: Tieflings rarely integrate into the mortal societies they call home. Drawn to the adventuring life as a method of escape, they hope to make a better life for themselves, to prove their freedom from their blood’s taint, or to punish a world that fears and rejects them. Tieflings make skilled rogues, powerful wizards and magi, and especially puissant sorcerers as their potent blood empowers them. Those who succumb to the evil within often become powerful clerics of fiendish powers.

Male Names: Baru, Dellisar, Maldrek, Molos, Sarvin, Shoremoth, Temerith, Voren, Zoren.

Female Names: Allizsah, Indranna, Kasidra, Kilarra, Mellisan, Mordren, Nisha.')

RaceAbilityScoreModifier.create!(race_id: tiefling.id, ability_score: "Dexterity", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: tiefling.id, ability_score: "Intelligence", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: tiefling.id, ability_score: "Charisma", bonus: -2)

RacialTrait.create!(name: 'Type', race_id: tiefling.id, description: 'Tieflings are outsiders with the native subtype.')
RacialTrait.create!(name: 'Languages', race_id: tiefling.id, description: 'Tieflings begin play speaking Common and either Abyssal or Infernal. Tieflings with high intelligence scores can choose from the following: Abyssal, Draconic, Dwarven, Elven, Gnome, Goblin, Halfling, Infernal, and Orc.')
RacialTrait.create!(name: 'Fiendish Resistance', race_id: tiefling.id, description: 'Tieflings have cold resistance 5, electricity resistance 5, and fire resistance 5.')
RacialTrait.create!(name: 'Skilled', race_id: tiefling.id, description: 'Tieflings gain a +2 racial bonus on Bluff and Stealth checks.')
RacialTrait.create!(name: 'Spell-like Ability', race_id: tiefling.id, description: 'Tieflings can use darkness once per day as a spell-like ability. The caster level for this ability equals the tiefling’s class level.')
RacialTrait.create!(name: 'Darkvision', race_id: tiefling.id, description: 'Tieflings can see perfectly in the dark for up to 60 feet.')
RacialTrait.create!(name: 'Fiendish Sorcery', race_id: tiefling.id, description: 'Tiefling sorcerers with the Abyssal or Infernal bloodlines treat their Charisma score as 2 points higher for all sorcerer class abilities.')

print "Tiefling created! \r"

wyvaran = Race.create!(name: "Wyvaran", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/15/be/b6/15beb63f1d370f3a850533238965aa4e.png", source_id: bestiary_4.id, description: "These creatures are the result of magical draconic experiments at crossbreeding wyverns and kobolds. Wyvarans are fiercely territorial creatures loyal to their kin and tribe, and allow no interlopers into their lands without good reason or proper tribute. Each defends its personal property, and seeks revenge on any who dare steal from it. Most evil and neutral wyvarans primarily concern themselves with expanding their territory and wealth.

Many civilized races dismiss wyvarans as fast, dumb, selfish brutes. However, a creature who respects the wyvarans’ rules about their property finds that they make steadfast and loyal allies. Adventuring wyvarans often view their companions as clutchmates, and are willing to take great risks to protect them.")

RaceAbilityScoreModifier.create!(race_id: wyvaran.id, ability_score: "Dexteriy", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: wyvaran.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: wyvaran.id, ability_score: "Intelligence", bonus: -2)

RacialTrait.create!(name: "Type", race_id: wyvaran.id, description: "Wyvarans are dragons.")
RacialTrait.create!(name: "Languages", race_id: wyvaran.id, description: "Wyvarans speak Common and Draconic. A wyvaran with a high Intelligence score can choose from the following: Dwarven, Elven, Gnome, Goblin, and Orc.")
RacialTrait.create!(name: "Flight", race_id: wyvaran.id, description: "Wyvarans have dragonlike wings that grant them a fly speed of 30 feet with clumsy maneuverability.")
RacialTrait.create!(name: "Slapping Tail", race_id: wyvaran.id, description: "Wyvarans have a tail attack they can only use when making attacks of opportunity. This slapping tail attack deals 1d8 points of damage plus the wyvaran’s Strength modifier.")
RacialTrait.create!(name: "Darkvision", race_id: wyvaran.id, description: "Wyvarans can see in the dark up to 60 feet.")
RacialTrait.create!(name: "Low-Light Vision", race_id: wyvaran.id, description: "Wyvarans have low-light vision.")
# RacialTrait.create!(name: "", race_id: , description: "")
# RacialTrait.create!(name: "", race_id: , description: "")
# RacialTrait.create!(name: "", race_id: , description: "")
# RacialTrait.create!(name: "", race_id: , description: "")
# RacialTrait.create!(name: "", race_id: , description: "")
# RacialTrait.create!(name: "", race_id: , description: "")
# RacialTrait.create!(name: "", race_id: , description: "")
# RacialTrait.create!(name: "", race_id: , description: "")

print "Wyvaran created! \r"

puts "Ancestries Created!"


# /////////////////////////////////////////
# <-*-*-----*-*-*- Classes!-*-*-*-----*-*->
# /////////////////////////////////////////

oracle = Klass.create!(name: "Oracle", hit_die: 8, skill_ranks: 4, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: "https://i.pinimg.com/474x/31/c3/79/31c379bb4e8751a478360d8dfd22f7bc--female-wizard-pathfinder-rpg.jpg", source_id: advanced_players_guide.id, description: "Although the gods work through many agents, perhaps none is more mysterious than the oracle. These divine vessels are granted power without their choice, selected by providence to wield powers that even they do not fully understand. Unlike a cleric, who draws her magic through devotion to a deity, oracles garner strength and power from many sources, namely those patron deities who support their ideals. Instead of worshiping a single source, oracles tend to venerate all of the gods that share their beliefs. While some see the powers of the oracle as a gift, others view them as a curse, changing the life of the chosen in unforeseen ways.

Role: Oracles do not usually associate with any one church or temple, instead preferring to strike out on their own, or with a small group of like-minded individuals. Oracles typically use their spells and revelations to further their understanding of their mystery, be it through fighting mighty battles or tending to the poor and sick.

Alignment: Any.")

swashbuckler = Klass.create!(name: "Swashbuckler", hit_die: 10, skill_ranks: 4, fortitude: 0.34, reflex: 0.5, will: 0.34, img_url: "https://vignette.wikia.nocookie.net/pathfinderkingmaker/images/8/84/Taswik_duelist.jpg", source_id: advanced_class_guide.id, description: "Whereas many warriors brave battle encased in suits of armor and wielding large and powerful weapons, swashbucklers rely on speed, agility, and panache. Swashbucklers dart in and out of the fray, wearing down opponents with lunges and feints, all while foiling the powerful attacks against them with a flick of the wrist and a flash of the blade. Their deft parries and fatal ripostes are carnage elevated to an art form. Some may be arrogant and devil-may-care, but behind this veneer lie people deeply dedicated to their craft. Those of smaller races are particularly driven to prove that the right mix of discipline and daring is the perfect counter to size and strength, and enjoy nothing more than taking down lumbering brutes and bullies.

Role: Combining fancy footwork with quick and precise lunges, swashbucklers dart in and out of battle, harassing and thwarting their opponents. These fast and agile combatants serve as protectors for spellcasters and flank mates for rogues and slayers, while waiting for the opportunity to show panache and score the killing blow on some lumbering hulk. Swashbucklers often face death with wry humor, mocking it with jabbing wit.

Alignment: Any.

Hit Die: d10.

Parent Classes: Fighter and gunslinger.")

unchained_rogue = Klass.create!(name: "Rogue", hit_die: 8, skill_ranks: 8, fortitude: 0.34, reflex: 0.5, will: 0.34, img_url: "http://www.d20pfsrd.com/wp-content/uploads/sites/12/2017/01/rogue__comm_by_yamaorce-d88oizc-320-2.png", source_id: core_rulebook.id, description: "Life is an endless adventure for those who live by their wits. Ever just one step ahead of danger, rogues bank on their cunning, skill, and charm to bend fate to their favor. Never knowing what to expect, they prepare for everything, becoming masters of a wide variety of skills, training themselves to be adept manipulators, agile acrobats, shadowy stalkers, or masters of any of dozens of other professions or talents. Thieves and gamblers, fast talkers and diplomats, bandits and bounty hunters, and explorers and investigators all might be considered rogues, as well as countless other professions that rely upon wits, prowess, or luck. Although many rogues favor cities and the innumerable opportunities of civilization, some embrace lives on the road, journeying far, meeting exotic people, and facing fantastic danger in pursuit of equally fantastic riches. In the end, any who desire to shape their fates and live life on their own terms might come to be called rogues.

Role: Rogues excel at moving about unseen and catching foes unaware, and tend to avoid head-to-head combat. Their varied skills and abilities allow them to be highly versatile, with great variations in expertise existing between different rogues. Most, however, excel in overcoming hindrances of all types, from unlocking doors and disarming traps to outwitting magical hazards and conning dull-witted opponents.

Alignment: Any

")

shifter = Klass.create!(name: "Shifter", hit_die: 10, skill_ranks: 4, fortitude: 0.5, reflex: 0.5, will: 0.34, img_url: "https://i.pinimg.com/736x/2f/2f/1a/2f2f1a0f43c353bced1595dffa7db32c.jpg", source_id: ultimate_wilderness.id, description: "Whether riding on the wind as a falcon or hiding in some fetid bog waiting to strike, the shifter is a true master of the wild. Both a devoted defender of druidic circles and a fierce predator, the shifter can take on the forms of nature and even fuse them together with devastating effect and unbridled savagery. By way of the druidic discipline of wild shape, they become living aspects of the wild. At first, they are able to assume only a minor aspect, but with time and practice they can fully transform into ever more powerful forms.

The shifter class offers players a way to experience a shapeshifting character that is more martially inclined than a spellcasting druid. With each new level, the shifter’s powers grow in new and surprising ways, creating a character that thrives in battle, exploration, and stealth.

Shifters are protectors of druidic circles and avengers of nature, yet a shifter’s magic is different from that of her druidic kin. Rather than invoking spells from the natural world or forging alliances with animals, shifters focus their supernatural powers inward to gain control over their own forms. Their ability to change their forms is as varied as the wonders of the wilds themselves but always remains at least partially rooted in the natural world. There are many paths to becoming a shifter; most are trained in that role by druidic circles and have their powers unlocked via rituals of initiation. Yet some stumble upon the gift naturally, as if their blood bore the secrets of shifter transformation.

For those leaning toward the causes of law and good, the path of the shifter is one of contemplation and understanding. They become one with nature through mental and physical mimicry and gain an ever deeper spiritual understanding of the ebb and flow of the natural world. Those leaning toward the chaotic and evil teachings of druidic philosophy find such enlightenment through more violent means. These are typically quicker transformations, both brutal and painful, imparting the dark lessons of nature through its most catastrophic forms. Shifters who lean toward true neutrality are the most diverse when it comes to their command of metamorphic secrets.

Role: The shifter is so attuned to nature and the wild beasts of the world that she can call upon those powers to mystically fortify her being. Fluid in form and function, she can shape herself to overcome hardships and support those she befriends or serves.

Alignment: Any neutral.")

unchained_barbarian = Klass.create!(name: "Barbarian", hit_die: 12, skill_ranks: 4, fortitude: 0.5, reflex: 0.34, will: 0.34, img_url: "https://i.pinimg.com/originals/1b/16/b9/1b16b9707ef85952b3cee0482cdbbd3c.jpg", source_id: core_rulebook.id, description: "For some, there is only rage. In the ways of their people, in the fury of their passion, in the howl of battle, conflict is all these brutal souls know. Savages, hired muscle, masters of vicious martial techniques, they are not soldiers or professional warriors—they are the battle possessed, creatures of slaughter and spirits of war. Known as barbarians, these warmongers know little of training, preparation, or the rules of warfare; for them, only the moment exists, with the foes that stand before them and the knowledge that the next moment might hold their death. They possess a sixth sense in regard to danger and the endurance to weather all that might entail. These brutal warriors might rise from all walks of life, both civilized and savage, though whole societies embracing such philosophies roam the wild places of the world. Within barbarians storms the primal spirit of battle, and woe to those who face their rage.

Role: Barbarians excel in combat, possessing the martial prowess and fortitude to take on foes seemingly far superior to themselves. With rage granting them boldness and daring beyond that of most other warriors, barbarians charge furiously into battle and ruin all who would stand in their way.

Alignment: Any non-lawful")

witch = Klass.create!(name: "Witch", hit_die: 6, skill_ranks: 2, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: "https://paizo.com/image/content/PathfinderCampaignSetting/PZO9249-WinterWitch.jpg", source_id: advanced_players_guide.id, description: "Some gain power through study, some through devotion, others through blood, but the witch gains power from her communion with the unknown. Generally feared and misunderstood, the witch draws her magic from a pact made with an otherworldly power. Communing with that source, using her familiar as a conduit, the witch gains not only a host of spells, but a number of strange abilities known as hexes. As a witch grows in power, she might learn about the source of her magic, but some remain blissfully unaware. Some are even afraid of that source, fearful of what it might be or where its true purposes lie.

Role: While many witches are recluses, living on the edge of civilization, some live within society, openly or in hiding. The blend of witches’ spells makes them adept at filling a number of different roles, from seer to healer, and their hexes grant them a number of abilities that are useful in a fight. Some witches travel about, seeking greater knowledge and better understanding of the mysterious powers that guide them.

Alignment: Any.")

vigilante = Klass.create!(name: "Vigilante", hit_die: 8, skill_ranks: 6, fortitude: 0.34, reflex: 0.5, will: 0.5, img_url: "https://i.pinimg.com/originals/a7/79/cf/a779cf8972496626f1074d9cc62f27a0.png", source_id: ultimate_intrigue.id, description: "Being a renowned hero can be dangerous to your health and prosperity. Fighting against corruption and the evil that lurks within society makes you a target and, even worse, puts your friends and family in danger. For those who must maintain a social persona, being a part of the greater community while secretly fighting against powerful forces within it requires leading a double life.

By day, the vigilante maneuvers through society, dealing with other nobles or influential individuals. By night, he dons a disguise and an utterly different set of goals, taking the fight to his foes and solving problems with a blade when words will not suffice.

Game Masters should consider carefully whether or not a vigilante will make for a good fit with their campaign. The class is one that requires a degree of social aptitude and roleplaying to make full use of its potential.

Campaigns that focus more on wilderness exploration, travel, or dungeon delving and that are lighter on politics, negotiation, and manipulation might require a vigilante player to put in additional effort to make full use of his class features. Alternatively, a vigilante is uniquely suited to make for a powerful villain, hidden by day behind a mask of civility and a terror at night, free to commit terrible acts without risking discovery.

For players, the vigilante offers a unique opportunity to take on the role of a character with a hidden side, and whose life is committed to a secret agenda that he must struggle to advance in a complex world. Not every problem can be solved with a dagger in the dark, and even the most stubborn foe might be become an ally with the proper bribe. For the vigilante, these tasks are both within reach as long as you learn to properly use your dual nature and hidden skills to your fullest advantage.

Life can be unfair. Think of the starving peasants forced to toil for the local baron or the common laborers tasked with building the king’s newest palace for a mere handful of copper pieces each week. There are those who see these injustices and do nothing. There are those who are willing to reap the rewards obtained through the suffering of others.

Then there are those who see inequality and find themselves driven to take action, outside the law if necessary. These vigilantes operate in plain sight, hiding behind respectable personas by day, but donning alternate guises by night to right the wrongs they see all around them.

Not all vigilantes are out to make the world a better place. Some criminals hide behind the pretense of being ordinary folk, only to become terrors in the shadows, stealing and killing to fulfill some dark agenda. In either case, the vigilante is a character of two natures—the face that everyone knows and the mask that inspires fear.

Role: A vigilante can take on many tasks within a group. Most are skilled at negotiating delicate social situations and courtly intrigue, but they can also serve as stealthy spies or even brutish warriors in dangerous environments.

Alignment: Any.")

arcanist = Klass.create!(name: "Arcanist", hit_die: 6, skill_ranks: 2, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: "https://i.pinimg.com/originals/59/af/7d/59af7defc23bcd2a6338ad3d67e52df8.png", source_id: advanced_class_guide.id, description: "Some spellcasters seek the secrets of magic, pursuing the power to make the impossible possible. Others are born with magic in their blood, commanding unbelievable forces as effortlessly as they breathe. Yet still others seek to meld the science of arcane scholars with the natural might of innate casters. These arcanists seek to discover the mysterious laws of magic and through will and expertise bend those forces to their whims. Arcanists are the shapers and tinkers of the arcane world, and no magic can resist their control.

Role: Arcanists are scholars of all things magical. They constantly seek out new forms of magic to discover how they work, and in many cases, to collect the energy of such magic for their own uses. Many arcanists are seen as reckless, more concerned with the potency of magic than the ramifications of unleashing such power.

Alignment: Any.")

brawler = Klass.create!(name: "Brawler", hit_die: 10, skill_ranks: 4, fortitude: 0.5, reflex: 0.5, will: 0.34, img_url: "https://i.pinimg.com/originals/71/90/a8/7190a8fb193a883fda6f7fa5f1cc7bdd.jpg", source_id: advanced_class_guide.id, description: "Deadly even with nothing in her hands, a brawler eschews using the fighter’s heavy armor and the monk’s mysticism, focusing instead on perfecting many styles of brutal unarmed combat. Versatile, agile, and able to adapt to most enemy attacks, a brawler’s body is a powerful weapon.

Role: Brawlers are maneuverable and well suited for creating flanking situations or dealing with lightly armored enemies, as well as quickly adapting to a rapidly changing battlefield.

Alignment: Any.")

bard = Klass.create!(name: "Bard", hit_die: 8, skill_ranks: 6, fortitude: 0.34, reflex: 0.5, will: 0.5, img_url: "https://i.pinimg.com/originals/09/4c/27/094c279e4763d248da26622fb9654054.png", source_id: core_rulebook.id, description: "Untold wonders and secrets exist for those skillful enough to discover them. Through cleverness, talent, and magic, these cunning few unravel the wiles of the world, becoming adept in the arts of persuasion, manipulation, and inspiration. Typically masters of one or many forms of artistry, bards possess an uncanny ability to know more than they should and use what they learn to keep themselves and their allies ever one step ahead of danger. Bards are quick-witted and captivating, and their skills might lead them down many paths, be they gamblers or jacks-of-all-trades, scholars or performers, leaders or scoundrels, or even all of the above. For bards, every day brings its own opportunities, adventures, and challenges, and only by bucking the odds, knowing the most, and being the best might they claim the treasures of each.

Role: Bards capably confuse and confound their foes while inspiring their allies to ever-greater daring. While accomplished with both weapons and magic, the true strength of bards lies outside melee, where they can support their companions and undermine their foes without fear of interruptions to their performances.

Alignment: Any")

fate_weaver = Klass.create!(name: "Fate Weaver", hit_die: 6, skill_ranks: 6, fortitude: 0.34, reflex: 0.5, will: 0.34, img_url: "https://i.pinimg.com/originals/db/9f/cc/db9fcc1ded708f4ea2e90b515334b3b3.png", source_id: custom.id, description: "The Fate Weaver has been touched by those who control destiny, allowing their chaotic nature to benefit them tremendously. Whether they are aware of their powers, or believe they are just lucky, the Fate Weaver seeks domination. With their granted gifts, their fortune is more real than anyone else's: they just have to take it.

Role: The Fate Weaver has a wide array of options, but they may not always be consistent, necessary, or beneficial. Be wary of the Fate Weaver’s power: it is awesome in the both the good and the bad sense. A clutch Fate Weaver can change the tide in an instant, and often has a card up their sleeve for the most unlikely situations.

Alignment: Any Chaotic")

wizard = Klass.create!(name: "Wizard", hit_die: 6, skill_ranks: 2, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: "https://i.pinimg.com/originals/e0/cc/47/e0cc47ea55051b8221c15cfc208f3a20.png", source_id: core_rulebook.id, description: "Beyond the veil of the mundane hide the secrets of absolute power. The works of beings beyond mortals, the legends of realms where gods and spirits tread, the lore of creations both Wondrous Item and terrible—such mysteries call to those with the ambition and the intellect to rise above the common folk to grasp true might. Such is the path of the wizard. These shrewd magic-users seek, collect, and covet esoteric knowledge, drawing on cultic arts to work wonders beyond the abilities of mere mortals. While some might choose a particular field of magical study and become masters of such powers, others embrace versatility, reveling in the unbounded wonders of all magic. In either case, wizards prove a cunning and potent lot, capable of smiting their foes, empowering their allies, and shaping the world to their every desire.

Role: While universalist wizards might study to prepare themselves for any manner of danger, specialist wizards research schools of magic that make them exceptionally skilled within a specific focus. Yet no matter their specialty, all wizards are masters of the impossible and can aid their allies in overcoming any danger.

Alignment: Any")

unchained_summoner = Klass.create!(name: 'Summoner', hit_die: 8, skill_ranks: 2, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: 'https://i.pinimg.com/originals/4f/9d/ac/4f9dac371934ff8f117751e94165c285.png', source_id: advanced_players_guide.id, description: 'There are those who take a different path when pursuing the arcane arts, reaching across the boundaries of the world to the far-f lung planes to call forth all manner of creatures to do their bidding. Known as summoners, these arcane practitioners form close bonds with particular outsiders, known as eidolons, which increase in power along with their callers. In the end, summoners and their eidolons become linked, sharing shards of the same souls.

Role: Summoners spend much of their time exploring the arcane arts alongside their eidolons. While their power comes from within, they rely heavily on their eidolon companions in dangerous situations. While a summoner and his eidolon function as individuals, their true power lies in what they can accomplish together.

Unchained: Most of the summoner’s class features are the same as those of the class’s original design—the biggest change comes to the eidolon. The unchained summoner selects a subtype for his eidolon (such as angel, demon, or protean), which determines a number of its evolutions and helps to shape the eidolon’s general attitude and appearance. In addition, some of the evolutions are now tied to one or more subtypes and base forms, to make eidolons that better match the expected appearances and abilities of such creatures. Finally, the summoner spell list has been greatly revised, removing a number of imbalances.

Alignment: Any.')

cleric = Klass.create!(name: 'Cleric', hit_die: 8, skill_ranks: 2, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: 'https://i.pinimg.com/originals/11/64/74/116474aaa94e3c45029f6ec5c7c341ff.png', source_id: core_rulebook.id, description: 'In faith and the miracles of the divine, many find a greater purpose. Called to serve powers beyond most mortal understanding, all priests preach wonders and provide for the spiritual needs of their people. Clerics are more than mere priests, though; these emissaries of the divine work the will of their deities through strength of arms and the magic of their gods. Devoted to the tenets of the religions and philosophies that inspire them, these ecclesiastics quest to spread the knowledge and influence of their faith. Yet while they might share similar abilities, clerics prove as different from one another as the divinities they serve, with some offering healing and redemption, others judging law and truth, and still others spreading conflict and corruption. The ways of the cleric are varied, yet all who tread these paths walk with the mightiest of allies and bear the arms of the gods themselves.
Role: More than capable of upholding the honor of their deities in battle, clerics often prove stalwart and capable combatants. Their true strength lies in their capability to draw upon the power of their deities, whether to increase their own and their allies’ prowess in battle, to vex their foes with divine magic, or to lend healing to companions in need. As their powers are influenced by their faith, all clerics must focus their worship upon a divine source. While the vast majority of clerics revere a specific deity, a small number dedicate themselves to a divine concept worthy of devotion—such as battle, death, justice, or knowledge—free of a deific abstraction. (Work with your GM if you prefer this path to selecting a specific deity.)

Alignment: A cleric’s alignment must be within one step of her deity’s, along either the law/chaos axis or the good/evil axis.')

alchemist = Klass.create!(name: "Alchemist", hit_die: 8, skill_ranks: 4, fortitude: 0.5, reflex: 0.5, will: 0.34, img_url: "https://i.pinimg.com/originals/62/89/42/628942741fe62cefa1e3291428e6d8ff.png", source_id: advanced_players_guide.id, description: "Whether secreted away in a smoky basement laboratory or gleefully experimenting in a well-respected school of magic, the alchemist is often regarded as being just as unstable, unpredictable, and dangerous as the concoctions he brews. While some creators of alchemical items content themselves with sedentary lives as merchants, providing tindertwigs and smokesticks, the true alchemist answers a deeper calling. Rather than cast magic like a spellcaster, the alchemist captures his own magic potential within liquids and extracts he creates, infusing his chemicals with virulent power to grant him impressive skill with poisons, explosives, and all manner of self-transformative magic.

Role: The alchemist’s reputation is not softened by his exuberance (some would say dangerous recklessness) in perfecting his magical extracts and potion-like creations, infusing these substances with magic siphoned from his aura and using his own body as experimental stock. Nor is it mollified by the alchemist’s almost gleeful passion for building explosive bombs and discovering strange new poisons and methods for their use. These traits, while making him a liability and risk for most civilized organizations and institutions of higher learning, seem to fit quite well with most adventuring groups.

Alignment: Any.")
# Klass.create!(name: "", hit_die: , skill_ranks: , fortitude: , reflex: , will: , img_url: "", description: "")
# Klass.create!(name: "", hit_die: , skill_ranks: , fortitude: , reflex: , will: , img_url: "", description: "")

# /////////////////////////////////////////
# <-*-*-----*-*-*- Class Features!-*-*-*-----*-*->
# /////////////////////////////////////////

oracle1 = KlassFeature.create!(klass_id: oracle.id, name: "Weapon and Armor Proficiency", description: "Oracles are proficient with all simple weapons, light armor, medium armor, and shields (except tower shields). Some oracle revelations grant additional proficiencies.")

oracle2 = KlassFeature.create!(klass_id: oracle.id, name: "Spellcasting", description: "An oracle casts divine spells drawn from the cleric spell lists. She can cast any spell she knows without preparing it ahead of time. To learn or cast a spell, an oracle must have a Charisma score equal to at least 10 + the spell level. The Difficulty Class for a saving throw against an oracle’s spell is 10 + the spell’s level + the oracle’s Charisma modifier (see FAQ).

Like other spellcasters, an oracle can cast only a certain number of spells per day of each spell level. Her base daily spell allotment is given on Table: Oracle. In addition, she receives bonus spells per day if she has a high Charisma score (see Table: Ability Modifiers and Bonus Spells).

Unlike other divine spellcasters, an oracle’s selection of spells is extremely limited. An oracle begins play knowing four 0-level spells and two 1st-level spells of her choice. At each new oracle level, she gains one or more new spells, as indicated on Table: Oracle Spells Known. Unlike spells per day, the number of spells an oracle knows is not affected by her Charisma score; the numbers on Table: Oracle Spells Known are fixed.

In addition to the spells gained by oracles as they gain levels, each oracle also adds all of either the cure spells or the inflict spells to her list of spells known (cure spells include all spells with “cure” in the name, inflict spells include all spells with “inflict” in the name). These spells are added as soon as the oracle is capable of casting them. This choice is made when the oracle gains her first level and cannot be changed.

Upon reaching 4th level, and at every even-numbered oracle level after that (6th, 8th, and so on), an oracle can choose to learn a new spell in place of one she already knows. In effect, the oracle loses the old spell in exchange for the new one. The new spell’s level must be the same as that of the spell being exchanged. An oracle may swap only a single spell at any given level, and must choose whether or not to swap the spell at the same time that she gains new spells known for the level. She cannot swap any cure or inflict spells, nor can she swap any spells gained from her mystery. Unlike a cleric, an oracle need not prepare her spells in advance. She can cast any spell she knows at any time, assuming she has not yet used up her spells per day for that spell level. Oracles do not need to provide a divine focus to cast spells that list divine focus (DF) as part of the components.")

print "Oracle features created! \r"

witch1 = KlassFeature.create!(klass_id: witch.id, name: "Weapon and Armor Proficiency", description: "Witches are proficient with all simple weapons. They are not proficient with any type of armor or shield. Armor interferes with a witch’s gestures, which can cause her spells with somatic components to fail.")
    FeatureLevel.create!(klass_feature_id: witch1.id, level: 1, table_description: "none")

witch2 = KlassFeature.create!(klass_id: witch.id, name: "Spells", description: "A witch casts arcane spells drawn from the witch spell list. A witch must choose and prepare her spells ahead of time.

  To learn or cast a spell, a witch must have an Intelligence score equal to at least 10 + the spell level. The Difficulty Class for a saving throw against a witch’s spell is 10 + the spell level + the witch’s Intelligence modifier.

  A witch can cast only a certain number of spells of each spell level per day. Her base daily spell allotment is given on Table: Witch. In addition, she receives bonus spells per day if she has a high Intelligence score (see Table: Ability Modifiers and Bonus Spells).

  A witch may know any number of spells. She must choose and prepare her spells ahead of time by getting 8 hours of sleep and spending 1 hour communing with her familiar. While communing, the witch decides which spells to prepare.

  Cantrips Witches can prepare a number of cantrips, or 0-level spells, each day, as noted on Table: Witch under “Spells per Day.” These spells are cast like any other spell, but they are not expended when cast and may be used again. Cantrips prepared using other spell slots, due to metamagic feats for example, are expended normally.")
    FeatureLevel.create!(klass_feature_id: witch2.id, level: 1, table_description: "none")


witch3 = KlassFeature.create!(klass_id: witch.id, name: "Hex", description: "Witches learn a number of magic tricks, called hexes, that grant them powers or weaken foes. At 1st level, a witch gains one hex of her choice. She gains an additional hex at 2nd level and for every 2 levels attained after 2nd level, as noted on Table: Witch. A witch cannot select an individual hex more than once.

  Unless otherwise noted, using a hex is a standard action that does not provoke an attack of opportunity. The save to resist a hex is equal to 10 + 1/2 the witch’s level + the witch’s Intelligence modifier.")
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

print "Witch features created! \r"



  fate_weaver1 = KlassFeature.create!(klass_id: fate_weaver.id, name: "Chaotic Nature", description: "A Fate Weaver is initially a victim of chaos, but over time, she learns to become not only an agent, but a master of chaos. If she is damaged by a lawful creature’s unarmed attack, a lawfully aligned or axiomatic weapon, or a spell with a lawful descriptor, she takes additional damage equal to her Hit Dice.

  The Fate Weaver is more talented than she knows, even when pursuing other paths. She gains the Eschew Materials feat as a bonus feat, but only for spells cast through this class. If the Fate Weaver gains levels in other classes, but every 6th level gained in another class lets her roll once for an ability through her Chaotic Reveal class feature.")
    FeatureLevel.create!(klass_feature_id: fate_weaver1.id, level: 1, table_description: "Chaotic Nature")


  fate_weaver2 = KlassFeature.create!(klass_id: fate_weaver.id, name: "Chaotic Reveal", description: "A Fate Weaver is dominated by chance, and revels in the potential of chaos. At 1st level and every subsequent odd level, a Fate Weaver rolls a d100. Depending on the results, she gains an additional feature, power, stat increase, or ability, described in the Chaotic Reveal chart below. Unless otherwise mundane, the effect of these features are considered supernatural abilities.")
    FeatureLevel.create!(klass_feature_id: fate_weaver2.id, level: 1, table_description: "Chaotic Reveal")
    FeatureLevel.create!(klass_feature_id: fate_weaver2.id, level: 3, table_description: "Chaotic Reveal")
    FeatureLevel.create!(klass_feature_id: fate_weaver2.id, level: 5, table_description: "Chaotic Reveal")
    FeatureLevel.create!(klass_feature_id: fate_weaver2.id, level: 7, table_description: "Chaotic Reveal")
    FeatureLevel.create!(klass_feature_id: fate_weaver2.id, level: 9, table_description: "Chaotic Reveal")
    FeatureLevel.create!(klass_feature_id: fate_weaver2.id, level: 11, table_description: "Chaotic Reveal")
    FeatureLevel.create!(klass_feature_id: fate_weaver2.id, level: 13, table_description: "Chaotic Reveal")
    FeatureLevel.create!(klass_feature_id: fate_weaver2.id, level: 15, table_description: "Chaotic Reveal")
    FeatureLevel.create!(klass_feature_id: fate_weaver2.id, level: 17, table_description: "Chaotic Reveal")
    FeatureLevel.create!(klass_feature_id: fate_weaver2.id, level: 19, table_description: "Chaotic Reveal")
    chaotic1 = FeatureOption.create!(klass_feature_id: fate_weaver2.id, name: "Nightmare Forme", description: "Once a day, as an action lasts takes 1 minute, you can transform yourself into a Nightmare Form, a frightening and powerful being that augments your abilities. You size increases by one category, and your race alters into a different shape of your choice with additional changes: roll a 4d20 to decide what changes.

    1 - long and lithe, 2 - hulking and slouched, 3, glistening/flaking/wrinkled skin, 4 - a limb changes into a mechanical part/tentacle/claw, 5 - extra eyes on your head, 6 - shaggy hair, 7 - flaming/iced/rocky/translucent/metallic, 8 - ornamental wings, 9 - face goes into torso, 10 - hovering, 11 - body has holes like swiss cheese, 12 - sunken eyes and wide mouth, 13 - ornamental tail, 14 - proboscis, 15 - third arm, 16 - face on the back of you, 17 - spines/quills, 18 - impaled with weapon and bleeding, 19 - gaunt and withered, 20 - wispy, flowing clothing. You cannot apply the same result to your nightmare form.

    Select an ability score: it increases by +2 while in this form. Select a skill: increase your modifier for that skill by +5 while in this form. The duration of this form is 1 minute per day per hit die, and you can revert back to your normal form as a full-round action. This is a polymorph effect.

    For every 2 levels after gaining this Chaotic Reveal, you may increase the ability score by an additional +1, and increase one skill modifier by +3 (you can choose the same skill, or different skills).

    After 4 levels since gaining this Chaotic Reveal, you can change into your Nightmare Form as a full-round action, and you may choose a secondary ability score; it gains the same modifier as the original chosen ability score -2.", level_available: 1)
      FeatureOptionAction.create!(feature_option_id: chaotic1.id, action_id: one_minute.id, level: 1)

    chaotic2 = FeatureOption.create!(klass_feature_id: fate_weaver2.id, name: "Gravity Manipulation", description: "Add feather fall to your list of known spells. You can affect an area of a 20 ft radius in space with heavy or light gravity as a standard action (PA 58-59). You must be within 60 ft of the point of origin and maintain concentration each round, or else the affected area no longer has any change in gravity. You can affect an area for a number of rounds a day equal to 4 times your Fate Weaver level.

    For every 4 levels after gaining this Chaotic Reveal, increase the bonuses and penalties of the gravitational zones you created by 1, and the duration of the area continues for 1 additional round after you cease concentration (which is not deducted from your total amount of rounds for the day).

    After 3 levels since gaining this Chaotic Reveal, you gain the Heavy Gravity Acclimation and Light Gravity Acclimation as bonus feats, even if you don't fulfill the prerequisites. You can adjust the gravity of the zone you've affected to a different type as a move action.

    After 6 levels since gaining this Chaotic Reveal, you gain the Gravitational Vital Strike feat as a bonus feat, even if you don't fulfill the prerequisites. As a standard action, you can touch a creature, temporarily affecting it with either Heavy Gravity Acclimation or Light Gravity Acclimation for 10 minutes.

    After 10 levels since gaining this Chaotic Reveal, you learn the reverse gravity as a spell-like ability once a day. Additionally, the radius of this effect increases to 40 ft, and you only need to be within 100 ft of the point of origin to maintain concentration.", level_available: 1)
      FeatureOptionAction.create!(feature_option_id: chaotic2.id, action_id: standard.id, level: 1)

    chaotic3 = FeatureOption.create!(klass_feature_id: fate_weaver2.id, name: "Combat Prowess", description: "Once a day, you can make a combat maneuver in place of your attack of opportunity. Doing this does not threaten an attack of opportunity from the target, but it does threaten from adjacent creatures. If you have a relevant Improved feat for a combat maneuver, you can make that specific combat maneuver +2 times per day, in addition to the once per day for all combat maneuvers. If you have a relevant Greater feat, you gain an additional +2 times per day.

    For every 4 levels after gaining this Chaotic Reveal, you gain a +1 bonus to all combat maneuvers for which you have the relevant Improved feat, and an additional +1 bonus if you have the relevant Greater feat. This does not compound retroactively, if you get a feat after getting this bonus.

    After 3 levels since gaining this Chaotic Reveal, as a standard action, you may forgo one use of this ability to let an ally within 30 ft of you attempt this ability. The ally gains a bonus to this ability equal to the bonuses gained from this feature, if they are using a specific combat maneuver for which you have either the relevant Improved or Greater feat. They must use this ability within 1 minute of you \"teaching\" them, or the ability is lost.", level_available: 1)

    # FeatureOption.create!(klass_feature_id: , name: "", description: "", level_available: )
    # FeatureOption.create!(klass_feature_id: , name: "", description: "", level_available: )
    # FeatureOption.create!(klass_feature_id: , name: "", description: "", level_available: )
    # FeatureOption.create!(klass_feature_id: , name: "", description: "", level_available: )
    # FeatureOption.create!(klass_feature_id: , name: "", description: "", level_available: )

  fate_weaver3 = KlassFeature.create!(klass_id: fate_weaver.id, name: "Exasperations", description: "During times of fortune or misfortune, a Fate Weaver can attempt to alter fate by reaching into the energy of the cosmos, and tearing magic from it. By taking 3 points of nonlethal damage, as a swift action, she may declare a category of exasperation (Alter, Generate, Overwhelm), and roll a d100. For the chosen result, apply the listed effect. She is precisely aware of the result of the effect but not necessarily the target, and may react accordingly. The duration of these effects is written next to them. Consult the DM for random targets or other choices that she does not get to choose.

  A Fate Weaver may also use an Exasperation as an action that takes 10 minutes, and requires concentration. After the end of the 10 minutes, she may roll for an Exasperation without taking the above nonlethal damage (all nonlethal damage from other modifications are still dealt; see below). If she fails a concentration check, she loses the Exasperation as if the chosen result had no effect.

  She may also modify her Exasperation by taking additional nonlethal damage.

  At 1st level, she may take an additional 1 point of nonlethal damage to roll another d100. This effect can be used multiple times within the same Exasperation. She may also take an additional 2 points of nonlethal damage to select an additional category. This effect can be used multiple times within the same Exasperation. However, you may only select one Exasperation from all the available categories.

  At 4th level, she may take an additional 3 points of nonlethal damage to have an additional Exasperation trigger with the original Exasperation. This effect can be used multiple times within the same Exasperation. If she does not have access to multiple choices, she may have the same chosen Exasperation happen multiple times.

  At 8th level, she may take an additional 4 points of nonlethal damage to delay her chosen Exasperation or Exasperations. After choosing the results of the Exasperation, she can hold those effects from activating for a number of rounds equal to 5 + her Charisma modifier. She can trigger any number of these effects as a Free Action during the given rounds. Any inactivated Exasperations after the duration ends are lost.

  At 12th level, she may take an additional 5 points of nonlethal damage to roll for an Exasperation as an Immediate Action, rather than a Swift Action.

  At 16th level, she may take an additional 6 points of nonlethal damage to select up to 2 additional targets for all of your Exasperations that you choose, if they ask you to select one target. Additionally, the duration for all of your Exasperations are doubled.")
    FeatureLevel.create!(klass_feature_id: fate_weaver3.id, level: 1, table_description: "Exasperations")
    FeatureAction.create!(klass_feature_id: fate_weaver3.id, action_id: swift.id, level: 1)
    FeatureAction.create!(klass_feature_id: fate_weaver3.id, action_id: immediate.id, level: 12)

  fate_weaver4 = KlassFeature.create!(klass_id: fate_weaver.id, name: "Spells", description: "A Fate Weaver casts divine spells drawn from the Fate Weaver spell list (below). To cast a spell, a Fate Weaver must have a Charisma score equal to at least 10 + the spell level. The Difficulty Class for a saving throw against a Fate Weaver’s spell is 10 + the spell level + the Fate Weaver’s Charisma modifier.

  A Fate Weaver’s spell list is massive, drawn from the agents of fate themselves to embody and embolden your actions. The spell list is combination of bard, cleric, druid, wizard, alchemist, inquisitor, medium, and oracle spells, focusing on enchantment, conjuration, divination, and transmutation spells, with evocation spells that alter the environment.

  A Fate Weaver’s selection of spells known is extremely limited. At 2nd level, she learns 4 orisons, and 2 additional orisons at 3rd level. At 4th level, she learns 2 1st-level spells. At each new Fate Weaver level, she gains one or more new spells, as indicated on the table above.

  At 3rd level, and every level after that, a Fate Weaver can choose to learn a new spell in place of one she already knows. In effect, the Fate Weaver loses the old spell in exchange for the new one. The new spell's level must be the same as that of the spell being exchanged. A Fate Weaver may swap only a single spell at any given level, and must choose whether or not to swap the spell at the same time that she gains new spells known for the level. She cannot swap any spells that were granted by a Chaotic Reveal.

  Like a sorcerer, a Fate Weaver need not prepare her spells in advance. She can cast any spell she knows at any time, assuming she has not yet used up her Fate points for the day.

  Orisons: At 2nd level, a Fate Weaver can cast orisons, or 0-level spells, by spending 1/2 Fate Points. These spells are cast like any other spell, and do not need to be prepared in advance.")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 2, table_description: "Orisons +4")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 3, table_description: "Orisons +2")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 4, table_description: "1st-level +2")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 5, table_description: "1st-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 6, table_description: "1st-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 7, table_description: "1st-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 8, table_description: "2nd-level +2")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 9, table_description: "2nd-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 10, table_description: "2nd-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 11, table_description: "2nd-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 12, table_description: "3rd-level +2")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 13, table_description: "3rd-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 14, table_description: "3rd-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 15, table_description: "3rd-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 16, table_description: "4th-level +2")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 17, table_description: "4th-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 18, table_description: "4th-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 19, table_description: "4th-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 20, table_description: "5th-level +2")

  fate_weaver5 = KlassFeature.create!(klass_id: fate_weaver.id, name: "Fate Points", description: "A Fate Weaver’s doesn’t have a specific amount of spells cast per day, they have a Fate point pool from which they spend to cast spells. Each time a Fate Weaver wants to cast a spell, she must first deduct a number of points from her Fate point pool equal to the spell’s level, including if the spell level is modified by a metamagic feat (Orisons cost 1/2 point). If she does not have enough Fate points to spend, she cannot cast that spell. She restores her Fate points to their maximum after 8 hours of rest.

  A Fate Weaver's Fate Points begin at a random amount each day. At 2nd level, at the start of a new day, a Fate Weaver has a number of Fate Points equal to the dice rolled + her Charisma modifier. The dice the Fate Weaver uses to roll at the beginning of each day will change at subsequent levels.")
    FeatureLevel.create!(klass_feature_id: fate_weaver5.id, level: 2, table_description: "Fate Points 1d4")
    FeatureLevel.create!(klass_feature_id: fate_weaver5.id, level: 4, table_description: "Fate Points 1d6")
    FeatureLevel.create!(klass_feature_id: fate_weaver5.id, level: 7, table_description: "Fate Points 2d4")
    FeatureLevel.create!(klass_feature_id: fate_weaver5.id, level: 10, table_description: "Fate Points 2d6")
    FeatureLevel.create!(klass_feature_id: fate_weaver5.id, level: 13, table_description: "Fate Points 2d8")
    FeatureLevel.create!(klass_feature_id: fate_weaver5.id, level: 16, table_description: "Fate Points 2d10")
    FeatureLevel.create!(klass_feature_id: fate_weaver5.id, level: 19, table_description: "Fate Points 2d12")

  fate_weaver6 = KlassFeature.create!(klass_id: fate_weaver.id, name: "Destiny Maker", description: "At 5th level, instead of rolling a d100 on the Chaotic Reveal, a Fate Weaver may choose to select the result. If the result requires more dice to be rolled, she may also choose the result of those dice. At 11th level, and 17th level, she may choose another Chaotic Reveal instead of rolling.")
    FeatureLevel.create!(klass_feature_id: fate_weaver6.id, level: 5, table_description: "Destiny Maker")
    FeatureLevel.create!(klass_feature_id: fate_weaver6.id, level: 11, table_description: "Destiny Maker")
    FeatureLevel.create!(klass_feature_id: fate_weaver6.id, level: 17, table_description: "Destiny Maker")

print "Fate Weaver features created! \r"


bard1 = KlassFeature.create!(klass_id: bard.id, name: "Weapon and Armor Proficiency", description: "A bard is proficient with all simple weapons, plus the longsword, rapier, sap, shortsword, shortbow, and whip. Bards are also proficient with light armor and shields (except tower shields). A bard can cast bard spells while wearing light armor and using a shield without incurring the normal arcane spell failure chance. Like any other arcane spellcaster, a bard wearing medium or heavy armor incurs a chance of arcane spell failure if the spell in question has a somatic component. A multiclass bard still incurs the normal arcane spell failure chance for arcane spells received from other classes.")
  FeatureLevel.create!(klass_feature_id: bard1.id, level: 1, table_description: "none")
  bard1_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: bard1.id, feature_id: bard1_feature.id)
    FeatureWeaponProficiency.create!(feature_id: bard1_feature.id, proficiency_group: "Simple")
    FeatureWeaponProficiency.create!(feature_id: bard1_feature.id, weapon_id: longsword.id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: bard1_feature.id, weapon_id: rapier.id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: bard1_feature.id, weapon_id: sap.id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: bard1_feature.id, weapon_id: shortsword.id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: bard1_feature.id, weapon_id: shortbow.id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: bard1_feature.id, weapon_id: whip.id, additive: true)
    FeatureArmorProficiency.create!(feature_id: bard1_feature.id, proficiency_group: "Light")
    FeatureArmorProficiency.create!(feature_id: bard1_feature.id, proficiency_group: "Shield")
    FeatureArmorProficiency.create!(feature_id: bard1_feature.id, armor_id: tower_shield.id, additive: false)

bard2 = KlassFeature.create!(klass_id: bard.id, name: "Spells", description: "A bard casts arcane spells drawn from the bard spell list. He can cast any spell he knows without preparing it ahead of time. Every bard spell has a verbal component (singing, reciting, or music). To learn or cast a spell, a bard must have a Charisma score equal to at least 10 + the spell level. The Difficulty Class (DC) for a saving throw against a bard’s spell is 10 + the spell level + the bard’s Charisma modifier.

Like other spellcasters, a bard can cast only a certain number of spells of each spell level per day. His base daily spell allotment is given on Table: bard. In addition, he receives bonus spells per day if he has a high Charisma score.

The bard’s selection of spells is extremely limited. A bard begins play knowing four 0-level spells and two 1st-level spells of the bard’s choice. At each new bard level, he gains one or more new spells, as indicated on Table: Bard Spells Known. (Unlike spells per day, the number of spells a bard knows is not affected by his Charisma score (See Table: Ability Modifiers and Bonus Spells).

Upon reaching 5th level, and at every third bard level after that (8th, 11th, and so on), a bard can choose to learn a new spell in place of one he already knows. In effect, the bard “loses” the old spell in exchange for the new one. The new spell’s level must be the same as that of the spell being exchanged, and it must be at least one level lower than the highest-level bard spell the bard can cast. A bard may swap only a single spell at any given level, and must choose whether or not to swap the spell at the same time that he gains new spells known for the level.

A bard need not prepare his spells in advance. He can cast any spell he knows at any time, assuming he has not yet used up his allotment of spells per day for the spell’s level.

Cantrips: Bard’s learn a number of cantrips, or 0-level spells, as noted on Table: Bard Spells Known under “Spells Known.” These spells are cast like any other spell, but they do not consume any slots and may be used again.")
  FeatureLevel.create!(klass_feature_id: bard2.id, level: 1, table_description: "none")
  bard_spell_list = SpellList.create!(name: "Bard Spells List")
  bard2_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: bard2_feature.id, klass_feature_id: bard2.id)
    bard_spellcasting = FeatureSpellcasting.create!(feature_id: bard2_feature.id, ability_score: "charisma", prepare_spells: false, expend_prepared_spells: false, infinite_zero_level: true, known_spell_list: true, apply_metamagic_when_casting: true, apply_metamagic_when_preparing: false, type_of_magic: "Arcane", caster_level_penalty: 0, spell_list_id: bard_spell_list.id)

bard3 = KlassFeature.create!(klass_id: bard.id, name: "Bardic Knowledge", description: "A bard adds half his class level (minimum 1) to all Knowledge skill checks and may make all Knowledge skill checks untrained.")
  FeatureLevel.create!(klass_feature_id: bard3.id, level: 1, table_description: "Bardic Knowledge")
  bard3_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: bard3_feature.id, klass_feature_id: bard3.id)
    FeatureSkillBonus.create!(feature_id: bard3_feature.id, skill_id: nil, bonus: 0.5, bonus_type: "untyped", duration: "permanent", specific_statistic: "Knowledge", bonus_multiplier: "level", round_down: true, minimum_bonus: 1, bonus_multiplier_based_on_feature_level: true)

bard4 = KlassFeature.create!(klass_id: bard.id, name: "Bardic Performance", description: "A bard is trained to use the Perform skill to create magical effects on those around him, including himself if desired. He can use this ability for a number of rounds per day equal to 4 + his Charisma modifier. At each level after 1st a bard can use bardic performance for 2 additional rounds per day. Each round, the bard can produce any one of the types of bardic performance that he has mastered, as indicated by his level.

Starting a bardic performance is a standard action, but it can be maintained each round as a free action. Changing a bardic performance from one effect to another requires the bard to stop the previous performance and start a new one as a standard action. A bardic performance cannot be disrupted, but it ends immediately if the bard is killed, paralyzed, stunned, knocked unconscious, or otherwise prevented from taking a free action to maintain it each round. A bard cannot have more than one bardic performance in effect at one time.

At 7th level, a bard can start a bardic performance as a move action instead of a standard action. At 13th level, a bard can start a bardic performance as a swift action.

Each bardic performance has audible components, visual components, or both.

If a bardic performance has audible components, the targets must be able to hear the bard for the performance to have any effect, and many such performances are language dependent (as noted in the description). A deaf bard has a 20% chance to fail when attempting to use a bardic performance with an audible component. If he fails this check, the attempt still counts against his daily limit. Deaf creatures are immune to bardic performances with audible components.

If a bardic performance has a visual component, the targets must have line of sight to the bard for the performance to have any effect. A blind bard has a 50% chance to fail when attempting to use a bardic performance with a visual component. If he fails this check, the attempt still counts against his daily limit. Blind creatures are immune to bardic performances with visual components.")
  FeatureLevel.create!(klass_feature_id: bard4.id, level: 1, table_description: "Bardic Performance")
  bard4_feature = Feature.create!(action_id: standard.id)
    KlassFeatureFeature.create!(feature_id: bard4_feature.id, klass_feature_id: bard4.id)
    bard4_feature_usage = FeatureUsage.create!(feature_id: bard4_feature.id, limit_frequency: "Day", unit: "rounds", adjustable: true, toggleable: true, base_limit: 4, base_limit_modifier: "charisma", limit_increase_per_level: 2, toggle_off_action_id: free.id, expend_frequency: "Round", maintain_action_id: free.id)
    FeatureAlternateAction.create!(feature_id: bard4_feature.id, level: 7, action_id: move.id)
    FeatureAlternateAction.create!(feature_id: bard4_feature.id, level: 13, action_id: swift.id)

bard5 = KlassFeature.create!(klass_id: bard.id, name: "Countersong", description: "At 1st level, a bard learns to counter magic effects that depend on sound (but not spells that have verbal components.) Each round of the countersong he makes a Perform (keyboard, percussion, wind, string, or sing) skill check. Any creature within 30 feet of the bard (including the bard himself) that is affected by a sonic or language-dependent magical attack may use the bard’s Perform check result in place of its saving throw if, after the saving throw is rolled, the Perform check result proves to be higher. If a creature within range of the countersong is already under the effect of a non-instantaneous sonic or language-dependent magical attack, it gains another saving throw against the effect each round it hears the countersong, but it must use the bard’s Perform skill check result for the save. Countersong does not work on effects that don’t allow saves. Countersong relies on audible components.")
  FeatureLevel.create!(klass_feature_id: bard5.id, level: 1, table_description: "Countersong")
  bard5_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: bard5_feature.id, klass_feature_id: bard5.id)
    bard5_feature_usage = FeatureUsage.create!(feature_id: bard5_feature.id)
    FeatureUsageFeatureOption.create!(base_feature_usage_id: bard4_feature_usage.id, option_feature_usage_id: bard5_feature_usage.id, option_name: "Bardic Performance", cost: 1)

bard6 = KlassFeature.create!(klass_id: bard.id, name: "Distraction", description: "At 1st level, a bard can use his performance to counter magic effects that depend on sight. Each round of the Distraction, he makes a Perform (act, comedy, dance, or oratory) skill check. Any creature within 30 feet of the bard (including the bard himself) that is affected by an illusion (pattern) or illusion (figment) magical attack may use the bard’s Perform check result in place of its saving throw if, after the saving throw is rolled, the Perform check result proves to be higher. If a creature within range of the Distraction is already under the effect of a non-instantaneous illusion (pattern) or illusion (figment) magical attack, it gains another saving throw against the effect each round it sees the Distraction, but it must use the bard’s Perform check result for the save. Distraction does not work on effects that don’t allow saves. Distraction relies on visual components.")
  FeatureLevel.create!(klass_feature_id: bard6.id, level: 1, table_description: "Distraction")
  bard6_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: bard6_feature.id, klass_feature_id: bard6.id)
    bard6_feature_usage = FeatureUsage.create!(feature_id: bard6_feature.id)
    FeatureUsageFeatureOption.create!(base_feature_usage_id: bard4_feature_usage.id, option_feature_usage_id: bard6_feature_usage.id, option_name: "Bardic Performance", cost: 1)

bard7 = KlassFeature.create!(klass_id: bard.id, name: "Fascinate", description: "At 1st level, a bard can use his performance to cause one or more creatures to become fascinated with him. Each creature to be fascinated must be within 90 feet, able to see and hear the bard, and capable of paying attention to him. The bard must also be able to see the creatures affected. The Distraction of a nearby combat or other dangers prevents the ability from working. For every three levels a bard has attained beyond 1st, he can target one additional creature with this ability.

Each creature within range receives a Will save (DC 10 + 1/2 the bard’s level + the bard’s Cha modifier) to negate the effect. If a creature’s saving throw succeeds, the bard cannot attempt to fascinate that creature again for 24 hours. If its saving throw fails, the creature sits quietly and observes the performance for as long as the bard continues to maintain it. While fascinated, a target takes a –4 penalty on skill checks made as reactions, such as Perception checks. Any potential threat to the target allows the target to make a new saving throw against the effect. Any obvious threat, such as someone drawing a weapon, casting a spell, or aiming a weapon at the target, automatically breaks the effect.

Fascinate is an enchantment (compulsion), mind-affecting ability. Fascinate relies on audible and visual components in order to function.")
  FeatureLevel.create!(klass_feature_id: bard7.id, level: 1, table_description: "Fascinate")
  bard7_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: bard7_feature.id, klass_feature_id: bard7.id)
    bard7_feature_usage = FeatureUsage.create!(feature_id: bard7_feature.id)
    FeatureUsageFeatureOption.create!(base_feature_usage_id: bard4_feature_usage.id, option_feature_usage_id: bard7_feature_usage.id, option_name: "Bardic Performance", cost: 1)
    FeatureSavingThrow.create!(feature_id: bard7_feature.id, base: 10, ability_score_modifier: "charisma", level_modifier: 0.5, saving_throw: "will", bonus_multiplier_based_on_feature_level: true)

bard8 = KlassFeature.create!(klass_id: bard.id, name: "Inspire Courage", description: "A 1st level bard can use his performance to inspire courage in his allies (including himself), bolstering them against fear and improving their combat abilities. To be affected, an ally must be able to perceive the bard’s performance. An affected ally receives a +1 morale bonus on saving throws against charm and fear effects and a +1 competence bonus on attack and weapon damage rolls. At 5th level, and every six bard levels thereafter, this bonus increases by +1, to a maximum of +4 at 17th level. Inspire courage is a mind-affecting ability. inspire courage can use audible or visual components. The bard must choose which component to use when starting his performance.")
  FeatureLevel.create!(klass_feature_id: bard8.id, level: 1, table_description: "Inspire Courage +1")
  FeatureLevel.create!(klass_feature_id: bard8.id, level: 5, table_description: "Inspire Courage +2")
  FeatureLevel.create!(klass_feature_id: bard8.id, level: 11, table_description: "Inspire Courage +3")
  FeatureLevel.create!(klass_feature_id: bard8.id, level: 17, table_description: "Inspire Courage +4")
  bard8_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: bard8_feature.id, klass_feature_id: bard8.id)
    bard8_feature_usage = FeatureUsage.create!(feature_id: bard8_feature.id)
    FeatureUsageFeatureOption.create!(base_feature_usage_id: bard4_feature_usage.id, option_feature_usage_id: bard8_feature_usage.id, option_name: "Bardic Performance", cost: 1)
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Saving Throw", bonus: 1, bonus_type: "morale", duration: "temporary", applicable_level: 1, statistic_details: "charm and fear effects")
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Attack", bonus: 1, bonus_type: "competence", duration: "temporary", applicable_level: 1)
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Damage", bonus: 1, bonus_type: "competence", duration: "temporary", specific_statistic: "weapon", applicable_level: 1)
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Saving Throw", bonus: 2, bonus_type: "morale", duration: "temporary", applicable_level: 5, statistic_details: "charm and fear effects")
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Attack", bonus: 2, bonus_type: "competence", duration: "temporary", applicable_level: 5)
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Damage", bonus: 2, bonus_type: "competence", duration: "temporary", specific_statistic: "weapon", applicable_level: 5)
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Saving Throw", bonus: 3, bonus_type: "morale", duration: "temporary", applicable_level: 11, statistic_details: "charm and fear effects")
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Attack", bonus: 3, bonus_type: "competence", duration: "temporary", applicable_level: 11)
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Damage", bonus: 3, bonus_type: "competence", duration: "temporary", specific_statistic: "weapon", applicable_level: 11)
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Saving Throw", bonus: 4, bonus_type: "morale", duration: "temporary", applicable_level: 17, statistic_details: "charm and fear effects")
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Attack", bonus: 4, bonus_type: "competence", duration: "temporary", applicable_level: 17)
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Damage", bonus: 4, bonus_type: "competence", duration: "temporary", specific_statistic: "weapon", applicable_level: 17)
    FeatureApplication.create!(feature_id: bard8_feature.id, affects_allies: true, toggleable: true)
    # rays count as weapons when it comes to bonuses that only apply to weapons damage (i.e., bard's inspire courage)

bard9 = KlassFeature.create!(klass_id: bard.id, name: "Inspire Competence", description: "A bard of 3rd level or higher can use his performance to help an ally succeed at a task. The ally must be within 30 feet and able to see and hear the bard. The ally gets a +2 competence bonus on skill checks with a particular skill as long as she continues to hear the bard’s performance. This bonus increases by +1 for every four levels the bard has attained beyond 3rd (+3 at 7th, +4 at 11th, +5 at 15th, and +6 at 19th).

Certain uses of this ability are infeasible, such as Stealth, and may be disallowed at the GM’s discretion. A bard can’t inspire competence in himself. inspire competence relies on audible components.")
  FeatureLevel.create!(klass_feature_id: bard9.id, level: 3, table_description: "Inspire Competence +2")
  FeatureLevel.create!(klass_feature_id: bard9.id, level: 7, table_description: "Inspire Competence +3")
  FeatureLevel.create!(klass_feature_id: bard9.id, level: 11, table_description: "Inspire Competence +4")
  FeatureLevel.create!(klass_feature_id: bard9.id, level: 15, table_description: "Inspire Competence +5")
  FeatureLevel.create!(klass_feature_id: bard9.id, level: 19, table_description: "Inspire Competence +6")


bard10 = KlassFeature.create!(klass_id: bard.id, name: "Suggestion", description: "A bard of 6th level or higher can use his performance to make a suggestion (as per the spell) to a creature that he has already fascinated (see above). Using this ability does not disrupt the fascinate effect, but it does require a standard action to activate (in addition to the free action to continue the fascinate effect). A bard can use this ability more than once against an individual creature during an individual performance.

A Will saving throw (DC 10 + 1/2 bard’s level + bard’s Cha modifier) negates the effect. This ability affects only a single creature (but see mass suggestion, below). Suggestion is an enchantment (compulsion), mind-affecting, language-dependent ability and relies on audible components.")
  FeatureLevel.create!(klass_feature_id: bard10.id, level: 6, table_description: "Suggestion")

bard11 = KlassFeature.create!(klass_id: bard.id, name: "Dirge of Doom", description: "A bard of 8th level or higher can use his performance to foster a sense of growing dread in his enemies, causing them to take become shaken. To be affected, an enemy must be within 30 feet and able to see and hear the bard’s performance. The effect persists for as long as the enemy is within 30 feet and the bard continues the performance. The performance cannot cause a creature to become frightened or panicked, even if the targets are already shaken from another effect. Dirge of doom is a mind-affecting fear effect, and it relies on audible and visual components.")
  FeatureLevel.create!(klass_feature_id: bard11.id, level: 8, table_description: "Dirge of Doom")

bard12 = KlassFeature.create!(klass_id: bard.id, name: "Inspire Greatness", description: "A bard of 9th level or higher can use his performance to inspire greatness in himself or a single willing ally within 30 feet, granting extra fighting capability. For every three levels a bard attains beyond 9th, he can target one additional ally while using this performance (up to a maximum of four at 18th level). To inspire greatness, all of the targets must be able to see and hear the bard. A creature inspired with greatness gains 2 bonus Hit Dice (d10s), the commensurate number of temporary hit points (apply the target’s Constitution modifier, if any, to these bonus Hit Dice), a +2 competence bonus on attack rolls, and a +1 competence bonus on Fortitude saves. The bonus Hit Dice count as regular Hit Dice for determining the effect of spells that are Hit Dice dependent. Inspire greatness is a mind-affecting ability and it relies on audible and visual components.")
  FeatureLevel.create!(klass_feature_id: bard12.id, level: 9, table_description: "Inspire Greatness")

bard13 = KlassFeature.create!(klass_id: bard.id, name: "Soothing Performance", description: "A bard of 12th level or higher can use his performance to create an effect equivalent to the mass cure serious wounds, using the bard’s level as the caster level. In addition, this performance removes the fatigued, sickened, and shaken condition from all those affected. Using this ability requires 4 rounds of continuous performance, and the targets must be able to see and hear the bard throughout the performance. Soothing performance relies on audible and visual components.")
  FeatureLevel.create!(klass_feature_id: bard13.id, level: 12, table_description: "Soothing Performance")

bard14 = KlassFeature.create!(klass_id: bard.id, name: "Frightening Tune", description: "A bard of 14th level or higher can use his performance to cause fear in his enemies. To be affected, an enemy must be able to hear the bard perform and be within 30 feet. Each enemy within range receives a Will save (DC 10 + 1/2 the bard’s level + the bard’s Cha modifier) to negate the effect. If the save succeeds, the creature is immune to this ability for 24 hours. If the save fails, the target becomes frightened and flees for as long as the target can hear the bard’s performance. Frightening tune relies on audible components.")
  FeatureLevel.create!(klass_feature_id: bard14.id, level: 14, table_description: "Frightening Tune")

bard15 = KlassFeature.create!(klass_id: bard.id, name: "Inspire Heroics", description: "A bard of 15th level or higher can inspire tremendous heroism in himself or a single ally within 30 feet. For every three bard levels the character attains beyond 15th, he can inspire heroics in one additional creature. To inspire heroics, all of the targets must be able to see and hear the bard. Inspired creatures gain a +4 morale bonus on saving throws and a +4 dodge bonus to AC. The effect lasts for as long as the targets are able to witness the performance. Inspire heroics is a mind-affecting ability that relies on audible and visual components.")
  FeatureLevel.create!(klass_feature_id: bard15.id, level: 15, table_description: "Inspire Heroics")

bard16 = KlassFeature.create!(klass_id: bard.id, name: "Mass Suggestion", description: "This ability functions just like suggestion, but allows a bard of 18th level or higher to make a suggestion simultaneously to any number of creatures that he has already fascinated. Mass suggestion is an enchantment (compulsion), mind-affecting, language dependent ability that relies on audible components.")
  FeatureLevel.create!(klass_feature_id: bard16.id, level: 18, table_description: "Mass Suggestion")

bard17 = KlassFeature.create!(klass_id: bard.id, name: "Deadly Performance", description: "A bard of 20th level or higher can use his performance to cause one enemy to die from joy or sorrow. To be affected, the target must be able to see and hear the bard perform for 1 full round and be within 30 feet. The target receives a Will save (DC 10 + 1/2 the bard’s level + the bard’s Cha modifier) to negate the effect. If a creature’s saving throw succeeds, the target is staggered for 1d4 rounds, and the bard cannot use deadly performance on that creature again for 24 hours. If a creature’s saving throw fails, it dies. Deadly performance is a mind-effecting death effect that relies on audible and visual components.")
  FeatureLevel.create!(klass_feature_id: bard17.id, level: 20, table_description: "Deadly Performance")

bard18 = KlassFeature.create!(klass_id: bard.id, name: "Versatile Performance", description: "At 2nd level, a bard can choose one type of Perform skill. He can use his bonus in that skill in place of his bonus in associated skills. When substituting in this way, the bard uses his total Perform skill bonus, including class skill bonus, in place of its associated skill’s bonus, whether or not he has ranks in that skill or if it is a class skill. At 6th level, and every 4 levels thereafter, the bard can select an additional type of Perform to substitute.

The types of Perform and their associated skills are: Act (Bluff, Disguise), Comedy (Bluff, Intimidate), Dance (Acrobatics, Fly), Keyboard Instruments (Diplomacy, Intimidate), Oratory (Diplomacy, Sense Motive), Percussion (Handle Animal, Intimidate), Sing (Bluff, Sense Motive), String (Bluff, Diplomacy), and Wind (Diplomacy, Handle Animal).")
  FeatureLevel.create!(klass_feature_id: bard18.id, level: 2, table_description: "Versatile Performance")
  FeatureLevel.create!(klass_feature_id: bard18.id, level: 6, table_description: "Versatile Performance")
  FeatureLevel.create!(klass_feature_id: bard18.id, level: 10, table_description: "Versatile Performance")
  FeatureLevel.create!(klass_feature_id: bard18.id, level: 14, table_description: "Versatile Performance")
  FeatureLevel.create!(klass_feature_id: bard18.id, level: 18, table_description: "Versatile Performance")

bard19 = KlassFeature.create!(klass_id: bard.id, name: "Well-Versed", description: "At 2nd level, the bard becomes resistant to the bardic performance of others, and to sonic effects in general. The bard gains a +4 bonus on saving throws made against bardic performance, sonic, and language-dependent effects.")
  FeatureLevel.create!(klass_feature_id: bard19.id, level: 2, table_description: "Well-Versed")

bard20 = KlassFeature.create!(klass_id: bard.id, name: "Lore Master", description: "At 5th level, the bard becomes a master of lore and can take 10 on any Knowledge skill check that he has ranks in. A bard can choose not to take 10 and can instead roll normally. In addition, once per day, the bard can take 20 on any Knowledge skill check as a standard action. He can use this ability one additional time per day for every six levels he possesses beyond 5th, to a maximum of three times per day at 17th level.")
  FeatureLevel.create!(klass_feature_id: bard20.id, level: 5, table_description: "Lore Master 1/day")
  FeatureLevel.create!(klass_feature_id: bard20.id, level: 11, table_description: "Lore Master 2/day")
  FeatureLevel.create!(klass_feature_id: bard20.id, level: 17, table_description: "Lore Master 3/day")

bard21 = KlassFeature.create!(klass_id: bard.id, name: "Jack-of-all-trades", description: "At 10th level, the bard can use any skill, even if the skill normally requires him to be trained. At 16th level, the bard considers all skills to be class skills. At 19th level, the bard can take 10 on any skill check, even if it is not normally allowed.")
  FeatureLevel.create!(klass_feature_id: bard21.id, level: 10, table_description: "Jack-of-all-trades")

print "Bard features created! \r"

cleric1 = KlassFeature.create!(klass_id: cleric.id, name: "Weapon and Armor Proficiencies", description: "Clerics are proficient with all simple weapons, light armor, medium armor, and shields (except tower shields). Clerics are also proficient with the favored weapon of their deities.")
  FeatureLevel.create!(klass_feature_id: cleric1.id, level: 1, table_description: "none")
  cleric1_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: cleric1.id, feature_id: cleric1_feature.id)
    FeatureWeaponProficiency.create!(feature_id: cleric1_feature.id, proficiency_group: "Simple")
    FeatureWeaponProficiency.create!(feature_id: cleric1_feature.id, player_choice: true, additive: true)
    FeatureArmorProficiency.create!(feature_id: cleric1_feature.id, proficiency_group: "Light")
    FeatureArmorProficiency.create!(feature_id: cleric1_feature.id, proficiency_group: "Medium")
    FeatureArmorProficiency.create!(feature_id: cleric1_feature.id, proficiency_group: "Shield")
    FeatureArmorProficiency.create!(feature_id: cleric1_feature.id, armor_id: tower_shield.id, additive: false)
    FeatureCharacterChoice.create!(feature_id: cleric1_feature.id, sub_feature: "weapon_proficiencies", column: "weapon_id")

cleric2 = KlassFeature.create!(klass_id: cleric.id, name: "Aura", description: "A cleric of a chaotic, evil, good, or lawful deity has a particularly powerful aura corresponding to the deity’s alignment (see detect evil for details).")
  FeatureLevel.create!(klass_feature_id: cleric2.id, level: 1, table_description: "Aura")
  cleric2_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: cleric2.id, feature_id: cleric2_feature.id)
    FeatureDisplayDescription.create!(feature_id: cleric2_feature.id, title: "Aura", description: "Faint", access_alignment: true, applicable_level: 1)
    FeatureDisplayDescription.create!(feature_id: cleric2_feature.id, title: "Aura", description: "Moderate", access_alignment: true, applicable_level: 2)
    FeatureDisplayDescription.create!(feature_id: cleric2_feature.id, title: "Aura", description: "Strong", access_alignment: true, applicable_level: 5)
    FeatureDisplayDescription.create!(feature_id: cleric2_feature.id, title: "Aura", description: "Overwhelming", access_alignment: true, applicable_level: 11)

cleric3 = KlassFeature.create!(klass_id: cleric.id, name: "Spellcasting", description: "A cleric casts divine spells which are drawn from the cleric spell list. Her alignment, however, may restrict her from casting certain spells opposed to her moral or ethical beliefs; see Chaotic, Evil, Good, and Lawful Spells. A cleric must choose and prepare her spells in advance.

To prepare or cast a spell, a cleric must have a Wisdom score equal to at least 10 + the spell level. The Difficulty Class for a saving throw against a cleric’s spell is 10 + the spell level + the cleric’s Wisdom modifier.

Like other spellcasters, a cleric can cast only a certain number of spells of each spell level per day. Her base daily spell allotment is given on Table: Cleric. In addition, she receives bonus spells per day if she has a high Wisdom score (see Table: Ability Modifiers and Bonus Spells).

Clerics meditate or pray for their spells. Each cleric must choose a time at which she must spend 1 hour each day in quiet contemplation or supplication to regain her daily allotment of spells. Time spent resting has no effect on whether a cleric can prepare spells. A cleric may prepare and cast any spell on the cleric spell list, provided that she can cast spells of that level, but she must choose which spells to prepare during her daily meditation.

Chaotic, Evil, Good, and Lawful Spells A cleric can’t cast spells of an alignment opposed to her own or her deity’s (if she has one). Spells associated with particular alignments are indicated by the chaotic, evil, good, and lawful descriptors in their spell descriptions.")
  FeatureLevel.create!(klass_feature_id: cleric3.id, level: 1, table_description: "none")
  cleric_spell_list = SpellList.create!(name: "Cleric Spells List")
  cleric3_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: cleric3_feature.id, klass_feature_id: cleric3.id)
    cleric_spellcasting = FeatureSpellcasting.create!(feature_id: cleric3_feature.id, ability_score: "wisdom", prepare_spells: true, expend_prepared_spells: true, infinite_zero_level: true, known_spell_list: false, apply_metamagic_when_casting: false, apply_metamagic_when_preparing: true, type_of_magic: "Divine", caster_level_penalty: 0, spell_list_id: cleric_spell_list.id)

cleric4 = KlassFeature.create!(klass_id: cleric.id, name: "Channel Energy", description: "Regardless of alignment, any cleric can release a wave of energy by channeling the power of her faith through her holy (or unholy) symbol. This energy can be used to cause or heal damage, depending on the type of energy channeled and the creatures targeted.

A good cleric (or a neutral cleric who worships a good deity) channels positive energy and can choose to deal damage to undead creatures or to heal living creatures. An evil cleric (or a neutral cleric who worships an evil deity) channels negative energy and can choose to deal damage to living creatures or to heal undead creatures. A neutral cleric of a neutral deity (or one who is not devoted to a particular deity) must choose whether she channels positive or negative energy. Once this choice is made, it cannot be reversed. This decision also determines whether the cleric can cast spontaneous cure or inflict spells (see spontaneous casting).

Channeling energy causes a burst that affects all creatures of one type (either undead or living) in a 30-foot radius centered on the cleric. The amount of damage dealt or healed is equal to 1d6 points of damage plus 1d6 points of damage for every two cleric levels beyond 1st (2d6 at 3rd, 3d6 at 5th, and so on). Creatures that take damage from channeled energy receive a Will save to halve the damage. The DC of this save is equal to 10 + 1/2 the cleric’s level + the cleric’s Charisma modifier. Creatures healed by channel energy cannot exceed their maximum hit point total—all excess healing is lost. A cleric may channel energy a number of times per day equal to 3 + her Charisma modifier. This is a standard action that does not provoke an attack of opportunity. A cleric can choose whether or not to include herself in this effect.

A cleric must be able to present her holy symbol to use this ability.")
  FeatureLevel.create!(klass_feature_id: cleric4.id, level: 1, table_description: "Channel Energy 1d6")
  FeatureLevel.create!(klass_feature_id: cleric4.id, level: 3, table_description: "Channel Energy 2d6")
  FeatureLevel.create!(klass_feature_id: cleric4.id, level: 5, table_description: "Channel Energy 3d6")
  FeatureLevel.create!(klass_feature_id: cleric4.id, level: 7, table_description: "Channel Energy 4d6")
  FeatureLevel.create!(klass_feature_id: cleric4.id, level: 9, table_description: "Channel Energy 5d6")
  FeatureLevel.create!(klass_feature_id: cleric4.id, level: 11, table_description: "Channel Energy 6d6")
  FeatureLevel.create!(klass_feature_id: cleric4.id, level: 13, table_description: "Channel Energy 7d6")
  FeatureLevel.create!(klass_feature_id: cleric4.id, level: 15, table_description: "Channel Energy 8d6")
  FeatureLevel.create!(klass_feature_id: cleric4.id, level: 17, table_description: "Channel Energy 9d6")
  FeatureLevel.create!(klass_feature_id: cleric4.id, level: 19, table_description: "Channel Energy 10d6")
  cleric4_feature = Feature.create!(action_id: standard.id)
    KlassFeatureFeature.create!(klass_feature_id: cleric4.id, feature_id: cleric4_feature.id)
    FeatureUsage.create!(feature_id: cleric4_feature.id, limit_frequency: "Day", adjustable: true, base_limit: 3, base_limit_modifier: "charisma")
    FeatureSavingThrow.create!(feature_id: cleric4_feature.id, base: 10, ability_score_modifier: "charisma", level_modifier: 0.5, saving_throw: "will", bonus_multiplier_based_on_feature_level: true)
    FeatureDamage.create!(feature_id: cleric4_feature.id, num_of_dice: 1, damage_dice: 6, applicable_level: 1)
    FeatureDamage.create!(feature_id: cleric4_feature.id, num_of_dice: 2, damage_dice: 6, applicable_level: 2)
    FeatureDamage.create!(feature_id: cleric4_feature.id, num_of_dice: 3, damage_dice: 6, applicable_level: 3)
    FeatureDamage.create!(feature_id: cleric4_feature.id, num_of_dice: 4, damage_dice: 6, applicable_level: 4)
    FeatureDamage.create!(feature_id: cleric4_feature.id, num_of_dice: 5, damage_dice: 6, applicable_level: 5)
    FeatureDamage.create!(feature_id: cleric4_feature.id, num_of_dice: 6, damage_dice: 6, applicable_level: 6)
    FeatureDamage.create!(feature_id: cleric4_feature.id, num_of_dice: 7, damage_dice: 6, applicable_level: 7)
    FeatureDamage.create!(feature_id: cleric4_feature.id, num_of_dice: 8, damage_dice: 6, applicable_level: 8)
    FeatureDamage.create!(feature_id: cleric4_feature.id, num_of_dice: 9, damage_dice: 6, applicable_level: 9)
    FeatureDamage.create!(feature_id: cleric4_feature.id, num_of_dice: 10, damage_dice: 6, applicable_level: 10)
    FeatureStep.create!(feature_id: cleric4_feature.id, applicable_level: 1, step: 1, sub_feature: "damage")
    FeatureStep.create!(feature_id: cleric4_feature.id, applicable_level: 3, step: 2, sub_feature: "damage")
    FeatureStep.create!(feature_id: cleric4_feature.id, applicable_level: 5, step: 3, sub_feature: "damage")
    FeatureStep.create!(feature_id: cleric4_feature.id, applicable_level: 7, step: 4, sub_feature: "damage")
    FeatureStep.create!(feature_id: cleric4_feature.id, applicable_level: 9, step: 5, sub_feature: "damage")
    FeatureStep.create!(feature_id: cleric4_feature.id, applicable_level: 11, step: 6, sub_feature: "damage")
    FeatureStep.create!(feature_id: cleric4_feature.id, applicable_level: 13, step: 7, sub_feature: "damage")
    FeatureStep.create!(feature_id: cleric4_feature.id, applicable_level: 15, step: 8, sub_feature: "damage")
    FeatureStep.create!(feature_id: cleric4_feature.id, applicable_level: 17, step: 9, sub_feature: "damage")
    FeatureStep.create!(feature_id: cleric4_feature.id, applicable_level: 19, step: 10, sub_feature: "damage")
    FeatureCharacterChoice.create!(feature_id: cleric4_feature.id, sub_feature: "damage", column: "damage_type", option: "positive")
    FeatureCharacterChoice.create!(feature_id: cleric4_feature.id, sub_feature: "damage", column: "damage_type", option: "negative")

cleric5 = KlassFeature.create!(klass_id: cleric.id, name: "Domains", description: "A cleric’s deity influences her alignment, what magic she can perform, her values, and how others see her. A cleric chooses two domains from among those belonging to her deity. A cleric can select an alignment domain (Chaos, Evil, Good, or Law) only if her alignment matches that domain. If a cleric is not devoted to a particular deity, she still selects two domains to represent her spiritual inclinations and abilities (subject to GM approval). The restriction on alignment domains still applies.

Each domain grants a number of domain powers, dependent upon the level of the cleric, as well as a number of bonus spells. A cleric gains one domain spell slot for each level of cleric spell she can cast, from 1st on up. Each day, a cleric can prepare one of the spells from her two domains in that slot. If a domain spell is not on the cleric spell list, a cleric can prepare it only in her domain spell slot. Domain spells cannot be used to cast spells spontaneously.

In addition, a cleric gains the listed powers from both of her domains, if she is of a high enough level. Unless otherwise noted, activating a domain power is a standard action.", specialization: true, choice_amount: 2)
  FeatureLevel.create!(klass_feature_id: cleric5.id, level: 1, table_description: "Domains")
  cleric5_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: cleric5.id, feature_id: cleric5_feature.id)
    FeatureBonusSpellSlot.create!(feature_id: cleric5_feature.id, list_of_available_spells: "klass_specializations", sub_feature: "castable_spells")

  air_domain = KlassSpecialization.create!(name: "Air Domain", description: "You can manipulate lightning, mist, and wind, traffic with air creatures, and are resistant to electricity damage.")
    KlassFeatureKlassSpecialization.create!(klass_feature_id: cleric5.id, klass_specialization_id: air_domain.id)
    air_domain1 = KlassSpecializationFeature.create!(klass_specialization_id: air_domain.id, name: "Lightning Arc", description: "As a standard action, you can unleash an arc of electricity targeting any foe within 30 feet as a ranged touch attack. This arc of electricity deals 1d6 points of electricity damage + 1 point for every two cleric levels you possess. You can use this ability a number of times per day equal to 3 + your Wisdom modifier.", level: 1)
      air_domain1_feature = Feature.create!(action_id: standard.id)
        KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: air_domain1.id, feature_id: air_domain1_feature.id)
        FeatureUsage.create!(feature_id: air_domain1_feature.id, limit_frequency: "Day", adjustable: true, base_limit: 3, base_limit_modifier: "charisma")
        FeatureDamage.create!(feature_id: air_domain1_feature.id, num_of_dice: 1, damage_dice: 6, damage_type: "electricity", base_mod: 0, mod_increase_per_level: 0.5)
        FeatureAttack.create!(feature_id: air_domain1_feature.id, attack_type: "range", armor_class: "touch")
    air_domain2 = KlassSpecializationFeature.create!(klass_specialization_id: air_domain.id, name: "Electricity Resistance", description: "At 6th level, you gain resist electricity 10. This resistance increases to 20 at 12th level. At 20th level, you gain immunity to electricity.", level: 6)
    air_domain3 = KlassSpecializationFeature.create!(klass_specialization_id: air_domain.id, name: "Domain Spells", description: "1st—obscuring mist, 2nd—wind wall, 3rd—gaseous form, 4th—air walk, 5th—control winds, 6th—chain lightning, 7th—elemental body IV (air only), 8th—whirlwind, 9th—elemental swarm (air spell only).", level: 1)
      air_domain3_feature = Feature.create!()
        KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: air_domain3.id, feature_id: air_domain3_feature.id)

  animal_domain = KlassSpecialization.create!(name: "Animal Domain", description: "You can speak with and befriend animals with ease. In addition, you treat Knowledge (nature) as a class skill.")
    KlassFeatureKlassSpecialization.create!(klass_feature_id: cleric5.id, klass_specialization_id: animal_domain.id)
    animal_domain1 = KlassSpecializationFeature.create!(klass_specialization_id: animal_domain.id, name: "Base", description: "", level: 1)
      animal_domain1_feature = Feature.create!()
        KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: animal_domain1.id, feature_id: animal_domain1_feature.id)
        FeatureSkillBonus.create!(feature_id: animal_domain1_feature.id, skill_id: knowledge_nature.id, class_skill: true)
        FeatureSkillBonus.create!(feature_id: animal_domain1_feature.id, skill_id: nature_unchained.id, class_skill: true)
    animal_domain2 = KlassSpecializationFeature.create!(klass_specialization_id: animal_domain.id, name: "Speak with Animals", description: "You can speak with animals, as per the spell, for a number of rounds per day equal to 3 + your cleric level.", level: 1)
      animal_domain2_feature = Feature.create!()
        KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: animal_domain2.id, feature_id: animal_domain2_feature.id)
        FeatureUsage.create!(feature_id: animal_domain2_feature.id, unit: "rounds", limit_frequency: "Day", adjustable: true, base_limit: 4, limit_increase_per_level: 1)
    animal_domain3 = KlassSpecializationFeature.create!(klass_specialization_id: animal_domain.id, name: "Animal Companion", description: "At 4th level, you gain the service of an animal companion. Your effective druid level for this animal companion is equal to your cleric level – 3. (Druids who take this ability through their nature bond class feature use their druid level – 3 to determine the abilities of their animal companions).", level: 4)
    animal_domain4 = KlassSpecializationFeature.create!(klass_specialization_id: animal_domain.id, name: "Domain Spells", description: "1st—calm animals, 2nd—hold animal, 3rd—dominate animal, 4th—summon nature’s ally IV (animals only), 5th—beast shape III (animals only), 6th—antilife shell, 7th—animal shapes, 8th—summon nature’s ally VIII (animals only), 9th—shapechange.", level: 1)
      animal_domain4_feature = Feature.create!()
        KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: animal_domain4.id, feature_id: animal_domain4_feature.id)

  artifice_domain = KlassSpecialization.create!(name: "Artifice Domain", description: "You can repair damage to objects, animate objects with life, and create objects from nothing.")
    KlassFeatureKlassSpecialization.create!(klass_feature_id: cleric5.id, klass_specialization_id: artifice_domain.id)
    artifice_domain1 = KlassSpecializationFeature.create!(klass_specialization_id: artifice_domain.id, name: "Artificer's Touch", description: "You can cast mending at will, using your cleric level as the caster level to repair damaged objects. In addition, you can cause damage to objects and construct creatures by striking them with a melee touch attack. Objects and constructs take 1d6 points of damage +1 for every two cleric levels you possess. This attack bypasses an amount of damage reduction and hardness equal to your cleric level. You can use this ability a number of times per day equal to 3 + your Wisdom modifier.", level: 1)
      artifice_domain1_feature = Feature.create!()
        KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: artifice_domain1.id, feature_id: artifice_domain1_feature.id)
      artifice_domain1_feature2 = Feature.create!(action_id: standard.id)
        KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: artifice_domain1.id, feature_id: artifice_domain1_feature2.id)
        FeatureUsage.create!(feature_id: artifice_domain1_feature2.id, limit_frequency: "Day", adjustable: true, base_limit: 3, base_limit_modifier: "wisdom")
        FeatureDamage.create!(feature_id: artifice_domain1_feature2.id, num_of_dice: 1, damage_dice: 6, base_mod: 0, mod_increase_per_level: 0.5)
        FeatureAttack.create!(feature_id: artifice_domain1_feature2.id, attack_type: "melee", armor_class: "touch")
    artifice_domain2 = KlassSpecializationFeature.create!(klass_specialization_id: artifice_domain.id, name: "Dancing Weapons", description: "At 8th level, you can give a weapon touched the dancing special weapon quality for 4 rounds. You can use this ability once per day at 8th level, and an additional time per day for every four levels beyond 8th.", level: 8)
    artifice_domain3 = KlassSpecializationFeature.create!(klass_specialization_id: artifice_domain.id, name: "Domain Spells", description: "1st—animate rope, 2nd—wood shape, 3rd—stone shape, 4th—minor creation, 5th—fabricate, 6th—major creation, 7th—wall of iron, 8th—statue*, 9th—prismatic sphere.", level: 1)
      artifice_domain3_feature = Feature.create!()
        KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: artifice_domain3.id, feature_id: artifice_domain3_feature.id)

    chaos_domain = KlassSpecialization.create!(name: "Chaos Domain", description: "our touch infuses life and weapons with chaos, and you revel in all things anarchic.")
      KlassFeatureKlassSpecialization.create!(klass_feature_id: cleric5.id, klass_specialization_id: chaos_domain.id)
      chaos_domain1 = KlassSpecializationFeature.create!(klass_specialization_id: chaos_domain.id, name: "Touch of Chaos", description: "You can imbue a target with chaos as a melee touch attack. For the next round, anytime the target rolls a d20, he must roll twice and take the less favorable result. You can use this ability a number of times per day equal to 3 + your Wisdom modifier.", level: 1)
        chaos_domain1_feature = Feature.create!(action_id: standard.id)
          KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: chaos_domain1.id, feature_id: chaos_domain1_feature.id)
          FeatureUsage.create!(feature_id: chaos_domain1_feature.id, limit_frequency: "Day", adjustable: true, base_limit: 3, base_limit_modifier: "wisdom")
          FeatureApplication.create!(feature_id: chaos_domain1_feature.id, affects_allies: true, affects_enemies: true)
      chaos_domain2 = KlassSpecializationFeature.create!(klass_specialization_id: chaos_domain.id, name: "Chaos Blade", description: "At 8th level, you can give a weapon touched the anarchic special weapon quality for a number of rounds equal to 1/2 your cleric level. You can use this ability once per day at 8th level, and an additional time per day for every four levels beyond 8th.", level: 8)
      chaos_domain3 = KlassSpecializationFeature.create!(klass_specialization_id: chaos_domain.id, name: "Domain Spells", description: "1st—protection from law, 2nd—align weapon (chaos only), 3rd—magic circle against law, 4th—chaos hammer, 5th—dispel law, 6th—animate objects, 7th—word of chaos, 8th—cloak of chaos, 9th—summon monster IX (chaos spell only).")
        chaos_domain3_feature = Feature.create!()
          KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: chaos_domain3.id, feature_id: chaos_domain3_feature.id)





cleric6 = KlassFeature.create!(klass_id: cleric.id, name: "Spontaneous Casting", description: "A good cleric (or a neutral cleric of a good deity) can channel stored spell energy into healing spells that she did not prepare ahead of time. The cleric can “lose” any prepared spell that is not an orison or domain spell in order to cast any cure spell of the same spell level or lower (a cure spell is any spell with “cure” in its name).

An evil cleric (or a neutral cleric of an evil deity) can’t convert prepared spells to cure spells but can convert them to inflict spells (an inflict spell is one with “inflict” in its name).

A cleric who is neither good nor evil and whose deity is neither good nor evil can convert spells to either cure spells or inflict spells (player’s choice). Once the player makes this choice, it cannot be reversed. This choice also determines whether the cleric channels positive or negative energy (see channel energy).")
  FeatureLevel.create!(klass_feature_id: cleric6.id, level: 1, table_description: "Spontaneous Casting")
  cleric6_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: cleric6.id, feature_id: cleric6_feature.id)
    FeatureCharacterChoice.create!(feature_id: cleric6_feature.id, sub_feature: "spontaneous_casting", option: "cure")
    FeatureCharacterChoice.create!(feature_id: cleric6_feature.id, sub_feature: "spontaneous_casting", option: "inflict")

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")
  # IDENTIFIER_feature = Feature.create!()
  #   KlassFeatureFeature.create!(klass_feature_id: IDENTIFIER.id, feature_id: IDENTIFIER_feature.id)

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")
  # IDENTIFIER_feature = Feature.create!()
  #   KlassFeatureFeature.create!(klass_feature_id: IDENTIFIER.id, feature_id: IDENTIFIER_feature.id)

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")
  # IDENTIFIER_feature = Feature.create!()
  #   KlassFeatureFeature.create!(klass_feature_id: IDENTIFIER.id, feature_id: IDENTIFIER_feature.id)

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")
  # IDENTIFIER_feature = Feature.create!()
  #   KlassFeatureFeature.create!(klass_feature_id: IDENTIFIER.id, feature_id: IDENTIFIER_feature.id)

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")
  # IDENTIFIER_feature = Feature.create!()
  #   KlassFeatureFeature.create!(klass_feature_id: IDENTIFIER.id, feature_id: IDENTIFIER_feature.id)

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")
  # IDENTIFIER_feature = Feature.create!()
  #   KlassFeatureFeature.create!(klass_feature_id: IDENTIFIER.id, feature_id: IDENTIFIER_feature.id)

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")
  # IDENTIFIER_feature = Feature.create!()
  #   KlassFeatureFeature.create!(klass_feature_id: IDENTIFIER.id, feature_id: IDENTIFIER_feature.id)

print "Cleric features created! \r"


arcanist1 = KlassFeature.create!(klass_id: arcanist.id, name: "Weapon and Armor Proficiencies", description: "Arcanists are proficient with all simple weapons. They are not proficient with any type of armor or shield. Armor interferes with an arcanist’s gestures, which can cause her spells with somatic components to fail (see Arcane Spells and Armor).")
  FeatureLevel.create!(klass_feature_id: arcanist1.id, level: 1, table_description: "none")


arcanist2 = KlassFeature.create!(klass_id: arcanist.id, name: "Spells", description: "An arcanist casts arcane spells drawn from the sorcerer/wizard spell list. An arcanist must prepare her spells ahead of time, but unlike a wizard, her spells are not expended when they’re cast. Instead, she can cast any spell that she has prepared consuming a spell slot of the appropriate level, assuming she hasn’t yet used up her spell slots per day for that level.

To learn, prepare, or cast a spell, the arcanist must have an Intelligence score equal to at least 10 + the spell’s level. The saving throw DC against an arcanist’s spell is 10 + the spell’s level + the arcanist’s Intelligence modifier.

An arcanist can only cast a certain number of spells of each spell level per day. Her base daily spell allotment is given on Table: Arcanist under “Spells per Day.” In addition, she receives bonus spells per day if she has a high Intelligence score.

An arcanist may know any number of spells, but the number she can prepare each day is limited. At 1st level, she can prepare four 0-level spells and two 1st-level spells each day. At each new arcanist level, the number of spells she can prepare each day increases, adding new spell levels as indicated on Table: Arcanist Spells Prepared. Unlike the number of spells she can cast per day, the number of spells an arcanist can prepare each day is not affected by her Intelligence score. Feats and other effects that modify the number of spells known by a spellcaster instead affect the number of spells an arcanist can prepare.

An arcanist must choose and prepare her spells ahead of time by getting 8 hours of sleep and spending 1 hour studying her spellbook. While studying, the arcanist decides what spells to prepare and refreshes her available spell slots for the day.

Like a sorcerer, an arcanist can choose to apply any metamagic feats she knows to a prepared spell as she casts it, with the same increase in casting time (see Spontaneous Casting and Metamagic Feats). However, she may also prepare a spell with any metamagic feats she knows and cast it without increasing casting time like a wizard. She cannot combine these options—a spell prepared with metamagic feats cannot be further modified with another metamagic feat at the time of casting (unless she has the metamixing arcanist exploit, detailed below).

Spellbooks: An arcanist must study her spellbook each day to prepare her spells. She can’t prepare any spell not recorded in her spellbook, except for read magic (which all arcanists can prepare from memory).

An arcanist begins play with a spellbook containing all 0-level wizard/sorcerer spells plus three 1st-level spells of her choice. The arcanist also selects a number of additional 1st-level spells equal to her Intelligence modifier to add to the spellbook. At each new arcanist level, she gains two new spells of any spell level or levels that she can cast (based on her new arcanist level) for her spellbook. At any time, an arcanist can also add spells found in wizards‘ or other arcanists’ spellbooks to her own.

Cantrips: Arcanists can prepare a number of cantrips, or 0-level spells, each day as noted on Table: Arcanist Spells Prepared. These spells are cast like any other spell, but they do not consume spell slots. As with her other spells, these spells are not expended when cast.")
  FeatureLevel.create!(klass_feature_id: arcanist2.id, level: 1, table_description: "none")

arcanist3 = KlassFeature.create!(klass_id: arcanist.id, name: 'Arcane Reservoir', description: 'An arcanist has an innate pool of magical energy that she can draw upon to fuel her arcanist exploits and enhance her spells. The arcanist’s arcane reservoir can hold a maximum amount of magical energy equal to 3 + the arcanist’s level. Each day, when the arcanist prepares spells, the arcanist’s arcane reservoir fills with raw magical energy, gaining a number of points equal to 3 + 1/2 her arcanist level. Any points she had from the previous day are lost. She can also regain these points through the consume spells class feature and some arcanist exploits. The arcane reservoir can never hold more points than the maximum amount noted above; points gained in excess of this total are lost.

Points from the arcane reservoir are used to fuel many of the arcanist’s powers. In addition, the arcanist can expend 1 point from her arcane reservoir as a free action whenever she casts an arcanist spell. If she does, she can choose to increase the caster level by 1 or increase the spell’s DC by 1. She can expend no more than 1 point from her reservoir on a given spell in this way.')
  FeatureLevel.create!(klass_feature_id: arcanist3.id, level: 1, table_description: 'Arcane Reservoir')

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

arcanist6 = KlassFeature.create!(klass_id: arcanist.id, name: 'Greater Exploits', description: 'At 11th level and every 2 levels thereafter, an arcanist can choose one of the following greater exploits in place of an arcanist exploit.')
  FeatureLevel.create!(klass_feature_id: arcanist6.id, level: 11, table_description: 'Greater Exploits')

arcanist7 = KlassFeature.create!(klass_id: arcanist.id, name: 'Magical Supremacy', description: 'At 20th level, the arcanist learns how to convert her arcane reservoir into spells and back again. She can cast any spell she has prepared by expending a number of points from her arcane reservoir equal to 1 + the level of the spell to be cast instead of expending a spell slot. When she casts a spell in this fashion, she treats her caster level as 2 higher than normal, and the DCs of any saving throws associated with the spell increase by 2. She cannot further expend points from her arcane reservoir to enhance a spell cast in this way.')
  FeatureLevel.create!(klass_feature_id: arcanist7.id, level: 20, table_description: 'Magical Supremacy')

print "Arcanist features created! \r"



vigilante1 = KlassFeature.create!(klass_id: vigilante.id, name: "Weapon and Armor Proficiency", description: "Vigilantes are proficient with all simple and martial weapons, light armor, medium armor, and shields (except tower shields).")
  FeatureLevel.create!(klass_feature_id: vigilante1.id, level: 1, table_description: "none")

vigilante2 = KlassFeature.create!(klass_id: vigilante.id, name: "Dual Identity", description: "A vigilante hides his true identity, allowing him to move about social circles and nobility without carrying the stigma of his ruthless actions. In effect, the vigilante has two identities: one is a polite member of society while the other is a skilled and cunning warrior. To keep up this charade, the vigilante usually has two names: his true name, used in polite company, and his vigilante name, used to strike fear in the hearts of those who oppose him. Knowledge checks about one do not reveal information about the other, unless the vigilante’s true identity revealed to the world at large.

The vigilante can start each day in either of his identities, referred to simply as social or vigilante. Changing from one identity to another takes 1 minute and must be done out of sight from other creatures to preserve the vigilante’s secret.

Changing identities is more than just changing outfits and clothing (although that is certainly a part of it); the process often also involves applying make-up, altering his hair, and adjusting other personal effects. Furthermore, the change is as much a state of mind as of body, so items such as a hat of disguise and similar spells and effects that change the user’s appearance do not reduce the time required to change identities. Most social talents require the vigilante to be in his social identity, but a vigilante who uses vigilante talents in his social identity risks exposing his secret.

Despite being a single person, a vigilante’s dual nature allows him to have two alignments, one for each of his identities. When in an identity, he is treated as having that identity’s alignment for all spells, magic items, and abilities that rely on alignment. For the purpose of meeting a qualification for a feat, class, or any ability, he is only eligible if both of his alignments meet the requirements.

A vigilante’s two alignments cannot be more than one step from each other on a single alignment axis. For example, a vigilante with a lawful neutral social identity could have a vigilante identity that is lawful good, lawful neutral, lawful evil, neutral, neutral good, or neutral evil. If a vigilante is the target of an effect that would change his alignment, it changes both of his alignments to the new alignment.

Any attempts to scry or otherwise locate the vigilante work only if the vigilante is currently in the identity the creature is attempting to locate (or if the creature knows that the two identities are the same individual). Otherwise, the spell or effect has no effect, revealing nothing but darkness, as if the target were invalid or did not exist.")
  FeatureLevel.create!(klass_feature_id: vigilante2.id, level: 1, table_description: "Dual Identity")

vigilante3 = KlassFeature.create!(klass_id: vigilante.id, name: "Seamless Guise", description: "A vigilante knows how to behave in a way that appears perfectly proper and normal for his current identity. Should anyone suspect him of being anything other than what he appears to be while either in his social or vigilante identity, he can attempt a Disguise check with a +20 circumstance bonus to appear as his current identity, and not as his other identity.")
  FeatureLevel.create!(klass_feature_id: vigilante3.id, level: 1, table_description: "Seamless Guise")

vigilante4 = KlassFeature.create!(klass_id: vigilante.id, name: "Social Talent", description: "Starting at 1st level, and every 2 levels thereafter, a vigilante gains a social talent. Unless otherwise noted, a talent can be selected only once. Some talents require the vigilante to meet other prerequisites before they can be chosen, such as having another social talent or attaining a minimum vigilante level. Once a talent has been chosen, it cannot be changed.")
  FeatureLevel.create!(klass_feature_id: vigilante4.id, level: 1, table_description: "Social Talent")
  FeatureLevel.create!(klass_feature_id: vigilante4.id, level: 3, table_description: "Social Talent")
  FeatureLevel.create!(klass_feature_id: vigilante4.id, level: 5, table_description: "Social Talent")
  FeatureLevel.create!(klass_feature_id: vigilante4.id, level: 7, table_description: "Social Talent")
  FeatureLevel.create!(klass_feature_id: vigilante4.id, level: 9, table_description: "Social Talent")
  FeatureLevel.create!(klass_feature_id: vigilante4.id, level: 11, table_description: "Social Talent")
  FeatureLevel.create!(klass_feature_id: vigilante4.id, level: 13, table_description: "Social Talent")
  FeatureLevel.create!(klass_feature_id: vigilante4.id, level: 15, table_description: "Social Talent")
  FeatureLevel.create!(klass_feature_id: vigilante4.id, level: 17, table_description: "Social Talent")
  FeatureLevel.create!(klass_feature_id: vigilante4.id, level: 19, table_description: "Social Talent")

vigilante5  = KlassFeature.create!(klass_id: vigilante.id, name: "Vigilante Specialization", description: "At 1st level, a vigilante must choose to be either an avenger or a stalker.

An avenger gains a base attack bonus equal to his vigilante level instead of using those listed on Table: The Vigilante. He adds this value to any other base attack bonus gained from other classes or racial Hit Dice as normal.

A stalker gains an ability called hidden strike, which allows him to deal an extra 1d8 points of precision damage on melee attacks (or ranged attacks from within 30 feet) against foes who are unaware of his presence, who consider him an ally, or who are made flat-footed by startling appearance. This extra damage increases by 1d8 at 3rd level and every 2 vigilante levels thereafter. A stalker vigilante can also deal hidden strike damage to a target that he is flanking or that is denied its Dexterity bonus to AC, but in these cases, the damage dice are reduced to d4s. A stalker can deal hidden strike damage against targets with concealment (but not total concealment).

Once this choice is made, it can’t be changed. While many vigilante talents are usable by both specializations, some are unique to each specialization. A stalker vigilante can apply only one talent marked with an asterisk (*) to a given hidden strike, and only when that hidden strike is dealt against a foe that is unaware of the stalker vigilante’s presence (or who considers him an ally), unless otherwise noted.")
  FeatureLevel.create!(klass_feature_id: vigilante5.id, level: 1, table_description: "Vigilante Specialization")

vigilante6 = KlassFeature.create!(klass_id: vigilante.id, name: "Vigilante Talent", description: "Starting at 2nd level and every 2 levels thereafter, a vigilante gains a vigilante talent. Unless otherwise noted, a talent can be selected only once. Some talents require the vigilante to meet prerequisites before they can be chosen, such as possessing another vigilante talent, possessing a particular specialization, or attaining a minimum level. Once a talent has been selected, it can’t be changed.

If the vigilante uses any of these talents while in his social identity, he must succeed at a Disguise check against the Perception checks of all onlookers (without the +20 circumstance bonus from seamless guise) or the onlookers will realize that he is more than his social identity appears to be and perhaps discover the social and vigilante identities are one and the same. If a talent calls for a saving throw, the DC for that save is equal to 10 + 1/2 the vigilante’s level + the vigilante’s Charisma modifier, unless stated otherwise.")
  FeatureLevel.create!(klass_feature_id: vigilante6.id, level: 2, table_description: "Vigilante Talent")
  FeatureLevel.create!(klass_feature_id: vigilante6.id, level: 4, table_description: "Vigilante Talent")
  FeatureLevel.create!(klass_feature_id: vigilante6.id, level: 6, table_description: "Vigilante Talent")
  FeatureLevel.create!(klass_feature_id: vigilante6.id, level: 8, table_description: "Vigilante Talent")
  FeatureLevel.create!(klass_feature_id: vigilante6.id, level: 10, table_description: "Vigilante Talent")
  FeatureLevel.create!(klass_feature_id: vigilante6.id, level: 12, table_description: "Vigilante Talent")
  FeatureLevel.create!(klass_feature_id: vigilante6.id, level: 14, table_description: "Vigilante Talent")
  FeatureLevel.create!(klass_feature_id: vigilante6.id, level: 16, table_description: "Vigilante Talent")
  FeatureLevel.create!(klass_feature_id: vigilante6.id, level: 18, table_description: "Vigilante Talent")
  FeatureLevel.create!(klass_feature_id: vigilante6.id, level: 20, table_description: "Vigilante Talent")

vigilante7 = KlassFeature.create!(klass_id: vigilante.id, name: "Unshakable", description: "Starting at 3rd level, a vigilante adds his class level to the DC of any attempts to Intimidate him.")
  FeatureLevel.create!(klass_feature_id: vigilante7.id, level: 3, table_description: "Unshakable")

vigilante8 = KlassFeature.create!(klass_id: vigilante.id, name: "Startling Appearance", description: "At 5th level, a vigilante learns to use the element of surprise to his advantage, startling foes that are unaware of his presence. Whenever a vigilante with this ability attempts an attack against a foe that is completely unaware of the vigilante’s presence (usually due to Stealth or invisibility), the foe is treated as flat-footed for the rest of the vigilante’s turn (uncanny dodge or a similar ability prevents this effect unless the vigilante is at least 4 levels higher than the foe with uncanny dodge).

The foe also takes a –4 penalty on attacks made against the vigilante until the start of the vigilante’s next turn.")
  FeatureLevel.create!(klass_feature_id: vigilante8.id, level: 5, table_description: "Startling Appearance")

vigilante9 = KlassFeature.create!(klass_id: vigilante.id, name: "Frightening Appearance", description: "At 11th level, whenever a vigilante with this ability makes an attack against a foe that is unaware of the vigilante’s presence (see startling appearance above), the vigilante can, as a free action, attempt an Intimidate check to demoralize the target of his attack and any enemies within 10 feet who can see the attack. This check is attempted before the attack roll against the foe is made and resolved. The vigilante rolls only one Intimidate check and applies the result to all the targets. If the check succeeds against the target of the vigilante’s attack, that foe is also frightened for 1 round, in addition to being shaken as normal, unless the foe succeeds at a Will save (DC = 10 + 1/2 the vigilante’s class level + his Charisma modifier).

Once a creature has been the target of this ability (either as the target of the attack or as a nearby creature, regardless of whether or not it was successful), it is immune to that vigilante’s frightening appearance for 24 hours. This effect is in addition to the bonuses gained from the startling appearance ability. This is a mind-affecting fear effect.")
  FeatureLevel.create!(klass_feature_id: vigilante9.id, level: 11, table_description: "Frightening Appearance")

vigilante10 = KlassFeature.create!(klass_id: vigilante.id, name: "Stunning Appearance", description: "At 17th level, a vigilante can leave his foes unable to respond when he appears. Whenever a vigilante with this ability makes a successful attack against a foe that is unaware of the vigilante’s presence (see startling appearance), the foe must make a successful Will save (DC = 10 + 1/2 the vigilante’s class level + his Charisma modifier) or be stunned until the end of the vigilante’s next turn. If the creature has more HD than the vigilante’s class level, it receives a +4 circumstance bonus on this save.

This ability is in addition to the effects of startling appearance and frightening appearance. Once a creature has been the target of this ability (regardless of whether or not the saving throw is successful), it is immune to that vigilante’s stunning appearance for 24 hours. This is a mind-affecting fear effect.")
  FeatureLevel.create!(klass_feature_id: vigilante10.id, level: 17, table_description: "Stunning Appearance")

vigilante11 = KlassFeature.create!(klass_id: vigilante.id, name: "Vengeance Strike", description: "At 20th level, a vigilante can study a target to strike more viciously. He can spend up to 5 standard actions, which all must be in consecutive rounds. On the following round, he can make a vengeance strike against the studied creature. The target must remain unaware of the vigilante’s presence (or not see him as a threat) until the attack. For each round spent studying the target, the vigilante grants himself one of the following benefits on his vengeance strike: gain a +4 circumstance bonus on the attack roll, deal an additional 3d6 points of precision damage if he hits, or treat the attack roll as if it were 2 higher for the purposes of determining whether the attack hit or threatens a critical hit (to maximum effective roll of 20). Each round of study can be spent in a different way or the same way (they stack with each other), but each round of study must be allocated before the attack roll is made. If the vigilante is an avenger, he automatically confirms any critical hits threatened by his vengeance strike. If the vigilante is a stalker and would normally be able to add a special effect from a vigilante talent with an asterisk (*) to this attack, he can instead add two special effects to his vengeance strike.")
  FeatureLevel.create!(klass_feature_id: vigilante11.id, level: 20, table_description: "Vengeance Strike")

print "Vigilante features created! \r"


shifter1 = KlassFeature.create!(klass_id: shifter.id, name: "Weapon and Armor Proficiency", description: "A Chimera Weapon Shifter is not proficient with Simple Weapons or Martial Weapons. She is proficient with the natural attacks (claw, bite, and so forth) from the shifter claws class feature and forms she assumes with Shifter Aspect and Major Form.

Chimera Weapon Shifters are not proficient with any light, medium, or heavy armor, except for wooden armor. Chimera Weapon Shifters are not proficient with any shields.

A Chimera Weapon Shifter who wears metal armor or uses a metal shield is unable to use her Shifter Aspect, Shifter Claws, Major Form, and other shifter supernatural or spell-like abilities while doing so and for 24 hours thereafter.
")
  FeatureLevel.create!(klass_feature_id: shifter1.id, level: 1, table_description: "none")

shifter2 = KlassFeature.create!(klass_id: shifter.id, name: "Bonus Languages", description: "A shifter’s bonus language options include Sylvan, the language of woodland creatures, and Aklo, the tongue spoken by certain sinister fey or otherworldly denizens of reaches of the wild rarely explored by humanity. These choices are in addition to the bonus languages available to the character because of her race.
A shifter speaks Druidic, a secret language known only to druids and shifters, which she learns upon becoming a 1st-level shifter. Druidic is a free language for a shifter; that is, she knows it in addition to her regular allotment of languages, and it doesn’t take up a language slot. Shifters are forbidden to teach this language to non-druids or non-shifters.
")
  FeatureLevel.create!(klass_feature_id: shifter2.id, level: 1, table_description: "none")

shifter3 = KlassFeature.create!(klass_id: shifter.id, name: "Shifter Aspect", description: "At 1st level, a Chimera Weapon Shifter gains two aspects – a category of animal to which her body and soul have become supernaturally attuned. When a Chimera Weapon Shifter spends Chimera Points to gain Combat and Minor Forms, she maintains those forms for a number of rounds (for Combat Form) or a number of minutes (for Minor Form) equal to half her Shifter level (min. 1). An aspect’s Combat Form allows you to maintain your natural form while gaining specific combat advantages from that aspect, and are generally very powerful. An aspect’s Minor Form allows you to maintain your natural form while gaining natural ability advantages from this aspect, and act more passively. She must spend 1 Chimera point to shift into either Form (see Chimera Points below). Shifting into a Combat Form or a Minor Form is a swift action, while ending the effect is a free action that can be taken only on the shifter’s turn. Until a shifter reaches 9th level and gains the Dual Form class feature, she can assume only 1 Combat Form and 1 Minor Form at a time. Shifting to a new aspect or form ends replaces one aspect or form currently manifested, and costs 1 Chimera Point. The Minor Forms of aspects are not polymorph effects, and the shifter does not lose the benefits of a Combat Form or a Minor Form while affect by polymorph effects.

As the Chimera Weapon Shifter gains levels, she gains more aspects, she gains one additional aspect at 2nd level and every even level after that. Aspects are detailed in their own section below.

If you able to cast any spells with your Combat Form, or your Minor Form, you are to cast them as if you had the Eschew Materials feat.")
  FeatureLevel.create!(klass_feature_id: shifter3.id, level: 1, table_description: "Shifter Aspect +2")
  FeatureLevel.create!(klass_feature_id: shifter3.id, level: 2, table_description: "Shifter Aspect +1")
  FeatureLevel.create!(klass_feature_id: shifter3.id, level: 4, table_description: "Shifter Aspect +1")
  FeatureLevel.create!(klass_feature_id: shifter3.id, level: 6, table_description: "Shifter Aspect +1")
  FeatureLevel.create!(klass_feature_id: shifter3.id, level: 8, table_description: "Shifter Aspect +1")
  FeatureLevel.create!(klass_feature_id: shifter3.id, level: 10, table_description: "Shifter Aspect +1")
  FeatureLevel.create!(klass_feature_id: shifter3.id, level: 12, table_description: "Shifter Aspect +1")
  FeatureLevel.create!(klass_feature_id: shifter3.id, level: 14, table_description: "Shifter Aspect +1")
  FeatureLevel.create!(klass_feature_id: shifter3.id, level: 18, table_description: "Shifter Aspect +1")

shifter4 = KlassFeature.create!(klass_id: shifter.id, name: "Chimera Points", description: "A Chimera Weapon Shifter’s ability to shift into different forms of her aspects is fueled by her natural magic, emulated by the chimera. At the start of each day, a Chimera Weapon Shifter gains a number of Chimera points equal to her Wisdom bonus (min. 0) + half her Shifter level, rounded up (min. 1) A Chimera Weapon Shifter spends Chimera points to shift into her aspect’s forms. She cannot regain Chimera points naturally, except at the start of each day, but feats and magic items can affect her maximum or ability to regain points.
")
  FeatureLevel.create!(klass_feature_id: shifter4.id, level: 1, table_description: "Chimera Points")

shifter5 = KlassFeature.create!(klass_id: shifter.id, name: "Shifter Claws", description: "At will, a Chimera Weapon Shifter in her natural form can extend her claws as a swift action to use a weapon. The claws on each hand can be used as a primary natural attack, dealing 1d8 points of piercing and slashing damage (1d6 if she is Small). If she uses one of her claw attacks in concert with a weapon held in the other hand, the claw acts a secondary natural attack instead.

As the Chimera Weapon Shifter gains levels the power of her claws increases. At 3rd level, her claws ignore DR/cold iron and DR/silver. At 7th level, her claw damage increases to 1d10 (1d8 if Small). At 11th level, her claw damage increases to 2d6 (1d10 if Small), and the critical multiplier becomes x3. At 15th level, her claw damage increases to 2d8 (2d6 if Small). At 19th level, her claw damage increases to d10 (2d8 if Small), and the claws ignore DR/adamantine and DR/--.

While a shifter uses an aspect’s Major Form, her natural attacks gain the same benefits granted by her shifter claws ability. If the form she takes has claw attacks, she can use either the base damage of her shifter claws or the damage of the form’s claws, whichever is greater. If the form does not have claw attacks, she can choose up to two natural attacks that would deal less damage than her shifter claw damage and have those attacks instead deal the same damage as her shifter claws.")
  FeatureLevel.create!(klass_feature_id: shifter5.id, level: 1, table_description: "Shifter Claws")
  FeatureLevel.create!(klass_feature_id: shifter5.id, level: 3, table_description: "Shifter Claws incrase")
  FeatureLevel.create!(klass_feature_id: shifter5.id, level: 7, table_description: "Shifter Claws incrase")
  FeatureLevel.create!(klass_feature_id: shifter5.id, level: 11, table_description: "Shifter Claws incrase")
  FeatureLevel.create!(klass_feature_id: shifter5.id, level: 15, table_description: "Shifter Claws incrase")
  FeatureLevel.create!(klass_feature_id: shifter5.id, level: 19, table_description: "Shifter Claws incrase")

shifter6 = KlassFeature.create!(klass_id: shifter.id, name: "Defensive Instinct", description: "At 2nd level, when unarmored, not using a shield, unencumbered, and conscious, the shifter adds her Wisdom bonus (if any) to her AC and CMD. If she is wearing nonmetal armor or using a nonmetal shield, she instead adds half her Wisdom bonus to her AC (minimum 0). In addition, the shifter gains a +1 bonus to her AC and CMD at 5th level. This bonus increases by 1 for every 5 shifter levels thereafter (up to a maximum of +4 at 20th level).

These bonuses to AC apply even against touch attacks and when the shifter is flat-footed. She loses these bonuses when she is immobilized or helpless. These bonuses do not stack with the monk AC bonus class feature. This ability grants bonuses to AC even when she is in a Major Form.
")
  FeatureLevel.create!(klass_feature_id: shifter6.id, level: 2, table_description: "Defensive Instinct")
  FeatureLevel.create!(klass_feature_id: shifter6.id, level: 5, table_description: "Defensive Instinct +1")
  FeatureLevel.create!(klass_feature_id: shifter6.id, level: 10, table_description: "Defensive Instinct +2")
  FeatureLevel.create!(klass_feature_id: shifter6.id, level: 15, table_description: "Defensive Instinct +3")
  FeatureLevel.create!(klass_feature_id: shifter6.id, level: 20, table_description: "Defensive Instinct +4")

shifter7 = KlassFeature.create!(klass_id: shifter.id, name: "Major Form", description: "At 4th level, a Chimera Weapon Shifter gains the ability to turn herself into the major form of one of her aspects by spending 2 Chimera Points. This ability functions as beast shape II, except as noted here. The shifter can only turn into the Major Form of only one of her aspects at a time. When a Chimera Weapon Shifter spends points to gain a Major Form, she can maintain that form for a number of hours equal half her Shifter level (min. 1). Changing into the Major Form of an aspect or back is a standard action that doesn’t provoke attacks of opportunity. Often a particular aspect’s Major Form grants abilities beyond the normal effect of beast shape II. Each major form details the abilities the shifter gains with that major form and at what level; she gains these instead of the form abilities from beast shape II, but she still gains beast shape II abilities that are size dependent. The benefits of beast shape II will be listed by each Major Form.

A Chimera Weapon Shifter loses her ability to speak while in animal form because she is limited to the sounds that a norm, untrained animal of the form can make, but she can communicate with other animals of the same general grouping as her form. She can also communicate in nonverbal ways with allies.

For this purposes of the prerequisites for Feats, Class Features, and Magical Items, this class feature is treated as Wild Shape.
")
  FeatureLevel.create!(klass_feature_id: shifter7.id, level: 4, table_description: "Major Form")

shifter8 = KlassFeature.create!(klass_id: shifter.id, name: "Bonus Feats", description: "At 5th level, and every fifth level thereafter, a Chimera Weapon Shifter gains a bonus feat in addition to those gained from normal advancement. These bonus feats must be selected from those listed as combat feats.")
  FeatureLevel.create!(klass_feature_id: shifter8.id, level: 5, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: shifter8.id, level: 10, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: shifter8.id, level: 15, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: shifter8.id, level: 20, table_description: "Bonus Feat")

shifter9 = KlassFeature.create!(klass_id: shifter.id, name: "Dual Form", description: "At 9th level, when a Chimera Weapon Shifter uses her shifter aspect ability to take on a Combat or Minor Form, she can spend 2 Chimera points to shift into any combination of two Combat or Minor Forms.")
  FeatureLevel.create!(klass_feature_id: shifter9.id, level: 9, table_description: "Dual Form")

shifter10 = KlassFeature.create!(klass_id: shifter.id, name: "Greater Form", description: "At 13th level, when a Chimera Weapon Shifter uses her shifter aspect ability or Major Form to take on a Combat, Minor, or Major Form, she can spend 3 Chimera points to shift into any combination of three Combat or Minor Forms as a swift action, or any combination of two Combat or Minor Forms and one Major Form as a Move Action.")
  FeatureLevel.create!(klass_feature_id: shifter10.id, level: 13, table_description: "Greater Form")

shifter11 = KlassFeature.create!(klass_id: shifter.id, name: "Mythological Aspect", description: "At 16th level, a Chimera Weapon Shifter can choose an aspect from the Mythological Aspects list, rather than from the Aspects list. At 20th level, she can choose an additional Mythological aspect instead of a standard aspect.")
  FeatureLevel.create!(klass_feature_id: shifter11.id, level: 16, table_description: "Mythological Aspect +1")
  FeatureLevel.create!(klass_feature_id: shifter11.id, level: 20, table_description: "Mythological Aspect +1")

shifter12 = KlassFeature.create!(klass_id: shifter.id, name: "Multi Form", description: "At 17th level, when a Chimera Weapon Shifter uses her shifter aspect ability or Major Form to take on a Combat, Minor, or Major Form, she can spend 4 Chimera points to shift into any combination of four Combat or Minor Forms as a swift action, or any combination of three Combat or Minor Forms and one Major Form as a Full-Round Action.

Additionally, by spending 1 Chimera Point, as an immediate action, she can shift one of her Combat or Minor Forms to a different Combat or Minor Form. She may also spend 2 Chimera points, as an immediate action, to shift her Major Form to a different Major Form. However, this Major Form shift can only be done once between her turn. In order to use either of these abilities, you must already have a Combat, Minor, or Major Form.
")
  FeatureLevel.create!(klass_feature_id: shifter12.id, level: 17, table_description: "Multi Form")

print "Shifter features created! \r"


swashbuckler1 = KlassFeature.create!(klass_id: swashbuckler.id, name: "Weapon and Armor Proficiency", description: "Swashbucklers are proficient with all simple and martial weapons, as well as light armor and bucklers.")
  FeatureLevel.create!(klass_feature_id: swashbuckler1.id, level: 1, table_description: "none")

swashbuckler2 = KlassFeature.create!(klass_id: swashbuckler.id, name: "Panache", description: "More than just a lightly armored warrior,
a swashbuckler is a daring combatant. She fights with panache: a fluctuating measure of a swashbuckler’s ability to perform amazing actions in combat. At the start of each day, a swashbuckler gains a number of panache points equal to her Charisma modifier (minimum 1). Her panache goes up or down throughout the day, but usually can’t exceed her Charisma modifier (minimum 1), though feats and magic items can affect this maximum. A swashbuckler spends panache points to accomplish deeds")
  FeatureLevel.create!(klass_feature_id: swashbuckler2.id, level: 1, table_description: "Panache")

swashbuckler3 = KlassFeature.create!(klass_id: swashbuckler.id, name: "Deeds", description: "Swashbucklers spend panache points to accomplish deeds. Most deeds grant the swashbuckler a momentary bonus or effect, but some provide longer- lasting effects. Some deeds remain in effect while the swashbuckler has at least 1 panache point, but do not require the expenditure of panache points to be maintained. A swashbuckler can perform deeds only of her level or lower. Unless otherwise noted, a deed can be performed multiple successive times, as long as the swashbuckler has or spends the required number of panache points to perform the deed.")
  FeatureLevel.create!(klass_feature_id: swashbuckler3.id, level: 1, table_description: "Deeds")
  FeatureLevel.create!(klass_feature_id: swashbuckler3.id, level: 3, table_description: "Deeds")
  FeatureLevel.create!(klass_feature_id: swashbuckler3.id, level: 7, table_description: "Deeds")
  FeatureLevel.create!(klass_feature_id: swashbuckler3.id, level: 15, table_description: "Deeds")
  FeatureLevel.create!(klass_feature_id: swashbuckler3.id, level: 19, table_description: "Deeds")

swashbuckler4 = KlassFeature.create!(klass_id: swashbuckler.id, name: "Swashbuckler Finesse", description: "At 1st level, a swashbuckler gains the benefits of the Weapon Finesse feat with light or one-handed piercing melee weapons, and she can use her Charisma score in place of Intelligence as a prerequisite for combat feats. This ability counts as having the Weapon Finesse feat for purposes of meeting feat prerequisites.")
  FeatureLevel.create!(klass_feature_id: swashbuckler4.id, level: 1, table_description: "Swashbuckler Finesse")

swashbuckler5 = KlassFeature.create!(klass_id: swashbuckler.id, name: "Charmed Life", description: "At 2nd level, the swashbuckler gains a knack for getting out of trouble. Three times per day as an immediate action before attempting a saving throw, she can add her Charisma modifier to the result of the save. She must choose to do this before the roll is made. At 6th level and every 4 levels thereafter, the number of times she can do this per day increases by one (to a maximum of 7 times per day at 18th level).")
  FeatureLevel.create!(klass_feature_id: swashbuckler5.id, level: 2, table_description: "Charmed Life 3/day")
  FeatureLevel.create!(klass_feature_id: swashbuckler5.id, level: 6, table_description: "Charmed Life 4/day")
  FeatureLevel.create!(klass_feature_id: swashbuckler5.id, level: 10, table_description: "Charmed Life 5/day")
  FeatureLevel.create!(klass_feature_id: swashbuckler5.id, level: 14, table_description: "Charmed Life 6/day")
  FeatureLevel.create!(klass_feature_id: swashbuckler5.id, level: 18, table_description: "Charmed Life 7/day")

swashbuckler6 = KlassFeature.create!(klass_id: swashbuckler.id, name: "Nimble", description: "At 3rd level, a swashbuckler gains a +1 dodge bonus to AC while wearing light or no armor. Anything that causes the swashbuckler to lose her Dexterity bonus to AC also causes her to lose this dodge bonus. This bonus increases by 1 for every 4 levels beyond 3rd (to a maximum of +5 at 19th level).")
  FeatureLevel.create!(klass_feature_id: swashbuckler6.id, level: 3, table_description: "Nimble +1")
  FeatureLevel.create!(klass_feature_id: swashbuckler6.id, level: 7, table_description: "Nimble +2")
  FeatureLevel.create!(klass_feature_id: swashbuckler6.id, level: 11, table_description: "Nimble +3")
  FeatureLevel.create!(klass_feature_id: swashbuckler6.id, level: 15, table_description: "Nimble +4")
  FeatureLevel.create!(klass_feature_id: swashbuckler6.id, level: 19, table_description: "Nimble +5")

swashbuckler7 = KlassFeature.create!(klass_id: swashbuckler.id, name: "Bonus Feat", description: "At 4th level and every 4 levels thereafter, a swashbuckler gains a bonus feat in addition to those gained from normal advancement. These bonus feats must be selected from those listed as combat feats. Swashbuckler levels are considered fighter levels for the purpose of meeting combat feat prerequisites.

In addition, upon reaching 4th level and every 4 levels thereafter, a swashbuckler can choose to learn a new bonus feat in place of a bonus feat she has already learned. In effect, the swashbuckler loses the bonus feat in exchange for the new one. The old feat cannot be one that was used as a prerequisite for another feat, prestige class, or other ability. A swashbuckler can only change one feat at any given level, and must choose whether or not to swap the feat at the time she gains a new bonus feat for the level.")
  FeatureLevel.create!(klass_feature_id: swashbuckler7.id, level: 4, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: swashbuckler7.id, level: 8, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: swashbuckler7.id, level: 12, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: swashbuckler7.id, level: 16, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: swashbuckler7.id, level: 20, table_description: "Bonus Feat")

swashbuckler7 = KlassFeature.create!(klass_id: swashbuckler.id, name: "Swashbuckler Weapon Training", description: "At 5th level, a swashbuckler gains a +1 bonus on attack and damage rolls with one-handed or light piercing melee weapons. While wielding such a weapon, she gains the benefit of the Improved Critical feat. These attack and damage bonuses increase by 1 for every 4 levels beyond 5th level (to a maximum of +4 at 17th level).")
  FeatureLevel.create!(klass_feature_id: swashbuckler7.id, level: 5, table_description: "Swashbuckler Weapon Training +1")
  FeatureLevel.create!(klass_feature_id: swashbuckler7.id, level: 9, table_description: "Swashbuckler Weapon Training +2")
  FeatureLevel.create!(klass_feature_id: swashbuckler7.id, level: 13, table_description: "Swashbuckler Weapon Training +3")
  FeatureLevel.create!(klass_feature_id: swashbuckler7.id, level: 17, table_description: "Swashbuckler Weapon Training +4")

swashbuckler8 = KlassFeature.create!(klass_id: swashbuckler.id, name: "Swashbuckler Weapon Mastery", description: "At 20th level, when a swashbuckler threatens a critical hit with a light or one-handed piercing melee weapon, that critical is automatically confirmed. Furthermore, the critical modifiers of such weapons increase by 1 (×2 becomes ×3, and so on).")
  FeatureLevel.create!(klass_feature_id: swashbuckler8.id, level: 20, table_description: "Swashbuckler Weapon Mastery")

print "Swashbuckler features created! \r"


unchained_rogue1 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Weapon and Armor Proficiency", description: "Rogues are proficient with all simple weapons, plus the hand crossbow, rapier, sap, short sword, and shortbow. They are proficient with light armor, but not with shields.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue1.id, level: 1, table_description: "none")

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

unchained_rogue6 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Rogue Talent", description: "As a rogue gains experience, she learns a number of talents that aid her and confound her foes. Starting at 2nd level, a rogue gains one rogue talent. She gains an additional rogue talent for every 2 levels of rogue attained after 2nd level. A rogue cannot select an individual talent more than once.

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

print "Unchained Rogue features created! \r"


unchained_rogue13 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Master Strike", description: "At 20th level, an rogue becomes incredibly deadly when dealing sneak attack damage. Each time the rogue deals sneak attack damage, she can choose one of the following three effects: the target can be put to sleep for 1d4 hours, paralyzed for 2d6 rounds, or slain. Regardless of the effect chosen, the target can attempt a Fortitude save to negate the additional effect. The DC of this save is equal to 10 + 1/2 the rogue’s level + the rogue’s Dexterity modifier. Once a creature has been the target of a master strike, regardless of whether or not the save is successful, that creature is immune to that rogue’s master strike for 24 hours. Creatures that are immune to sneak attack damage are also immune to this ability.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue13.id, level: 20, table_description: "Master Strike")

unchained_barbarian1 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Weapon and Armor Proficiency", description: "A barbarian is proficient with all simple and martial weapons, light armor, medium armor, and shields (except tower shields).")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian1.id, level: 1, table_description: "none")
  unchained_barbarian1_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: unchained_barbarian1.id, feature_id: unchained_barbarian1_feature.id)
    FeatureWeaponProficiency.create!(feature_id: unchained_barbarian1_feature.id, proficiency_group: "Simple")
    FeatureWeaponProficiency.create!(feature_id: unchained_barbarian1_feature.id, proficiency_group: "Martial")
    FeatureArmorProficiency.create!(feature_id: unchained_barbarian1_feature.id, proficiency_group: "Light")
    FeatureArmorProficiency.create!(feature_id: unchained_barbarian1_feature.id, proficiency_group: "Medium")
    FeatureArmorProficiency.create!(feature_id: unchained_barbarian1_feature.id, proficiency_group: "Shield")
    FeatureArmorProficiency.create!(feature_id: unchained_barbarian1_feature.id, armor_id: tower_shield.id, additive: false)

unchained_barbarian2 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Fast Movement", description: "A barbarian’s base speed is faster than the norm for her race by 10 feet. This benefit applies only when she is wearing no armor, light armor, or medium armor, and not carrying a heavy load. Apply this bonus before modifying the barbarian’s speed because of any load carried or armor worn. This bonus stacks with any other bonuses to the barbarian’s base speed.")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian2.id, level: 1, table_description: "Fast Movement")
  unchained_barbarian2_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: unchained_barbarian2.id, feature_id: unchained_barbarian2_feature.id)
    FeatureMovement.create!(feature_id: unchained_barbarian2_feature.id, movement: "Base", feet: 10, bonus: true, permanent: true)
    FeatureCondition.create!(feature_id: unchained_barbarian2_feature.id, unless_wearing: "Heavy", unless_load: "Heavy")
    FeatureApplication.create!(feature_id: unchained_barbarian2_feature.id, calculate_before: "load")
    FeatureApplication.create!(feature_id: unchained_barbarian2_feature.id, calculate_before: "armor")

unchained_barbarian3 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Rage", description: "A barbarian can call upon inner reserves of strength and ferocity, granting her additional combat prowess. At 1st level, a barbarian can rage for a number of rounds per day equal to 4 + her Constitution modifier. For each level after 1st she possesses, the barbarian can rage for 2 additional rounds per day. Temporary increases to Constitution, such as that gained from bear’s endurance, do not increase the total number of rounds that a barbarian can rage per day. A barbarian can enter a rage as a free action. The total number of rounds of rage per day is renewed after resting for 8 hours, although these hours need not be consecutive.

While in a rage, a barbarian gains a +2 bonus on melee attack rolls, melee damage rolls, thrown weapon damage rolls, and Will saving throws. In addition, she takes a –2 penalty to Armor Class. She also gains 2 temporary hit points per Hit Die. These temporary hit points are lost first when a character takes damage, disappear when the rage ends, and are not replenished if the barbarian enters a rage again within 1 minute of her previous rage. While in a rage, a barbarian cannot use any Charisma-, Dexterity-, or Intelligence-based skill (except Acrobatics, Fly, Intimidate, and Ride) or any ability that requires patience or concentration (such as spellcasting).

A barbarian can end her rage as a free action, and is fatigued for 1 minute after a rage ends. A barbarian can’t enter a new rage while fatigued or exhausted, but can otherwise enter a rage multiple times per day. If a barbarian falls unconscious, her rage immediately ends.")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian3.id, level: 1, table_description: "Rage")
  unchained_barbarian_feature_3 = Feature.create!(name: nil, action_id: free.id)
    KlassFeatureFeature.create!(klass_feature_id: unchained_barbarian3.id, feature_id: unchained_barbarian_feature_3.id)
    FeatureStatBonus.create!(feature_id: unchained_barbarian_feature_3.id, statistic: 'Attack', bonus: 2, bonus_type: 'untyped', duration: 'temporary', specific_statistic: 'melee')
    FeatureStatBonus.create!(feature_id: unchained_barbarian_feature_3.id, statistic: 'Damage', bonus: 2, bonus_type: 'untyped', duration: 'temporary', specific_statistic: 'melee')
    FeatureStatBonus.create!(feature_id: unchained_barbarian_feature_3.id, statistic: 'Damage', bonus: 2, bonus_type: 'untyped', duration: 'temporary', specific_statistic: 'thrown')
    FeatureStatBonus.create!(feature_id: unchained_barbarian_feature_3.id, statistic: 'Will', bonus: 2, bonus_type: 'untyped', duration: 'temporary')
    FeatureStatBonus.create!(feature_id: unchained_barbarian_feature_3.id, statistic: 'Armor Class', bonus: -2, bonus_type: 'untyped', duration: 'temporary')
    FeatureStatBonus.create!(feature_id: unchained_barbarian_feature_3.id, statistic: 'Hit Points', bonus: 2, bonus_type: 'temporary', duration: 'temporary', bonus_multiplier: 'level', bonus_multiplier_based_on_feature_level: true)
    FeatureUsage.create!(feature_id: unchained_barbarian_feature_3.id, limit_frequency: 'Day', unit: 'round', adjustable: true, toggleable: true, base_limit: 4, base_limit_modifier: 'constitution', limit_increase_per_level: 2, toggle_off_action_id: free.id, expend_frequency: 'Round')
    FeatureCondition.create!(feature_id: unchained_barbarian_feature_3.id, affected_by_temporary_stat_bonus: false)
    FeatureCondition.create!(feature_id: unchained_barbarian_feature_3.id, if_affected_by_condition: 'fatigued')
    FeatureCondition.create!(feature_id: unchained_barbarian_feature_3.id, if_affected_by_condition: 'exhausted')
  unchained_barbarian_feature_3_after = Feature.create!(name: "Fatigued (Rage)", after: true)
    KlassFeatureFeature.create!(feature_id: unchained_barbarian_feature_3_after.id, klass_feature_id: unchained_barbarian3.id)
    FeatureStatusCondition.create!(feature_id: unchained_barbarian_feature_3_after.id, condition: "Fatigued")


unchained_barbarian4 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Rage Powers", description: "As a barbarian gains levels, she learns to use her rage in new ways. At 2nd level and every 2 levels thereafter, the barbarian gains a rage power. A barbarian gains the benefits of rage powers only while raging. Some of these powers are always active during a rage, and others require the barbarian to take an action to use them. Unless otherwise noted, a barbarian cannot select an individual power more than once.

Some of the following rage powers are stances. Activating a stance rage power is a move action. A barbarian can’t have more than one stance rage power active at a time. If she activates a stance rage power while another one is active, the current stance immediately ends. The stance can be intentionally ended at the beginning of the barbarian’s turn as a free action; otherwise, it lasts until the rage ends.")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian4.id, level: 2, table_description: "Rage Power")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian4.id, level: 4, table_description: "Rage Power")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian4.id, level: 6, table_description: "Rage Power")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian4.id, level: 8, table_description: "Rage Power")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian4.id, level: 10, table_description: "Rage Power")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian4.id, level: 12, table_description: "Rage Power")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian4.id, level: 14, table_description: "Rage Power")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian4.id, level: 16, table_description: "Rage Power")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian4.id, level: 18, table_description: "Rage Power")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian4.id, level: 20, table_description: "Rage Power")

unchained_barbarian5 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Uncanny Dodge", description: "At 2nd level, a barbarian gains the ability to react to danger before her senses would normally allow her to do so. She cannot be caught flat-footed, nor does she lose her Dexterity bonus to AC if immobilized. A barbarian with this ability can still lose her Dexterity bonus to AC if an opponent successfully uses the feint action against her.

If a barbarian already has uncanny dodge from a different class, she automatically gains improved uncanny dodge (see below) instead.")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian5.id, level: 2, table_description: "Uncanny Dodge")

unchained_barbarian6 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Danger Sense", description: "At 3rd level, a barbarian gains a +1 bonus on Reflex saves to avoid traps and a +1 dodge bonus to AC against attacks by traps. In addition, she gains a +1 bonus on Perception checks to avoid being surprised by a foe. These bonuses increase by 1 every 3 levels thereafter (to a maximum of +6 at 18th level). This ability counts as trap sense for any feat or class prerequisite, and can be replaced by any archetype class feature that replaces trap sense. The bonuses gained from this ability stack with those gained from trap sense (if the barbarian has trap sense from another class).")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian6.id, level: 3, table_description: "Danger Sense +1")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian6.id, level: 6, table_description: "Danger Sense +2")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian6.id, level: 9, table_description: "Danger Sense +3")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian6.id, level: 12, table_description: "Danger Sense +4")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian6.id, level: 15, table_description: "Danger Sense +5")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian6.id, level: 18, table_description: "Danger Sense +6")

unchained_barbarian7 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Improved Uncanny Dodge", description: "At 5th level, a barbarian can no longer be flanked. This defense denies enemies the ability to sneak attack the barbarian by flanking her, unless the attacker has at least 4 more levels in a class that provides sneak attack than the barbarian has barbarian levels.

If the barbarian also has uncanny dodge from another class, levels from the classes that grant uncanny dodge stack to determine the minimum level required to flank the barbarian.")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian7.id, level: 5, table_description: "Improved Uncanny Dodge")

unchained_barbarian8 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Damage Reduction", description: "At 7th level, a barbarian gains damage reduction. Each time the barbarian takes damage from a weapon or natural attack, subtract 1 from the damage taken. At 10th level and every 3 levels thereafter, this damage reduction rises by 1 point (up to 5 points at 19th level). Damage Reduction can reduce damage to 0, but not below 0.")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian8.id, level: 7, table_description: "Damage Reduction 1/-")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian8.id, level: 10, table_description: "Damage Reduction 2/-")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian8.id, level: 13, table_description: "Damage Reduction 3/-")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian8.id, level: 16, table_description: "Damage Reduction 4/-")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian8.id, level: 19, table_description: "Damage Reduction 5/-")

unchained_barbarian9 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Greater Rage", description: "At 11th level, a barbarian’s bonus on melee attack rolls, melee damage rolls, thrown weapon damage rolls, and Will saves while raging increases to +3. In addition, the amount of temporary hit points gained when entering a rage increases to 3 per Hit Die.")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian9.id, level: 11, table_description: "Greater Rage")

unchained_barbarian10 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Indomitable Will", description: "At 14th level, the barbarian gains a +4 bonus on Will saves to resist enchantment spells while raging. This bonus stacks with all other modifiers, including the morale bonus on Will saves she gains during her rage.")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian10.id, level: 14, table_description: "Indomitable Will")

unchained_barbarian11 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Tireless Rage", description: "At 17th level, a barbarian is no longer fatigued at the end of her rage. If she enters a rage again within 1 minute of ending a rage, she doesn’t gain any temporary hit points from her rage.")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian11.id, level: 17, table_description: "Tireless Rage")

unchained_barbarian12 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Mighty Rage", description: "At 20th level, a barbarian’s bonus on melee attack rolls, melee damage rolls, thrown weapon damage rolls, and Will saves while raging increases to +4. In addition, the amount of temporary hit points gained when entering a rage increases to 4 per Hit Die.")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian12.id, level: 20, table_description: "Mighty Rage")

print "Unchained Barbarian features created! \r"


brawler1 = KlassFeature.create!(klass_id: brawler.id, name: "Weapon and Armor Proficiency", description: "A brawler is proficient with all simple weapons plus the handaxe, short sword, and weapons from the close fighter weapon group. She is proficient with light armor and shields (except tower shields).")
  FeatureLevel.create!(klass_feature_id: brawler1.id, level: 1, table_description: "none")

brawler2 = KlassFeature.create!(klass_id: brawler.id, name: "Brawler's Cunning", description: "If the brawler’s Intelligence score is less than 13, it counts as 13 for the purpose of meeting the prerequisites of combat feats.")
  FeatureLevel.create!(klass_feature_id: brawler2.id, level: 1, table_description: "Brawler's Cunning")

brawler3 = KlassFeature.create!(klass_id: brawler.id, name: "Martial Flexibility", description: "A brawler can take a move action to gain the benefit of a combat feat she doesn’t possess. This effect lasts for 1 minute. The brawler must meet all the feat’s prerequisites. She may use this ability a number of times per day equal to 3 + 1/2 her brawler level (minimum 1).

The brawler can use this ability again before the duration expires in order to replace the previous combat feat with another choice.

If a combat feat has a daily use limitation (such as Stunning Fist), any uses of that combat feat while using this ability count toward that feat’s daily limit.

At 6th level, a brawler can use this ability to gain the benefit of two combat feats at the same time. She may select one feat as a swift action or two feats as a move action. She may use one of these feats to meet a prerequisite of the second feat; doing so means that she cannot replace a feat currently fulfilling another’s prerequisite without also replacing those feats that require it. Each individual feat selected counts toward her daily uses of this ability.

At 10th level, a brawler can use this ability to gain the benefit of three combat feats at the same time. She may select one feat as a free action, two feats as a swift action, or three feats as a move action. She may use one of the feats to meet a prerequisite of the second and third feats, and use the second feat to meet a prerequisite of the third feat. Each individual feat selected counts toward her daily uses of this ability.

At 12th level, a brawler can use this ability to gain the benefit of one combat feat as an immediate action or three combat feats as a swift action. Each individual feat selected counts toward her daily uses of this ability.

At 20th level, a brawler can use this ability to gain the benefit of any number of combat feats as a swift action. Each feat selected counts toward her daily uses of this ability.

")
  FeatureLevel.create!(klass_feature_id: brawler3.id, level: 1, table_description: "Martial Flexibility")
  FeatureLevel.create!(klass_feature_id: brawler3.id, level: 6, table_description: "Martial Flexibility (swift action)")
  FeatureLevel.create!(klass_feature_id: brawler3.id, level: 10, table_description: "Martial Flexibility (free action)")
  FeatureLevel.create!(klass_feature_id: brawler3.id, level: 12, table_description: "Martial Flexibility (immediate action)")
  FeatureLevel.create!(klass_feature_id: brawler3.id, level: 20, table_description: "Martial Flexibility (any number)")

brawler4 = KlassFeature.create!(klass_id: brawler.id, name: "Martial Training", description: "At 1st level, a brawler counts her total brawler levels as both fighter levels and monk levels for the purpose of qualifying for feats. She also counts as both a fighter and a monk for feats and magic items that have different effects based on whether the character has levels in those classes (such as Stunning Fist and a monk’s robe). This ability does not automatically grant feats normally granted to fighters and monks based on class level, namely Stunning Fist.")
  FeatureLevel.create!(klass_feature_id: brawler4.id, level: 1, table_description: "Martial Training")

brawler5 = KlassFeature.create!(klass_id: brawler.id, name: "Unarmed Strike", description: "At 1st level, a brawler gains Improved Unarmed Strike as a bonus feat. A brawler may attack with fists, elbows, knees, and feet. This means that a brawler may make unarmed strikes with her hands full. A brawler applies her full Strength modifier (not half ) on damage rolls for all her unarmed strikes.

Usually, a brawler’s unarmed strikes deal lethal damage, but she can choose to deal nonlethal damage instead with no penalty on her attack roll. She has the same choice to deal lethal or nonlethal damage while grappling.

A brawler’s unarmed strike is treated as both a manufactured weapon and a natural weapon for the purpose of spells and effects that modify either manufactured weapons or natural weapons.

A brawler also deals more damage with her unarmed strikes than others, as shown on Table: Brawler. The unarmed damage values listed on that table are for Medium brawlers.")
  FeatureLevel.create!(klass_feature_id: brawler5.id, level: 1, table_description: "Unarmed Strike 1d6")
  FeatureLevel.create!(klass_feature_id: brawler5.id, level: 4, table_description: "Unarmed Strike 1d8")
  FeatureLevel.create!(klass_feature_id: brawler5.id, level: 8, table_description: "Unarmed Strike 1d10")
  FeatureLevel.create!(klass_feature_id: brawler5.id, level: 12, table_description: "Unarmed Strike 2d6")
  FeatureLevel.create!(klass_feature_id: brawler5.id, level: 16, table_description: "Unarmed Strike 2d8")
  FeatureLevel.create!(klass_feature_id: brawler5.id, level: 20, table_description: "Unarmed Strike 2d10")

brawler6 = KlassFeature.create!(klass_id: brawler.id, name: "Bonus Combat Feats", description: "At 2nd level and every 3 levels thereafter, a brawler gains a bonus combat feat in addition to those gained from normal advancement. These bonus feats must be ones that affect or improve her defenses or melee attacks. The brawler must meet the prerequisites of the selected bonus combat feat.

Upon reaching 5th level and every 3 levels thereafter, a brawler can choose to learn a new bonus combat feat in place of a bonus combat feat she has already learned. In effect, the brawler loses the bonus combat feat in exchange for the new one. The old feat cannot be one that was used as a prerequisite for another feat, prestige class, or other ability. A brawler can only change one feat at any given level, and must choose whether or not to swap the feat at the time she gains a new bonus combat feat for the level.")
  FeatureLevel.create!(klass_feature_id: brawler6.id, level: 2, table_description: "Bonus Combat Feat")
  FeatureLevel.create!(klass_feature_id: brawler6.id, level: 5, table_description: "Bonus Combat Feat")
  FeatureLevel.create!(klass_feature_id: brawler6.id, level: 8, table_description: "Bonus Combat Feat")
  FeatureLevel.create!(klass_feature_id: brawler6.id, level: 11, table_description: "Bonus Combat Feat")
  FeatureLevel.create!(klass_feature_id: brawler6.id, level: 14, table_description: "Bonus Combat Feat")
  FeatureLevel.create!(klass_feature_id: brawler6.id, level: 17, table_description: "Bonus Combat Feat")
  FeatureLevel.create!(klass_feature_id: brawler6.id, level: 20, table_description: "Bonus Combat Feat")

brawler7 = KlassFeature.create!(klass_id: brawler.id, name: "Brawler's Flurry", description: "Starting at 2nd level, a brawler can make a brawler’s flurry as a full-attack action. When doing so, a brawler has the Two-Weapon Fighting feat when attacking with any combination of unarmed strikes, weapons from the close fighter weapon group, or weapons with the “monk” special feature. She does not need to use two different weapons to use this ability.

A brawler applies her full Strength modifier to her damage rolls for all attacks made with brawler’s flurry, whether the attacks are made with an off-hand weapon or a weapon wielded in both hands. A brawler can substitute disarm, sunder, and trip combat maneuvers for unarmed attacks as part of brawler’s flurry. A brawler with natural weapons can’t use such weapons as part of brawler’s flurry, nor can she make natural weapon attacks in addition to her brawler’s flurry attacks.

At 8th level, the brawler gains use of the Improved Two-Weapon Fighting feat when using brawler’s flurry. At 15th level, she gains use of the Greater Two-Weapon Fighting feat when using brawler’s flurry.")
  FeatureLevel.create!(klass_feature_id: brawler7.id, level: 2, table_description: "Brawler's Flurry (Two-Wepon Fighting)")
  FeatureLevel.create!(klass_feature_id: brawler7.id, level: 8, table_description: "Brawler's Flurry (Improved Two-Wepon Fighting)")
  FeatureLevel.create!(klass_feature_id: brawler7.id, level: 15, table_description: "Brawler's Flurry (Greater Two-Wepon Fighting)")

brawler8 = KlassFeature.create!(klass_id: brawler.id, name: "Maneuver Training", description: "At 3rd level, a brawler can select one combat maneuver to receive additional training. She gains a +1 bonus on combat maneuver checks when performing that combat maneuver and a +1 bonus to her CMD when defending against that maneuver.

At 7th level and every 4 levels thereafter, the brawler becomes further trained in another combat maneuver, gaining the above +1 bonus combat maneuver checks and to CMD. In addition, the bonuses granted by all previous maneuver training increase by 1 each. (For example, if a brawler chooses grapple at 3rd level and sunder at 7th level, her bonuses to grapple are +2 and bonuses to sunder are +1. If she then chooses bull rush upon reaching 11th level, her bonuses to grapple are +3, to sunder are +2, and to bull rush are +1.)")
  FeatureLevel.create!(klass_feature_id: brawler8.id, level: 3, table_description: "Maneuver Training 1")
  FeatureLevel.create!(klass_feature_id: brawler8.id, level: 7, table_description: "Maneuver Training 2")
  FeatureLevel.create!(klass_feature_id: brawler8.id, level: 11, table_description: "Maneuver Training 3")
  FeatureLevel.create!(klass_feature_id: brawler8.id, level: 15, table_description: "Maneuver Training 4")
  FeatureLevel.create!(klass_feature_id: brawler8.id, level: 19, table_description: "Maneuver Training 5")

brawler9 = KlassFeature.create!(klass_id: brawler.id, name: "AC Bonus", description: "At 4th level, when a brawler wears light or no armor, she gains a +1 dodge bonus to AC and CMD. This bonus increases by 1 at 9th, 13th, and 18th levels.

These bonuses to AC apply against touch attacks. She loses these bonuses while immobilized or helpless, wearing medium or heavy armor, or carrying a medium or heavy load.")
  FeatureLevel.create!(klass_feature_id: brawler9.id, level: 4, table_description: "AC Bonus +1")
  FeatureLevel.create!(klass_feature_id: brawler9.id, level: 9, table_description: "AC Bonus +2")
  FeatureLevel.create!(klass_feature_id: brawler9.id, level: 13, table_description: "AC Bonus +3")
  FeatureLevel.create!(klass_feature_id: brawler9.id, level: 18, table_description: "AC Bonus +4")

brawler10 = KlassFeature.create!(klass_id: brawler.id, name: "Knockout", description: "At 4th level, once per day a brawler can unleash a devastating attack that can instantly knock a target unconscious. She must announce this intent before making her attack roll. If the brawler hits and the target takes damage from the blow, the target must succeed at a Fortitude saving throw (DC = 10 + 1/2 the brawler’s level + the higher of the brawler’s Strength or Dexterity modifier) or fall unconscious for 1d6 rounds. Each round on its turn, the unconscious target may attempt a new saving throw to end the effect as a full-round action that does not provoke attacks of opportunity. Creatures immune to critical hits or nonlethal damage are immune to this ability. At 10th level, the brawler may use this ability twice per day; at 16th level, she may use it three times per day.")
  FeatureLevel.create!(klass_feature_id: brawler10.id, level: 4, table_description: "Knockout 1/day")
  FeatureLevel.create!(klass_feature_id: brawler10.id, level: 10, table_description: "Knockout 2/day")
  FeatureLevel.create!(klass_feature_id: brawler10.id, level: 16, table_description: "Knockout 3/day")

brawler11 = KlassFeature.create!(klass_id: brawler.id, name: "Brawler's Strike", description: "At 5th level, a brawler’s unarmed strikes are treated as magic weapons for the purpose of overcoming damage reduction. At 9th level, her unarmed attacks are also treated as cold iron and silver for the purpose of overcoming damage reduction. At 12th level, she chooses one alignment component: chaotic, evil, good, or lawful; her unarmed strikes also count as this alignment for the purpose of overcoming damage reduction. (This alignment component cannot be the opposite of the brawler’s actual alignment, such as a good brawler choosing evil strikes.) At 17th level, her unarmed attacks are also treated as adamantine weapons for the purpose of overcoming damage reduction and bypassing hardness.")
  FeatureLevel.create!(klass_feature_id: brawler11.id, level: 5, table_description: "Brawler's Strike (magic)")
  FeatureLevel.create!(klass_feature_id: brawler11.id, level: 9, table_description: "Brawler's Strike (cold iron and silver)")
  FeatureLevel.create!(klass_feature_id: brawler11.id, level: 12, table_description: "Brawler's Strike (alignment)")
  FeatureLevel.create!(klass_feature_id: brawler11.id, level: 17, table_description: "Brawler's Strike (adamantine)")

brawler12 = KlassFeature.create!(klass_id: brawler.id, name: "Close Weapon Mastery", description: "At 5th level, a brawler’s damage with close weapons increases. When wielding a close weapon, she uses the unarmed strike damage of a brawler 4 levels lower instead of the base damage for that weapon (for example, a 5th-level Medium brawler wielding a punching dagger deals 1d6 points of damage instead of the weapon’s normal 1d4). If the weapon normally deals more damage than this, its damage is unchanged. This ability does not affect any other aspect of the weapon. The brawler can decide to use the weapon’s base damage instead of her adjusted unarmed strike damage—this must be declared before the attack roll is made.")
  FeatureLevel.create!(klass_feature_id: brawler12.id, level: 5, table_description: "Close Weapon Mastery")

brawler13 = KlassFeature.create!(klass_id: brawler.id, name: "Awesome Blow", description: "At 16th level, the brawler can as a standard action perform an awesome blow combat maneuver against a corporeal creature of her size or smaller. If the combat maneuver check succeeds, the opponent takes damage as if the brawler hit it with the close weapon she is wielding or an unarmed strike, it is knocked flying 10 feet in a direction of the brawler’s choice, and it falls prone. The brawler can only push the opponent in a straight line, and the opponent can’t move closer to the brawler than the square it started in. If an obstacle prevents the completion of the opponent’s move, the opponent and the obstacle each take 1d6 points of damage, and the opponent is knocked prone in the space adjacent to the obstacle. (Unlike the Awesome Blow monster feat, the brawler can be of any size to use this ability.)")
  FeatureLevel.create!(klass_feature_id: brawler13.id, level: 16, table_description: "Awesome Blow")

brawler14 = KlassFeature.create!(klass_id: brawler.id, name: "Improved Awesome Blow", description: "At 20th level, the brawler can use her awesome blow ability as an attack rather than as a standard action. She may use it on creatures of any size. If the maneuver roll is a natural 20, the brawler can immediately attempt to confirm the critical by rolling another combat maneuver check with all the same modifiers as the one just rolled; if the confirmation roll is successful, the attack deals double damage, and the damage from hitting an obstacle (if any) is also doubled.")
  FeatureLevel.create!(klass_feature_id: brawler14.id, level: 20, table_description: "Improved Awesome Blow")

print "Brawler features created! \r"


alchemist1 = KlassFeature.create!(klass_id: alchemist.id, name: "Weapon and Armor Proficiency", description: "Alchemists are proficient with all simple weapons and bombs. They are also proficient with light armor, but not with shields.")
  FeatureLevel.create!(klass_feature_id: alchemist1.id, level: 1, table_description: "")

alchemist2 = KlassFeature.create!(klass_id: alchemist.id, name: "Alchemy", description: "Alchemists are not only masters of creating mundane alchemical substances such as alchemist’s fire and smokesticks, but also of fashioning magical potion-like extracts in which they can store spell effects. In effect, an alchemist prepares his spells by mixing ingredients into a number of extracts, and then “casts” his spells by drinking the extract. When an alchemist creates an extract or bomb, he infuses the concoction with a tiny fraction of his own magical power—this enables the creation of powerful effects, but also binds the effects to the creator. When using Craft (alchemy) to create an alchemical item, an alchemist gains a competence bonus equal to his class level on the Craft (alchemy) check. In addition, an alchemist can use Craft (alchemy) to identify potions as if using detect magic. He must hold the potion for 1 round to make such a check.

An alchemist can create three special types of magical items—extracts, bombs, and mutagens. Bombs are explosive splash weapons, and mutagens are transformative elixirs that the alchemist drinks to enhance his physical abilities—both of these are detailed in their own sections below.

Extracts are the most varied of the three. In many ways, they behave like spells in potion form, and as such their effects can be dispelled by effects like dispel magic using the alchemist’s level as the caster level. Unlike potions, though, extracts can have powerful effects and duplicate spells that a potion normally could not.

An alchemist can create only a certain number of extracts of each level per day. His base daily allotment of extracts is given on Table: Alchemist. In addition, he receives bonus extracts per day if he has a high Intelligence score, in the same way a wizard receives bonus spells per day. When an alchemist mixes an extract, he infuses the chemicals and reagents in the extract with magic siphoned from his own magical aura. An extract immediately becomes inert if it leaves the alchemist’s possession, reactivating as soon as it returns to his keeping—an alchemist cannot normally pass out his extracts for allies to use (but see the “infusion” discovery below). An extract, once created, remains potent for 1 day before becoming inert, so an alchemist must re-prepare his extracts every day. Mixing an extract takes 1 minute of work—most alchemists prepare many extracts at the start of the day or just before going on an adventure, but it’s not uncommon for an alchemist to keep some (or even all) of his daily extract slots open so that he can prepare extracts in the field as needed.

Although the alchemist doesn’t actually cast spells, he does have a formulae list that determines what extracts he can create. An alchemist can utilize spell-trigger items if the spell appears on his formulae list, but not spell-completion items (unless he uses Use Magic Device to do so). An extract is “cast” by drinking it, as if imbibing a potion—the effects of an extract exactly duplicate the spell upon which its formula is based, save that the spell always affects only the drinking alchemist. The alchemist uses his level as the caster level to determine any effect based on caster level. Creating extracts consumes raw materials, but the cost of these materials is insignificant—comparable to the valueless material components of most spells. If a spell normally has a costly material component, that component is expended during the consumption of that particular extract. Extracts cannot be made from spells that have focus requirements (alchemist extracts that duplicate divine spells never have a divine focus requirement). An alchemist can prepare an extract of any formula he knows. To learn or use an extract, an alchemist must have an Intelligence score equal to at least 10 + the extract’s level. The Difficulty Class for a saving throw against an alchemist’s extract is 10 + the extract level + the alchemist’s Intelligence modifier. An alchemist may know any number of formulae. He stores his formulae in a special tome called a formula book. He must refer to this book whenever he prepares an extract but not when he consumes it. An alchemist begins play with two 1st level formulae of his choice, plus a number of additional forumlae equal to his Intelligence modifier. At each new alchemist level, he gains one new formula of any level that he can create. An alchemist can also add formulae to his book just like a wizard adds spells to his spellbook, using the same costs and time requirements. An alchemist can study a wizard’s spellbook to learn any formula that is equivalent to a spell the spellbook contains. A wizard, however, cannot learn spells from a formula book. An alchemist does not need to decipher arcane writings before copying them.")
  FeatureLevel.create!(klass_feature_id: alchemist2.id, level: 1, table_description: "Alchemy")
  alchemist2_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: alchemist2_feature.id, klass_feature_id: alchemist2.id)
    FeatureSkillNote.create!(feature_id: alchemist2_feature.id, skill_id: craft.id, custom: "alchemy", note: "when creating an alchemical item, gain a competence bonus equal to your class level")

alchemist3 = KlassFeature.create!(klass_id: alchemist.id, name: "Bomb", description: "In addition to magical extracts, alchemists are adept at swiftly mixing various volatile chemicals and infusing them with their magical reserves to create powerful bombs that they can hurl at their enemies. An alchemist can use a number of bombs each day equal to his class level + his Intelligence modifier. Bombs are unstable, and if not used in the round they are created, they degrade and become inert—their method of creation prevents large volumes of explosive material from being created and stored. In order to create a bomb, the alchemist must use a small vial containing an ounce of liquid catalyst—the alchemist can create this liquid catalyst from small amounts of chemicals from an alchemy lab, and these supplies can be readily refilled in the same manner as a spellcaster’s component pouch. Most alchemists create a number of catalyst vials at the start of the day equal to the total number of bombs they can create in that day—once created, a catalyst vial remains usable by the alchemist for years.

Drawing the components of, creating, and throwing a bomb requires a standard action that provokes an attack of opportunity. Thrown bombs have a range of 20 feet and use the Throw Splash Weapon special attack. Bombs are considered weapons and can be selected using feats such as Point-Blank Shot and Weapon Focus. On a direct hit, an alchemist’s bomb inflicts 1d6 points of fire damage + additional damage equal to the alchemist’s Intelligence modifier. The damage of an alchemist’s bomb increases by 1d6 points at every odd-numbered alchemist level (this bonus damage is not multiplied on a critical hit or by using feats such as Vital Strike). Splash damage from an alchemist bomb is always equal to the bomb’s minimum damage (so if the bomb would deal 2d6+4 points of fire damage on a direct hit, its splash damage would be 6 points of fire damage). Those caught in the splash damage can attempt a Reflex save for half damage. The DC of this save is equal to 10 + 1/2 the alchemist’s level + the alchemist’s Intelligence modifier.

Alchemists can learn new types of bombs as discoveries (see the Discovery ability) as they level up. An alchemist’s bomb, like an extract, becomes inert if used or carried by anyone else.")
  FeatureLevel.create!(klass_feature_id: alchemist3.id, level: 1, table_description: "Bomb 1d6")
  FeatureLevel.create!(klass_feature_id: alchemist3.id, level: 3, table_description: "Bomb 2d6")
  FeatureLevel.create!(klass_feature_id: alchemist3.id, level: 5, table_description: "Bomb 3d6")
  FeatureLevel.create!(klass_feature_id: alchemist3.id, level: 7, table_description: "Bomb 4d6")
  FeatureLevel.create!(klass_feature_id: alchemist3.id, level: 9, table_description: "Bomb 5d6")
  FeatureLevel.create!(klass_feature_id: alchemist3.id, level: 11, table_description: "Bomb 6d6")
  FeatureLevel.create!(klass_feature_id: alchemist3.id, level: 13, table_description: "Bomb 7d6")
  FeatureLevel.create!(klass_feature_id: alchemist3.id, level: 15, table_description: "Bomb 8d6")
  FeatureLevel.create!(klass_feature_id: alchemist3.id, level: 17, table_description: "Bomb 9d6")
  FeatureLevel.create!(klass_feature_id: alchemist3.id, level: 19, table_description: "Bomb 10d6")

alchemist4 = KlassFeature.create!(klass_id: alchemist.id, name: "Brew Potion", description: "At 1st level, alchemists receive Brew Potion as a bonus feat. An alchemist can brew potions of any formulae he knows (up to 3rd level), using his alchemist level as his caster level. The spell must be one that can be made into a potion. The alchemist does not need to meet the prerequisites for this feat.")
  FeatureLevel.create!(klass_feature_id: alchemist4.id, level: 1, table_description: "Brew Potion")

alchemist5 = KlassFeature.create!(klass_id: alchemist.id, name: "Mutagen", description: "At 1st level, an alchemist discovers how to create a mutagen that he can imbibe in order to heighten his physical prowess at the cost of his personality. It takes 1 hour to brew a dose of mutagen, and once brewed, it remains potent until used. An alchemist can only maintain one dose of mutagen at a time—if he brews a second dose, any existing mutagen becomes inert. As with an extract or bomb, a mutagen that is not in an alchemist’s possession becomes inert until an alchemist picks it up again.

When an alchemist brews a mutagen, he selects one physical ability score—either Strength, Dexterity, or Constitution. It’s a standard action to drink a mutagen. Upon being imbibed, the mutagen causes the alchemist to grow bulkier and more bestial, granting him a +2 natural armor bonus and a +4 alchemical bonus to the selected ability score for 10 minutes per alchemist level. In addition, while the mutagen is in effect, the alchemist takes a –2 penalty to one of his mental ability scores. If the mutagen enhances his Strength, it applies a penalty to his Intelligence. If it enhances his Dexterity, it applies a penalty to his Wisdom. If it enhances his Constitution, it applies a penalty to his Charisma.

A non-alchemist who drinks a mutagen must make a Fortitude save (DC 10 + 1/2 the alchemist’s level + the alchemist’s Intelligence modifier) or become nauseated for 1 hour—a non-alchemist can never gain the benefit of a mutagen, but an alchemist can gain the effects of another alchemist’s mutagen if he drinks it. (Although if the other alchemist creates a different mutagen, the effects of the “stolen” mutagen immediately cease.) The effects of a mutagen do not stack. Whenever an alchemist drinks a mutagen, the effects of any previous mutagen immediately end.")
  FeatureLevel.create!(klass_feature_id: alchemist5.id, level: 1, table_description: "Mutagen")

alchemist6 = KlassFeature.create!(klass_id: alchemist.id, name: "Throw Anything", description: "All alchemists gain the Throw Anything feat as a bonus feat at 1st level. An alchemist adds his Intelligence modifier to damage done with splash weapons, including the splash damage if any. This bonus damage is already included in the bomb class feature.")
  FeatureLevel.create!(klass_feature_id: alchemist6.id, level: 1, table_description: "Throw Anything")

alchemist7 = KlassFeature.create!(klass_id: alchemist.id, name: "Discovery", description: "At 2nd level, and then again every 2 levels thereafter (up to 18th level), an alchemist makes an incredible alchemical discovery. Unless otherwise noted, an alchemist cannot select an individual discovery more than once. Some discoveries can only be made if the alchemist has met certain prerequisites first, such as uncovering other discoveries. Discoveries that modify bombs that are marked with an asterisk (*) do not stack. Only one such discovery can be applied to an individual bomb. The DC of any saving throw called for by a discovery is equal to 10 + 1/2 the alchemist’s level + the alchemist’s Intelligence modifier.")
  FeatureLevel.create!(klass_feature_id: alchemist7.id, level: 2, table_description: "Discovery")
  FeatureLevel.create!(klass_feature_id: alchemist7.id, level: 4, table_description: "Discovery")
  FeatureLevel.create!(klass_feature_id: alchemist7.id, level: 6, table_description: "Discovery")
  FeatureLevel.create!(klass_feature_id: alchemist7.id, level: 8, table_description: "Discovery")
  FeatureLevel.create!(klass_feature_id: alchemist7.id, level: 10, table_description: "Discovery")
  FeatureLevel.create!(klass_feature_id: alchemist7.id, level: 12, table_description: "Discovery")
  FeatureLevel.create!(klass_feature_id: alchemist7.id, level: 14, table_description: "Discovery")
  FeatureLevel.create!(klass_feature_id: alchemist7.id, level: 16, table_description: "Discovery")
  FeatureLevel.create!(klass_feature_id: alchemist7.id, level: 18, table_description: "Discovery")

print "Alchemist features created! \r"


# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")


# /////////////////////////////////////////
# <-*-*-----*-*-*- Class Feature Details!-*-*-*-----*-*->
# /////////////////////////////////////////

Spellcasting.create!(klass_feature_id: oracle2.id, ability_score: "Charisma", prepared: false, limited: true, expendable: false, infinite_zero_level: true, bonus_spells: false, klass_spell_list_id: cleric.id)

Spellcasting.create!(klass_feature_id: witch2.id, ability_score: "Intelligence", prepared: true, limited: true, expendable: true, infinite_zero_level: false, bonus_spells: true, klass_spell_list_id: witch.id)

Spellcasting.create!(klass_feature_id: fate_weaver4.id, ability_score: "Charisma", prepared: false, limited: true, expendable: false, infinite_zero_level: false, bonus_spells: false, klass_spell_list_id: fate_weaver.id)

Spellcasting.create!(klass_feature_id: bard2.id, ability_score: "Charisma", prepared: false, limited: true, expendable: false, infinite_zero_level: true, bonus_spells: true, klass_spell_list_id: bard.id)

Spellcasting.create!(klass_feature_id: arcanist2.id, ability_score: "Intelligence", prepared: true, limited: true, expendable: false, infinite_zero_level: true, bonus_spells: true, klass_spell_list_id: wizard.id, prepared_amount: true)

Spellcasting.create!(klass_feature_id: alchemist2.id, ability_score: "Intelligence", prepared: true, limited: true, expendable: true, infinite_zero_level: false, bonus_spells: true, klass_spell_list_id: alchemist.id, alchemy: true)


puts "Classes Created!"

# /////////////////////////////////////////
# <-*-*-----*-*-*- Spells Per Day!-*-*-*-----*-*->
# /////////////////////////////////////////

# SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 1, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 2, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 3, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 4, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 5, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 6, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 7, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 8, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 9, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 10, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 11, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 12, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 13, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 14, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 15, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 16, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 17, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 18, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 19, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 20, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 1, spells: 1, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 2, spells: 2, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 3, spells: 2, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 4, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 5, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 6, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 7, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 8, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 9, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 10, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 11, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 12, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 13, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 14, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 15, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 16, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 17, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 18, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 19, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 20, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 3, spells: 1, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 4, spells: 2, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 5, spells: 2, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 6, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 7, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 8, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 9, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 10, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 11, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 12, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 13, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 14, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 15, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 16, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 17, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 18, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 19, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 20, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 5, spells: 1, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 6, spells: 2, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 7, spells: 2, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 8, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 9, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 10, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 11, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 12, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 13, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 14, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 15, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 16, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 17, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 18, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 19, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 20, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 7, spells: 1, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 8, spells: 2, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 9, spells: 2, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 10, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 11, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 12, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 13, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 14, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 15, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 16, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 17, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 18, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 19, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 20, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 9, spells: 1, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 10, spells: 2, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 11, spells: 2, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 12, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 13, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 14, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 15, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 16, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 17, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 18, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 19, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 20, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 11, spells: 1, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 12, spells: 2, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 13, spells: 2, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 14, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 15, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 16, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 17, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 18, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 19, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 20, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 13, spells: 1, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 14, spells: 2, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 15, spells: 2, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 16, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 17, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 18, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 19, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 20, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 15, spells: 1, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 16, spells: 2, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 17, spells: 2, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 18, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 19, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 20, spells: 4, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 17, spells: 1, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 18, spells: 2, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 19, spells: 3, feature_spellcasting_id: witch.id)
# SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 20, spells: 4, feature_spellcasting_id: witch.id)

SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 1, spells: 1, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 2, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 3, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 4, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 5, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 6, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 7, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 8, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 9, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 10, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 11, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 12, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 13, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 14, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 15, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 16, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 17, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 18, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 19, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 20, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 4, spells: 1, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 5, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 6, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 7, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 8, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 9, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 10, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 11, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 12, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 13, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 14, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 15, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 16, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 17, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 18, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 19, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 20, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 7, spells: 1, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 8, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 9, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 10, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 11, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 12, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 13, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 14, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 15, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 16, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 17, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 18, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 19, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 20, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 10, spells: 1, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 11, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 12, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 13, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 14, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 15, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 16, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 17, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 18, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 19, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 20, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 13, spells: 1, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 14, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 15, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 16, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 17, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 18, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 19, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 20, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 16, spells: 1, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 17, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 18, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 19, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 20, spells: 5, feature_spellcasting_id: bard_spellcasting.id)

KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 1, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 2, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 3, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 4, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 5, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 6, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 7, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 8, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 9, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 10, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 11, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 12, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 13, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 14, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 15, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 16, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 17, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 18, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 19, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 20, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 1, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 2, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 3, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 4, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 5, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 6, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 7, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 8, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 9, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 10, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 11, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 12, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 13, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 14, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 15, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 16, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 17, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 18, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 19, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 20, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 4, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 5, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 6, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 7, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 8, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 9, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 10, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 11, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 12, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 13, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 14, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 15, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 16, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 17, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 18, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 19, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 20, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 7, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 8, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 9, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 10, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 11, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 12, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 13, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 14, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 15, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 16, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 17, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 18, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 19, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 20, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 10, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 11, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 12, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 13, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 14, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 15, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 16, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 17, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 18, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 19, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 20, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 13, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 14, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 15, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 16, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 17, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 18, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 19, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 20, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 6, klass_level: 16, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 6, klass_level: 17, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 6, klass_level: 18, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 6, klass_level: 19, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 6, klass_level: 20, spells: 5, feature_spellcasting_id: bard_spellcasting.id)

SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 1, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 2, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 3, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 4, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 5, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 6, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 7, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 8, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 9, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 10, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 11, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 12, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 13, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 14, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 15, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 16, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 17, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 18, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 19, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 20, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 1, spells: 1, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 2, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 3, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 4, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 5, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 6, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 7, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 8, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 9, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 10, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 11, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 12, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 13, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 14, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 15, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 16, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 17, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 18, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 19, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 20, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 3, spells: 1, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 4, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 5, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 6, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 7, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 8, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 9, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 10, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 11, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 12, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 13, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 14, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 15, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 16, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 17, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 18, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 19, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 20, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 5, spells: 1, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 6, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 7, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 8, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 9, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 10, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 11, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 12, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 13, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 14, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 15, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 16, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 17, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 18, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 19, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 20, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 7, spells: 1, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 8, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 9, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 10, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 11, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 12, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 13, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 14, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 15, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 16, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 17, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 18, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 19, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 20, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 9, spells: 1, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 10, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 11, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 12, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 13, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 14, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 15, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 16, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 17, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 18, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 19, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 20, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 11, spells: 1, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 12, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 13, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 14, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 15, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 16, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 17, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 18, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 19, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 20, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 13, spells: 1, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 14, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 15, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 16, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 17, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 18, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 19, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 20, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 15, spells: 1, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 16, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 17, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 18, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 19, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 20, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 17, spells: 1, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 18, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 19, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 20, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)

# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 1, spells: 2, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 2, spells: 3, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 3, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 4, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 5, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 6, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 7, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 8, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 9, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 10, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 11, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 12, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 13, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 14, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 15, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 4, spells: 2, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 5, spells: 3, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 6, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 7, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 8, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 9, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 10, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 11, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 12, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 13, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 14, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 15, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 6, spells: 2, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 7, spells: 3, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 8, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 9, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 10, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 11, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 12, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 13, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 14, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 15, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 8, spells: 2, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 9, spells: 3, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 10, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 11, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 12, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 13, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 14, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 15, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 10, spells: 2, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 11, spells: 3, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 12, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 13, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 14, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 15, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 12, spells: 2, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 13, spells: 3, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 14, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 15, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 14, spells: 2, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 15, spells: 3, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 16, spells: 2, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 17, spells: 3, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 18, spells: 2, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 19, spells: 3, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist.id)
#
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 1, spells: 1, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 2, spells: 2, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 3, spells: 3, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 4, spells: 3, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 4, spells: 3, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 5, spells: 4, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 6, spells: 4, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 7, spells: 4, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 8, spells: 4, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 9, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 10, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 11, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 12, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 13, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 14, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 15, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 16, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 17, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 18, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 19, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 20, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 4, spells: 1, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 5, spells: 2, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 6, spells: 3, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 7, spells: 3, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 8, spells: 4, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 9, spells: 4, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 10, spells: 4, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 11, spells: 4, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 12, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 13, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 14, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 15, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 16, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 17, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 18, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 19, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 20, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 7, spells: 1, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 8, spells: 2, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 9, spells: 3, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 10, spells: 3, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 11, spells: 4, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 12, spells: 4, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 13, spells: 4, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 14, spells: 4, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 15, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 16, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 17, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 18, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 19, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 20, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 10, spells: 1, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 11, spells: 2, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 12, spells: 3, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 13, spells: 3, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 14, spells: 4, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 15, spells: 4, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 16, spells: 4, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 17, spells: 4, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 18, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 19, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 20, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 13, spells: 1, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 14, spells: 2, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 15, spells: 3, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 16, spells: 3, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 17, spells: 4, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 18, spells: 4, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 19, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 20, spells: 5, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 16, spells: 1, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 17, spells: 2, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 18, spells: 3, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 19, spells: 4, feature_spellcasting_id: alchemist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 20, spells: 5, feature_spellcasting_id: alchemist.id)

# SpellsPerDayPerLevel.create!(spell_level: , klass_level: , spells: , klass_id: )
# SpellsPerDayPerLevel.create!(spell_level: , klass_level: , spells: , klass_id: )
# SpellsPerDayPerLevel.create!(spell_level: , klass_level: , spells: , klass_id: )
# SpellsPerDayPerLevel.create!(spell_level: , klass_level: , spells: , klass_id: )
# SpellsPerDayPerLevel.create!(spell_level: , klass_level: , spells: , klass_id: )
# SpellsPerDayPerLevel.create!(spell_level: , klass_level: , spells: , klass_id: )
# SpellsPerDayPerLevel.create!(spell_level: , klass_level: , spells: , klass_id: )

# /////////////////////////////////////////
# <-*-*-----*-*-*- Prepared Amount!-*-*-*-----*-*->
# /////////////////////////////////////////

PreparedAmount.create!(spell_level: 0, klass_level: 1, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 2, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 3, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 4, spells: 6, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 5, spells: 6, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 6, spells: 7, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 7, spells: 7, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 8, spells: 8, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 9, spells: 8, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 10, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 11, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 12, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 13, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 14, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 15, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 16, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 17, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 18, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 19, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 20, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 1, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 2, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 3, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 4, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 5, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 6, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 7, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 8, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 9, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 10, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 11, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 12, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 13, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 14, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 15, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 16, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 17, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 18, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 19, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 20, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 4, spells: 1, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 5, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 6, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 7, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 8, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 9, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 10, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 11, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 12, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 13, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 14, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 15, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 16, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 17, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 18, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 19, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 20, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 6, spells: 1, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 7, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 8, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 9, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 10, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 11, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 12, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 13, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 14, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 15, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 16, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 17, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 18, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 19, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 20, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 8, spells: 1, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 9, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 10, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 11, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 12, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 13, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 14, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 15, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 16, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 17, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 18, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 19, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 20, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 10, spells: 1, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 11, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 12, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 13, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 14, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 15, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 16, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 17, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 18, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 19, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 20, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 6, klass_level: 12, spells: 1, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 6, klass_level: 13, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 6, klass_level: 14, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 6, klass_level: 15, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 6, klass_level: 16, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 6, klass_level: 17, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 6, klass_level: 18, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 6, klass_level: 19, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 6, klass_level: 20, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 7, klass_level: 14, spells: 1, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 7, klass_level: 15, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 7, klass_level: 16, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 7, klass_level: 17, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 7, klass_level: 18, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 7, klass_level: 19, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 7, klass_level: 20, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 8, klass_level: 16, spells: 1, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 8, klass_level: 17, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 8, klass_level: 18, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 8, klass_level: 19, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 8, klass_level: 20, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 9, klass_level: 18, spells: 1, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 9, klass_level: 19, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 9, klass_level: 20, spells: 3, klass_id: arcanist.id)




# /////////////////////////////////////////
# <-*-*-----*-*-*- Calendar!-*-*-*-----*-*->
# /////////////////////////////////////////

gregorian = Calendar.create!(name: "Gregorian Calendar", leap_year: true)
  january = Month.create!(name: "January", num_of_days: 31, place: 1, season: "Winter", calendar_id: gregorian.id)
  february = Month.create!(name: "February", num_of_days: 28, place: 2, season: "Winter", calendar_id: gregorian.id, leap_month: true)
  march = Month.create!(name: "March", num_of_days: 31, place: 3, season: "Spring", calendar_id: gregorian.id)
  april = Month.create!(name: "April", num_of_days: 30, place: 4, season: "Spring", calendar_id: gregorian.id)
  may = Month.create!(name: "May", num_of_days: 31, place: 5, season: "Spring", calendar_id: gregorian.id)
  june = Month.create!(name: "June", num_of_days: 30, place: 6, season: "Summer", calendar_id: gregorian.id)
  july = Month.create!(name: "July", num_of_days: 31, place: 7, season: "Summer", calendar_id: gregorian.id)
  august = Month.create!(name: "August", num_of_days: 31, place: 8, season: "Summer", calendar_id: gregorian.id)
  september = Month.create!(name: "September", num_of_days: 30, place: 9, season: "Autumn", calendar_id: gregorian.id)
  october = Month.create!(name: "October", num_of_days: 31, place: 10, season: "Autumn", calendar_id: gregorian.id)
  november = Month.create!(name: "November", num_of_days: 30, place: 11, season: "Autumn", calendar_id: gregorian.id)
  december = Month.create!(name: "December", num_of_days: 31, place: 12, season: "Winter", calendar_id: gregorian.id)

  sunday = Day.create!(name: "Sunday", place: 1, calendar_id: gregorian.id)
  monday = Day.create!(name: "Monday", place: 2, calendar_id: gregorian.id)
  tuesday = Day.create!(name: "Tuesday", place: 3, calendar_id: gregorian.id)
  wednesday = Day.create!(name: "Wednesday", place: 4, calendar_id: gregorian.id)
  thursday = Day.create!(name: "Thursday", place: 5, calendar_id: gregorian.id)
  friday = Day.create!(name: "Friday", place: 6, calendar_id: gregorian.id)
  saturday = Day.create!(name: "Saturday", place: 7, calendar_id: gregorian.id)

oum_calendar = Calendar.create!(name: "Oum Calendar", leap_year: false)
  floreau_budding = Month.create!(name: "Floreau Budding", num_of_days: 30, place: 1, season: "Spring", calendar_id: oum_calendar.id)
  floreau_equinox = Month.create!(name: "Floreau Equinox", num_of_days: 30, place: 2, season: "Spring", calendar_id: oum_calendar.id)
  floreau_blossom = Month.create!(name: "Floreau Blossom", num_of_days: 30, place: 3, season: "Spring", calendar_id: oum_calendar.id)
  harvest_flourish = Month.create!(name: "Harvest Flourish", num_of_days: 30, place: 4, season: "Summer", calendar_id: oum_calendar.id)
  harvest_solstice = Month.create!(name: "Harvest Solstice", num_of_days: 30, place: 5, season: "Summer", calendar_id: oum_calendar.id)
  harvest_scorch = Month.create!(name: "Harvest Scorch", num_of_days: 30, place: 6, season: "Summer", calendar_id: oum_calendar.id)
  autumn_cornucopia = Month.create!(name: "Autumn Cornucopia", num_of_days: 30, place: 7, season: "Autumn", calendar_id: oum_calendar.id)
  autumn_equinox = Month.create!(name: "Autumn Equinox", num_of_days: 30, place: 8, season: "Autumn", calendar_id: oum_calendar.id)
  autumn_festival = Month.create!(name: "Autumn Festival", num_of_days: 30, place: 9, season: "Autumn", calendar_id: oum_calendar.id)
  borealis_snowfall = Month.create!(name: "Borealis Snowfall", num_of_days: 30, place: 10, season: "Winter", calendar_id: oum_calendar.id)
  borealis_solstice = Month.create!(name: "Borealis Solstice", num_of_days: 30, place: 11, season: "Winter", calendar_id: oum_calendar.id)
  borealis_renewal = Month.create!(name: "Borealis Renewal", num_of_days: 30, place: 12, season: "Winter", calendar_id: oum_calendar.id)
  lunalis = Month.create!(name: "Lunalis", random_num_of_days: true, place: 13, season: "Chaotic", calendar_id: oum_calendar.id)

  moonday = Day.create!(name: "Moonday", place: 1, calendar_id: oum_calendar.id)
  everglow = Day.create!(name: "Everglow", place: 2, calendar_id: oum_calendar.id)
  wyrmsrite = Day.create!(name: "Wyrmsrite", place: 3, calendar_id: oum_calendar.id)
  feyblessed = Day.create!(name: "Feyblessed", place: 4, calendar_id: oum_calendar.id)
  radiance = Day.create!(name: "Radiance", place: 5, calendar_id: oum_calendar.id)
  solarday = Day.create!(name: "Solarday", place: 6, calendar_id: oum_calendar.id)
  demoncrest = Day.create!(name: "Demoncrest", place: 7, calendar_id: oum_calendar.id)


# /////////////////////////////////////////
# <-*-*-----*-*-*- Campaigns!-*-*-*-----*-*->
# /////////////////////////////////////////

current_campaign = Campaign.create!(name: 'Ask Questions Second', current_weekday: 'Everglow', current_month: 'Autumn Festival', current_day: 7, current_age: "5th Age", current_year: 1241, dm_id: admin.id, skillset_id: dmc.id, theme: "", setting: "", custom_notes: "", calendar_id: oum_calendar.id, starting_level: 1, websocket_code: UUID.new.generate)

test_campaign = Campaign.create!(name: "Testing 123 Testing", calendar_id: oum_calendar.id, dm_id: admin.id, skillset_id: dmc.id, starting_level: 1, websocket_code: UUID.new.generate)

# /////////////////////////////////////////
# <-*-*-----*-*-*- Class Skillset Skills!-*-*-*-----*-*->
# /////////////////////////////////////////
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: acrobatics.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: climb.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: handle_animal.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: intimidate.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: nature_unchained.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: perception.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: survival.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: swim.id)

ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: acrobatics.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: bluff.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: climb.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: diplomacy.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: disguise.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: finesse_unchained.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: intimidate.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: investigation.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: linguistics.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: perception.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: perform.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: religion_unchained.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: sense_motive.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: society_unchained.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: spellcraft_unchained.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: stealth.id)

ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: acrobatics.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: bluff.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: climb.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: diplomacy.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: disguise.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: finesse_unchained.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: intimidate.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: investigation.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: linguistics.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: perception.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: perform.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: sense_motive.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: society_unchained.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: stealth.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: swim.id)

ClassSkillsetSkill.create!(klass_id: oracle.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: oracle.id, skillset_id: dmc.id, skill_id: diplomacy.id)
ClassSkillsetSkill.create!(klass_id: oracle.id, skillset_id: dmc.id, skill_id: heal.id)
ClassSkillsetSkill.create!(klass_id: oracle.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: oracle.id, skillset_id: dmc.id, skill_id: religion_unchained.id)
ClassSkillsetSkill.create!(klass_id: oracle.id, skillset_id: dmc.id, skill_id: sense_motive.id)
ClassSkillsetSkill.create!(klass_id: oracle.id, skillset_id: dmc.id, skill_id: spellcraft_unchained.id)

ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: acrobatics.id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: heal.id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: intimidate.id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: nature_unchained.id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: religion_unchained.id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: spellcraft_unchained.id)

ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: acrobatics.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: climb.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: handle_animal.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: nature_unchained.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: perception.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: stealth.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: survival.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: swim.id)

ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: linguistics.id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: nature_unchained.id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: religion_unchained.id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: society_unchained.id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: spellcraft_unchained.id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: investigation.id)

ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: acrobatics.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: climb.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: handle_animal.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: intimidate.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: perception.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: sense_motive.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: society_unchained.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: swim.id)

ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: acrobatics.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: bluff.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: climb.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: diplomacy.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: finesse_unchained.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: intimidate.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: perception.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: perform.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: sense_motive.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: society_unchained.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: swim.id)

ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: acrobatics.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: bluff.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: climb.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: diplomacy.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: disguise.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: finesse_unchained.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: intimidate.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: investigation.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: perception.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: perform.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: sense_motive.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: society_unchained.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: stealth.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: survival.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: swim.id)

ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: bluff.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: diplomacy.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: finesse_unchained.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: handle_animal.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: heal.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: intimidate.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: linguistics.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: perform.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: perception.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: sense_motive.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: survival.id)

ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: dmc.id, skill_id: linguistics.id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: dmc.id, skill_id: nature_unchained.id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: dmc.id, skill_id: religion_unchained.id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: dmc.id, skill_id: society_unchained.id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: dmc.id, skill_id: spellcraft_unchained.id)

ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: handle_animal.id)
ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: linguistics.id)
ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: nature_unchained.id)
ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: religion_unchained.id)
ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: society_unchained.id)
ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: spellcraft_unchained.id)

ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: dmc.id, skill_id: acrobatics.id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: dmc.id, skill_id: finesse_unchained.id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: dmc.id, skill_id: heal.id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: dmc.id, skill_id: perception.id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: dmc.id, skill_id: survival.id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: dmc.id, skill_id: investigation.id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: dmc.id, skill_id: nature_unchained.id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: dmc.id, skill_id: spellcraft_unchained.id)

ClassSkillsetSkill.create!(klass_id: cleric.id, skillset_id: dmc.id, skill_id: diplomacy.id)
ClassSkillsetSkill.create!(klass_id: cleric.id, skillset_id: dmc.id, skill_id: heal.id)
ClassSkillsetSkill.create!(klass_id: cleric.id, skillset_id: dmc.id, skill_id: linguistics.id)
ClassSkillsetSkill.create!(klass_id: cleric.id, skillset_id: dmc.id, skill_id: religion_unchained.id)
ClassSkillsetSkill.create!(klass_id: cleric.id, skillset_id: dmc.id, skill_id: sense_motive.id)
ClassSkillsetSkill.create!(klass_id: cleric.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: cleric.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: cleric.id, skillset_id: dmc.id, skill_id: society_unchained.id)
ClassSkillsetSkill.create!(klass_id: cleric.id, skillset_id: dmc.id, skill_id: spellcraft_unchained.id)



# ////////////////////////////////////////////////////
# <-*-*-----*-*-*- Favored Klass Bonus!-*-*-*-----*-*->
# ////////////////////////////////////////////////////

hp_up = FavoredKlassBonus.create!(description: '+1 hit point')
one_skill_point = FavoredKlassBonus.create!(description: '+1 skill point')
witch_changeling = FavoredKlassBonus.create!(klass_id: witch.id, race_id: changeling.id, description: '+1 spell to your familiar. Must be at least one level below the highest level spell you can cast')
fate_weaver_human = FavoredKlassBonus.create!(klass_id: fate_weaver.id, race_id: human.id, description: '+1/3 Fate Points each day when you roll')
# alchemist_vine_leshy = FavoredKlassBonus.create!(klass_id: alchemist.id, race_id: vine_leshy.id, description: "Add 1/4 to the alchemist's natural armor bonus when using their mutagen.")
bard_vine_leshy = FavoredKlassBonus.create!(klass_id: bard.id, race_id: vine_leshy.id, description: "Add a +1/3 bonus to Perform (oratory) checks, including checks using versatile performance, as long as the bard first spends at least 10 minutes telling a story.")
# druid_vine_leshy = FavoredKlassBonus.create!(klass_id: druid.id, race_id: vine_leshy.id, description: "Add a +1/2 bonus to the druid's wild empathy or plant empathy checks.")
# kineticist_vine_leshy = FavoredKlassBonus.create!(klass_id: kineticist.id, race_id: vine_leshy.id, description: "Gain 1/5 of the Extra Wild Talent feat. This feat must be spent on a wood-element talent.")
oracle_vine_leshy = FavoredKlassBonus.create!(klass_id: oracle.id, race_id: vine_leshy.id, description: "An oracle with the nature or wood mystery adds one spell from the druid's spell list that isn't on the cleric spell list to the oracle's spell list; they still must select this spell as one of their spells known in order to cast it. This spell must be at least 1 level lower than the highest spell level the oracle can cast.")
# ranger_vine_leshy = FavoredKlassBonus.create!(klass_id: ranger.id, race_id: vine_leshy.id, description: "Add a +1/2 bonus to Knowledge (nature) checks in the ranger's favored terrain.")
unchained_rogue_vine_leshy = FavoredKlassBonus.create!(klass_id: unchained_rogue.id, race_id: vine_leshy.id, description: "Add a +1/2 bonus to Climb checks and on Stealth checks in forests.")
# shaman_vine_leshy = FavoredKlassBonus.create!(klass_id: shaman.id, race_id: vine_leshy.id, description: "Shamans with the nature or wood spirit adds one spell from the druid's spell list that isn't on the shaman spell list to the shaman's spell list; they still must select this spell as one of their spells known in order to cast it. This spell must be at least 1 level lower than the highest spell level the shaman can cast.")
alchemist_tiefling = FavoredKlassBonus.create!(klass_id: alchemist.id, race_id: tiefling.id, description: "Add +1/2 to the alchemist’s bomb damage.")

# /////////////////////////////////////////
# <-*-*-----*-*-*- Character!-*-*-*-----*-*->
# /////////////////////////////////////////

persephone = Character.create!(user_id: admin.id, name: "Persephone", strength: 5, dexterity: 15, constitution: 12, intelligence: 17, wisdom: 4, charisma: 15, race_id: changeling.id, skillset_id: dmc.id, alignment: 'chaotic neutral', campaign_id: current_campaign.id)
# +1 to Int from Tome of Clear Thought

CharacterKlass.create!(character_id: persephone.id, klass_id: witch.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: witch_changeling.id)
CharacterKlass.create!(character_id: persephone.id, klass_id: vigilante.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
CharacterKlass.create!(character_id: persephone.id, klass_id: witch.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: witch_changeling.id)
CharacterKlass.create!(character_id: persephone.id, klass_id: vigilante.id, hp: nil, feat_id: nil, ability_score_improvement: 'intelligence', level: 4, favored_klass_bonus_id: nil)
CharacterKlass.create!(character_id: persephone.id, klass_id: witch.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: witch_changeling.id)
CharacterKlass.create!(character_id: persephone.id, klass_id: witch.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: witch_changeling.id)
CharacterKlass.create!(character_id: persephone.id, klass_id: witch.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 7, favored_klass_bonus_id: witch_changeling.id)

sly = Character.create!(user_id: admin.id, name: "Sly", full_name: 'Slyvester Ruby', strength: 8, dexterity: 16, constitution: 16, intelligence: 8, wisdom: 13, charisma: 18, race_id: grippli.id, skillset_id: dmc.id, campaign_id: current_campaign.id)

sly1 = CharacterKlass.create!(character_id: sly.id, klass_id: fate_weaver.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: fate_weaver_human.id)
  CharacterKlassOption.create!(character_klass_id: sly1.id, feature_option_id: chaotic2.id)
sly2 = CharacterKlass.create!(character_id: sly.id, klass_id: fate_weaver.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: fate_weaver_human.id)
sly3 = CharacterKlass.create!(character_id: sly.id, klass_id: fate_weaver.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: fate_weaver_human.id)
 CharacterKlassOption.create!(character_klass_id: sly3.id, feature_option_id: chaotic3.id)
sly4 = CharacterKlass.create!(character_id: sly.id, klass_id: fate_weaver.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 4, favored_klass_bonus_id: fate_weaver_human.id)
sly5 = CharacterKlass.create!(character_id: sly.id, klass_id: fate_weaver.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: fate_weaver_human.id)
  CharacterKlassOption.create!(character_klass_id: sly5.id, feature_option_id: chaotic1.id)

nettie = Character.create!(user_id: admin.id, name: "Nettie", full_name: 'Apple Nettlekiss', strength: 14, dexterity: 14, constitution: 13, intelligence: 18, wisdom: 14, charisma: 14, race_id: vine_leshy.id, skillset_id: dmc.id, campaign_id: current_campaign.id)

nettie1 = CharacterKlass.create!(character_id: nettie.id, klass_id: bard.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
nettie2 = CharacterKlass.create!(character_id: nettie.id, klass_id: bard.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
nettie3 = CharacterKlass.create!(character_id: nettie.id, klass_id: bard.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: nil)
nettie4 = CharacterKlass.create!(character_id: nettie.id, klass_id: bard.id, hp: nil, feat_id: nil, ability_score_improvement: "intelligence", level: 4, favored_klass_bonus_id: nil)
nettie5 = CharacterKlass.create!(character_id: nettie.id, klass_id: bard.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: nil)
nettie6 = CharacterKlass.create!(character_id: nettie.id, klass_id: bard.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: nil)
nettie7 = CharacterKlass.create!(character_id: nettie.id, klass_id: bard.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 7, favored_klass_bonus_id: nil)

CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: acrobatics.id, ranks: 4)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: climb.id, ranks: 6)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: finesse_unchained.id, ranks: 4)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: handle_animal.id, ranks: 2)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: heal.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: linguistics.id, ranks: 7)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: nature_unchained.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: perception.id, ranks: 6)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: perform.id, ranks: 3)
# wind ^
# CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: perform.id, ranks: 2)
# percussion ^
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: religion_unchained.id, ranks: 6)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: sense_motive.id, ranks: 2)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: society_unchained.id, ranks: 5)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: spellcraft_unchained.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: stealth.id, ranks: 6)

merg = Character.create!(user_id: admin.id, name: "Merg", strength: 15, dexterity: 14, constitution: 15, intelligence: 13, wisdom: 13, charisma: 13, race_id: orc.id, skillset_id: dmc.id, campaign_id: current_campaign.id, lethal_damage: 30)
# +1 to Dexterity, Manual of Quickness of Action

merg1 = CharacterKlass.create!(character_id: merg.id, klass_id: unchained_barbarian.id, hp: 12, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: one_skill_point.id)
merg2 = CharacterKlass.create!(character_id: merg.id, klass_id: unchained_barbarian.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: one_skill_point.id)
merg3 = CharacterKlass.create!(character_id: merg.id, klass_id: unchained_barbarian.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: one_skill_point.id)
merg4 = CharacterKlass.create!(character_id: merg.id, klass_id: unchained_barbarian.id, hp: 7, feat_id: nil, ability_score_improvement: 'dexterity', level: 4, favored_klass_bonus_id: one_skill_point.id)
merg5 = CharacterKlass.create!(character_id: merg.id, klass_id: unchained_barbarian.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: one_skill_point.id)
merg6 = CharacterKlass.create!(character_id: merg.id, klass_id: unchained_barbarian.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: one_skill_point.id)
merg7 = CharacterKlass.create!(character_id: merg.id, klass_id: unchained_barbarian.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 7, favored_klass_bonus_id: one_skill_point.id)

CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: acrobatics.id, ranks: 4)
CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: handle_animal.id, ranks: 5)
CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: intimidate.id, ranks: 7)
CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: investigation.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: linguistics.id, ranks: 5)
CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: nature_unchained.id, ranks: 1)
CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: perception.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: profession.id, ranks: 3, detail: 'sailor')
CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: profession.id, ranks: 0, detail: 'fence')
CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: sense_motive.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: survival.id, ranks: 5)


cedrick = Character.create!(user_id: admin.id, name: "Cedrick", full_name: "Cedrick Ren 'Renny' Briarwert VII, Prince of Indiaster", strength: 17, dexterity: 14, constitution: 12, intelligence: 10, wisdom: 17, charisma: 10, race_id: grippli.id, skillset_id: dmc.id, campaign_id: current_campaign.id)

cedrick1 = CharacterKlass.create!(character_id: cedrick.id, klass_id: shifter.id, hp: 10, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: hp_up.id)
cedrick2 = CharacterKlass.create!(character_id: cedrick.id, klass_id: shifter.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: hp_up.id)
cedrick3 = CharacterKlass.create!(character_id: cedrick.id, klass_id: shifter.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: hp_up.id)
cedrick4 = CharacterKlass.create!(character_id: cedrick.id, klass_id: shifter.id, hp: 7, feat_id: nil, ability_score_improvement: 'strength', level: 4, favored_klass_bonus_id: one_skill_point.id)
cedrick5 = CharacterKlass.create!(character_id: cedrick.id, klass_id: shifter.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: one_skill_point.id)
cedrick6 = CharacterKlass.create!(character_id: cedrick.id, klass_id: shifter.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: nil)
cedrick7 = CharacterKlass.create!(character_id: cedrick.id, klass_id: shifter.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 7, favored_klass_bonus_id: nil)

CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: acrobatics.id, ranks: 1)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: bluff.id, ranks: 4)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: diplomacy.id, ranks: 2)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: finesse_unchained.id, ranks: 2)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: handle_animal.id, ranks: 2)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: heal.id, ranks: 1)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: intimidate.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: investigation.id, ranks: 5)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: linguistics.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: nature_unchained.id, ranks: 1)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: perception.id, ranks: 4)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: stealth.id, ranks: 2)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: survival.id, ranks: 1)


maddox = Character.create!(user_id: admin.id, name: "Maddox", full_name: 'Maddox Magpie', strength: 9, dexterity: 16, constitution: 14, intelligence: 18, wisdom: 11, charisma: 17, race_id: samsaran.id, skillset_id: dmc.id, campaign_id: current_campaign.id, is_done_preparing_spells: true)
# +1 to Charisma, Tome of Leadership and Influence

maddox1 = CharacterKlass.create!(character_id: maddox.id, klass_id: arcanist.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
maddox2 = CharacterKlass.create!(character_id: maddox.id, klass_id: arcanist.id, hp: 5, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
maddox3 = CharacterKlass.create!(character_id: maddox.id, klass_id: arcanist.id, hp: 5, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: nil)
maddox4 = CharacterKlass.create!(character_id: maddox.id, klass_id: arcanist.id, hp: 5, feat_id: nil, ability_score_improvement: nil, level: 4, favored_klass_bonus_id: nil)
maddox5 = CharacterKlass.create!(character_id: maddox.id, klass_id: arcanist.id, hp: 5, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: nil)
maddox6 = CharacterKlass.create!(character_id: maddox.id, klass_id: arcanist.id, hp: 5, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: nil)
maddox7 = CharacterKlass.create!(character_id: maddox.id, klass_id: arcanist.id, hp: 5, feat_id: nil, ability_score_improvement: nil, level: 7, favored_klass_bonus_id: nil)

CharacterSkillsetSkill.create!(character_id: maddox.id, skillset_id: dmc.id, skill_id: acrobatics.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: maddox.id, skillset_id: dmc.id, skill_id: craft.id, ranks: 3, detail: 'gears/clockwork')
CharacterSkillsetSkill.create!(character_id: maddox.id, skillset_id: dmc.id, skill_id: heal.id, ranks: 5)
CharacterSkillsetSkill.create!(character_id: maddox.id, skillset_id: dmc.id, skill_id: investigation.id, ranks: 6)
CharacterSkillsetSkill.create!(character_id: maddox.id, skillset_id: dmc.id, skill_id: linguistics.id, ranks: 6)
CharacterSkillsetSkill.create!(character_id: maddox.id, skillset_id: dmc.id, skill_id: nature_unchained.id, ranks: 6)
CharacterSkillsetSkill.create!(character_id: maddox.id, skillset_id: dmc.id, skill_id: perception.id, ranks: 5)
CharacterSkillsetSkill.create!(character_id: maddox.id, skillset_id: dmc.id, skill_id: religion_unchained.id, ranks: 6)
CharacterSkillsetSkill.create!(character_id: maddox.id, skillset_id: dmc.id, skill_id: spellcraft_unchained.id, ranks: 6)
CharacterSkillsetSkill.create!(character_id: maddox.id, skillset_id: dmc.id, skill_id: survival.id, ranks: 3)

robby = Character.create!(user_id: admin.id, name: 'Robby', full_name: 'Sir Robby Redfurred', strength: 13, dexterity: 16, constitution: 10, intelligence: 9, wisdom: 13, charisma: 17, race_id: kitsune.id, skillset_id: dmc.id, campaign_id: current_campaign.id, lethal_damage: 26)
# +1 to Strength, Manual of Gainful Exercise

robby1 = CharacterKlass.create!(character_id: robby.id, klass_id: swashbuckler.id, hp: 10, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
robby2 = CharacterKlass.create!(character_id: robby.id, klass_id: swashbuckler.id, hp: 9, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
robby3 = CharacterKlass.create!(character_id: robby.id, klass_id: swashbuckler.id, hp: 8, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: nil)
robby4 = CharacterKlass.create!(character_id: robby.id, klass_id: unchained_rogue.id, hp: 6, feat_id: nil, ability_score_improvement: 'intelligence', level: 4, favored_klass_bonus_id: nil)
robby5 = CharacterKlass.create!(character_id: robby.id, klass_id: unchained_rogue.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: nil)
robby6 = CharacterKlass.create!(character_id: robby.id, klass_id: unchained_rogue.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: nil)
robby7 = CharacterKlass.create!(character_id: robby.id, klass_id: unchained_rogue.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 7, favored_klass_bonus_id: nil)

CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: acrobatics.id, ranks: 2)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: bluff.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: climb.id, ranks: 4)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: diplomacy.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: disguise.id, ranks: 2)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: finesse_unchained.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: handle_animal.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: heal.id, ranks: 1)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: intimidate.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: linguistics.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: perception.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: perform.id, ranks: 1, detail: 'acting')
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: profession.id, ranks: 2, detail: 'sailor')
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: sense_motive.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: stealth.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: swim.id, ranks: 3)

festus = Character.create!(user_id: admin.id, name: 'Festus', full_name: nil, strength: 16, dexterity: 16, constitution: 16, intelligence: 16, wisdom: 16, charisma: 16, race_id: half_elf.id, any_bonus: 'Strength', skillset_id: dmc.id, campaign_id: current_campaign.id)

festus1 = CharacterKlass.create!(character_id: festus.id, klass_id: brawler.id, hp: 10, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
festus1 = CharacterKlass.create!(character_id: festus.id, klass_id: brawler.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
festus1 = CharacterKlass.create!(character_id: festus.id, klass_id: brawler.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: nil)
festus1 = CharacterKlass.create!(character_id: festus.id, klass_id: brawler.id, hp: nil, feat_id: nil, ability_score_improvement: 'strength', level: 4, favored_klass_bonus_id: nil)
festus1 = CharacterKlass.create!(character_id: festus.id, klass_id: brawler.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: nil)
festus1 = CharacterKlass.create!(character_id: festus.id, klass_id: brawler.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: nil)

grackle = Character.create!(user_id: admin.id, name: 'Grackle', full_name: nil, strength: 10, dexterity: 14, constitution: 10, intelligence: 14, wisdom: 11, charisma: 9, race_id: tiefling.id, skillset_id: dmc.id, campaign_id: current_campaign.id)

grackle1 = CharacterKlass.create!(character_id: grackle.id, klass_id: alchemist.id, hp: 8, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: alchemist_tiefling.id)
grackle1 = CharacterKlass.create!(character_id: grackle.id, klass_id: alchemist.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: alchemist_tiefling.id)
grackle1 = CharacterKlass.create!(character_id: grackle.id, klass_id: alchemist.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: alchemist_tiefling.id)
grackle1 = CharacterKlass.create!(character_id: grackle.id, klass_id: alchemist.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 4, favored_klass_bonus_id: alchemist_tiefling.id)
grackle1 = CharacterKlass.create!(character_id: grackle.id, klass_id: alchemist.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: alchemist_tiefling.id)
grackle1 = CharacterKlass.create!(character_id: grackle.id, klass_id: alchemist.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: alchemist_tiefling.id)
grackle1 = CharacterKlass.create!(character_id: grackle.id, klass_id: alchemist.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 7, favored_klass_bonus_id: alchemist_tiefling.id)

CharacterSkillsetSkill.create!(character_id: grackle.id, skillset_id: dmc.id, skill_id: acrobatics.id, ranks: 7)
CharacterSkillsetSkill.create!(character_id: grackle.id, skillset_id: dmc.id, skill_id: finesse_unchained.id, ranks: 7)
CharacterSkillsetSkill.create!(character_id: grackle.id, skillset_id: dmc.id, skill_id: stealth.id, ranks: 4)
CharacterSkillsetSkill.create!(character_id: grackle.id, skillset_id: dmc.id, skill_id: heal.id, ranks: 7)
CharacterSkillsetSkill.create!(character_id: grackle.id, skillset_id: dmc.id, skill_id: perception.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: grackle.id, skillset_id: dmc.id, skill_id: craft.id, ranks: 7, detail: 'alchemy')
CharacterSkillsetSkill.create!(character_id: grackle.id, skillset_id: dmc.id, skill_id: investigation.id, ranks: 7)
CharacterSkillsetSkill.create!(character_id: grackle.id, skillset_id: dmc.id, skill_id: spellcraft_unchained.id, ranks: 7)


# /////////////////////////////////////////
# <-*-*-----*-*-*- Known Spells!-*-*-*-----*-*->
# /////////////////////////////////////////

# KnownSpell.create!(klass_spell_id: charm_person_witch.id, character_id: persephone.id, klass_id: witch.id)
# KnownSpell.create!(klass_spell_id: detect_magic_witch.id, character_id: persephone.id, klass_id: witch.id)
# KnownSpell.create!(klass_spell_id: mending_witch.id, character_id: persephone.id, klass_id: witch.id)
# KnownSpell.create!(klass_spell_id: message_witch.id, character_id: persephone.id, klass_id: witch.id)
# KnownSpell.create!(klass_spell_id: light_witch.id, character_id: persephone.id, klass_id: witch.id)
# KnownSpell.create!(klass_spell_id: trial_of_fire_and_acid_witch.id, character_id: persephone.id, klass_id: witch.id)
# KnownSpell.create!(klass_spell_id: mount_witch.id, character_id: persephone.id, klass_id: witch.id)
# KnownSpell.create!(klass_spell_id: unerring_weapon_witch.id, character_id: persephone.id, klass_id: witch.id)
#
# KnownSpell.create!(klass_spell_id: message_unchained_summoner.id, character_id: persephone.id, klass_id: vigilante.id)
# KnownSpell.create!(klass_spell_id: summon_monster_I_unchained_summoner.id, character_id: persephone.id, klass_id: vigilante.id)
#
# KnownSpell.create!(klass_spell_id: charm_person_bard.id, character_id: nettie.id, klass_id: bard.id)
# KnownSpell.create!(klass_spell_id: message_bard.id, character_id: nettie.id, klass_id: bard.id)
# KnownSpell.create!(klass_spell_id: identify_bard.id, character_id: nettie.id, klass_id: bard.id)
#
# KnownSpell.create!(klass_spell_id: dancing_lights_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: detect_magic_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: mage_hand_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: mending_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: prestidigitation_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: read_magic_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: spark_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: open_close_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: jolt_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: magic_missile_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: identify_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: mage_armor_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: true_strike_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: ear_piercing_scream_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: floating_disk_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: touch_of_combustion_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: endothermic_touch_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: lay_of_the_land_bard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: stone_call_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: sonic_scream_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: admonishing_ray_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: twisted_futures_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: twisted_space_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: make_whole_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: lightning_bolt_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: haste_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: dispel_magic_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
#
# KnownSpell.create!(klass_spell_id: cure_light_wounds_alchemist.id, character_id: grackle.id, klass_id: alchemist.id)
# KnownSpell.create!(klass_spell_id: shield_alchemist.id, character_id: grackle.id, klass_id: alchemist.id)
# KnownSpell.create!(klass_spell_id: reduce_person_alchemist.id, character_id: grackle.id, klass_id: alchemist.id)
# KnownSpell.create!(klass_spell_id: enlarge_person_alchemist.id, character_id: grackle.id, klass_id: alchemist.id)
# KnownSpell.create!(klass_spell_id: expeditious_retreat_alchemist.id, character_id: grackle.id, klass_id: alchemist.id)
# KnownSpell.create!(klass_spell_id: cure_moderate_wounds_alchemist.id, character_id: grackle.id, klass_id: alchemist.id)
# KnownSpell.create!(klass_spell_id: alchemical_allocation_alchemist.id, character_id: grackle.id, klass_id: alchemist.id)
# KnownSpell.create!(klass_spell_id: lesser_restoration_alchemist.id, character_id: grackle.id, klass_id: alchemist.id)
# KnownSpell.create!(klass_spell_id: channel_vigor_alchemist.id, character_id: grackle.id, klass_id: alchemist.id)

# /////////////////////////////////////////
# <-*-*-----*-*-*- Cast Spells!-*-*-*-----*-*->
# /////////////////////////////////////////

# CastSpell.create!(character_id: maddox.id, klass_id: arcanist.id, spell_level: 1)

# /////////////////////////////////////////
# <-*-*-----*-*-*- Prepared Spells!-*-*-*-----*-*->
# /////////////////////////////////////////

# PreparedSpell.create!(klass_spell_id: charm_person_witch.id, character_id: persephone.id, spell_level: 1, cast: false, klass_id: witch.id)
# PreparedSpell.create!(klass_spell_id: charm_person_witch.id, character_id: persephone.id, spell_level: 1, cast: false, klass_id: witch.id)
# PreparedSpell.create!(klass_spell_id: detect_magic_witch.id, character_id: persephone.id, spell_level: 0, cast: false, klass_id: witch.id)
# PreparedSpell.create!(klass_spell_id: mending_witch.id, character_id: persephone.id, spell_level: 0, cast: false, klass_id: witch.id)
# PreparedSpell.create!(klass_spell_id: message_witch.id, character_id: persephone.id, spell_level: 0, cast: false, klass_id: witch.id)
# PreparedSpell.create!(klass_spell_id: light_witch.id, character_id: persephone.id, spell_level: 0, cast: false, klass_id: witch.id)
#
# PreparedSpell.create!(klass_spell_id: detect_magic_wizard.id, character_id: maddox.id, spell_level: 0, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: read_magic_wizard.id, character_id: maddox.id, spell_level: 0, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: dancing_lights_wizard.id, character_id: maddox.id, spell_level: 0, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: prestidigitation_wizard.id, character_id: maddox.id, spell_level: 0, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: open_close_wizard.id, character_id: maddox.id, spell_level: 0, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: spark_wizard.id, character_id: maddox.id, spell_level: 0, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: mage_hand_wizard.id, character_id: maddox.id, spell_level: 0, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: magic_missile_wizard.id, character_id: maddox.id, spell_level: 1, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: ear_piercing_scream_wizard.id, character_id: maddox.id, spell_level: 1, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: endothermic_touch_wizard.id, character_id: maddox.id, spell_level: 1, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: mage_armor_wizard.id, character_id: maddox.id, spell_level: 1, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: touch_of_combustion_wizard.id, character_id: maddox.id, spell_level: 1, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: sonic_scream_wizard.id, character_id: maddox.id, spell_level: 2, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: admonishing_ray_wizard.id, character_id: maddox.id, spell_level: 2, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: twisted_futures_wizard.id, character_id: maddox.id, spell_level: 2, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: haste_wizard.id, character_id: maddox.id, spell_level: 3, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: lightning_bolt_wizard.id, character_id: maddox.id, spell_level: 3, cast: false, klass_id: arcanist.id)


# /////////////////////////////////////////
# <-*-*-----*-*-*- Magic Items!-*-*-*-----*-*->
# /////////////////////////////////////////

# //////////
# LIMIT FREQUENCY IS FOR HOW OFTEN THE ITEM CAN BE USED FOR ITS LIMIT COUNTER
# IE. CAN BE USED ONCE A ROUND, TWICE A DAY, etc.
# syntax: USE UPPERCASED STRING FOR ROUND/DAY/WEEK/MINUTE ETC.

# potion_of_cure_light_wounds = MagicItem.create!(name: 'Potion of Cure Light Wounds', description: 'The imbiber of this potion is affected by the cure light wounds spell.', slot: 'potion', aura: 'faint conjuration', caster_level: 1, price_in_gp: 50, weight: 0, activatable: true, expendable: true, group: 'Potion')
#   potion_of_cure_light_wounds_feature1 = Feature.create!(name: nil, action_id: standard.id)
#     MagicItemFeature.create!(magic_item_id: potion_of_cure_light_wounds.id, feature_id: potion_of_cure_light_wounds_feature1.id)
#     potion_of_cure_light_wounds_feature1_usage = FeatureUsage.create!(feature_id: potion_of_cure_light_wounds_feature1.id, limit: 1, destroy_after_use: true, limit_frequency: 'Round', adjustable: false)
#       FeatureUsageSpellOption.create!(feature_usage_id: potion_of_cure_light_wounds_feature1_usage.id, spell_id: sp17.id, castable: false, cost: 1)
#
# potion_of_cure_moderate_wounds = MagicItem.create!(name: 'Potion of Cure Moderate Wounds', description: 'The imbiber of this potion is affected by the cure moderate wounds spell.', slot: 'potion', aura: 'faint conjuration', caster_level: 3, price_in_gp: 300, weight: 0, activatable: true, expendable: true, group: 'Potion')
#   potion_of_cure_moderate_wounds_feature1 = Feature.create!(name: nil, action_id: standard.id)
#     MagicItemFeature.create!(magic_item_id: potion_of_cure_moderate_wounds.id, feature_id: potion_of_cure_moderate_wounds_feature1.id)
#     potion_of_cure_moderate_wounds_feature1_usage = FeatureUsage.create!(feature_id: potion_of_cure_moderate_wounds_feature1.id, limit: 1, destroy_after_use: true, limit_frequency: 'Round', adjustable: false)
#       FeatureUsageSpellOption.create!(feature_usage_id: potion_of_cure_moderate_wounds_feature1_usage.id, spell_id: sp45.id, castable: false, cost: 1)
#
# quick_runners_shirt = MagicItem.create!(name: "Quick Runner's Shirt", description: 'This shirt is made of light, gossamer-thin fabric embroidered with arrangements of winged feet.
#
# Once per day as a swift action, the wearer can take an additional move action to move and then immediately end his turn, losing any unspent actions.
#
# A character must wear this shirt continuously for 24 hours before he can activate this ability.', slot: 'chest', aura: 'faint transmutation', caster_level: 5, price_in_gp: 1000, weight: 0, activatable: true, expendable: false, group: 'Wondrous Item')
#   quick_runners_shirt_feature1 = Feature.create!(name: nil, action_id: swift.id)
#     MagicItemFeature.create!(magic_item_id: quick_runners_shirt.id, feature_id: quick_runners_shirt_feature1.id)
#     quick_runners_shirt_feature1_usage = FeatureUsage.create!(feature_id: quick_runners_shirt_feature1.id, limit: 1, destroy_after_use: false, limit_frequency: 'Day', adjustable: false)
#
# pirates_eye_patch = MagicItem.create!(name: "Pirate's Eye Patch", description: 'This black silk eye patch is adorned by a skull and crossbones worked in silver thread.
#
# The wearer of this patch gains a +2 competence bonus on Swim and Climb checks. In addition, once per day, the wearer of this eye patch can gain the effects of either touch of the sea or expeditious retreat on command (wearer’s choice).', slot: 'eye', aura: 'faint transmutation', caster_level: 2, price_in_gp: 2600, weight: 0, activatable: true, expendable: false, group: 'Wondrous Item')
# #   pirates_eye_patch_touch_of_the_sea = MagicItemSpellReference.create!(magic_item_id: pirates_eye_patch.id, spell_id: sp70.id, castable: true)
# #   pirates_eye_patch_expeditious_retreat = MagicItemSpellReference.create!(magic_item_id: pirates_eye_patch.id, spell_id: sp52.id, castable: true)
#   pirates_eye_patch_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: pirates_eye_patch.id, feature_id: pirates_eye_patch_feature1.id)
#     pirates_eye_patch_feature1_usage = FeatureUsage.create!(feature_id: pirates_eye_patch_feature1.id, limit: 1, destroy_after_use: false, limit_frequency: 'Day', adjustable: false)
#       FeatureUsageSpellOption.create!(feature_usage_id: pirates_eye_patch_feature1_usage.id, spell_id: sp70.id, castable: true, cost: 1)
#       FeatureUsageSpellOption.create!(feature_usage_id: pirates_eye_patch_feature1_usage.id, spell_id: sp52.id, castable: true, cost: 1)
#   pirates_eye_patch_feature2 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: pirates_eye_patch.id, feature_id: pirates_eye_patch_feature2.id)
#     FeatureSkillBonus.create!(feature_id: pirates_eye_patch_feature2.id, skill_id: swim.id, bonus: 2, bonus_type: 'competence', duration: 'permanent')
#     FeatureSkillBonus.create!(feature_id: pirates_eye_patch_feature2.id, skill_id: climb.id, bonus: 2, bonus_type: 'competence', duration: 'permanent')
#   # pirates_eye_patch_feature3 = Feature.create!(name: nil)
#   #   MagicItemFeature.create!(magic_item_id: pirates_eye_patch.id, feature_id: pirates_eye_patch_feature3.id)
#
# boots_of_elvenkind = MagicItem.create!(name: 'Boots of Elvenkind', description: 'These soft boots are partially made out of living leaves and other natural materials.
#
# They enable the wearer to move nimbly about in virtually any surroundings, granting a +5 competence bonus on Acrobatics checks.', slot: 'feet', aura: 'faint transmutation', caster_level: 5, price_in_gp: 2500, weight: 1, activatable: false, expendable: false, group: 'Wondrous Item')
#   boots_of_elvenkind_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: boots_of_elvenkind.id, feature_id: boots_of_elvenkind_feature1.id)
#     FeatureSkillBonus.create!(feature_id: boots_of_elvenkind_feature1.id, skill_id: acrobatics.id, bonus: 5, bonus_type: 'competence', duration: 'permanent')
# #
# bag_of_holding_I = MagicItem.create!(name: 'Bag of Holding I', description: 'The bag of holding opens into a nondimensional space: its inside is larger than its outside dimensions.
#
# The bag can hold up to 250 lbs, with a volume of up to 30 cubic feet.
#
# If a bag of holding is overloaded, or if sharp objects pierce it (from inside or outside), the bag immediately ruptures and is ruined, and all contents are lost forever. If a bag of holding is turned inside out, all of its contents spill out, unharmed, but the bag must be put right before it can be used again. If living creatures are placed within the bag, they can survive for up to 10 minutes, after which time they suffocate. Retrieving a specific item from a bag of holding is a move action, unless the bag contains more than an ordinary backpack would hold, in which case retrieving a specific item is a full-round action. Magic items placed inside the bag do not offer any benefit to the character carrying the bag.
#
# If a bag of holding is placed within a portable hole, a rift to the Astral Plane is torn in the space: bag and hole alike are sucked into the void and forever lost. If a portable hole is placed within a bag of holding, it opens a gate to the Astral Plane: the hole, the bag, and any creatures within a 10-foot radius are drawn there, destroying the portable hole and bag of holding in the process.', slot: 'none', aura: 'moderate conjuration', caster_level: 9, price_in_gp: 2500, weight: 15, activatable: true, expendable: false, group: 'Wondrous Item')
#   bag_of_holding_I_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: bag_of_holding_I.id, feature_id: bag_of_holding_I_feature1.id)
#     FeatureContainer.create!(feature_id: bag_of_holding_I_feature1.id, weight: 250, volume_cubic_feet: 30)
#
# handy_haversack = MagicItem.create!(name: 'Handy Haversack', description: 'A backpack of this sort appears to be well made, well used, and quite ordinary. It has two side pouches, each of which appears large enough to hold about a quart of material. In fact, each is like a bag of holding and can actually hold material of as much as 2 cubic feet in volume or 20 pounds in weight. The large central portion of the pack can contain up to 8 cubic feet or 80 pounds of material. Even when so filled, the backpack always weighs only 5 pounds.
#
# While such storage is useful enough, the pack has an even greater power. When the wearer reaches into it for a specific item, that item is always on top. Thus, no digging around and fumbling is ever necessary to find what a haversack contains. Retrieving any specific item from a haversack is a move action, but it does not provoke the attacks of opportunity that retrieving a stored item usually does.', slot: 'none', aura: 'moderate conjuration', caster_level: 9, price_in_gp: 2000, weight: 5, activatable: true, expendable: false, group: 'Wondrous Item')
#   handy_haversack_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: handy_haversack.id, feature_id: handy_haversack_feature1.id)
#     FeatureContainer.create!(feature_id: handy_haversack_feature1.id, weight: 120, volume_cubic_feet: 12)
#
# mask_of_the_rabbit_prince = MagicItem.create!(name: 'Mask of the Rabbit Prince', description: 'This colorful mask covers the top half of the wearer’s face and depicts the countenance of a resolute rabbit complete with large, floppy felt ears. Despite its apparently fragile construction, the mask is as tough as iron (hardness 10). The mask of the rabbit prince imparts reckless bravado, granting the wearer a +2 morale bonus on initiative checks and on saving throws against fear effects. In addition, the wearer always counts as having a running start when attempting Acrobatics checks to jump.', slot: 'head', aura: 'faint tranmutation', caster_level: 3, price_in_gp: 6000, weight: 0.5, activatable: false, expendable: true, group: 'Wondrous Item')
#   mask_of_the_rabbit_prince_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: mask_of_the_rabbit_prince.id, feature_id: mask_of_the_rabbit_prince_feature1.id)
#     FeatureStatBonus.create!(feature_id: mask_of_the_rabbit_prince_feature1.id, statistic: 'Initiative', bonus: 2, bonus_type: 'morale', duration: 'permanent')
#     mask_of_the_rabbit_prince_feature1_stat1 = FeatureStatBonus.create!(feature_id: mask_of_the_rabbit_prince_feature1.id, statistic: 'Save', bonus: 2, bonus_type: 'morale', duration: 'permanent')
#       FeatureStatBonusCondition.create!(feature_stat_bonus_id: mask_of_the_rabbit_prince_feature1_stat1.id, condition: 'fear effects')
#     FeatureSkillNote.create!(feature_id: mask_of_the_rabbit_prince_feature1.id, skill_id: acrobatics.id, note: 'counts as having a running start when attempting Acrobatics checks to jump')
#
# staff_of_size_alteration = MagicItem.create!(name: 'Staff of Size Alteration', description: 'This staff of dark wood is stouter and sturdier than most magical staves, with a gnarled and twisted knot of wood at the top end. It allows use of the following spells:
#
# enlarge person (1 charge)
# reduce person (1 charge)
# shrink item (2 charges)
# mass enlarge person (3 charges)
# mass reduce person (3 charges)', slot: 'none', aura: 'moderate transmutation', caster_level: 8, price_in_gp: 26150, weight: 5, activatable: false, expendable: false, group: 'Staff')
#   staff_of_size_alteration_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: staff_of_size_alteration.id, feature_id: staff_of_size_alteration_feature1.id)
#     staff_of_size_alteration_feature1_usage = FeatureUsage.create!(feature_id: staff_of_size_alteration_feature1.id, limit: 10, destroy_after_use: false, limit_frequency: 'Forever', adjustable: true)
#       FeatureUsageSpellOption.create!(feature_usage_id: staff_of_size_alteration_feature1_usage.id, spell_id: sp67.id, castable: true, cost: 3)
#       FeatureUsageSpellOption.create!(feature_usage_id: staff_of_size_alteration_feature1_usage.id, spell_id: sp68.id, castable: true, cost: 3)
#       FeatureUsageSpellOption.create!(feature_usage_id: staff_of_size_alteration_feature1_usage.id, spell_id: sp64.id, castable: true, cost: 1)
#       FeatureUsageSpellOption.create!(feature_usage_id: staff_of_size_alteration_feature1_usage.id, spell_id: sp65.id, castable: true, cost: 1)
#       FeatureUsageSpellOption.create!(feature_usage_id: staff_of_size_alteration_feature1_usage.id, spell_id: sp66.id, castable: true, cost: 2)
#
# slippers_of_spider_climbing = MagicItem.create!(name: 'Slippers of Spider Climbing', description: 'When worn, a pair of these slippers enables movement on vertical surfaces or even upside down along ceilings, leaving the wearer’s hands free. Her climb speed is 20 feet. Severely slippery surfaces—icy, oiled, or greased surfaces—make these slippers useless. The slippers can be used for 10 minutes per day, split up as the wearer chooses (minimum 1 minute per use).', slot: 'feet', aura: 'faint transmutation', caster_level: 4, price_in_gp: 4800, weight: 0.5, activatable: true, expendable: false, group: 'Wondrous Item')
#   slippers_of_spider_climbing_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: slippers_of_spider_climbing.id, feature_id: slippers_of_spider_climbing_feature1.id)
#     slippers_of_spider_climbing_feature1_usage = FeatureUsage.create!(feature_id: slippers_of_spider_climbing_feature1.id, limit: 10, unit: 'minute', destroy_after_use: false, limit_frequency: 'Day', adjustable: true, toggleable: true)
#     FeatureMovement.create!(feature_id: slippers_of_spider_climbing_feature1.id, movement: 'Climb', feet: 20)
#
# necklace_of_fireballs_III = MagicItem.create!(name: 'Necklace of Fireballs III', description: 'This item appears to be a string or cluster of spherical beads, sometimes with the ends tied together to form a necklace.
#
# (It does not count as an item worn around the neck for the purpose of determining which of a character’s worn magic items is effective.) If a character holds it, however, all can see the strand as it really is—a golden chain from which hang a number of golden spheres. The spheres are detachable by the wearer (and only by the wearer), who can easily hurl one of them up to 70 feet. When a sphere arrives at the end of its trajectory, it detonates as a fireball spell (Reflex DC 14 half).
#
# Spheres come in different strengths, ranging from those that deal 2d6 points of fire damage to those that deal 10d6. The market price of a sphere is 150 gp for each die of damage it deals.
#
# Type III has 7 beads on it: 4 beads that deal 3d6 points of fire damage, 2 beads that deal 5d6 points of fire damage, and 1 bead that deals 7d6 points of fire damage.
#
# Each necklace of fireballs contains a combination of spheres of various strengths. Some traditional combinations, designated types I through VII, are detailed above.
#
# If the necklace is being worn or carried by a character who fails her saving throw against a magical fire attack, the item must make a saving throw as well (with a save bonus of +7). If the necklace fails to save, all its remaining spheres detonate simultaneously, often with regrettable consequences for the wearer.', slot: 'neck', aura: 'moderate evocation', caster_level: 10, price_in_gp: 4350, weight: 1, activatable: false, expendable: true, group: 'Wondrous Item')
#   necklace_of_fireballs_III_feature1 = Feature.create!(name: nil, action_id: standard.id)
#     MagicItemFeature.create!(magic_item_id: necklace_of_fireballs_III.id, feature_id: necklace_of_fireballs_III_feature1.id)
#     necklace_of_fireballs_III_feature1_usage = FeatureUsage.create!(feature_id: necklace_of_fireballs_III_feature1.id, limit: 7, unit: 'bead', destroy_after_use: false, limit_frequency: 'Forever', adjustable: false, toggleable: true)
#       FeatureUsageOption.create!(feature_usage_id: necklace_of_fireballs_III_feature1_usage.id, detail: '3d6 fire damage', cost: 1, amount: 4, destroy_after_use: true)
#       FeatureUsageOption.create!(feature_usage_id: necklace_of_fireballs_III_feature1_usage.id, detail: '5d6 fire damage', cost: 1, amount: 2, destroy_after_use: true)
#       FeatureUsageOption.create!(feature_usage_id: necklace_of_fireballs_III_feature1_usage.id, detail: '7d6 fire damage', cost: 1, amount: 1, destroy_after_use: true)
#       FeatureUsageSpellOption.create!(feature_usage_id: necklace_of_fireballs_III_feature1_usage.id, spell_id: sp69.id, castable: false, cost: 1)
#
# pint_of_eek = MagicItem.create!(name: 'Pint of Eek', description: 'After consuming, you immediately breath out a blast of sonic energy in a 30 ft line. All affected creatures take 3d6 sonic damage, or half that if they succeed at a DC 15 Reflex save.', slot: 'none', aura: 'moderate evocation', caster_level: 7, price_in_gp: 1000, weight: 0, activatable: true, expendable: true, group: 'Wondrous Item')
#   pint_of_eek_feature1 = Feature.create!(name: nil, action_id: standard.id)
#     MagicItemFeature.create!(magic_item_id: pint_of_eek.id, feature_id: pint_of_eek_feature1.id)
#     pint_of_eek_feature1_usage = FeatureUsage.create!(feature_id: pint_of_eek_feature1.id, limit: 1, destroy_after_use: true, limit_frequency: 'Round', adjustable: false)
#
# monster_almanac = MagicItem.create!(name: 'Monster Almanac', description: 'This sketchbook has up to 100 pages full of scribbled notes and hasty sketches about monsters. When the user focuses on a particular page, the text and pictures start moving, revealing more details about the creature.
#
# The user must spend 10 minutes researching a particular type of monster to get any benefit from the almanac. If the user is trained in the appropriate Knowledge skill to identify a monster, he gets a +2 circumstance bonus on his check. He can attempt a Knowledge check to identify a creature despite being untrained in the appropriate skill (but without the +2 bonus) as long as the check’s DC is no higher than 15.', slot: 'none', aura: 'faint divination', caster_level: 3, price_in_gp: 4000, weight: 0.5, activatable: true, expendable: false, group: 'Wondrous Item')
#   monster_almanac_feature1 = Feature.create!(name: nil, action_id: ten.id)
#     MagicItemFeature.create!(magic_item_id: monster_almanac.id, feature_id: monster_almanac_feature1.id)
#
# astralabe = MagicItem.create!(name: 'Astralabe', description: 'An astralabe is essentially an extraplanar compass: a device that explorers of the planes can use to orient themselves in realms without shared cardinal directions or physical laws.
#
# The device creates an abstraction of north, east, south, and west, as well as up, down, in, out, back, forward, past, future, and a variety of other directions that can prove helpful in navigating the planes. Despite diverse cosmetic differences, astralabes share a uniform internal design and, by and large, give consistent, shared directions. As such, many—if not most— planar cartographers utilize astralabes when creating maps, allowing travelers to navigate lands without magnetic poles or with malleable terrains as though there were one consistent north. The device keeps a constant orientation, but it does not adjust or circumvent hazards or show particular paths. Any creature not on the Material Plane who employs an astralabe while attempting a Knowledge, Survival, or similar skill check to navigate gains a +4 bonus on that check.
#
# Additionally, an astralabe can aid a traveler in preparing to travel to another plane. The device can read emanations from portals, gates, and other connections between the planes and display them upon its surface. These displays can be interpreted with a successful Knowledge (planes) check. A user must typically succeed at a DC 25 Knowledge (planes) check to correctly read an astralabe, though demiplanes and stranger realms might require a higher DC or yield inconclusive results. Those who succeed learn the name of the plane beyond the portal, though not the portal’s exact location upon that plane—it doesn’t reveal tiers, layers, or subrealms, in the case of planes divided into multiple parts. Those who fail the check are unable to tell what plane lies beyond.
#
# Those who fail the check by 10 or more incorrectly identify what plane lies beyond, with the details of this misinformation determined by the GM.
#
# Astralabes generally don’t function on the Material Plane, shutting down and emanating an aura of only faint divination.
#
# However, should one be brought within 20 feet of a portal or similar passage to another plane, it becomes active for as long as it remains nearby. An astralabe operates continuously while on any plane other than the Material Plane.', slot: 'none', aura: 'moderate divination', caster_level: 8, price_in_gp: 16000, weight: 3, activatable: false, expendable: false, group: 'Wondrous Item')
#
# #
# elixir_of_fire_breath = MagicItem.create!(name: 'Elixir of Fire Breath', description: 'This strange bubbling elixir bestows upon the drinker the ability to spit gouts of flame. He can breathe fire up to three times, each time dealing 4d6 points of fire damage to a single target up to 25 feet away. The victim can attempt a DC 13 Reflex save for half damage. Unused blasts of fire dissipate 1 hour after the liquid is consumed.', slot: 'none', aura: 'moderate evocation', caster_level: 11, price_in_gp: 1100, weight: 0, activatable: true, expendable: true, group: 'Wondrous Item')
#   elixir_of_fire_breath_feature1 = Feature.create!(name: nil, action_id: standard.id)
#     MagicItemFeature.create!(magic_item_id: elixir_of_fire_breath.id, feature_id: elixir_of_fire_breath_feature1.id)
#     elixir_of_fire_breath_feature1_usage = FeatureUsage.create!(feature_id: elixir_of_fire_breath_feature1.id, limit: 1, limit_frequency: 'Round', destroy_after_use: true, adjustable: false)
# #
# blind_mans_cask = MagicItem.create!(name: "Blind Man's Cask", description: 'This black and red ceramic pot is about 5 ft tall, and does not change wieght if the only thing within it is alcohol. There is an an accompanying rubber gummy mouth guard. If the mouth guard is within 20 ft of the cask, anyone with the mouth guard in their mouth can drink from the cask as if the liquid inside was teleporting. Any liquid can be consumed this way, but the connection is lost if more than half of the container is filled with a non-fluid substance.', slot: 'none', aura: 'faint conjuration', caster_level: 5, price_in_gp: 1500, weight: 20, activatable: false, expendable: false, group: 'Wondrous Item')
# #
# jabberjaw_gem_halfling = MagicItem.create!(name: 'Jabberjaw Gem (Halfling)', description: "When a gem is held, your spokemon language (heard and mouthed) appear as if you were speaking the gem's associated language. Whoever is wielding the gem or touching the wielder can hear the actual language spoken. If you hold multiple gems, your language is an amalgam of all the gems. For listeners who know all of the languages spoken, they must make a DC 15 Linguistics check to comprehend the speaker. For each language a listener doesn't know, increase the DC by 5.", slot: 'none', aura: 'faint transmutation', caster_level: 1, price_in_gp: 600, weight: 0, activatable: false, expendable: false, group: 'Wondrous Item')
#   jabberjaw_gem_halfling_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: jabberjaw_gem_halfling.id, feature_id: jabberjaw_gem_halfling_feature1.id)
#     jabberjaw_gem_halfling_feature1_usage = FeatureUsage.create!(feature_id: jabberjaw_gem_halfling_feature1.id, limit: 1000, limit_frequency: 'Round', destroy_after_use: false, unit: '', adjustable: false, toggleable: false, wieldable: true)
#     FeatureLanguage.create!(feature_id: jabberjaw_gem_halfling_feature1.id, language: 'Halfling', note: 'cannot understand')
# #
# jabberjaw_gem_abyssal = MagicItem.create!(name: 'Jabberjaw Gem (Halfling)', description: "When a gem is held, your spokemon language (heard and mouthed) appear as if you were speaking the gem's associated language. Whoever is wielding the gem or touching the wielder can hear the actual language spoken. If you hold multiple gems, your language is an amalgam of all the gems. For listeners who know all of the languages spoken, they must make a DC 15 Linguistics check to comprehend the speaker. For each language a listener doesn't know, increase the DC by 5.", slot: 'none', aura: 'faint transmutation', caster_level: 1, price_in_gp: 600, weight: 0, activatable: false, expendable: false, group: 'Wondrous Item')
#   jabberjaw_gem_abyssal_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: jabberjaw_gem_abyssal.id, feature_id: jabberjaw_gem_abyssal_feature1.id)
#     jabberjaw_gem_abyssal_feature1_usage = FeatureUsage.create!(feature_id: jabberjaw_gem_abyssal_feature1.id, limit: 1000, limit_frequency: 'Round', destroy_after_use: false, unit: '', adjustable: false, toggleable: false, wieldable: true)
#     FeatureLanguage.create!(feature_id: jabberjaw_gem_abyssal_feature1.id, language: 'Abyssal', note: 'cannot understand')
# #
# jabberjaw_gem_dwarven = MagicItem.create!(name: 'Jabberjaw Gem (Halfling)', description: "When a gem is held, your spokemon language (heard and mouthed) appear as if you were speaking the gem's associated language. Whoever is wielding the gem or touching the wielder can hear the actual language spoken. If you hold multiple gems, your language is an amalgam of all the gems. For listeners who know all of the languages spoken, they must make a DC 15 Linguistics check to comprehend the speaker. For each language a listener doesn't know, increase the DC by 5.", slot: 'none', aura: 'faint transmutation', caster_level: 1, price_in_gp: 600, weight: 0, activatable: false, expendable: false, group: 'Wondrous Item')
#   jabberjaw_gem_dwarven_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: jabberjaw_gem_dwarven.id, feature_id: jabberjaw_gem_dwarven_feature1.id)
#     jabberjaw_gem_dwarven_feature1_usage = FeatureUsage.create!(feature_id: jabberjaw_gem_dwarven_feature1.id, limit: 1000, limit_frequency: 'Round', destroy_after_use: false, unit: '', adjustable: false, toggleable: false, wieldable: true)
#     FeatureLanguage.create!(feature_id: jabberjaw_gem_dwarven_feature1.id, language: 'Dwarven', note: 'cannot understand')
# #
# jabberjaw_gem_sylvan = MagicItem.create!(name: 'Jabberjaw Gem (Halfling)', description: "When a gem is held, your spokemon language (heard and mouthed) appear as if you were speaking the gem's associated language. Whoever is wielding the gem or touching the wielder can hear the actual language spoken. If you hold multiple gems, your language is an amalgam of all the gems. For listeners who know all of the languages spoken, they must make a DC 15 Linguistics check to comprehend the speaker. For each language a listener doesn't know, increase the DC by 5.", slot: 'none', aura: 'faint transmutation', caster_level: 1, price_in_gp: 600, weight: 0, activatable: false, expendable: false, group: 'Wondrous Item')
#   jabberjaw_gem_sylvan_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: jabberjaw_gem_sylvan.id, feature_id: jabberjaw_gem_sylvan_feature1.id)
#     jabberjaw_gem_sylvan_feature1_usage = FeatureUsage.create!(feature_id: jabberjaw_gem_sylvan_feature1.id, limit: 1000, limit_frequency: 'Round', destroy_after_use: false, unit: '', adjustable: false, toggleable: false, wieldable: true)
#     FeatureLanguage.create!(feature_id: jabberjaw_gem_sylvan_feature1.id, language: 'Sylvan', note: 'cannot understand')
# #
# jabberjaw_gem_undercommon = MagicItem.create!(name: 'Jabberjaw Gem (Halfling)', description: "When a gem is held, your spokemon language (heard and mouthed) appear as if you were speaking the gem's associated language. Whoever is wielding the gem or touching the wielder can hear the actual language spoken. If you hold multiple gems, your language is an amalgam of all the gems. For listeners who know all of the languages spoken, they must make a DC 15 Linguistics check to comprehend the speaker. For each language a listener doesn't know, increase the DC by 5.", slot: 'none', aura: 'faint transmutation', caster_level: 1, price_in_gp: 600, weight: 0, activatable: false, expendable: false, group: 'Wondrous Item')
#   jabberjaw_gem_undercommon_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: jabberjaw_gem_undercommon.id, feature_id: jabberjaw_gem_undercommon_feature1.id)
#     jabberjaw_gem_undercommon_feature1_usage = FeatureUsage.create!(feature_id: jabberjaw_gem_undercommon_feature1.id, limit: 1000, limit_frequency: 'Round', destroy_after_use: false, unit: '', adjustable: false, toggleable: false, wieldable: true)
#     FeatureLanguage.create!(feature_id: jabberjaw_gem_undercommon_feature1.id, language: 'Undercommon', note: 'cannot understand')
# #
# origami_boat = MagicItem.create!(name: 'Origami Boat', description: 'If this makes contact with water, it gradually (over the course of 5 minutes) increase its size until it becomes a row boat with a space of 20 ft by 10 ft in the same shape as the paper. After 2 hours, the boat gradually (over the course of 10 minutes) shrinks back to its smaller form. This transmation resets after 12 hours.', slot: 'none', aura: 'faint transmutation', caster_level: 12, price_in_gp: 400, weight: 0, activatable: false, expendable: false, group: 'Wondrous Item')
#   origami_boat_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: origami_boat.id, feature_id: origami_boat_feature1.id)
# #     origami_boat_feature1_usage = FeatureUsage.create!(feature_id: origami_boat_feature1.id, limit: 1000, limit_frequency: 'Round', destroy_after_use: false, unit: '', adjustable: false, toggleable: false)
# #       FeatureUsageSpellOption.create!(feature_usage_id: origami_boat_feature1_usage.id, spell_id: , cost: 1, castable: true)
# #       FeatureUsageOption.create!(feature_usage_id: origami_boat_feature1_usage.id, detail: '', cost: 1, amount: 1, destroy_after_use: false)
# #     FeatureSkillBonus.create!(feature_id: origami_boat_feature1.id, skill_id: , bonus: 0, bonus_type: '', duration: 'temporary')
# #     FeatureSkillNote.create!(feature_id: origami_boat_feature1.id, skill_id: , note: '')
# #     origami_boat_feature1_stat1 = FeatureStatBonus.create!(feature_id: origami_boat_feature1.id, statistic: '', bonus: 0, bonus_type: '', duration: 'temporary')
# #       FeatureStateBonusCondition.create!(feature_stat_bonus_id: origami_boat_feature1_stat1.id, condition: '')
# #     FeatureStatNote.create!(feature_id: origami_boat_featureVAR.id, statistic: '', note: '')
# #
# brass_griffin_cloak = MagicItem.create!(name: 'Brass Griffin Cloak', description: 'While wearing this cloak, if the wearer is damaged by fire damage, they are not affected by it; the cloak draws the energy towards it. Once the clock has absorbed 50 damage this way, the cloak burns up and is destroyed, and any excess damage is dealt to the wearer. Once a day, as a move action, you may be affected by the spell endure elements. The duration of this effect is 1 hour.', slot: 'shoulders', aura: 'faint transmutation', caster_level: 3, price_in_gp: 2500, weight: 5, activatable: false, expendable: false, group: 'Wondrous Item')
#   brass_griffin_cloak_feature1 = Feature.create!(name: nil, action_id: move.id)
#     MagicItemFeature.create!(magic_item_id: brass_griffin_cloak.id, feature_id: brass_griffin_cloak_feature1.id)
#     brass_griffin_cloak_feature1_usage = FeatureUsage.create!(feature_id: brass_griffin_cloak_feature1.id, limit: 1, limit_frequency: 'Day', destroy_after_use: false, unit: '', adjustable: false, toggleable: false)
#       FeatureUsageSpellOption.create!(feature_usage_id: brass_griffin_cloak_feature1_usage.id, spell_id: sp75.id, cost: 1, castable: false)
# #       FeatureUsageOption.create!(feature_usage_id: brass_griffin_cloak_feature1_usage.id, detail: '', cost: 1, amount: 1, destroy_after_use: false)
# #     FeatureSkillBonus.create!(feature_id: brass_griffin_cloak_feature1.id, skill_id: , bonus: 0, bonus_type: '', duration: 'temporary')
# #     FeatureSkillNote.create!(feature_id: brass_griffin_cloak_feature1.id, skill_id: , note: '')
# #     brass_griffin_cloak_feature1_stat1 = FeatureStatBonus.create!(feature_id: brass_griffin_cloak_feature1.id, statistic: '', bonus: 0, bonus_type: '', duration: 'temporary')
# #       FeatureStateBonusCondition.create!(feature_stat_bonus_id: brass_griffin_cloak_feature1_stat1.id, condition: '')
# #     FeatureStatNote.create!(feature_id: brass_griffin_cloak_feature1.id, statistic: '', note: '')
# #
# poisoners_glove = MagicItem.create!(name: "Poisoner's Glove", description: 'These black, rubbery gloves have sharpened digits. Fine channels lead to the tip of each finger, which are often stained with foul chemicals. The gloves are used primarily by assassins to deliver poisons while in combat.
#
# Each glove may be filled with a single dose of poison, a potion, alchemist infusion, holy water, or similar liquid as long as the liquid would not harm the gloves (for example, alchemist’s fire and acid cannot be used). The wearer can deliver the dose to a target as a melee touch attack or as part of an unarmed strike or natural attack with the hands (such as a claw or slam attack). In the case of a personal infused extract, the opponent receives both a Fortitude save and spell resistance.
#
# The wearer can use both gloves in the same round using two-weapon fighting or multiple natural attacks (such as 2 slams or 2 claws). Each glove can be used once per day. Filling a glove is a full-round action that provokes attacks of opportunity.', slot: 'hands', aura: 'faint transmutation', caster_level: 5, price_in_gp: 5000, weight: 0.0, activatable: false, expendable: false, group: 'Wondrous Item')
#   poisoners_glove_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: poisoners_glove.id, feature_id: poisoners_glove_feature1.id)
#     poisoners_glove_feature1_usage = FeatureUsage.create!(feature_id: poisoners_glove_feature1.id, limit: 2, limit_frequency: 'Day', destroy_after_use: false, unit: '', adjustable: false, toggleable: false)
# #
# # IDENTIFIER = MagicItem.create!(name: '', description: '', slot: 'none', aura: '', caster_level: 0, price_in_gp: 0, weight: 0.0, activatable: false, expendable: false, group: 'Wondrous Item')
# #   IDENTIFIER_featureVAR = Feature.create!(name: nil, action_id:)
# #     MagicItemFeature.create!(magic_item_id: IDENTIFIER.id, feature_id: IDENTIFIER_featureVAR.id)
# #     IDENTIFIER_featureVAR_usage = FeatureUsage.create!(feature_id: IDENTIFIER_featureVAR.id, limit: 1000, limit_frequency: 'Round', destroy_after_use: false, unit: '', adjustable: false, toggleable: false)
# #       FeatureUsageSpellOption.create!(feature_usage_id: IDENTIFIER_featureVAR_usage.id, spell_id: , cost: 1, castable: true)
# #       FeatureUsageOption.create!(feature_usage_id: IDENTIFIER_featureVAR_usage.id, detail: '', cost: 1, amount: 1, destroy_after_use: false)
# #     FeatureSkillBonus.create!(feature_id: IDENTIFIER_featureVAR.id, skill_id: , bonus: 0, bonus_type: '', duration: 'temporary')
# #     FeatureSkillNote.create!(feature_id: IDENTIFIER_featureVAR.id, skill_id: , note: '')
# #     IDENTIFIER_featureVAR_stat1 = FeatureStatBonus.create!(feature_id: IDENTIFIER_featureVAR.id, statistic: '', bonus: 0, bonus_type: '', duration: 'temporary')
# #       FeatureStateBonusCondition.create!(feature_stat_bonus_id: IDENTIFIER_featureVAR_stat1.id, condition: '')
# #     FeatureStatNote.create!(feature_id: IDENTIFIER_featureVAR.id, statistic: '', note: '')
# #
# #
# # IDENTIFIER = MagicItem.create!(name: '', description: '', slot: 'none', aura: '', caster_level: 0, price_in_gp: 0, weight: 0.0, activatable: false, expendable: false, group: 'Wondrous Item')
# #   IDENTIFIER_featureVAR = Feature.create!(name: nil, action_id:)
# #     MagicItemFeature.create!(magic_item_id: IDENTIFIER.id, feature_id: IDENTIFIER_featureVAR.id)
# #     IDENTIFIER_featureVAR_usage = FeatureUsage.create!(feature_id: IDENTIFIER_featureVAR.id, limit: 1000, limit_frequency: 'Round', destroy_after_use: false, unit: '', adjustable: false, toggleable: false)
# #       FeatureUsageSpellOption.create!(feature_usage_id: IDENTIFIER_featureVAR_usage.id, spell_id: , cost: 1, castable: true)
# #       FeatureUsageOption.create!(feature_usage_id: IDENTIFIER_featureVAR_usage.id, detail: '', cost: 1, amount: 1, destroy_after_use: false)
# #     FeatureSkillBonus.create!(feature_id: IDENTIFIER_featureVAR.id, skill_id: , bonus: 0, bonus_type: '', duration: 'temporary')
# #     FeatureSkillNote.create!(feature_id: IDENTIFIER_featureVAR.id, skill_id: , note: '')
# #     IDENTIFIER_featureVAR_stat1 = FeatureStatBonus.create!(feature_id: IDENTIFIER_featureVAR.id, statistic: '', bonus: 0, bonus_type: '', duration: 'temporary')
# #       FeatureStateBonusCondition.create!(feature_stat_bonus_id: IDENTIFIER_featureVAR_stat1.id, condition: '')
# #     FeatureStatNote.create!(feature_id: IDENTIFIER_featureVAR.id, statistic: '', note: '')
# #     FeatureLanguage.create!(feature_id: IDENTIFIER_featureVAR.id, language: '', note: '')
#
# puts "Magic Items Created!"


# //////////////////////////////////////////////////////
# <-*-*-----*-*-*- Character Weapons!-*-*-*-----*-*->
# //////////////////////////////////////////////////////

# cw1 = CharacterWeapon.create!(character_id: grackle.id, weapon_id: dagger.id, masterwork: true, description: 'beautiful piece of work', name: 'Ancient Cutlass', discovered: false, known: true, equipped: false)

# //////////////////////////////////////////////////////
# <-*-*-----*-*-*- Character Magic Items!-*-*-*-----*-*->
# //////////////////////////////////////////////////////

# cmi1 = CharacterMagicItem.create!(character_id: maddox.id, magic_item_id: staff_of_size_alteration.id, false_desc: '', discovered: true, known: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi1.id, feature_usage_id: staff_of_size_alteration_feature1_usage.id)
# #
# # cmi2 = CharacterMagicItem.create!(character_id: maddox.id, magic_item_id: necklace_of_fireballs_III.id, false_desc: '', discovered: true, known: true)
# # CharacterMagicItemFeatureUsageOption.create!(character_magic_item_id: cmi2.id, feature_usage_id: necklace_of_fireballs_III_feature1_usage.id)
#
# cmi3 = CharacterMagicItem.create!(character_id: maddox.id, magic_item_id: handy_haversack.id, false_desc: '', discovered: true, known: true)
# container1 = Container.create!()
# CharacterMagicItemContainer.create!(character_magic_item_id: cmi3.id, container_id: container1.id)
#
# cmi4 = CharacterMagicItem.create!(character_id: maddox.id, magic_item_id: monster_almanac.id, false_desc: '', discovered: true, known: true)
#
# cmi5 = CharacterMagicItem.create!(character_id: maddox.id, magic_item_id: astralabe.id, false_desc: '', discovered: true, known: true)
#
# cmi6 = CharacterMagicItem.create!(character_id: merg.id, magic_item_id: elixir_of_fire_breath.id, false_desc: '', discovered: true, known: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi6.id, feature_usage_id: elixir_of_fire_breath_feature1_usage.id)
#
# cmi7 = CharacterMagicItem.create!(character_id: merg.id, magic_item_id: blind_mans_cask.id, false_desc: '', discovered: true, known: true)
#
# cmi8 = CharacterMagicItem.create!(character_id: maddox.id, magic_item_id: pirates_eye_patch.id, false_desc: '', discovered: true, known: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi8.id, feature_usage_id: pirates_eye_patch_feature1_usage.id)
#
# cmi9 = CharacterMagicItem.create!(character_id: robby.id, magic_item_id: quick_runners_shirt.id, false_desc: '', discovered: true, known: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi9.id, feature_usage_id: quick_runners_shirt_feature1_usage.id)
#
# cmi10 = CharacterMagicItem.create!(character_id: robby.id, magic_item_id: origami_boat.id, false_desc: '', discovered: true, known: true)
#
# cmi11 = CharacterMagicItem.create!(character_id: robby.id, magic_item_id: brass_griffin_cloak.id, false_desc: '', discovered: true, known: true)
#
# cmi12 = CharacterMagicItem.create!(character_id: robby.id, magic_item_id: jabberjaw_gem_halfling.id, false_desc: '', discovered: true, known: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi12.id, feature_usage_id: jabberjaw_gem_halfling_feature1_usage.id)
#
# cmi13 = CharacterMagicItem.create!(character_id: robby.id, magic_item_id: jabberjaw_gem_abyssal.id, false_desc: '', discovered: true, known: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi13.id, feature_usage_id: jabberjaw_gem_abyssal_feature1_usage.id)
#
# cmi14 = CharacterMagicItem.create!(character_id: robby.id, magic_item_id: jabberjaw_gem_dwarven.id, false_desc: '', discovered: true, known: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi14.id, feature_usage_id: jabberjaw_gem_dwarven_feature1_usage.id)
#
# cmi15 = CharacterMagicItem.create!(character_id: robby.id, magic_item_id: jabberjaw_gem_sylvan.id, false_desc: '', discovered: true, known: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi15.id, feature_usage_id: jabberjaw_gem_sylvan_feature1_usage.id)
#
# cmi16 = CharacterMagicItem.create!(character_id: robby.id, magic_item_id: jabberjaw_gem_undercommon.id, false_desc: '', discovered: true, known: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi16.id, feature_usage_id: jabberjaw_gem_undercommon_feature1_usage.id)
#
# cmi17 = CharacterMagicItem.create!(character_id: cedrick.id, magic_item_id: slippers_of_spider_climbing.id, false_desc: '', discovered: true, known: true, equipped: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi17.id, feature_usage_id: slippers_of_spider_climbing_feature1_usage.id)
#
# cmi18 = CharacterMagicItem.create!(character_id: cedrick.id, magic_item_id: pint_of_eek.id, false_desc: '', discovered: true, known: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi18.id, feature_usage_id: pint_of_eek_feature1_usage.id)


# ///////////////////////////////////////
# <-*-*-----*-*-*- Ideas!-*-*-*-----*-*->
# ///////////////////////////////////////

Idea.create!(content: "1d6 Wolves")
Idea.create!(content: "Organ Grinder")
Idea.create!(content: "Old Cathedral")
Idea.create!(content: "Old Woman who isn't what she seems")
Idea.create!(content: "Gliscening Waterfall")
Idea.create!(content: "Underwater Ruins")
Idea.create!(content: "Monastery")
Idea.create!(content: "Guards chasing a Kid")
Idea.create!(content: "Rare Domestic Animal")
Idea.create!(content: "Legends of a Nearby Ruin")
Idea.create!(content: "A Lost Poison Vial")
Idea.create!(content: "1d10 Street Performers")
Idea.create!(content: "A Corpse where it shouldn't be")
Idea.create!(content: "Small Church of a Well-Known God")
Idea.create!(content: "Red-Orange")
Idea.create!(content: "Lavendar")
Idea.create!(content: "The Color of Grain")
Idea.create!(content: "Windmill")
Idea.create!(content: "Child Prodigy")
Idea.create!(content: "A Lost Bard")
Idea.create!(content: "A Small, Hidden Bar")
Idea.create!(content: "A 2d6-Story Tavern")
Idea.create!(content: "Defunct Mansion")
Idea.create!(content: "Posh Butler")
Idea.create!(content: "Missing Arrows")
Idea.create!(content: "Bright Sunshine")
Idea.create!(content: "A Mysterious Ticking Noise")
Idea.create!(content: "An Inappropriate Attire")
Idea.create!(content: "Heist")
Idea.create!(content: "Falling 4d20 feet")
Idea.create!(content: "Ghost Threats")
Idea.create!(content: "A Splash of Purple")
Idea.create!(content: "Desert")
Idea.create!(content: "Antique Salesperson")
Idea.create!(content: "Dead Trees")
Idea.create!(content: "Quarry")
Idea.create!(content: "Masked Face")
Idea.create!(content: "Someone Becoming Unhappy because of a Party Member")
Idea.create!(content: "Private Mocking")
Idea.create!(content: "Weathered Inscription")
Idea.create!(content: "Boastful Nobility")
Idea.create!(content: "Impressive Artisitic Creation")
Idea.create!(content: "Colossal Wreck")
Idea.create!(content: "1d4 Camelids doing Manual Labor")
Idea.create!(content: "Excited Skilled Craftsman")
Idea.create!(content: "Whimsical, Passionate Dancing")
Idea.create!(content: "Pleasant Alcohol")
Idea.create!(content: "Impressive Manners")
Idea.create!(content: "Obscuring Screen")
Idea.create!(content: "Someone caught eavesdropping")
Idea.create!(content: "Sphere")
Idea.create!(content: "Community")
Idea.create!(content: "Barbarian")
Idea.create!(content: "Encampment")
Idea.create!(content: "Bard")
Idea.create!(content: "Scrappy College")
Idea.create!(content: "Cleric")
Idea.create!(content: "Holy Site")
Idea.create!(content: "Druid")
Idea.create!(content: "Nature Preserve")
Idea.create!(content: "Fighter")
Idea.create!(content: "Training Ground")
Idea.create!(content: "Monk")
Idea.create!(content: "Remote Path")
Idea.create!(content: "Paladin")
Idea.create!(content: "Holy Temple")
Idea.create!(content: "Rogue")
Idea.create!(content: "Seedy Tavern")
Idea.create!(content: "Ranger")
Idea.create!(content: "Outpost")
Idea.create!(content: "Sorcerer")
Idea.create!(content: "Arcane Location")
Idea.create!(content: "Wizard")
Idea.create!(content: "Library")
Idea.create!(content: "Alchemist")
Idea.create!(content: "Laboratory")
Idea.create!(content: "Cavalier")
Idea.create!(content: "Warfront")
Idea.create!(content: "Inquisitor")
Idea.create!(content: "Prison")
Idea.create!(content: "Summoner")
Idea.create!(content: "Sanctuary")
Idea.create!(content: "Oracle")
Idea.create!(content: "Mountain Temple")
Idea.create!(content: "Witch")
Idea.create!(content: "Creepy Forest")
Idea.create!(content: "Gunslinger")
Idea.create!(content: "Saloon")
Idea.create!(content: "Magus")
Idea.create!(content: "Lost City")
Idea.create!(content: "Vigiliante")
Idea.create!(content: "Skyscraper")
Idea.create!(content: "Arcanist")
Idea.create!(content: "Arcane Tower")
Idea.create!(content: "Bloodrager")
Idea.create!(content: "Ritual Cavern")
Idea.create!(content: "Brawler")
Idea.create!(content: "Fight Pit")
Idea.create!(content: "Hunter")
Idea.create!(content: "Animal Camp")
Idea.create!(content: "Investigator")
Idea.create!(content: "Crime Scene")
Idea.create!(content: "Shaman")
Idea.create!(content: "Hut Village")
Idea.create!(content: "Skald")
Idea.create!(content: "Old Battlefield")
Idea.create!(content: "Slayer")
Idea.create!(content: "Guild Den")
Idea.create!(content: "Swashbuckler")
Idea.create!(content: "Ship")
Idea.create!(content: "Warpriest")
Idea.create!(content: "Medic Tent")
Idea.create!(content: "1d10 x 10 of ^ (the above thing)")
Idea.create!(content: "1d10 x 10 of v (the below thing)")
Idea.create!(content: "1d4+1 of ^ (the above thing)")
Idea.create!(content: "1d4+1 of v (the below thing)")
Idea.create!(content: "2 of ^ (the above thing)")
Idea.create!(content: "2 of v (the below thing)")
Idea.create!(content: "Wall/Cliff Face")
Idea.create!(content: "Part of an Area is Submerged")
Idea.create!(content: "A Thin Wall/Crumbling Brick Wall")
Idea.create!(content: "A Thick Door/A Gate")
Idea.create!(content: "Someone Tells a Lie")
Idea.create!(content: "Player is not allowed Access")
Idea.create!(content: "A Naive Person in a Position of Power")
Idea.create!(content: "Someone needs to be Healed")
Idea.create!(content: "Someone Scared")
Idea.create!(content: "A Group of Unconscious Bodies")
Idea.create!(content: "Quaranteened Location")
Idea.create!(content: "Foreigner Enters Town")
Idea.create!(content: "Nobility is mentioned in Disgust")
Idea.create!(content: "City is mentioned Favorably")
Idea.create!(content: "Someone wants to go to another Plane")
Idea.create!(content: "Talking in a different Language")
Idea.create!(content: "Acquire a Forgery (DC 10 + 2d6)")
Idea.create!(content: "A Group Doubts a Player")
Idea.create!(content: "Magic Item Stolen")
Idea.create!(content: "Character Depends on Item or Location")
Idea.create!(content: "Artwork/Odd or Amazing/Carved/Painted")
Idea.create!(content: "Bound and Hooded")
Idea.create!(content: "Store or Hold Important Items")
Idea.create!(content: "Glyph")
Idea.create!(content: "Mechanical Trap")
Idea.create!(content: "Physically Above a Desired Location")
Idea.create!(content: "Pets/Trained Creatures")
Idea.create!(content: "Pests/Vermin")
Idea.create!(content: "A Creature 2 Sizes Bigger")
Idea.create!(content: "A Creature 2 Sizes Smaller")
Idea.create!(content: "Someone is Actively Casting a Spell/Ritual")
Idea.create!(content: "2d6 Buildings")
Idea.create!(content: "Deep Darkness")
Idea.create!(content: "Extraplanar Creature")
Idea.create!(content: "Good ^ (the above thing)")
Idea.create!(content: "Evil ^ (the above thing)")
Idea.create!(content: "Ominous Weather")
Idea.create!(content: "Multiple Secret Passages")
Idea.create!(content: "Cursed Object")
Idea.create!(content: "Entertainer")
Idea.create!(content: "Eerily Quiet")
Idea.create!(content: "Trench")
Idea.create!(content: "Pit")
Idea.create!(content: "Patrol/Guards")
Idea.create!(content: "Loud Noise Approaching")
Idea.create!(content: "Demon")
Idea.create!(content: "Devil")
Idea.create!(content: "Protean")
Idea.create!(content: "Sphinx")
Idea.create!(content: "Mermaid")
Idea.create!(content: "No Path/Trail")
Idea.create!(content: "Mounted Fighters")
Idea.create!(content: "Made of Bone")
Idea.create!(content: "Made of Bronze")
Idea.create!(content: "Made of Stone")
Idea.create!(content: "Archaic Weapons/Tools")
Idea.create!(content: "Surprise Ally")
Idea.create!(content: "Firepit/Campfire")
Idea.create!(content: "Psychopomp")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")


# ///////////////////////////////////////
# <-*-*-----*-*-*- Testing!-*-*-*-----*-*->
# ///////////////////////////////////////

test_character = Character.create!(user_id: admin.id, name: "Test", strength: 8, dexterity: 11, constitution: 10, intelligence: 10, wisdom: 16, charisma: 12, race_id: human.id, skillset_id: dmc.id, alignment: 'chaotic neutral', campaign_id: current_campaign.id)

CharacterKlass.create!(character_id: test_character.id, klass_id: cleric.id, hp: 8, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)

CharacterWeapon.create!(character_id: test_character.id, weapon_id: scythe.id, masterwork: false, description: '', name: '', discovered: true, known: true, equipped: "")

CharacterWeapon.create!(character_id: test_character.id, weapon_id: rapier.id, masterwork: false, description: '', name: '', discovered: true, known: true, equipped: "")

CharacterWeapon.create!(character_id: test_character.id, weapon_id: quarterstaff.id, masterwork: false, description: '', name: '', discovered: true, known: true, equipped: "")

CharacterWeapon.create!(character_id: test_character.id, weapon_id: greatsword.id, masterwork: false, description: '', name: '', discovered: true, known: true, equipped: "")

CharacterWeapon.create!(character_id: test_character.id, weapon_id: longbow.id, masterwork: false, description: '', name: '', discovered: true, known: true, equipped: "")

CharacterWeapon.create!(character_id: test_character.id, weapon_id: light_crossbow.id, masterwork: false, description: '', name: '', discovered: true, known: true, equipped: "")


CharacterWeapon.create!(character_id: test_character.id, weapon_id: crossbow_bolt.id, masterwork: false, description: '', name: '', discovered: true, known: true, equipped: "", ammunition_amount: 20)

CharacterWeapon.create!(character_id: test_character.id, weapon_id: club.id, masterwork: false, description: '', name: '', discovered: true, known: true, equipped: "")


CharacterArmor.create!(character_id: test_character.id, armor_id: padded.id, description: "", discovered: true, known: true)
CharacterArmor.create!(character_id: test_character.id, armor_id: chainmail.id, description: "", discovered: true, known: true)
CharacterArmor.create!(character_id: test_character.id, armor_id: full_plate.id, description: "", discovered: true, known: true)



test_character_2 = Character.create!(user_id: admin.id, name: "Another Option", strength: 13, dexterity: 13, constitution: 11, intelligence: 10, wisdom: 6, charisma: 14, race_id: human.id, skillset_id: dmc.id, alignment: 'chaotic neutral', campaign_id: current_campaign.id)

CharacterKlass.create!(character_id: test_character_2.id, klass_id: bard.id, hp: 8, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
