ravnica_custom = Skillset.find_by!(name: "Ravnica Custom")


admin = User.find_or_create_by!(username: "jack", admin: true)
clare_voyance = User.create!(username: "clare_voyance", password: "password", admin: false, skillset_id: ravnica_custom.id)
adam1 = User.create!(username: "Adam1", password: "password", admin: false, skillset_id: ravnica_custom.id)
bluegdec1 = User.create!(username: "bluegdec1", password: "password", admin: false, skillset_id: ravnica_custom.id)
just_TDUBB_it = User.create!(username: "just TDUBB it", password: "password", admin: false, skillset_id: ravnica_custom.id)
nlscott744 = User.create!(username: "nlscott744", password: "password", admin: false, skillset_id: ravnica_custom.id)
snegerj = User.create!(username: "snegerj", password: "password", admin: false, skillset_id: ravnica_custom.id)

oum_calendar = Calendar.find_by!(name: "Oum Calendar", leap_year: false)




ravnica_campaign = Campaign.create!(name: "Ravnica", calendar_id: oum_calendar.id, dm_id: admin.id, skillset_id: ravnica_custom.id, starting_level: 2, websocket_code: UUID.new.generate, theme: "Espionage, social intrigue. There will combat, because that's the escapism we are here for, but I would love have just as much intrigue as combat. Whether that's finding out secrets at an exclusive party you snuck into, hiding behind a wall to catch your enemy in their bedroom, or planting evidence while you are currying favor with a warlord.

You are going to be a scrappy band of ne'er-do-wells, who are doing jobs for their sake or at the behest of others, where you may very well be underleveled or outmanned in a room. Cleverness, wit, and knowing when to run will be a good part of this one/two/three shot / campaign.", setting: "Ravnica: City of Guilds

10,000 years ago, a Guildpact was signed that prevented the ten guilds of Ravnica from warring each other to prevent the plane from being destroyed and consumed. The Pact outlined the roles that each guild was to have within the city. However, the guilds continue to be at odds with each other due to their base differences.", custom_notes: "Select a guild to be a part of. You automatically have proficiency with Knowledge checks for that guild, but you will have to put ranks into that skill in order to reflect your proficiency.")



majestik = Character.create!(name: "Majestik", user_id: nlscott744.id, strength: 15, dexterity: 15, constitution: 15, intelligence: 16, wisdom: 10, charisma: 9, race_id: Race.find_by!(name: "Tiefling").id, skillset_id: ravnica_custom.id, alignment: "chaotic evil", campaign_id: ravnica_custom.id, description: "Hot. (literally)")

  CharacterKlassArchetype.create!(character_id: majestik.id, klass_archetype_id: KlassArchetype.find_by!(name: "Cartomancer").id)
  CharacterAlternateRacialTrait.create!(character_id: majestik.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Prehensile Tail").id)
  CharacterAlternateRacialTrait.create!(character_id: majestik.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Scaled Skin").id)

  CharacterKlass.create!(character_id: majestik.id, klass_id: Klass.find_by!(name: "Witch").id, hp: 6, feat_id: Feat.find_by!(name: "Harrowed").id, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
    CharacterKlassSpecialization.create!(character_id: majestik.id, klass_feature_klass_specialization_id: KlassSpecialization.find_by!(name: "Trickery").id)
    CharacterKlassFeatureOption.create!(character_id: majestik.id, feature_option_id: FeatureOption.find_by!(name: "Evil Eye").id, level: 1)
  CharacterKlass.create!(character_id: majestik.id, klass_id: Klass.find_by!(name: "Witch").id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)


  print "Majestik created! \r"

unknown = Character.create!(name: "Unknown", user_id: clare_voyance.id, strength: 10, dexterity: 12, constitution: 14, intelligence: 10, wisdom: 4, charisma: 9, race_id: Race.find_by!(name: "Vine Leshy").id, skillset_id: ravnica_custom.id, alignment: "", campaign_id: ravnica_custom.id, description: "", height: "2'3\"", weight: "9 lbs")

  CharacterAlternateRacialTrait.create!(character_id: unknown.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Grapevine").id)
  CharacterAlternateRacialTrait.create!(character_id: unknown.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Swamp Leshy").id)

  CharacterKlass.create!(character_id: unknown.id, klass_id: Klass.find_by!(name: "Kineticist").id, hp: 8, feat_id: Feat.find_by!(name: "Harrowed").id, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
    CharacterKlassSpecialization.create!(character_id: unknown.id, klass_feature_klass_specialization_id: KlassSpecialization.find_by!(name: "Fire").id)
  CharacterKlass.create!(character_id: unknown.id, klass_id: Klass.find_by!(name: "Kineticist").id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)

  CharacterSkillsetSkill.create!(character_id: unknown.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Profession").id, ranks: 2, detail: "chef")
  CharacterSkillsetSkill.create!(character_id: unknown.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Nature").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: unknown.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Linguistics").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: unknown.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Survival").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: unknown.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id, ranks: 1, detail: "woodcarving")


  print "Unknown created! \r"



puts "Ravnica Campaign Created!"
