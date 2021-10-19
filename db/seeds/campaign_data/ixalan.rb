ravnica_custom = Skillset.find_by!(name: "Ravnica Custom")

admin = User.find_or_create_by!(username: "jack", admin: true)
tlyearl = User.create!(username: "tlyearl", password: "password", admin: false, skillset_id: ravnica_custom.id)
bearathon_man = User.create!(username: "bearathon_man", password: "password", admin: false, skillset_id: ravnica_custom.id)
groucho = User.create!(username: "groucho", password: "password", admin: false, skillset_id: ravnica_custom.id)

gregorian_calendar = Calendar.find_by!(name: "Gregorian Calendar")

ixalan_campaign = Campaign.create!(name: "Ixalan", calendar_id: gregorian_calendar.id, dm_id: admin.id, skillset_id: ravnica_custom.id, starting_level: 1, websocket_code: UUID.new.generate, theme: "Pirates meets Western", setting: "Ixalan, 80 years after the Cataclysm", custom_notes: "")

char1 = Character.create!(name: "Char1", user_id: tlyearl.id, strength: 12, dexterity: 16, constitution: 12, intelligence: 9, wisdom: 10, charisma: 17, race_id: Race.find_by!(name: "Catfolk").id, skillset_id: ravnica_custom.id, alignment: "", campaign_id: ixalan_campaign.id, description: "", gp: 60)
  CharacterAlternateRacialTrait.create!(character_id: char1.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Nimble Faller").id)

  CharacterKlass.create!(character_id: char1.id, klass_id: Klass.find_by!(name: "Sorcerer").id, hp: 6, feat_id: Feat.find_by!(name: "Improved Initiative").id, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
    CharacterKlassSpecialization.create!(character_id: char1.id, klass_feature_klass_specialization_id: KlassSpecialization.find_by!(name: "Solar Bloodline").id)


  CharacterSkillsetSkill.create!(character_id: char1.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Perception").id, ranks: 1)
  CharacterSkillsetSkill.create!(character_id: char1.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Spellcraft", untrained: true).id, ranks: 1)

puts "Ixalan Campaign Created!"
