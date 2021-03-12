# ///////////////////////////////////////////////
# <-*-*-----*-*-*- Creature Type -*-*-*-----*-*->
# ///////////////////////////////////////////////

vermin_type = CreatureType.create!(name: "Vermin", description: "This type includes insects, arachnids, other arthropods, worms, and similar invertebrates.

Vermin have the following features.

d8 Hit Die.
Base attack bonus equal to 3/4 total Hit Dice (medium progression).
Good Fortitude saves.
Skill points equal to 2 + Int modifier (minimum 1) per Hit Die. Most vermin, however, are mindless and gain no skill points or feats. Vermin have no class skills.

Vermin possess the following traits (unless otherwise noted in a creature’s entry).

Mindless: No Intelligence score, and immunity to all mind-affecting effects (charms, compulsions, morale effects, patterns, and phantasms). A vermin-like creature with an Intelligence score is usually either an animal or a magical beast, depending on its other abilities.
Darkvision 60 feet.
Proficient with its natural weapons only.
Proficient with no armor.
Vermin breathe, eat, and sleep.", hit_die: 8, fortitude: 0.5, reflex: 0.34, will: 0.34, skill_ranks: 2)

# /////////////////////////////////////////////////
# <-*-*-----*-*-*- Natural Attacks -*-*-*-----*-*->
# /////////////////////////////////////////////////

bite = Weapon.find_or_create_by!(name: "Bite", damage_dice: 6, num_of_dice: 1, category: "Light", attack_type: "Primary", weapon_type: "Melee")
slam = Weapon.find_or_create_by!(name: "Slam", damage_dice: 4, num_of_dice: 1, category: "Light", attack_type: "Primary", weapon_type: "Melee", damage_type: "Bludgeoning")
talons = Weapon.find_or_create_by!(name: "Talons", damage_dice: 4, num_of_dice: 1, category: "Light", attack_type: "Primary", weapon_type: "Melee", damage_type: "Slashing")

# ///////////////////////////////////////
# <-*-*-----*-*-*- Feats -*-*-*-----*-*->
# ///////////////////////////////////////

weapon_finesse = Feat.find_by!(name: "Weapon Finesse", description: "You are trained in using your agility in melee combat, as opposed to brute strength.", blurb: "Use Dex instead of Str on attack rolls with light weapons", benefit: "With a light weapon, elven curve blade, rapier, whip, or spiked chain made for a creature of your size category, you may use your Dexterity modifier instead of your Strength modifier on attack rolls. If you carry a shield, its armor check penalty applies to your attack rolls.", special: "Natural weapons are considered light weapons.")

# ////////////////////////////////////////////
# <-*-*-----*-*-*- References -*-*-*-----*-*->
# ////////////////////////////////////////////

summon_monster_list = SummonedCreatureList.find_or_create_by!(name: "Summon Monster List")

# //////////////////////////////////////////
# <-*-*-----*-*-*- Creature -*-*-*-----*-*->
# //////////////////////////////////////////

giant_ant_worker = Creature.create!(creature_type_id: vermin_type.id, name: "Giant Ant Worker", hit_dice: 2, challenge_rating: 1, alignment: "neutral", size: "Medium", strength: 14, dexterity: 10, constitution: 17, intelligence: nil, wisdom: 13, charisma: 11, blurb: nil, description: "Giant ants are as industrious as their normal-sized kin. While their nests generally don’t consist of thousands, their greatly increased size more than compensates.", natural_armor: 5, environment: "any", organization: "solitary, pair, gang (3-6), or hive (7-18 plus 10-100 workers, 2-8 drones, and 1 queen)", treasure: "none")
  CreatureFeat.create!(creature_id: giant_ant_worker.id, feat_id: Feat.find_by!(name: "Toughness").id)
  CreatureWeapon.create!(creature_id: giant_ant_worker.id, weapon_id: bite.id)
  SummonedCreatureListCreature.create!(summoned_creature_list_id: summon_monster_list.id, creature_id: giant_ant_worker.id, step: 2)


puts "Vermin Created!"
