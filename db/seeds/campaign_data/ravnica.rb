ravnica_custom = Skillset.find_by!(name: "Ravnica Custom")


admin = User.find_or_create_by!(username: "jack", admin: true)
clare_voyance = User.create!(username: "clare_voyance", password: "password", admin: false, skillset_id: ravnica_custom.id)
adam1 = User.create!(username: "Adam1", password: "password", admin: false, skillset_id: ravnica_custom.id)
bluegdec1 = User.create!(username: "bluegdec1", password: "password", admin: false, skillset_id: ravnica_custom.id)
tdubb = User.create!(username: "TDUBB", password: "password", admin: false, skillset_id: ravnica_custom.id)
nlscott744 = User.create!(username: "nlscott744", password: "password", admin: false, skillset_id: ravnica_custom.id)
snegerj = User.create!(username: "snegerj", password: "password", admin: false, skillset_id: ravnica_custom.id)
peabug = User.create!(username: "peabug", password: "password", admin: false, skillset_id: ravnica_custom.id)
colehilsmith = User.create!(username: "Colehilsmith", password: "password", admin: false, skillset_id: ravnica_custom.id)

oum_calendar = Calendar.find_by!(name: "Oum Calendar", leap_year: false)




ravnica_campaign = Campaign.create!(name: "Ravnica", calendar_id: oum_calendar.id, dm_id: admin.id, skillset_id: ravnica_custom.id, starting_level: 2, websocket_code: UUID.new.generate, theme: "Espionage, social intrigue. There will combat, because that's the escapism we are here for, but I would love have just as much intrigue as combat. Whether that's finding out secrets at an exclusive party you snuck into, hiding behind a wall to catch your enemy in their bedroom, or planting evidence while you are currying favor with a warlord.

You are going to be a scrappy band of ne'er-do-wells, who are doing jobs for their sake or at the behest of others, where you may very well be underleveled or outmanned in a room. Cleverness, wit, and knowing when to run will be a good part of this one/two/three shot / campaign.", setting: "Ravnica: City of Guilds

10,000 years ago, a Guildpact was signed that prevented the ten guilds of Ravnica from warring each other to prevent the plane from being destroyed and consumed. The Pact outlined the roles that each guild was to have within the city. However, the guilds continue to be at odds with each other due to their base differences.", custom_notes: "Select a guild to be a part of. You automatically have proficiency with Knowledge checks for that guild, but you will have to put ranks into that skill in order to reflect your proficiency.")



majestik = Character.create!(name: "Majestik", user_id: nlscott744.id, strength: 15, dexterity: 15, constitution: 15, intelligence: 16, wisdom: 10, charisma: 9, race_id: Race.find_by!(name: "Tiefling").id, skillset_id: ravnica_custom.id, alignment: "Chaotic Evil", campaign_id: ravnica_campaign.id, description: "Hot. (literally)", pp: 5, gp: 95, sp: 5)

  CharacterKlassArchetype.create!(character_id: majestik.id, klass_archetype_id: KlassArchetype.find_by!(name: "Cartomancer").id)
  CharacterAlternateRacialTrait.create!(character_id: majestik.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Prehensile Tail").id)
  CharacterAlternateRacialTrait.create!(character_id: majestik.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Scaled Skin").id)

  CharacterSkillsetSkill.create!(character_id: majestik.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Acrobatics").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: majestik.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Heal").id, ranks: 3)
  CharacterSkillsetSkill.create!(character_id: majestik.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Perception").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: majestik.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Spellcraft").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: majestik.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Society").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: majestik.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Religion").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: majestik.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id, ranks: 2, detail: "alchemy")
  CharacterSkillsetSkill.create!(character_id: majestik.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Knowledge").id, ranks: 3, detail: "rakdos")
  CharacterSkillsetSkill.create!(character_id: majestik.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Perform").id, ranks: 2, detail: "oratory")
  CharacterSkillsetSkill.create!(character_id: majestik.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Profession").id, ranks: 2, detail: "fortune teller")


  CharacterKlass.create!(character_id: majestik.id, klass_id: Klass.find_by!(name: "Witch").id, hp: 6, feat_id: Feat.find_by!(name: "Harrowed").id, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
    CharacterKlassSpecialization.create!(character_id: majestik.id, klass_feature_klass_specialization_id: KlassSpecialization.find_by!(name: "Trickery").id)
    CharacterKlassFeatureOption.create!(character_id: majestik.id, feature_option_id: FeatureOption.find_by!(name: "Evil Eye").id, level: 1)
  CharacterKlass.create!(character_id: majestik.id, klass_id: Klass.find_by!(name: "Witch").id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
  CharacterKlass.create!(character_id: majestik.id, klass_id: Klass.find_by!(name: "Witch").id, hp: 4, feat_id: Feat.find_by!(name: "Extra Hex"), ability_score_improvement: nil, level: 3, favored_klass_bonus_id: nil)

  CharacterArmor.create!(character_id: majestik.id, armor_id: Armor.find_by!(name: "Haramaki").id, masterwork: false, discovered: true, known: true, equipped: true)
  CharacterWeapon.create!(character_id: majestik.id, weapon_id: Weapon.find_by!(name: "Sickle").id, masterwork: false, discovered: true, known: true, name: "")

  CharacterItem.create!(character_id: majestik.id, item_id: Item.find_by!(name: "Silk Rope").id, discovered: true)
  CharacterItem.create!(character_id: majestik.id, item_id: Item.find_by!(name: "Journal").id, discovered: true)
  CharacterItem.create!(character_id: majestik.id, item_id: Item.find_by!(name: "Ink").id, discovered: true)
  CharacterItem.create!(character_id: majestik.id, item_id: Item.find_by!(name: "Inkpen").id, discovered: true)
  CharacterItem.create!(character_id: majestik.id, item_id: Item.find_by!(name: "Charcoal").id, discovered: true)
  CharacterItem.create!(character_id: majestik.id, item_id: Item.find_by!(name: "Chalk").id, discovered: true)
  CharacterItem.create!(character_id: majestik.id, item_id: Item.find_by!(name: "Cards").id, discovered: true)
  CharacterItem.create!(character_id: majestik.id, item_id: Item.find_by!(name: "Harrow Deck").id, discovered: true)
  CharacterItem.create!(character_id: majestik.id, item_id: Item.find_by!(name: "Signet Ring").id, discovered: true)
  CharacterItem.create!(character_id: majestik.id, item_id: Item.find_by!(name: "Entertainer's Outfit").id, discovered: true)
  CharacterItem.create!(character_id: majestik.id, item_id: Item.find_by!(name: "Belt Pouch").id, discovered: true)
  CharacterItem.create!(character_id: majestik.id, item_id: Item.find_by!(name: "Spell Components Pouch").id, discovered: true)
  CharacterItem.create!(character_id: majestik.id, item_id: Item.find_by!(name: "Flask").id, discovered: true)
  CharacterItem.create!(character_id: majestik.id, item_id: Item.find_by!(name: "Harrow Carrying Case").id, discovered: true)
  CharacterItem.create!(character_id: majestik.id, item_id: Item.find_by!(name: "Harrow Carrying Case").id, discovered: true)
  CharacterItem.create!(character_id: majestik.id, item_id: Item.find_by!(name: "Rakdos Insignia Charm").id, discovered: true)
  CharacterMagicItem.create!(character_id: majestik.id, magic_item_id: MagicItem.find_by!(name: "Hand of the Mage").id, discovered: true, known: true)


  witch_spellcasting = FeatureSpellcasting.find_by!(feature_id: KlassFeature.find_by!(klass_id: Klass.find_by!(name: "Witch").id, name: "Spells").features[0].id)
  witch_spell_list = SpellList.find_by!(name: "Witch Spells List")

  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Arcane Mark").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Bleed").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Dancing Lights").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Daze").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Detect Magic").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Detect Poison").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Guidance").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Light").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Mending").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Message").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Putrefy Food and Drink").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Read Magic").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Resistance").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Spark").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Stabilize").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Touch of Fatigue").id).id)

  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Blend").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Burning Hands").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Cause Fear").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Command").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Comprehend Languages").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Cure Light Wounds").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Mudball").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Ray of Enfeeblement").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Reduce Person").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Animate Rope").id).id)

  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Hold Person").id).id)
  CharacterKnownSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Molten Orb").id).id)

  PreparedSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Bleed").id).id, spell_level: 0, cast: false, bonus_spell: nil, )
  PreparedSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Daze").id).id, spell_level: 0, cast: false, bonus_spell: nil, )
  PreparedSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Detect Magic").id).id, spell_level: 0, cast: false, bonus_spell: nil, )
  PreparedSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Mending").id).id, spell_level: 0, cast: false, bonus_spell: nil, )
  PreparedSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Message").id).id, spell_level: 0, cast: false, bonus_spell: nil, )
  PreparedSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Hold Person").id).id, spell_level: 2, cast: false, bonus_spell: nil, )
  PreparedSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Cure Light Wounds").id).id, spell_level: 1, cast: false, bonus_spell: nil, )
  PreparedSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Burning Hands").id).id, spell_level: 1, cast: false, bonus_spell: nil, )
  PreparedSpell.create!(character_id: majestik.id, feature_spellcasting_id: witch_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: witch_spell_list.id, spell_id: Spell.find_by!(name: "Command").id).id, spell_level: 2, cast: false, bonus_spell: nil, )


  print "Majestik created! \r"

