CreatureType.destroy_all
Creature.destroy_all
CreatureFeat.destroy_all

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

bite = Weapon.create!(name: "Bite", damage_dice: 6, num_of_dice: 1, attack_type: "Primary", weapon_type: "Melee")

# ///////////////////////////////////////
# <-*-*-----*-*-*- Feats -*-*-*-----*-*->
# ///////////////////////////////////////

weapon_finesse = Feat.find_by!(name: "Weapon Finesse", description: "You are trained in using your agility in melee combat, as opposed to brute strength.", blurb: "Use Dex instead of Str on attack rolls with light weapons", benefit: "With a light weapon, elven curve blade, rapier, whip, or spiked chain made for a creature of your size category, you may use your Dexterity modifier instead of your Strength modifier on attack rolls. If you carry a shield, its armor check penalty applies to your attack rolls.", special: "Natural weapons are considered light weapons.")

# //////////////////////////////////////////
# <-*-*-----*-*-*- Creature -*-*-*-----*-*->
# //////////////////////////////////////////

rat = Creature.create!(creature_type_id: animal_type.id, name: "Rat", hit_dice: 1, challenge_rating: 0.25, alignment: "neutral", size: "Tiny", strength: 2, dexterity: 15, constitution: 11, intelligence: 2, wisdom: 13, charisma: 2, description: "Fecund and secretive, rats are omnivorous rodents that particularly thrive in urban areas.")
  CreatureFeat.create!(creature_id: rat.id, feat_id: weapon_finesse.id)
  CreatureWeapon.create!(creature_id: rat.id, weapon_id: bite.id)

puts "Creatures Created!"
