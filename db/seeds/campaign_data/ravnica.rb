ravnica_custom = Skillset.find_by!(name: "Ravnica Custom")


admin = User.find_or_create_by!(username: "jack", admin: true)
clare_voyance = User.create!(username: "clare_voyance", password: "password", admin: false, skillset_id: ravnica_custom.id)
adam1 = User.create!(username: "Adam1", password: "password", admin: false, skillset_id: ravnica_custom.id)
bluegdec1 = User.create!(username: "bluegdec1", password: "password", admin: false, skillset_id: ravnica_custom.id)
just_TDUBB_it = User.create!(username: "just TDUBB it", password: "password", admin: false, skillset_id: ravnica_custom.id)
nlscott744 = User.create!(username: "nlscott744", password: "password", admin: false, skillset_id: ravnica_custom.id)
snegerj = User.create!(username: "snegerj", password: "password", admin: false, skillset_id: ravnica_custom.id)

oum_calendar = Calendar.find_by!(name: "Oum Calendar", leap_year: false)




ravnica_campaign = Campaign.create!(name: "Ravnica", calendar_id: oum_calendar.id, dm_id: admin.id, skillset_id: ravnica_custom.id, starting_level: 2, websocket_code: UUID.new.generate)



majestik = Character.create!(name: "Majestik", user_id: nlscott744.id, strength: 15, dexterity: 15, constitution: 15, intelligence: 16, wisdom: 10, charisma: 9, race_id: Race.find_by!(name: "Tiefling").id, skillset_id: ravnica_custom.id, alignment: "chaotic evil", campaign_id: ravnica_custom.id, description: "Hot. (literally)")

  CharacterKlassArchetype.create!(character_id: majestik.id, klass_archetype_id: KlassArchetype.find_by!(name: "Cartomancer").id)
  CharacterAlternateRacialTrait.create!(character_id: majestik.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Prehensile Tail").id)
  CharacterAlternateRacialTrait.create!(character_id: majestik.id, alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Scaled Skin").id)

  CharacterKlass.create!(character_id: majestik.id, klass_id: Klass.find_by!(name: "Witch").id, hp: 6, feat_id: Feat.find_by!(name: "Harrowed").id, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
    CharacterKlassSpecialization.create!(character_id: majestik.id, klass_feature_klass_specialization_id: KlassSpecialization.find_by!(name: "Trickery").id)
    CharacterKlassFeatureOption.create!(character_id: majestik.id, feature_option_id: FeatureOption.find_by!(name: "Evil Eye").id, level: 1)
  CharacterKlass.create!(character_id: majestik.id, klass_id: Klass.find_by!(name: "Witch").id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)


  print "Majestik created! \r"



puts "Ravnica Campaign Created!"