fire_roasted_tomatoes = Character.create!(name: "Fire-Roasted Tomatoes", user_id: clare_voyance.id, strength: 10, dexterity: 12, constitution: 14, intelligence: 10, wisdom: 4, charisma: 9, race_id: Race.find_by!(name: "Vine Leshy").id, skillset_id: ravnica_custom.id, alignment: "", campaign_id: ravnica_campaign.id, description: "", height: "2'3\"", weight: "9 lbs", pp: 237, gp: 2110, sp: 7, lethal_damage: 7)

  CharacterAlternateRacialTrait.create!(character_id: fire_roasted_tomatoes.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Grapevine").id)
  CharacterAlternateRacialTrait.create!(character_id: fire_roasted_tomatoes.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Swamp Leshy").id)
  CharacterKlassArchetype.create!(character_id: fire_roasted_tomatoes.id, klass_archetype_id: KlassArchetype.find_by!(name: "Carnivalist").id)
  CharacterKlassArchetype.create!(character_id: fire_roasted_tomatoes.id, klass_archetype_id: KlassArchetype.find_by!(name: "Snoop").id)
  CharacterCreature.create!(character_id: fire_roasted_tomatoes.id, creature_id: Creature.find_by!(name: "Chicken").id, relationship: "familiar", feature_id: KlassArchetypeFeature.find_by!(name: "Familiar", klass_archetype_id: KlassArchetype.find_by!(name: "Carnivalist").id).features[0].id, name: "Chicken Pot Pie")

  CharacterKlass.create!(character_id: fire_roasted_tomatoes.id, klass_id: Klass.find_by!(name: "Kineticist").id, hp: 8, feat_id: Feat.find_by!(name: "Skill Focus").id, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
    CharacterKlassSpecialization.create!(character_id: fire_roasted_tomatoes.id, klass_feature_klass_specialization_id: KlassSpecialization.find_by!(name: "Fire").id)
  CharacterKlass.create!(character_id: fire_roasted_tomatoes.id, klass_id: Klass.find_by!(name: "Kineticist").id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
  CharacterKlass.create!(character_id: fire_roasted_tomatoes.id, klass_id: Klass.find_by!(name: "Rogue").id, hp: 8, feat_id: Feat.find_by!(name: "Toughness").id, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: nil)

  CharacterSkillsetSkill.create!(character_id: fire_roasted_tomatoes.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Profession").id, ranks: 3, detail: "chef")
  CharacterSkillsetSkill.create!(character_id: fire_roasted_tomatoes.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Nature").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: fire_roasted_tomatoes.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Linguistics").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: fire_roasted_tomatoes.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Survival").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: fire_roasted_tomatoes.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id, ranks: 1, detail: "woodcarving")
  CharacterSkillsetSkill.create!(character_id: fire_roasted_tomatoes.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Handle Animal").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: fire_roasted_tomatoes.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Perception").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: fire_roasted_tomatoes.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Knowledge").id, ranks: 1, detail: "golgari")

  CharacterWeapon.create!(character_id: fire_roasted_tomatoes.id, weapon_id: Weapon.find_by!(name: "Traveling Kettle").id, masterwork: true, discovered: true, known: true, name: "")
  CharacterWeapon.create!(character_id: fire_roasted_tomatoes.id, weapon_id: Weapon.find_by!(name: "Dagger").id, masterwork: false, discovered: true, known: true, name: "Chef's Knife", description: "Decently sharp, single-edged knife. Used primarily for preparing meals.")
  CharacterArmor.create!(character_id: fire_roasted_tomatoes.id, armor_id: Armor.find_by!(name: "Leaf Armor").id, masterwork: true, discovered: true, known: true, equipped: true)


  CharacterItem.create!(character_id: fire_roasted_tomatoes.id, item_id: Item.find_by!(name: "Cup").id, discovered: true)
  CharacterItem.create!(character_id: fire_roasted_tomatoes.id, item_id: Item.find_by!(name: "Masterwork Backpack").id, discovered: true)
  CharacterItem.create!(character_id: fire_roasted_tomatoes.id, item_id: Item.find_by!(name: "Bowl").id, discovered: true)
  CharacterItem.create!(character_id: fire_roasted_tomatoes.id, item_id: Item.find_by!(name: "Plate").id, discovered: true)
  CharacterItem.create!(character_id: fire_roasted_tomatoes.id, item_id: Item.find_by!(name: "Knife").id, discovered: true)
  CharacterItem.create!(character_id: fire_roasted_tomatoes.id, item_id: Item.find_by!(name: "Fork").id, discovered: true)
  CharacterItem.create!(character_id: fire_roasted_tomatoes.id, item_id: Item.find_by!(name: "Spoon").id, discovered: true)
  CharacterItem.create!(character_id: fire_roasted_tomatoes.id, item_id: Item.find_by!(name: "Garbage Mat").id, discovered: true)
  CharacterItem.create!(character_id: fire_roasted_tomatoes.id, item_id: Item.find_by!(name: "Olive Oil").id, discovered: true)
  CharacterItem.create!(character_id: fire_roasted_tomatoes.id, item_id: Item.find_by!(name: "Common Pot").id, discovered: true)
  CharacterItem.create!(character_id: fire_roasted_tomatoes.id, item_id: Item.find_by!(name: "Golgari Insignia Charm").id, discovered: true)

  CharacterMagicItem.create!(character_id: fire_roasted_tomatoes.id, magic_item_id: MagicItem.find_by!(name: "Martyr's Tear").id, discovered: true, known: true)




  print "Fire-Roasted Tomatoes created! \r"

iyugi = Character.create!(name: "Iyugi", user_id: adam1.id, strength: 10, dexterity: 16, constitution: 16, intelligence: 13, wisdom: 15, charisma: 12, race_id: Race.find_by!(name: "Kitsune").id, skillset_id: ravnica_custom.id, alignment: "Neutral", campaign_id: ravnica_campaign.id, description: "", deity: "Pharasma", pp: 65, gp: 117)

  CharacterAlternateRacialTrait.create!(character_id: iyugi.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Fast Shifter").id)
  CharacterKlassArchetype.create!(character_id: iyugi.id, klass_archetype_id: KlassArchetype.find_by!(name: "Scout").id)
  CharacterKlassArchetype.create!(character_id: iyugi.id, klass_archetype_id: KlassArchetype.find_by!(name: "Knife Master").id)

  CharacterKlass.create!(character_id: iyugi.id, klass_id: Klass.find_by!(name: "Rogue").id, hp: 8, feat_id: Feat.find_by!(name: "Realistic Likeness").id, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
  CharacterKlass.create!(character_id: iyugi.id, klass_id: Klass.find_by!(name: "Rogue").id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
    CharacterKlassFeatureOption.create!(character_id: iyugi.id, feature_option_id: FeatureOption.find_by!(name: "Combat Trick").id, level: 2)
  CharacterKlass.create!(character_id: iyugi.id, klass_id: Klass.find_by!(name: "Rogue").id, hp: 5, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: nil)


  CharacterSkillsetSkill.create!(character_id: iyugi.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Acrobatics").id, ranks: 3)
  CharacterSkillsetSkill.create!(character_id: iyugi.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Bluff").id, ranks: 3)
  CharacterSkillsetSkill.create!(character_id: iyugi.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Disguise").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: iyugi.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Diplomacy").id, ranks: 3)
  CharacterSkillsetSkill.create!(character_id: iyugi.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Finesse").id, ranks: 3)
  CharacterSkillsetSkill.create!(character_id: iyugi.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Investigation").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: iyugi.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Knowledge").id, ranks: 2, detail: "dimir")
  CharacterSkillsetSkill.create!(character_id: iyugi.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Perception").id, ranks: 3)
  CharacterSkillsetSkill.create!(character_id: iyugi.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Sense Motive").id, ranks: 3)
  CharacterSkillsetSkill.create!(character_id: iyugi.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Society").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: iyugi.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Stealth").id, ranks: 3)

  CharacterWeapon.create!(character_id: iyugi.id, weapon_id: Weapon.find_by!(name: "Dagger").id, masterwork: false, discovered: true, known: true, name: "")
  CharacterWeapon.create!(character_id: iyugi.id, weapon_id: Weapon.find_by!(name: "Dagger").id, masterwork: false, discovered: true, known: true, name: "")
  CharacterWeapon.create!(character_id: iyugi.id, weapon_id: Weapon.find_by!(name: "Kerambit").id, masterwork: false, discovered: true, known: true, name: "")
  CharacterWeapon.create!(character_id: iyugi.id, weapon_id: Weapon.find_by!(name: "Gladius").id, masterwork: true, discovered: true, known: true, name: "Boros Bright Gladius", description: "stocky, ornately carved shortsword with gold and red motifs. Hilt is carved to look like sunbeans. Has an inscription along the fuller.")
  CharacterArmor.create!(character_id: iyugi.id, armor_id: Armor.find_by!(name: "Darkleaf Cloth Studded Leather").id, masterwork: true, discovered: true, known: true, equipped: true)

  CharacterMagicItem.create!(character_id: iyugi.id, magic_item_id: MagicItem.find_by!(name: "Sleeves of Many Garments").id, discovered: true, known: true)

  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Peasant's Outfit").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Masterwork Thieves' Tools").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Silk Rope").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Entertainer's Outfit").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Marbles").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Whiskey Bottle").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Lamp Oil").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Pack of Cloves").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Tindertwig").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Tindertwig").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Tindertwig").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Tindertwig").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Tindertwig").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Tindertwig").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Tindertwig").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Tindertwig").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Tindertwig").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Tindertwig").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Iron Holy Symbol").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Magnet").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Ink").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Inkpen").id, discovered: true)
  CharacterItem.create!(character_id: iyugi.id, item_id: Item.find_by!(name: "Dimir Insignia Charm").id, discovered: true)


  print "Iyugi created! \r"

ildre = Character.create!(name: "Ildre", user_id: snegerj.id, strength: 10, dexterity: 13, constitution: 13, intelligence: 16, wisdom: 12, charisma: 15, race_id: Race.find_by!(name: "Human").id, skillset_id: ravnica_custom.id, alignment: "Chaotic Neutral", campaign_id: ravnica_campaign.id, any_bonus: "intelligence", pp: 177, gp: 7, sp: 7)

  CharacterAlternateRacialTrait.create!(character_id: ildre.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Innovative").id)
  CharacterKlassArchetype.create!(character_id: ildre.id, klass_archetype_id: KlassArchetype.find_by!(name: "Occultist").id)

  CharacterKlass.create!(character_id: ildre.id, klass_id: Klass.find_by!(name: "Arcanist").id, hp: 6, feat_id: Feat.find_by!(name: "Spell Focus").id, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
  CharacterKlass.create!(character_id: ildre.id, klass_id: Klass.find_by!(name: "Arcanist").id, hp: 3, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
  CharacterKlass.create!(character_id: ildre.id, klass_id: Klass.find_by!(name: "Arcanist").id, hp: 4, feat_id: Feat.find_by!(name: "Augment Summoning").id, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: nil)

  CharacterSkillsetSkill.create!(character_id: ildre.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id, ranks: 1, detail: "blacksmithing")
  CharacterSkillsetSkill.create!(character_id: ildre.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id, ranks: 2, detail: "alchemy")
  CharacterSkillsetSkill.create!(character_id: ildre.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Diplomacy").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: ildre.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Finesse").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: ildre.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Investigation").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: ildre.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Knowledge").id, ranks: 2, detail: "izzet")
  CharacterSkillsetSkill.create!(character_id: ildre.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Linguistics").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: ildre.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Nature").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: ildre.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Perception").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: ildre.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Religion").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: ildre.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Spellcraft", untrained: true).id, ranks: 3)

  CharacterWeapon.create!(character_id: ildre.id, weapon_id: Weapon.find_by!(name: "Quarterstaff").id, masterwork: true, discovered: true, known: true, name: "")
  CharacterWeapon.create!(character_id: ildre.id, weapon_id: Weapon.find_by!(name: "Light Crossbow").id, masterwork: true, discovered: true, known: true, name: "Cerulean Hope", description: "hopefully cerulean")

  CharacterItem.create!(character_id: ildre.id, item_id: Item.find_by!(name: "Blacksmith Anvil").id, discovered: true)
  CharacterItem.create!(character_id: ildre.id, item_id: Item.find_by!(name: "Alchemist's Lab").id, discovered: true)
  CharacterItem.create!(character_id: ildre.id, item_id: Item.find_by!(name: "Izzet Insignia Charm").id, discovered: true)
  CharacterWand.create!(character_id: ildre.id, spell_id: Spell.find_by!(name: "Sleep").id, discovered: true, known: true, charges: 4, caster_level: 1, description: "Three gnarled roots twisted into a form, with 2 leafy sprigs flowering from the tip")


  arcanist_spellcasting = FeatureSpellcasting.find_by!(feature_id: KlassFeature.find_by!(klass_id: Klass.find_by!(name: "Arcanist").id, name: "Spells").features[0].id)
    arcanist_spell_list = SpellList.find_by!(name: "Wizard Spells List")

    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Resistance").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Acid Splash").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Detect Magic").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Detect Poison").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Read Magic").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Daze").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Dancing Lights").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Flare").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Light").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Ray of Frost").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Spark").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Ghost Sound").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Bleed").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Disrupt Undead").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Touch of Fatigue").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Mage Hand").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Mending").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Message").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Open/Close").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Arcane Mark").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Prestidigitation").id).id)

    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Unseen Servant").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Mage Armor").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Grease").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Magic Missile").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Color Spray").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Shield").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Burning Disarm").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Ray of Enfeeblement").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Enlarge Person").id).id)
    CharacterKnownSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Silent Image").id).id)


    PreparedSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Shield").id).id, spell_level: 1, cast: false, bonus_spell: nil, )
    PreparedSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Color Spray").id).id, spell_level: 1, cast: false, bonus_spell: nil, )
    PreparedSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Grease").id).id, spell_level: 1, cast: false, bonus_spell: nil, )
    PreparedSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Magic Missile").id).id, spell_level: 1, cast: false, bonus_spell: nil, )
    PreparedSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Prestidigitation").id).id, spell_level: 0, cast: false, bonus_spell: nil, )
    PreparedSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Dancing Lights").id).id, spell_level: 0, cast: false, bonus_spell: nil, )
    PreparedSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Mage Hand").id).id, spell_level: 0, cast: false, bonus_spell: nil, )
    PreparedSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Bleed").id).id, spell_level: 0, cast: false, bonus_spell: nil, )
    PreparedSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Touch of Fatigue").id).id, spell_level: 0, cast: false, bonus_spell: nil, )
    PreparedSpell.create!(character_id: ildre.id, feature_spellcasting_id: arcanist_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: arcanist_spell_list.id, spell_id: Spell.find_by!(name: "Message").id).id, spell_level: 0, cast: false, bonus_spell: nil, )

  print "Ildre created! \r"

