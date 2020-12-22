Feat.destroy_all
FeatType.destroy_all

# /////////////////////////////////////////
# <-*-*-----*-*-*- Sources-*-*-*-----*-*->
# /////////////////////////////////////////

core_rulebook = Source.find_by!(title: "Core Rulebook", abbreviation: "CR", code: "PZO1110")
bestiary_1 = Source.find_by!(title: "Bestiary 1", abbreviation: "B1", code: "PZO1112")
advanced_players_guide = Source.find_by!(title: "Advanced Player's Guide", abbreviation: "APG", code: "PZO1115")
bestiary_2 = Source.find_by!(title: "Bestiary 2", abbreviation: "B2", code: "PZO1116")
bestiary_3 = Source.find_by!(title: "Bestiary 3", abbreviation: "B3", code: "PZO1120")
advanced_race_guide = Source.find_by!(title: "Advanced Race Guide", abbreviation: "ARG", code: "PZO1121")
bestiary_4 = Source.find_by!(title: "Bestiary 4", abbreviation: "B4", code: "PZO1127")
advanced_class_guide = Source.find_by!(title: "Advanced Class Guide", abbreviation: "ACG", code: "PZO1129")
ultimate_intrigue = Source.find_by!(title: "Ultimate Intrigue", abbreviation: "UI", code: "PZO1134")
ultimate_wilderness = Source.find_by!(title: "Ultimate Wilderness", abbreviation: "UW", code: "PZO1140")
inner_sea_world_guide = Source.find_by!(title: "Pathfinder Campaign Setting: Inner Sea World Guide", abbreviation: "PCB: ISWG", code: "PZO9226")
harrow_handbook = Source.find_by!(title: "Pathfinder Player Companion: The Harrow Handbook", abbreviation: "PPC: HH", code: "PZO9446")
custom = Source.find_by!(title: "Custom", abbreviation: "Custom", code: nil)

# //////////////////////////////////////////////////
# <-*-*-----*-*-*- Other References -*-*-*-----*-*->
# //////////////////////////////////////////////////


# ///////////////////////////////////////////
# <-*-*-----*-*-*- Feat Type -*-*-*-----*-*->
# ///////////////////////////////////////////

combat_feat = FeatType.create!(name: "Combat")

puts "Feat Types Created!"


# //////////////////////////////////////
# <-*-*-----*-*-*- Feat -*-*-*-----*-*->
# //////////////////////////////////////

weapon_finesse = Feat.create!(name: "Weapon Finesse", description: "You are trained in using your agility in melee combat, as opposed to brute strength.", blurb: "Use Dex instead of Str on attack rolls with light weapons", benefit: "With a light weapon, elven curve blade, rapier, whip, or spiked chain made for a creature of your size category, you may use your Dexterity modifier instead of your Strength modifier on attack rolls. If you carry a shield, its armor check penalty applies to your attack rolls.", special: "Natural weapons are considered light weapons.", source_id: core_rulebook.id)
  FeatFeatType.create!(feat_id: weapon_finesse.id, feat_type_id: combat_feat.id)
  weapon_finesse_feature = Feature.create!()
    FeatFeature.create!(feat_id: weapon_finesse.id, feature_id: weapon_finesse_feature.id)
    FeatureWeaponApplication.create!(feature_id: weapon_finesse_feature.id, proficiency_group: "Light", could_apply_dex_for_attack_rolls: true)

arcane_strike = Feat.create!(name: "Arcane Strike", description: "As a swift action, you can imbue your weapons with a fraction of your power. For 1 round, your weapons deal +1 damage and are treated as magic for the purpose of overcoming damage reduction. For every five caster levels you possess, this bonus increases by +1, to a maximum of +5 at 20th level.", blurb: "You draw upon your arcane power to enhance your weapons with magical energy.", prerequisite: "Ability to cast arcane spells.", source_id:  core_rulebook.id)
  FeatFeatType.create!(feat_id: arcane_strike.id, feat_type_id: combat_feat.id)

deadly_dealer = Feat.create!(name: "Deadly Dealer", description: "You can throw a card as though it were a dart, with the same damage, range, and other features. You must use the Arcane Strike feat when throwing a card in this way, or else the card lacks the magical force and precision to deal lethal damage. A card is destroyed when thrown in this way.

Harrow cards are treated as masterwork weapons when thrown using this feat, but are still destroyed after they are thrown. A harrow deck can no longer be used as a fortune-telling device after even a single card is thrown.

A spellcaster with this feat can enhance a deck of cards as though it were a ranged weapon with 54 pieces of ammunition. This enhancement functions only when used in tandem with this feat, and has no affect on any other way the cards might be used.

Only a character who possesses this feat can use an enhanced deck of cards; she must still use the Arcane Strike feat to activate the cards’ enhancement.", blurb: "Your skill with handling a deck and your arcane talents allow you to turn mundane cards into weapons.", prerequisite: "Arcane Strike, Sleight of Hand 5 ranks.", source_id: harrow_handbook.id)

harrowed = Feat.create!(name: "Harrowed", description: "You get a +1 bonus on all Will saves made to resist enchantment effects. Once per day, you may draw a card from a Harrow deck you own. At any one time for the rest of that day, you may apply a +2 bonus on any d20 roll modified by the card’s suit. For example, if you drew a card from the suit of Dexterity, you could apply this +2 bonus on an Initiative check, a Reflex save, a Dexterity-based skill check, or a ranged attack roll. You may assign this +2 bonus after you make the roll, but you must do so before you know whether the roll was a success or not.", blurb: "Numerous Harrow readings early in your life seem to have hit the mark precisely, increasing your belief that you are destined for a specific purpose in life.", source_id: inner_sea_world_guide.id)

realistic_likeness = Feat.create!(name: "Realistic Likeness", description: "You can precisely mimic the physical features of any individual you have encountered. When you use your racial change shape ability, you can attempt to take the form of an individual, granting you a +10 circumstance bonus on Disguise checks made to fool others with your impersonation.", blurb: "When you are in human form, you can take the shape of a specific individual.", prerequisite: "Kitsune", source_id: advanced_race_guide.id)

point_blank_shot = Feat.create!(name: "Point-Blank Shot", description: "You get a +1 bonus on attack and damage rolls with ranged weapons at ranges of up to 30 feet.", blurb: "You are especially accurate when making ranged attacks against close targets.", source_id: core_rulebook.id)

precise_shot = Feat.create!(name: "Precise Shot", description: "You can shoot or throw ranged weapons at an opponent engaged in melee without taking the standard –4 penalty on your attack roll.

Note: Two characters are engaged in melee if they are enemies of each other and either threatens the other.", blurb: "You are adept at firing ranged attacks into melee.", prerequisite: "Point-Blank Shot", source_id: core_rulebook.id)


puts "Feats Created!"
