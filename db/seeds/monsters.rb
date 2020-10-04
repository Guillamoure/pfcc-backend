CreatureType.destroy_all
Creature.destroy_all

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

# //////////////////////////////////////////
# <-*-*-----*-*-*- Creature -*-*-*-----*-*->
# //////////////////////////////////////////

rat = Creature.create!(creature_type_id: animal_type.id, name: "Rat", hit_dice: 1, challenge_rating: 0.25, alignment: "neutral", size: "Tiny", strength: 2, dexterity: 15, constitution: 11, intelligence: 2, wisdom: 13, charisma: 2, description: "Fecund and secretive, rats are omnivorous rodents that particularly thrive in urban areas.")

puts "Creatures Created!"