natesse = Character.create!(name: "Natesse", user_id: bluegdec1.id, strength: 14, dexterity: 17, constitution: 15, intelligence: 17, wisdom: 12, charisma: 8, race_id: Race.find_by!(name: "Android").id, skillset_id: ravnica_custom.id, alignment: "Neutral Good", campaign_id: ravnica_campaign.id, age: 4, pp: 240, gp: 129)

  CharacterKlassArchetype.create!(character_id: natesse.id, klass_archetype_id: KlassArchetype.find_by!(name: "Bladebound").id)


  CharacterKlass.create!(character_id: natesse.id, klass_id: Klass.find_by!(name: "Magus").id, hp: 8, feat_id: Feat.find_by!(name: "Weapon Finesse").id, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
  CharacterKlass.create!(character_id: natesse.id, klass_id: Klass.find_by!(name: "Magus").id, hp: 2, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
  CharacterKlass.create!(character_id: natesse.id, klass_id: Klass.find_by!(name: "Magus").id, hp: 2, feat_id: Feat.find_by!(name: "Dervish Dance").id, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: nil)

  CharacterSkillsetSkill.create!(character_id: natesse.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Acrobatics").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: natesse.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Investigation").id, ranks: 3)
  CharacterSkillsetSkill.create!(character_id: natesse.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Intimidate").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: natesse.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Knowledge").id, ranks: 2, detail: "Izzet")
  CharacterSkillsetSkill.create!(character_id: natesse.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Perception").id, ranks: 3)
  CharacterSkillsetSkill.create!(character_id: natesse.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Perform").id, ranks: 2, detail: "Dance")
  CharacterSkillsetSkill.create!(character_id: natesse.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Spellcraft", untrained: true).id, ranks: 3)
  CharacterSkillsetSkill.create!(character_id: natesse.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Stealth").id, ranks: 3)

  CharacterWeapon.create!(character_id: natesse.id, weapon_id: Weapon.find_by!(name: "Scimitar").id, masterwork: false, discovered: true, known: true, name: "")
  CharacterArmor.create!(character_id: natesse.id, armor_id: Armor.find_by!(name: "Studded Leather").id, masterwork: false, discovered: true, known: true, equipped: true)

  CharacterItem.create!(character_id: natesse.id, item_id: Item.find_by!(name: "Spell Components Pouch").id, discovered: true)
  CharacterItem.create!(character_id: natesse.id, item_id: Item.find_by!(name: "Bedroll").id, discovered: true)
  CharacterItem.create!(character_id: natesse.id, item_id: Item.find_by!(name: "Blanket").id, discovered: true)
  CharacterItem.create!(character_id: natesse.id, item_id: Item.find_by!(name: "Flint and Steel").id, discovered: true)
  CharacterItem.create!(character_id: natesse.id, item_id: Item.find_by!(name: "Izzet Insignia Charm").id, discovered: true)
  CharacterMagicItem.create!(character_id: natesse.id, magic_item_id: MagicItem.find_by!(name: "Traveler's Any-Tool").id, discovered: true, known: true)
  CharacterMagicItem.create!(character_id: natesse.id, magic_item_id: MagicItem.find_by!(name: "Cloak of Resistance +1").id, discovered: true, known: true)



  magus_spellcasting = FeatureSpellcasting.find_by!(feature_id: KlassFeature.find_by!(klass_id: Klass.find_by!(name: "Magus").id, name: "Spells").features[0].id)
    magus_spell_list = SpellList.find_by!(name: "Magus Spells List")

    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Acid Splash").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Arcane Mark").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Dancing Lights").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Daze").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Detect Magic").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Disrupt Undead").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Flare").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Ghost Sound").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Light").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Mage Hand").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Open/Close").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Prestidigitation").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Ray of Frost").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Read Magic").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Spark").id).id)

    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Grease").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Frostbite").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Shocking Grasp").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Color Spray").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Deivon's Parry").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Fallback Strategy").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Shield").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Vanish").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "True Strike").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Glue Seal").id).id)
    CharacterKnownSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Silent Image").id).id)

    PreparedSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Detect Magic").id).id, spell_level: 0, cast: false, bonus_spell: nil)
    PreparedSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Mage Hand").id).id, spell_level: 0, cast: false, bonus_spell: nil)
    PreparedSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Read Magic").id).id, spell_level: 0, cast: false, bonus_spell: nil)
    PreparedSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Open/Close").id).id, spell_level: 0, cast: false, bonus_spell: nil)
    PreparedSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Acid Splash").id).id, spell_level: 0, cast: false, bonus_spell: nil)
    PreparedSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Deivon's Parry").id).id, spell_level: 1, cast: false, bonus_spell: nil)
    PreparedSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Fallback Strategy").id).id, spell_level: 1, cast: false, bonus_spell: nil)
    PreparedSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Shocking Grasp").id).id, spell_level: 1, cast: false, bonus_spell: nil)
    PreparedSpell.create!(character_id: natesse.id, feature_spellcasting_id: magus_spellcasting.id, spell_list_spell_id: SpellListSpell.find_by!(spell_list_id: magus_spell_list.id, spell_id: Spell.find_by!(name: "Vanish").id).id, spell_level: 1, cast: false, bonus_spell: nil)


    print "Natesse created! \r"


