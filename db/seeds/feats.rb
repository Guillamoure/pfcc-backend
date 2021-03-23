Feat.destroy_all
FeatType.destroy_all

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

fleet = Feat.create!(name: "Fleet", description: "While you are wearing light or no armor, your base speed increases by 5 feet. You lose the benefits of this feat if you carry a medium or heavy load.", blurb: "You are faster than most.", special: "You can take this feat multiple times. The effects stack.", source_id: core_rulebook.id)

endurance = Feat.create!(name: "Endurance", description: "You gain a +4 bonus on the following checks and saves: Swim checks made to resist nonlethal damage from exhaustion; Constitution checks made to continue running; Constitution checks made to avoid nonlethal damage from a forced march; Constitution checks made to hold your breath; Constitution checks made to avoid nonlethal damage from starvation or thirst; Fortitude saves made to avoid nonlethal damage from hot or cold environments; and Fortitude saves made to resist damage from suffocation.

You may sleep in light or medium armor without becoming fatigued.", blurb: "Harsh conditions or long exertions do not easily tire you.", source_id: core_rulebook.id)

improved_initiative = Feat.create!(name: "Improved Initiative", description: "You get a +4 bonus on initiative checks.", blurb: "Your quick reflexes allow you to react rapidly to danger.", source_id: core_rulebook.id)
  FeatFeatType.create!(feat_id: improved_initiative.id, feat_type_id: combat_feat.id)

toughness = Feat.create!(name: "Toughness", description: "You gain +3 hit points. For every Hit Die you possess beyond 3, you gain an additional +1 hit point. If you have more than 3 Hit Dice, you gain +1 hit points whenever you gain a Hit Die (such as when you gain a level).", blurb: "You have enhanced physical stamina.", source_id: core_rulebook.id)

deadly_aim = Feat.create!(name: "Deadly Aim", description: "You can choose to take a –1 penalty on all ranged attack rolls to gain a +2 bonus on all ranged damage rolls. When your base attack bonus reaches +4, and every +4 thereafter, the penalty increases by –1 and the bonus to damage increases by +2. You must choose to use this feat before making an attack roll and its effects last until your next turn. The bonus damage does not apply to touch attacks or effects that do not deal hit point damage.", blurb: "You can make exceptionally deadly ranged attacks by pinpointing a foe’s weak spot, at the expense of making the attack less likely to succeed.", prerequisite: "Dex 13, base attack bonus +1.", source_id: core_rulebook.id)
  FeatFeatType.create!(feat_id: deadly_aim.id, feat_type_id: combat_feat.id)
  deadly_aim_feature = Feature.create!(action_id: free.id)
    FeatFeature.create!(feat_id: deadly_aim.id, feature_id: deadly_aim_feature.id)
    FeatureUsage.create!(feature_id: deadly_aim_feature.id, limit_frequency: "Round")
    FeatureStatBonus.create!(feature_id: deadly_aim_feature.id, statistic: "Attack", specific_statistic: "range", bonus: -1, duration: "temporary", bonus_type: "untyped", bonus_multiplier: "base attack bonus", bonus_multiplier_increase_based_on_count: 4)
    FeatureStatBonus.create!(feature_id: deadly_aim_feature.id, statistic: "Damage", specific_statistic: "range", bonus: 2, duration: "temporary", bonus_type: "untyped", bonus_multiplier: "base attack bonus", bonus_multiplier_increase_based_on_count: 4)

diehard = Feat.create!(name: "Diehard", benefit: "When your hit point total is below 0, but you are not dead, you automatically stabilize. You do not need to make a Constitution check each round to avoid losing additional hit points. You may choose to act as if you were disabled, rather than dying. You must make this decision as soon as you are reduced to negative hit points (even if it isn’t your turn). If you do not choose to act as if you were disabled, you immediately fall unconscious.

When using this feat, you are staggered. You can take a move action without further injuring yourself, but if you perform any standard action (or any other action deemed as strenuous, including some swift actions, such as casting a quickened spell) you take 1 point of damage after completing the act. If your negative hit points are equal to or greater than your Constitution score, you immediately die.", blurb: "You are especially hard to kill. Not only do your wounds automatically stabilize when grievously injured, but you can remain conscious and continue to act even at death’s door.", prerequisite: "Endurance", normal: "A character without this feat who is reduced to negative hit points is unconscious and dying.", source_id: core_rulebook.id)

dervish_dance = Feat.create!(name: "Dervish Dance", benefit: "When wielding a scimitar with one hand, you can use your Dexterity modifier instead of your Strength modifier on melee attack and damage rolls. You treat the scimitar as a one-handed piercing weapon for all feats and class abilities that require such a weapon (such as a duelist’s precise strike ability). The scimitar must be for a creature of your size. You cannot use this feat if you are carrying a weapon or shield in your off hand.", blurb: "You have learned to turn your speed into power, even with a heavier blade.", prerequisite: "Dexterity 13, Weapon Finesse, Perform (dance) 2 ranks, proficient with scimitar.", source_id: inner_sea_world_guide.id)
  FeatFeatType.create!(feat_id: dervish_dance.id, feat_type_id: combat_feat.id)

spell_focus = Feat.create!(name: "Spell Focus", benefit: "Add +1 to the Difficulty Class for all saving throws against spells from the school of magic you select.", blurb: "Choose a school of magic. Any spells you cast of that school are more difficult to resist.", special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a new school of magic.", source_id: core_rulebook.id)

skill_focus = Feat.create!(name: "Skill Focus", benefit: "You get a +3 bonus on all checks involving the chosen skill. If you have 10 or more ranks in that skill, this bonus increases to +6.", blurb: "Choose a skill. You are particularly adept at that skill.", special: "You can gain this feat multiple times. Its effects do not stack. Each time you take the feat, it applies to a new skill.", source_id: core_rulebook.id)

augment_summoning = Feat.create!(name: "Augment Summoning", benefit: "Each creature you conjure with any summon spell gains a +4 enhancement bonus to Strength and Constitution for the duration of the spell that summoned it.", blurb: "Your summoned creatures are more powerful and robust.", prerequisite: "Spell Focus (conjuration).", source_id: core_rulebook.id)

run = Feat.create!(name: "Run", benefit: "When running, you move five times your normal speed (if wearing medium, light, or no armor and carrying no more than a medium load) or four times your speed (if wearing heavy armor or carrying a heavy load). If you make a jump after a running start (see Acrobatics), you gain a +4 bonus on your Acrobatics check. While running, you retain your Dexterity bonus to your Armor Class.", blurb: "You are swift of foot.", normal: "You move four times your speed while running (if wearing medium, light, or no armor and carrying no more than a medium load) or three times your speed (if wearing heavy armor or carrying a heavy load), and you lose your Dexterity bonus to AC.", source_id: core_rulebook.id)

puts "Feats Created!"
