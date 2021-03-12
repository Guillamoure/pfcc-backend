# ///////////////////////////////////////////////
# <-*-*-----*-*-*- Creature Type -*-*-*-----*-*->
# ///////////////////////////////////////////////

animal_type = CreatureType.create!(name: "Animal", description: "An animal is a living, nonhuman creature, usually a vertebrate with no magical abilities and no innate capacity for language or culture. Animals usually have additional information on how they can serve as companions.

An animal has the following features (unless otherwise noted).

d8 Hit Die.
Base attack bonus equal to 3/4 total Hit Dice (medium progression).
Good Fortitude and Reflex saves.
Skill points equal to 2 + Int modifier (minimum 1) per Hit Die. The following are class skills for animals: Acrobatics, Climb, Fly, Perception, Stealth, and Swim.
Traits: An animal possesses the following traits (unless otherwise noted in a creature’s entry).

Intelligence score of 1 or 2 (no creature with an Intelligence score of 3 or higher can be an animal).
Low-light vision.
Alignment: Always neutral.
Treasure: None.
Proficient with its natural weapons only. A noncombative herbivore treats its natural weapons as secondary attacks. Such attacks are made with a –5 penalty on the creature’s attack rolls, and the animal receives only 1/2 its Strength modifier as a damage adjustment.
Proficient with no armor unless trained for war. (See FAQs and Handle Animal Skill.)
Animals breathe, eat, and sleep.", hit_die: 8, fortitude: 0.5, reflex: 0.5, will: 0.34, skill_ranks: 2)

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

rat = Creature.create!(creature_type_id: animal_type.id, name: "Rat", hit_dice: 1, challenge_rating: 0.25, alignment: "neutral", size: "Tiny", strength: 2, dexterity: 15, constitution: 11, intelligence: 2, wisdom: 13, charisma: 2, blurb: nil, description: "Fecund and secretive, rats are omnivorous rodents that particularly thrive in urban areas.", natural_armor: 0, environment: "any temperate", organization: "solitary, pair, nest (3-12), or plague (13-100)", treasure: "none")
  CreatureFeat.create!(creature_id: rat.id, feat_id: weapon_finesse.id)
  CreatureWeapon.create!(creature_id: rat.id, weapon_id: bite.id)

dire_rat = Creature.create!(creature_type_id: animal_type.id, name: "Dire Rat", hit_dice: 1, challenge_rating: 0.34, alignment: "neutral", size: "Small", strength: 10, dexterity: 17, constitution: 13, intelligence: 2, wisdom: 13, charisma: 4, blurb: "This filthy rat is the size of a small dog. It has a coat of coarse fur, a long and scabby tail, and two glittering eyes.", description: "Dire rats grow up to 2 feet long and weigh up to 25 pounds. They are common menaces in dungeons and city sewers alike.", natural_armor: 0, environment: "any urban", organization: "solitary, or pack (2-10)", treasure: "none")
  CreatureWeapon.create!(creature_id: dire_rat.id, weapon_id: bite.id)
  SummonedCreatureListCreature.create!(summoned_creature_list_id: summon_monster_list.id, creature_id: dire_rat.id, step: 1)

dog = Creature.create!(creature_type_id: animal_type.id, name: "Dog", hit_dice: 1, challenge_rating: 0.34, alignment: "neutral", size: "Small", strength: 13, dexterity: 13, constitution: 15, intelligence: 2, wisdom: 12, charisma: 6, blurb: "This small dog has a rough coat and a hungry look in its dark brown eyes.", description: "The normal dog statistics presented here describe any small dog of about 20–50 pounds in weight. They can also be used for small wild canines such as coyotes, jackals, and feral dogs.

In the wild, dogs are vicious and territorial creatures. Yet even more harrowing than a pack of wild dogs is the rabid dog. Rabies often affects animals like bats, wolverines, and rats, but the transformation of a normally friendly family pet goes through when it becomes rabid makes the dog perhaps the most notorious of the disease’s classic carriers.

A rabid creature can transmit rabies to a victim with a bite. Its CR increases by 1 (or up one step, in the case of a creature whose CR is less than 1).", natural_armor: 1, environment: "any", organization: "solitary, pair, or pack (3-12)", treasure: "none")
  CreatureWeapon.create!(creature_id: dog.id, weapon_id: bite.id)
  SummonedCreatureListCreature.create!(summoned_creature_list_id: summon_monster_list.id, creature_id: dog.id, step: 1)

dolphin = Creature.create!(creature_type_id: animal_type.id, name: "Dolphin", hit_dice: 2, challenge_rating: 0.5, alignment: "neutral", size: "Medium", strength: 12, dexterity: 15, constitution: 13, intelligence: 2, wisdom: 13, charisma: 6, blurb: "This streamlined, fish-like mammal has sparkling eyes over a smiling mouth filled with hundreds of teeth.", description: "Dolphins are social predators that hunt shallow seas and rivers in large family groups called pods. Sailors are fond of dolphins and frequently tell tales of dolphins saving drowning fishermen or killing sharks with blows from their powerful snouts.", natural_armor: 1, environment: "any ocean", organization: "solitary, pair, or pod (3-18)", treasure: "none")
  CreatureFeat.create!(creature_id: dolphin.id, feat_id: weapon_finesse.id)
  CreatureWeapon.create!(creature_id: dolphin.id, weapon_id: slam.id)
  SummonedCreatureListCreature.create!(summoned_creature_list_id: summon_monster_list.id, creature_id: dolphin.id, step: 1)


chicken = Creature.create!(creature_type_id: animal_type.id, name: "Chicken", hit_dice: 1, challenge_rating: 0.167, alignment: "neutral", size: "Tiny", strength: 3, dexterity: 11, constitution: 12, intelligence: 2, wisdom: 12, charisma: 13, blurb: "This fowl has a compact body, a short beak flanked by red wattles, and a crimson comb on the crown of its head.", description: "Chickens are prized for the hearty breakfast meals they provide if properly fed and cared for. Chickens are highly social creatures that raise their young communally. They’re picky about the spots where they roost, and a hen rarely strays from a particular nest once she’s laid her eggs there. A fertilized chicken egg hatches into a chick after roughly 3 weeks of incubation.

In addition to their quick reproductive cycles, chickens have the ability to thrive on simple foods, and they are valued in both rural farming communities and metropolitan areas for their delicious and nutrient-rich eggs and meat. A hen bred for laying eggs can produce up to one egg every 24 hours.

A chicken is about 1 foot tall and weighs 5 pounds.", natural_armor: 0, environment: "any temperate", organization: "solitary, pair, or flock (3-20)", treasure: "none")
  CreatureFeat.create!(creature_id: chicken.id, feat_id: Feat.find_by!(name: "Improved Initiative").id)
  CreatureWeapon.create!(creature_id: chicken.id, weapon_id: bite.id)
  CreatureFamiliarAbility.create!(creature_id: chicken.id, ability: "+3 hit points")

eagle = Creature.create!(creature_type_id: animal_type.id, name: "Eagle", hit_dice: 1, challenge_rating: 0.5, alignment: "neutral", size: "Small", strength: 10, dexterity: 15, constitution: 12, intelligence: 2, wisdom: 15, charisma: 7, blurb: "This magnificent bird of prey has dark feathers save for those on its head, which are pure white.", description: "Among the most majestic of raptors, these predatory birds pluck fish from streams and lakes, drop down on rodents and small mammals in alpine meadows, and have even been known to pull young mountain goats from the assumed safety of their cliffs.

These creatures, like all birds of prey, have powerful clawed talons and sharp, hooked beaks perfect for tearing flesh. Their enhanced eyesight allows them to spot prey from great distances, and they typically hunt in wide circling patterns high above the ground.

Eagles typically build their massive nests in the tops of tall trees or among the rocky crags of steep cliffs. During breeding season, an eagle lays two eggs, but only one chick normally survives, as the stronger of the two usually kills and eats the weaker.

Eagles generally weigh between 8 and 15 pounds, with a wingspan of up to 7 feet, depending on the species.", natural_armor: 1, environment: "temperate mountains", organization: "solitary or pair", treasure: "none")
  CreatureFeat.create!(creature_id: eagle.id, feat_id: weapon_finesse.id)
  CreatureWeapon.create!(creature_id: eagle.id, weapon_id: talons.id, overwrite_damage_dice: 4, num_of_attacks: 2)
  CreatureWeapon.create!(creature_id: eagle.id, weapon_id: bite.id)
  SummonedCreatureListCreature.create!(summoned_creature_list_id: summon_monster_list.id, creature_id: eagle.id, step: 1)



puts "Animals Created!"
