ravnica_custom = Skillset.find_by!(name: "Ravnica Custom")


admin = User.find_or_create_by!(username: "jack", admin: true)
clare_voyance = User.create!(username: "clare_voyance", password: "password", admin: false, skillset_id: ravnica_custom.id)
adam1 = User.create!(username: "Adam1", password: "password", admin: false, skillset_id: ravnica_custom.id)
bluegdec1 = User.create!(username: "bluegdec1", password: "password", admin: false, skillset_id: ravnica_custom.id)
tdubb = User.create!(username: "TDUBB", password: "password", admin: false, skillset_id: ravnica_custom.id)
nlscott744 = User.create!(username: "nlscott744", password: "password", admin: false, skillset_id: ravnica_custom.id)
snegerj = User.create!(username: "snegerj", password: "password", admin: false, skillset_id: ravnica_custom.id)

oum_calendar = Calendar.find_by!(name: "Oum Calendar", leap_year: false)




ravnica_campaign = Campaign.create!(name: "Ravnica", calendar_id: oum_calendar.id, dm_id: admin.id, skillset_id: ravnica_custom.id, starting_level: 2, websocket_code: UUID.new.generate, theme: "Espionage, social intrigue. There will combat, because that's the escapism we are here for, but I would love have just as much intrigue as combat. Whether that's finding out secrets at an exclusive party you snuck into, hiding behind a wall to catch your enemy in their bedroom, or planting evidence while you are currying favor with a warlord.

You are going to be a scrappy band of ne'er-do-wells, who are doing jobs for their sake or at the behest of others, where you may very well be underleveled or outmanned in a room. Cleverness, wit, and knowing when to run will be a good part of this one/two/three shot / campaign.", setting: "Ravnica: City of Guilds

10,000 years ago, a Guildpact was signed that prevented the ten guilds of Ravnica from warring each other to prevent the plane from being destroyed and consumed. The Pact outlined the roles that each guild was to have within the city. However, the guilds continue to be at odds with each other due to their base differences.", custom_notes: "Select a guild to be a part of. You automatically have proficiency with Knowledge checks for that guild, but you will have to put ranks into that skill in order to reflect your proficiency.")



majestik = Character.create!(name: "Majestik", user_id: nlscott744.id, strength: 15, dexterity: 15, constitution: 15, intelligence: 16, wisdom: 10, charisma: 9, race_id: Race.find_by!(name: "Tiefling").id, skillset_id: ravnica_custom.id, alignment: "Chaotic Evil", campaign_id: ravnica_campaign.id, description: "Hot. (literally)")

  CharacterKlassArchetype.create!(character_id: majestik.id, klass_archetype_id: KlassArchetype.find_by!(name: "Cartomancer").id)
  CharacterAlternateRacialTrait.create!(character_id: majestik.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Prehensile Tail").id)
  CharacterAlternateRacialTrait.create!(character_id: majestik.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Scaled Skin").id)

  CharacterKlass.create!(character_id: majestik.id, klass_id: Klass.find_by!(name: "Witch").id, hp: 6, feat_id: Feat.find_by!(name: "Harrowed").id, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
    CharacterKlassSpecialization.create!(character_id: majestik.id, klass_feature_klass_specialization_id: KlassSpecialization.find_by!(name: "Trickery").id)
    CharacterKlassFeatureOption.create!(character_id: majestik.id, feature_option_id: FeatureOption.find_by!(name: "Evil Eye").id, level: 1)
  CharacterKlass.create!(character_id: majestik.id, klass_id: Klass.find_by!(name: "Witch").id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)

  CharacterArmor.create!(character_id: majestik.id, armor_id: Armor.find_by!(name: "Haramaki").id, masterwork: true, discovered: true, known: true, equipped: true)

  print "Majestik created! \r"

fire_roasted_tomatoes = Character.create!(name: "Fire-Roasted Tomatoes", user_id: clare_voyance.id, strength: 10, dexterity: 12, constitution: 14, intelligence: 10, wisdom: 4, charisma: 9, race_id: Race.find_by!(name: "Vine Leshy").id, skillset_id: ravnica_custom.id, alignment: "", campaign_id: ravnica_campaign.id, description: "", height: "2'3\"", weight: "9 lbs")

  CharacterAlternateRacialTrait.create!(character_id: fire_roasted_tomatoes.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Grapevine").id)
  CharacterAlternateRacialTrait.create!(character_id: fire_roasted_tomatoes.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Swamp Leshy").id)

  CharacterKlass.create!(character_id: fire_roasted_tomatoes.id, klass_id: Klass.find_by!(name: "Kineticist").id, hp: 8, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
    CharacterKlassSpecialization.create!(character_id: fire_roasted_tomatoes.id, klass_feature_klass_specialization_id: KlassSpecialization.find_by!(name: "Fire").id)
  CharacterKlass.create!(character_id: fire_roasted_tomatoes.id, klass_id: Klass.find_by!(name: "Kineticist").id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)

  CharacterSkillsetSkill.create!(character_id: fire_roasted_tomatoes.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Profession").id, ranks: 2, detail: "chef")
  CharacterSkillsetSkill.create!(character_id: fire_roasted_tomatoes.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Nature").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: fire_roasted_tomatoes.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Linguistics").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: fire_roasted_tomatoes.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Survival").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: fire_roasted_tomatoes.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id, ranks: 1, detail: "woodcarving")

  CharacterWeapon.create!(character_id: fire_roasted_tomatoes.id, weapon_id: Weapon.find_by!(name: "Traveling Kettle").id, masterwork: true, discovered: true, known: true, name: "")
  CharacterWeapon.create!(character_id: fire_roasted_tomatoes.id, weapon_id: Weapon.find_by!(name: "Dagger").id, masterwork: false, discovered: true, known: true, name: "Chef's Knife", description: "Decently sharp, single-edged knife. Used primarily for preparing meals.")
  CharacterArmor.create!(character_id: fire_roasted_tomatoes.id, armor_id: Armor.find_by!(name: "Leaf Armor").id, masterwork: true, discovered: true, known: true, equipped: true)


  print "Fire-Roasted Tomatoes created! \r"

iyugi = Character.create!(name: "Iyugi", user_id: adam1.id, strength: 10, dexterity: 16, constitution: 16, intelligence: 13, wisdom: 15, charisma: 12, race_id: Race.find_by!(name: "Kitsune").id, skillset_id: ravnica_custom.id, alignment: "Neutral", campaign_id: ravnica_campaign.id, description: "", deity: "Pharasma")

  CharacterAlternateRacialTrait.create!(character_id: iyugi.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Fast Shifter").id)
  CharacterKlassArchetype.create!(character_id: iyugi.id, klass_archetype_id: KlassArchetype.find_by!(name: "Scout").id)

  CharacterKlass.create!(character_id: iyugi.id, klass_id: Klass.find_by!(name: "Rogue").id, hp: 8, feat_id: Feat.find_by!(name: "Realistic Likeness").id, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
  CharacterKlass.create!(character_id: iyugi.id, klass_id: Klass.find_by!(name: "Rogue").id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
    CharacterKlassFeatureOption.create!(character_id: iyugi.id, feature_option_id: FeatureOption.find_by!(name: "Combat Trick").id, level: 2)


  CharacterSkillsetSkill.create!(character_id: iyugi.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Acrobatics").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: iyugi.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Bluff").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: iyugi.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Disguise").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: iyugi.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Finesse").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: iyugi.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Investigation").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: iyugi.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Knowledge").id, ranks: 2, detail: "dimir")
  CharacterSkillsetSkill.create!(character_id: iyugi.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Perception").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: iyugi.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Sense Motive").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: iyugi.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Society").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: iyugi.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Stealth").id, ranks: 2)

  CharacterWeapon.create!(character_id: iyugi.id, weapon_id: Weapon.find_by!(name: "Dagger").id, masterwork: false, discovered: true, known: true, name: "")
  CharacterWeapon.create!(character_id: iyugi.id, weapon_id: Weapon.find_by!(name: "Dagger").id, masterwork: false, discovered: true, known: true, name: "")
  CharacterWeapon.create!(character_id: iyugi.id, weapon_id: Weapon.find_by!(name: "Kerambit").id, masterwork: false, discovered: true, known: true, name: "")
  CharacterArmor.create!(character_id: iyugi.id, armor_id: Armor.find_by!(name: "Darkleaf Cloth Studded Leather").id, masterwork: true, discovered: true, known: true, equipped: true)

  print "Iyugi created! \r"

ildre = Character.create!(name: "Ildre", user_id: snegerj.id, strength: 10, dexterity: 13, constitution: 13, intelligence: 16, wisdom: 12, charisma: 15, race_id: Race.find_by!(name: "Human").id, skillset_id: ravnica_custom.id, alignment: "Chaotic Neutral", campaign_id: ravnica_campaign.id, any_bonus: "intelligence")

  CharacterAlternateRacialTrait.create!(character_id: ildre.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Innovative").id)

  CharacterKlass.create!(character_id: ildre.id, klass_id: Klass.find_by!(name: "Arcanist").id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
  CharacterKlass.create!(character_id: ildre.id, klass_id: Klass.find_by!(name: "Arcanist").id, hp: 3, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)

  CharacterSkillsetSkill.create!(character_id: ildre.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id, ranks: 1, detail: "blacksmithing")
  CharacterSkillsetSkill.create!(character_id: ildre.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Finesse").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: ildre.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Investigation").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: ildre.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Knowledge").id, ranks: 2, detail: "izzet")
  CharacterSkillsetSkill.create!(character_id: ildre.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Linguistics").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: ildre.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Nature").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: ildre.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Religion").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: ildre.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Spellcraft", untrained: true).id, ranks: 2)

  CharacterWeapon.create!(character_id: ildre.id, weapon_id: Weapon.find_by!(name: "Quarterstaff").id, masterwork: true, discovered: true, known: true, name: "")

  print "Ildre created! \r"

natesse = Character.create!(name: "Natesse", user_id: bluegdec1.id, strength: 15, dexterity: 17, constitution: 14, intelligence: 17, wisdom: 12, charisma: 8, race_id: Race.find_by!(name: "Android").id, skillset_id: ravnica_custom.id, alignment: "Neutral Good", campaign_id: ravnica_campaign.id, age: 4)

  CharacterKlassArchetype.create!(character_id: natesse.id, klass_archetype_id: KlassArchetype.find_by!(name: "Bladebound").id)


  CharacterKlass.create!(character_id: natesse.id, klass_id: Klass.find_by!(name: "Magus").id, hp: 6, feat_id: Feat.find_by!(name: "Weapon Finesse").id, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
  CharacterKlass.create!(character_id: natesse.id, klass_id: Klass.find_by!(name: "Magus").id, hp: 2, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)

  CharacterSkillsetSkill.create!(character_id: natesse.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Acrobatics").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: natesse.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Climb").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: natesse.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id, ranks: 2, detail: "Weapon")
  CharacterSkillsetSkill.create!(character_id: natesse.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Investigation").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: natesse.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Knowledge").id, ranks: 1, detail: "Izzet")
  CharacterSkillsetSkill.create!(character_id: natesse.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Perform").id, ranks: 2, detail: "Dance")
  CharacterSkillsetSkill.create!(character_id: natesse.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Spellcraft", untrained: true).id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: natesse.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Stealth").id, ranks: 1)

  CharacterWeapon.create!(character_id: natesse.id, weapon_id: Weapon.find_by!(name: "Scimitar").id, masterwork: false, discovered: true, known: true, name: "")

dzaihn = Character.create!(name: "Dz'aihn", user_id: tdubb.id, strength: 15, dexterity: 17, constitution: 15, intelligence: 9, wisdom: 16, charisma: 12, race_id: Race.find_by!(name: "Grippli").id, skillset_id: ravnica_custom.id, alignment: "Neutral Evil", campaign_id: ravnica_campaign.id, height: "2'", weight: "30 lbs")

  CharacterKlass.create!(character_id: dzaihn.id, klass_id: Klass.find_by!(name: "Slayer").id, hp: 10, feat_id: Feat.find_by!(name: "Point-Blank Shot").id, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
  CharacterKlass.create!(character_id: dzaihn.id, klass_id: Klass.find_by!(name: "Slayer").id, hp: 4, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)

  CharacterSkillsetSkill.create!(character_id: dzaihn.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Acrobatics").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: dzaihn.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Bluff").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: dzaihn.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id, ranks: 1, detail: "Alchemy")
  CharacterSkillsetSkill.create!(character_id: dzaihn.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Finesse").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: dzaihn.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Linguistics").id, ranks: 2)
  CharacterSkillsetSkill.create!(character_id: dzaihn.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Perception").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: dzaihn.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Sense Motive").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: dzaihn.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Stealth").id, ranks: 1)



puts "Ravnica Campaign Created!"
