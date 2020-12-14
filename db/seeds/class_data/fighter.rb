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




fighter = Klass.create!(name: "Fighter", hit_die: 10, skill_ranks: 2, fortitude: 0.5, reflex: 0.34, will: 0.34, img_url: "https://i.pinimg.com/originals/ad/5b/09/ad5b093ca27962784008644fea338bc9.png", starting_wealth: "5d6 x 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", source_id: core_rulebook.id, description: "Some take up arms for glory, wealth, or revenge. Others do battle to prove themselves, to protect others, or because they know nothing else. Still others learn the ways of weaponcraft to hone their bodies in battle and prove their mettle in the forge of war. Lords of the battlefield, fighters are a disparate lot, training with many weapons or just one, perfecting the uses of armor, learning the fighting techniques of exotic masters, and studying the art of combat, all to shape themselves into living weapons. Far more than mere thugs, these skilled warriors reveal the true deadliness of their weapons, turning hunks of metal into arms capable of taming kingdoms, slaughtering monsters, and rousing the hearts of armies. Soldiers, knights, hunters, and artists of war, fighters are unparalleled champions, and woe to those who dare stand against them.

Role: Fighters excel at combat—defeating their enemies, controlling the flow of battle, and surviving such sorties themselves. While their specific weapons and methods grant them a wide variety of tactics, few can match fighters for sheer battle prowess.")


ClassSkillsetSkill.create!(klass_id: fighter.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Climb").id)
ClassSkillsetSkill.create!(klass_id: fighter.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: fighter.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Handle Animal").id)
ClassSkillsetSkill.create!(klass_id: fighter.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Intimidate").id)
ClassSkillsetSkill.create!(klass_id: fighter.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (dungeoneering)").id)
ClassSkillsetSkill.create!(klass_id: fighter.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (engineering)").id)
ClassSkillsetSkill.create!(klass_id: fighter.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: fighter.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Ride").id)
ClassSkillsetSkill.create!(klass_id: fighter.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Survival").id)
ClassSkillsetSkill.create!(klass_id: fighter.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Swim").id)

ClassSkillsetSkill.create!(klass_id: fighter.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Climb").id)
ClassSkillsetSkill.create!(klass_id: fighter.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: fighter.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Handle Animal").id)
ClassSkillsetSkill.create!(klass_id: fighter.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Intimidate").id)
ClassSkillsetSkill.create!(klass_id: fighter.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: fighter.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Survival").id)
ClassSkillsetSkill.create!(klass_id: fighter.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Swim").id)

# /////////////////////////////////////////////////////
# <-*-*-----*-*-*- Base Class Features!-*-*-*-----*-*->
# /////////////////////////////////////////////////////

fighter1 = KlassFeature.create!(klass_id: fighter.id, name: "Weapon and Armor Proficiency", description: "A fighter is proficient with all simple and martial weapons and with all armor (heavy, light, and medium) and shields (including tower shields).")
  FeatureLevel.create!(klass_feature_id: fighter1.id, level: 1, table_description: "")
  fighter1_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: fighter1.id, feature_id: fighter1_feature.id)
    FeatureWeaponProficiency.create!(feature_id: fighter1_feature.id, proficiency_group: "Simple")
    FeatureWeaponProficiency.create!(feature_id: fighter1_feature.id, proficiency_group: "Martial")
    FeatureArmorProficiency.create!(feature_id: fighter1_feature.id, proficiency_group: "Light")
    FeatureArmorProficiency.create!(feature_id: fighter1_feature.id, proficiency_group: "Medium")
    FeatureArmorProficiency.create!(feature_id: fighter1_feature.id, proficiency_group: "Heavy")
    FeatureArmorProficiency.create!(feature_id: fighter1_feature.id, proficiency_group: "Shield")

fighter2 = KlassFeature.create!(klass_id: fighter.id, name: "Bonus Feats", description: "At 1st level, and at every even level thereafter, a fighter gains a bonus feat in addition to those gained from normal advancement (meaning that the fighter gains a feat at every level). These bonus feats must be selected from those listed as Combat Feats, sometimes also called “fighter bonus feats.”

Upon reaching 4th level, and every four levels thereafter (8th, 12th, and so on), a fighter can choose to learn a new bonus feat in place of a bonus feat he has already learned. In effect, the fighter loses the bonus feat in exchange for the new one. The old feat cannot be one that was used as a prerequisite for another feat, prestige class, or other ability. A fighter can only change one feat at any given level and must choose whether or not to swap the feat at the time he gains a new bonus feat for the level.")
  FeatureLevel.create!(klass_feature_id: fighter2.id, level: 1, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: fighter2.id, level: 2, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: fighter2.id, level: 4, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: fighter2.id, level: 6, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: fighter2.id, level: 8, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: fighter2.id, level: 10, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: fighter2.id, level: 12, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: fighter2.id, level: 14, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: fighter2.id, level: 16, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: fighter2.id, level: 18, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: fighter2.id, level: 20, table_description: "Bonus Feat")

fighter3 = KlassFeature.create!(klass_id: fighter.id, name: "Bravery", description: "Starting at 2nd level, a fighter gains a +1 bonus on Will saves against fear. This bonus increases by +1 for every four levels beyond 2nd.")
  FeatureLevel.create!(klass_feature_id: fighter3.id, level: 2, table_description: "Bravery +1")
  FeatureLevel.create!(klass_feature_id: fighter3.id, level: 6, table_description: "Bravery +2")
  FeatureLevel.create!(klass_feature_id: fighter3.id, level: 10, table_description: "Bravery +3")
  FeatureLevel.create!(klass_feature_id: fighter3.id, level: 14, table_description: "Bravery +4")
  FeatureLevel.create!(klass_feature_id: fighter3.id, level: 18, table_description: "Bravery +5")

fighter4 = KlassFeature.create!(klass_id: fighter.id, name: "Armor Training", description: "Starting at 3rd level, a fighter learns to be more maneuverable while wearing armor. Whenever he is wearing armor, he reduces the armor check penalty by 1 (to a minimum of 0) and increases the maximum Dexterity bonus allowed by his armor by 1. Every four levels thereafter (7th, 11th, and 15th), these bonuses increase by +1 each time, to a maximum –4 reduction of the armor check penalty and a +4 increase of the maximum Dexterity bonus allowed.

In addition, a fighter can also move at his normal speed while wearing medium armor. At 7th level, a fighter can move at his normal speed while wearing heavy armor.")
  FeatureLevel.create!(klass_feature_id: fighter4.id, level: 3, table_description: "Armor Training 1")
  FeatureLevel.create!(klass_feature_id: fighter4.id, level: 7, table_description: "Armor Training 2")
  FeatureLevel.create!(klass_feature_id: fighter4.id, level: 11, table_description: "Armor Training 3")
  FeatureLevel.create!(klass_feature_id: fighter4.id, level: 15, table_description: "Armor Training 4")

fighter5 = KlassFeature.create!(klass_id: fighter.id, name: "Weapon Training", description: "Starting at 5th level, a fighter can select one group of weapons, as noted below. Whenever he attacks with a weapon from this group, he gains a +1 bonus on attack and damage rolls.

Every four levels thereafter (9th, 13th, and 17th), a fighter becomes further trained in another group of weapons. He gains a +1 bonus on attack and damage rolls when using a weapon from this group. In addition, the bonuses granted by previous weapon groups increase by +1 each. For example, when a fighter reaches 9th level, he receives a +1 bonus on attack and damage rolls with one weapon group and a +2 bonus on attack and damage rolls with the weapon group selected at 5th level. Bonuses granted from overlapping groups do not stack. Take the highest bonus granted for a weapon if it resides in two or more groups.

A fighter also adds this bonus to any combat maneuver checks made with weapons from his group. This bonus also applies to the fighter’s Combat Maneuver Defense when defending against disarm and sunder attempts made against weapons from this group.

Axes: axe-gauntlet, dwarven heavy, axe-gauntlet, dwarven light, bardiche, battleaxe, boarding axe, butchering axe, collapsible kumade, dwarven waraxe, gandasa, greataxe, handaxe, heavy pick, hooked axe, knuckle axe, kumade, kumade, collapsible, light pick, mattock, orc double axe, pata, throwing axe, and tongi.

Blades, Heavy: ankus, bastard sword, chakram, cutlass, double, double chicken saber, double walking stick katana, dueling sword, elven curve blade, estoc, falcata, falchion, flambard, greatsword, great terbutje, greatsword, katana, khopesh, klar, longsword, nine-ring broadsword, nodachi, rhoka sword, sawtooth sabre, scimitar, scythe, seven-branched sword, shotel, sickle-sword, split-blade sword, switchscythe, temple sword, terbutje, and two-bladed sword.

Blades, Light: bayonet, broken-back seax, butterfly knife, butterfly sword, chakram, dagger, deer horn knife, dogslicer, drow razor, dueling dagger, gladius, hunga munga, kama, katar, kerambit, kukri, machete, madu, manople, pata, quadrens, rapier, sanpkhang, sawtooth sabre, scizore, shortsword, sica, sickle, spiral rapier, starknife, swordbreaker dagger, sword cane, wakizashi, and war razor.

Bows: composite longbow, composite shortbow, longbow, orc hornbow, and shortbow.

Close: axe-gauntlet, dwarven heavy, axe-gauntlet, dwarven light, bayonet, brass knuckles, cestus, dan bong, dwarven war-shield, emei piercer, fighting fan, gauntlet, heavy shield, iron brush, katar, klar, light shield, madu, mere club, punching dagger, rope gauntlet, sap, scizore, spiked armor, spiked gauntlet, spiked shield, tekko-kagi, tonfa, tri-bladed katar, unarmed strike, wooden stake, waveblade, and wushu dart.

Crossbows: double crossbow, hand crossbow, heavy crossbow, launching crossbow, light repeating crossbow, heavy repeating crossbow, pelletbow, dwarven heavy, pelletbow, dwarven light, and tube arrow shooter, underwater heavy crossbow, underwater light crossbow

Double: bo staff, boarding gaff, chain-hammer, chain spear, dire flail, double walking stick katana, double-chained kama, dwarven urgrosh, gnome battle ladder, gnome hooked hammer, kusarigama, monk’s spade, orc double axe, quarterstaff, taiaha, two-bladed sword, and weighted spear.

Firearms: all one-handed, two-handed, and siege firearms.

Flails: battle poi, bladed scarf, cat-o’-nine-tails, chain spear, dire flail, double chained kama, dwarven dorn-dergar, flail, flying talon, gnome pincher, halfling rope-shot, heavy flail, kusarigama, kyoketsu shoge, meteor hammer, morningstar, nine-section whip, nunchaku, sansetsukon, scorpion whip, spiked chain, urumi, and whip.

Hammers: aklys, battle aspergillum, chain-hammer, club, earth breaker, gnome piston maul, greatclub, heavy mace, lantern staff, light hammer, light mace, mere club, planson, ram hammer, dwarven, sphinx hammer, dwarven, taiaha, tetsubo, wahaika, and warhammer.

Monk: bo staff, brass knuckles, butterfly sword, cestus, dan bong, deer horn knife, double chained kama, double chicken saber, emei piercer, fighting fan, hanbo, jutte, kama, kusarigama, kyoketsu shoge, lungshuan tamo, monk’s spade, nine-ring broadsword, nine-section whip, nunchaku, quarterstaff, rope dart, sai, sanpkhang, sansetsukon, seven-branched sword, shang gou, shuriken, siangham, temple sword, tiger fork, tonfa, traveling kettle, tri-point double-edged sword, unarmed strike, urumi, and wushu dart.

Natural: unarmed strike and all natural weapons, such as bite, claw, gore, tail, and wing.

Polearms: bardiche, bec de corbin, bill, boarding gaff, crook, fauchard, giant-sticker, dwarven, glaive, glaive-guisarme, gnome ripsaw glaive, guisarme, halberd, hooked lance, horsechopper, lucerne hammer, mancatcher, monk’s spade, naginata, nodachi, ogre hook, ranseur, rhomphaia, tepoztopilli, and tiger fork.

Siege engines: Ballista, bombard, catapult, corvus, firedrake, firewyrm, gallery, ram, siege tower, springal, trebuchet, and all other siege engines.

Spears: amentum, boar spear, chain spear, double spear, elven branched spear, harpoon, javelin, lance, longspear, orc skull ram, pilum, planson, shortspear, sibat, spear, stormshaft javelin, tiger fork, trident, and weighted spear.

Thrown: aklys, amentum, atlatl, blowgun, bolas, boomerang, brutal bolas, chain-hammer, chakram, club, dagger, dart, deer horn knife, dueling dagger, flask thrower, halfling sling staff, harpoon, hunga munga, javelin, kestros, lasso, light hammer, net, pilum, poisoned sand tube, ram hammer, dwarven, rope dart, shortspear, shuriken, sibat, sling, sling glove, snag net, spear, sphinx hammer, dwarven, starknife, stormshaft javelin, throwing axe, throwing shield, trident, and wushu dart.

Tribal: Club, dagger, greatclub, handaxe, heavy shield, light shield, shortspear, spear, throwing axe, and unarmed strike.")
  FeatureLevel.create!(klass_feature_id: fighter5.id, level: 5, table_description: "Weapon Training 1")
  FeatureLevel.create!(klass_feature_id: fighter5.id, level: 9, table_description: "Weapon Training 2")
  FeatureLevel.create!(klass_feature_id: fighter5.id, level: 13, table_description: "Weapon Training 3")
  FeatureLevel.create!(klass_feature_id: fighter5.id, level: 17, table_description: "Weapon Training 4")

fighter6 = KlassFeature.create!(klass_id: fighter.id, name: "Armor Mastery", description: "At 19th level, a fighter gains damage reduction 5/— whenever he is wearing armor or using a shield.")
  FeatureLevel.create!(klass_feature_id: fighter6.id, level: 19, table_description: "Armor Mastery")

fighter7 = KlassFeature.create!(klass_id: fighter.id, name: "Weapon Mastery", description: "At 20th level, a fighter chooses one weapon, such as the longsword, greataxe, or longbow. Any attacks made with that weapon automatically confirm all critical threats and have their damage multiplier increased by 1 (×2 becomes ×3, for example). In addition, he cannot be disarmed while wielding a weapon of this type.")
  FeatureLevel.create!(klass_feature_id: fighter7.id, level: 20, table_description: "Weapon Mastery")

print "Fighter features created! \r"

# //////////////////////////////////////////////////
# <-*-*-----*-*-*- Class Archetypes!-*-*-*-----*-*->
# //////////////////////////////////////////////////

gloomblade = KlassArchetype.create!(name: "Gloomblade", klass_id: fighter.id, source_id: planar_adventures.id, description: "The Shadow Plane’s substance is legendary for its versatility.

In shadow-shrouded lands, secretive martial practitioners long ago learned to shape supernatural weapons from ribbons of pure darkness.")

  gloomblade1 = KlassArchetypeFeature.create!(name: "Student of Darkness", klass_archetype_id: gloomblade.id, description: "A gloomblade gains Acrobatics, Knowledge (planes), Perception, and Stealth as class skills, but does not gain Climb, Handle Animal, Ride, or Swim as class skills.

  This alters the fighter’s class skills.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: gloomblade1.id, level: 1, table_description: "")
    ArchetypeFeatureReplaceKlassFeature.create!(alters_class_skills: true, klass_archetype_feature_id: gloomblade1.id, replace_or_alter: "alter")

  gloomblade2 = KlassArchetypeFeature.create!(name: "Shadow Weapon", klass_archetype_id: gloomblade.id, description: "A gloomblade can create a shadowy weapon in a free hand as a move action. This can take the form of any melee weapon with which he is proficient. A gloomblade can have only one shadow weapon in existence at a time; creating a new shadow weapon causes an existing shadow weapon to vanish.

  At 3rd level, the shadow weapon acts as a magic weapon with a +1 enhancement bonus; this bonus increases by 1 for every 4 levels a gloomblade has beyond 2nd, to a maximum enhancement bonus of +5 at 18th level.

  At 7th level, a gloomblade can create (and maintain) two shadow weapons at a time as a move action; if he does, each weapon has an enhancement bonus 1 lower than normal. If a gloomblade creates only one weapon, it gains a weapon special ability of his choice (chosen upon creation); the ability must be valid for the shadow weapon’s weapon type and must be chosen from defending, flaming, frost, keen, ghost touch, merciful, shock, thundering, or vicious. (Additional special abilities might qualify, at the GM’s discretion.)

  At 11th level, a gloomblade’s shadow weapons each gain their full enhancement bonus if he creates two weapons. If a gloomblade creates only one shadow weapon, it gains additional weapon special abilities; the total effective bonus of these abilities cannot exceed +3. The gloomblade can now choose from the of anarchic, axiomatic, flaming burst, icy burst, holy, shocking burst, unholy, and wounding weapon special abilities as well as those from the list above.

  At 15th level, a gloomblade’s shadow weapons each gain magic weapon special abilities with a total effective bonus of +2 per weapon. If a gloomblade creates only one shadow weapon, its magic weapon special abilities cannot exceed a total effective bonus of +5. The gloomblade adds brilliant energy, dancing, and speed to the options he can choose as weapon special abilities for his shadow weapon.

  This replaces the fighter’s armor training and proficiency with heavy armor and shields (he retains proficiency in light and medium armor).")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: gloomblade2.id, level: 1, table_description: "Shadow Weapon")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: gloomblade2.id, level: 3, table_description: "Shadow Weapon")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: gloomblade2.id, level: 7, table_description: "Shadow Weapon")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: gloomblade2.id, level: 11, table_description: "Shadow Weapon")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: gloomblade2.id, level: 15, table_description: "Shadow Weapon")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: fighter1.id, klass_archetype_feature_id: gloomblade2.id, replace_or_alter: "alter")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: fighter4.id, klass_archetype_feature_id: gloomblade2.id, replace_or_alter: "replace")

  gloomblade3 = KlassArchetypeFeature.create!(name: "Shadow Weapon Training", klass_archetype_id: gloomblade.id, description: "At 5th level, a gloomblade gains weapon training, except that he does not select a weapon group; instead, the bonus applies to the shadow weapons he creates. A gloomblade does not select additional weapon groups as he gains levels.

  At 9th level, whenever a gloomblade creates one or more shadow weapons, he can apply any one of the following shadow effects (chosen upon creation) to one of them.

  - During the gloomblade’s turn, he can increase his reach with that weapon by 5 feet.

  - The gloomblade can increase a thrown shadow weapon’s range increment (if any) by 20 feet.

  - When he hits a foe with a melee attack with the weapon, he can use it to perform a reposition combat maneuver against the creature hit as a swift action. This does not provoke attacks of opportunity.

  - Attacks made with the weapon ignore hardness equal to or less than the gloomblade’s fighter level.

  For every 4 levels he has beyond 9th, a gloomblade can apply an additional effect to his shadow weapons, to a maximum of three effects at 17th level; these effects can be split between multiple shadow weapons as a gloomblade desires, but they don’t stack with themselves.

  This alters weapon training.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: gloomblade3.id, level: 5, table_description: "Shadow Weapon Training")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: gloomblade3.id, level: 9, table_description: "Shadow Weapon Training")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: gloomblade3.id, level: 13, table_description: "Shadow Weapon Training")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: gloomblade3.id, level: 17, table_description: "Shadow Weapon Training")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: fighter5.id, klass_archetype_feature_id: gloomblade3.id, replace_or_alter: "alter")

  print "Gloomblade Archetype Created! \r"



  # IDENTIFIER = KlassArchetypeFeature.create!(name: "NAME", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "NAME")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")

  # IDENTIFIER = KlassArchetypeFeature.create!(name: "NAME", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "NAME")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")

puts "Fighter Created!"