dzeyn = Character.create!(name: "Dz'eyn", user_id: tdubb.id, strength: 15, dexterity: 17, constitution: 15, intelligence: 9, wisdom: 16, charisma: 12, race_id: Race.find_by!(name: "Grippli").id, skillset_id: ravnica_custom.id, alignment: "Neutral Evil", campaign_id: ravnica_campaign.id, height: "2'", weight: "30 lbs", age: 14, pp: 162, gp: 83, sp: 8)

  CharacterAlternateRacialTrait.create!(character_id: dzeyn.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Toxic Skin").id)

  CharacterKlass.create!(character_id: dzeyn.id, klass_id: Klass.find_by!(name: "Slayer").id, hp: 10, feat_id: Feat.find_by!(name: "Point-Blank Shot").id, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
  CharacterKlass.create!(character_id: dzeyn.id, klass_id: Klass.find_by!(name: "Slayer").id, hp: 4, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
  CharacterKlass.create!(character_id: dzeyn.id, klass_id: Klass.find_by!(name: "Slayer").id, hp: 3, feat_id: Feat.find_by!(name: "Deadly Aim").id, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: nil)

  CharacterSkillsetSkill.create!(character_id: dzeyn.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Acrobatics").id, ranks: 3)
  CharacterSkillsetSkill.create!(character_id: dzeyn.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Bluff").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: dzeyn.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id, ranks: 1, detail: "Alchemy")
  CharacterSkillsetSkill.create!(character_id: dzeyn.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Finesse").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: dzeyn.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Intimidate").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: dzeyn.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Linguistics").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: dzeyn.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Perception").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: dzeyn.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Sense Motive").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: dzeyn.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Stealth").id, ranks: 2)

  CharacterWeapon.create!(character_id: dzeyn.id, weapon_id: Weapon.find_by!(name: "Dagger").id, masterwork: false, discovered: true, known: true, name: "")
  CharacterWeapon.create!(character_id: dzeyn.id, weapon_id: Weapon.find_by!(name: "Dagger").id, masterwork: false, discovered: true, known: true, name: "")
  CharacterWeapon.create!(character_id: dzeyn.id, weapon_id: Weapon.find_by!(name: "Dagger").id, masterwork: false, discovered: true, known: true, name: "")
  CharacterWeapon.create!(character_id: dzeyn.id, weapon_id: Weapon.find_by!(name: "Kunai").id, masterwork: false, discovered: true, known: true, name: "")
  CharacterWeapon.create!(character_id: dzeyn.id, weapon_id: Weapon.find_by!(name: "Kunai").id, masterwork: false, discovered: true, known: true, name: "")
  CharacterWeapon.create!(character_id: dzeyn.id, weapon_id: Weapon.find_by!(name: "Spring Blade").id, masterwork: true, discovered: true, known: true, name: "")
  CharacterWeapon.create!(character_id: dzeyn.id, weapon_id: Weapon.find_by!(name: "Light Crossbow").id, masterwork: true, discovered: true, known: true, name: "The Nightstalker", description: "it shoots things")
  CharacterWeapon.create!(character_id: dzeyn.id, weapon_id: Weapon.find_by!(name: "Crossbow Bolt").id, masterwork: false, discovered: true, known: true, name: nil, ammunition_amount: 30)
  CharacterArmor.create!(character_id: dzeyn.id, armor_id: Armor.find_by!(name: "Padded").id, masterwork: true, discovered: true, known: true, equipped: true)

  CharacterItem.create!(character_id: dzeyn.id, item_id: Item.find_by!(name: "Ivory Domino").id, discovered: true)
  CharacterItem.create!(character_id: dzeyn.id, item_id: Item.find_by!(name: "Smoke Pellet").id, discovered: true)
  CharacterItem.create!(character_id: dzeyn.id, item_id: Item.find_by!(name: "Smoke Pellet").id, discovered: true)
  CharacterItem.create!(character_id: dzeyn.id, item_id: Item.find_by!(name: "Silk Rope").id, discovered: true)
  CharacterItem.create!(character_id: dzeyn.id, item_id: Item.find_by!(name: "Vicious Caltrop").id, discovered: true)
  CharacterItem.create!(character_id: dzeyn.id, item_id: Item.find_by!(name: "Vicious Caltrop").id, discovered: true)
  CharacterItem.create!(character_id: dzeyn.id, item_id: Item.find_by!(name: "Flash Powder").id, discovered: true)
  CharacterItem.create!(character_id: dzeyn.id, item_id: Item.find_by!(name: "Flash Powder").id, discovered: true)
  CharacterItem.create!(character_id: dzeyn.id, item_id: Item.find_by!(name: "Marbles").id, discovered: true)
  CharacterItem.create!(character_id: dzeyn.id, item_id: Item.find_by!(name: "Dimir Insignia Charm").id, discovered: true)
  CharacterPoison.create!(character_id: dzeyn.id, poison_id: Poison.find_by!(name: "Arsenic").id)
  CharacterPoison.create!(character_id: dzeyn.id, poison_id: Poison.find_by!(name: "Drow Poison").id)

  print "Dz'eyn created! \r"

reverend_redwood = Character.create!(name: "Reverend Redwood", user_id: peabug.id, strength: 9, dexterity: 13, constitution: 10, intelligence: 11, wisdom: 14, charisma: 15, race_id: Race.find_by!(name: "Minotaur (Medium)").id, skillset_id: ravnica_custom.id, alignment: "Chaotic Good", campaign_id: ravnica_campaign.id, height: "", weight: "", age: 26)

  CharacterKlass.create!(character_id: reverend_redwood.id, klass_id: Klass.find_by!(name: "Sorcerer").id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
  CharacterKlass.create!(character_id: reverend_redwood.id, klass_id: Klass.find_by!(name: "Sorcerer").id, hp: 3, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)

  print "Reverend Redwood created! \r"

dink_weatherbyrst = Character.create!(name: "Dink Weatherbyrst", user_id: colehilsmith.id, strength: 16, dexterity: 8, constitution: 14, intelligence: 11, wisdom: 14, charisma: 13, race_id: Race.find_by!(name: "Gnome").id, skillset_id: ravnica_custom.id, alignment: "Neutral Good", campaign_id: ravnica_campaign.id, height: "3'7\"", weight: "", gp: 143, deity: "Pharasma")

  CharacterAlternateRacialTrait.create!(character_id: dink_weatherbyrst.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Warden of Nature").id)
  CharacterAlternateRacialTrait.create!(character_id: dink_weatherbyrst.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Fey Fortitude").id)
  CharacterAlternateRacialTrait.create!(character_id: dink_weatherbyrst.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Nosophobia").id)
  CharacterAlternateRacialTrait.create!(character_id: dink_weatherbyrst.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Utilitarian Magic").id)

  CharacterKlass.create!(character_id: dink_weatherbyrst.id, klass_id: Klass.find_by!(name: "Warpriest").id, hp: 8, feat_id: Feat.find_by!(name: "Endurance").id, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
    CharacterKlassSpecialization.create!(character_id: dink_weatherbyrst.id, klass_feature_klass_specialization_id: KlassSpecialization.find_by!(name: "Death Blessing").id)
    CharacterKlassSpecialization.create!(character_id: dink_weatherbyrst.id, klass_feature_klass_specialization_id: KlassSpecialization.find_by!(name: "Healing Blessing").id)

  CharacterKlass.create!(character_id: dink_weatherbyrst.id, klass_id: Klass.find_by!(name: "Warpriest").id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
  CharacterKlass.create!(character_id: dink_weatherbyrst.id, klass_id: Klass.find_by!(name: "Warpriest").id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: Feat.find_by!(name: "Diehard").id)

  CharacterSkillsetSkill.create!(character_id: dink_weatherbyrst.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Knowledge").id, ranks: 2, detail: "golgari")
  CharacterSkillsetSkill.create!(character_id: dink_weatherbyrst.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Heal").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: dink_weatherbyrst.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Sense Motive").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: dink_weatherbyrst.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Religion").id, ranks: 1)

  CharacterWeapon.create!(character_id: dink_weatherbyrst.id, weapon_id: Weapon.find_by!(name: "Heavy Pick").id, masterwork: true, discovered: true, known: true, name: "")
  CharacterArmor.create!(character_id: dink_weatherbyrst.id, armor_id: Armor.find_by!(name: "Half-Plate").id, masterwork: true, discovered: true, known: true, equipped: true)

  CharacterItem.create!(character_id: dink_weatherbyrst.id, item_id: Item.find_by!(name: "Monk's Outfit").id, discovered: true)
  CharacterItem.create!(character_id: dink_weatherbyrst.id, item_id: Item.find_by!(name: "Golgari Insignia Charm").id, discovered: true)
  # silver god necklace Whatever
  # detail for improved monk's outfit


  # before reset DB,
  # check character pp, gp, sp, cp, lethal_damage, non_lethal_damage, temp_hp
  # PreparedSpell, CastSpell
  # CharacterWeapon, CharacterArmor, CharacterMagicItem, CharacterItem, CharacterPoison

  # y Campaign.find_by(name: "Ravnica").characters.map {|char| "- #{char.name} has #{char.pp || 0} pp, #{char.gp || 0} gp, #{char.sp || 0} sp, and #{char.cp || 0} cp." }
  # y Campaign.find_by(name: "Ravnica").characters.map {|char| "- #{char.name} has prepared #{char.prepared_spells.map {|ps| ps.spell}.pluck(:name)}" }
  # y Campaign.find_by(name: "Ravnica").characters.map {|char| "- #{char.name} has #{char.lethal_damage} lethal damage, #{char.non_lethal_damage} non-lethal damage, and #{char.temp_hp} temporary hp" }
  # y CharacterMagicItem.all.map {|cmi| "#{cmi.magic_item.name} - #{cmi.character.name}"}






puts "Ravnica Campaign Created!"
