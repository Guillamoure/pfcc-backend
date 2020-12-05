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




alchemist = Klass.create!(name: "Alchemist", hit_die: 8, skill_ranks: 4, fortitude: 0.5, reflex: 0.5, will: 0.34, img_url: "https://i.pinimg.com/originals/62/89/42/628942741fe62cefa1e3291428e6d8ff.png", source_id: advanced_players_guide.id, starting_wealth: "3d6 × 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", description: "Whether secreted away in a smoky basement laboratory or gleefully experimenting in a well-respected school of magic, the alchemist is often regarded as being just as unstable, unpredictable, and dangerous as the concoctions he brews. While some creators of alchemical items content themselves with sedentary lives as merchants, providing tindertwigs and smokesticks, the true alchemist answers a deeper calling. Rather than cast magic like a spellcaster, the alchemist captures his own magic potential within liquids and extracts he creates, infusing his chemicals with virulent power to grant him impressive skill with poisons, explosives, and all manner of self-transformative magic.

Role: The alchemist’s reputation is not softened by his exuberance (some would say dangerous recklessness) in perfecting his magical extracts and potion-like creations, infusing these substances with magic siphoned from his aura and using his own body as experimental stock. Nor is it mollified by the alchemist’s almost gleeful passion for building explosive bombs and discovering strange new poisons and methods for their use. These traits, while making him a liability and risk for most civilized organizations and institutions of higher learning, seem to fit quite well with most adventuring groups.

Alignment: Any.")


ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Appraise").id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Disable Device").id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Fly").id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Heal").id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (arcana)").id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge (nature)").id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Perception").id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Sleight of Hand").id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Spellcraft").id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Survival").id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Use Magic Device").id)

ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Finesse").id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Heal").id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Investigation").id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Nature").id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Perception").id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Spellcraft", untrained: true).id)
ClassSkillsetSkill.create!(klass_id: alchemist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Survival").id)

# /////////////////////////////////////////////////////
# <-*-*-----*-*-*- Base Class Features!-*-*-*-----*-*->
# /////////////////////////////////////////////////////

alchemist1 = KlassFeature.create!(klass_id: alchemist.id, name: "Weapon and Armor Proficiency", description: "Alchemists are proficient with all simple weapons and bombs. They are also proficient with light armor, but not with shields.")
  FeatureLevel.create!(klass_feature_id: alchemist1.id, level: 1, table_description: "")
  alchemist1_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: alchemist1.id, feature_id: alchemist1_feature.id)
    FeatureWeaponProficiency.create!(feature_id: alchemist1_feature.id, proficiency_group: "Simple")
    FeatureArmorProficiency.create!(feature_id: alchemist1_feature.id, proficiency_group: "Light")


alchemist2 = KlassFeature.create!(klass_id: alchemist.id, name: "Alchemy", description: "Alchemists are not only masters of creating mundane alchemical substances such as alchemist’s fire and smokesticks, but also of fashioning magical potion-like extracts in which they can store spell effects. In effect, an alchemist prepares his spells by mixing ingredients into a number of extracts, and then “casts” his spells by drinking the extract. When an alchemist creates an extract or bomb, he infuses the concoction with a tiny fraction of his own magical power—this enables the creation of powerful effects, but also binds the effects to the creator. When using Craft (alchemy) to create an alchemical item, an alchemist gains a competence bonus equal to his class level on the Craft (alchemy) check. In addition, an alchemist can use Craft (alchemy) to identify potions as if using detect magic. He must hold the potion for 1 round to make such a check.

An alchemist can create three special types of magical items—extracts, bombs, and mutagens. Bombs are explosive splash weapons, and mutagens are transformative elixirs that the alchemist drinks to enhance his physical abilities—both of these are detailed in their own sections below.

Extracts are the most varied of the three. In many ways, they behave like spells in potion form, and as such their effects can be dispelled by effects like dispel magic using the alchemist’s level as the caster level. Unlike potions, though, extracts can have powerful effects and duplicate spells that a potion normally could not.

An alchemist can create only a certain number of extracts of each level per day. His base daily allotment of extracts is given on Table: Alchemist. In addition, he receives bonus extracts per day if he has a high Intelligence score, in the same way a wizard receives bonus spells per day. When an alchemist mixes an extract, he infuses the chemicals and reagents in the extract with magic siphoned from his own magical aura. An extract immediately becomes inert if it leaves the alchemist’s possession, reactivating as soon as it returns to his keeping—an alchemist cannot normally pass out his extracts for allies to use (but see the “infusion” discovery below). An extract, once created, remains potent for 1 day before becoming inert, so an alchemist must re-prepare his extracts every day. Mixing an extract takes 1 minute of work—most alchemists prepare many extracts at the start of the day or just before going on an adventure, but it’s not uncommon for an alchemist to keep some (or even all) of his daily extract slots open so that he can prepare extracts in the field as needed.

Although the alchemist doesn’t actually cast spells, he does have a formulae list that determines what extracts he can create. An alchemist can utilize spell-trigger items if the spell appears on his formulae list, but not spell-completion items (unless he uses Use Magic Device to do so). An extract is “cast” by drinking it, as if imbibing a potion—the effects of an extract exactly duplicate the spell upon which its formula is based, save that the spell always affects only the drinking alchemist. The alchemist uses his level as the caster level to determine any effect based on caster level. Creating extracts consumes raw materials, but the cost of these materials is insignificant—comparable to the valueless material components of most spells. If a spell normally has a costly material component, that component is expended during the consumption of that particular extract. Extracts cannot be made from spells that have focus requirements (alchemist extracts that duplicate divine spells never have a divine focus requirement). An alchemist can prepare an extract of any formula he knows. To learn or use an extract, an alchemist must have an Intelligence score equal to at least 10 + the extract’s level. The Difficulty Class for a saving throw against an alchemist’s extract is 10 + the extract level + the alchemist’s Intelligence modifier. An alchemist may know any number of formulae. He stores his formulae in a special tome called a formula book. He must refer to this book whenever he prepares an extract but not when he consumes it. An alchemist begins play with two 1st level formulae of his choice, plus a number of additional forumlae equal to his Intelligence modifier. At each new alchemist level, he gains one new formula of any level that he can create. An alchemist can also add formulae to his book just like a wizard adds spells to his spellbook, using the same costs and time requirements. An alchemist can study a wizard’s spellbook to learn any formula that is equivalent to a spell the spellbook contains. A wizard, however, cannot learn spells from a formula book. An alchemist does not need to decipher arcane writings before copying them.")
  FeatureLevel.create!(klass_feature_id: alchemist2.id, level: 1, table_description: "Alchemy")
  alchemist2_feature1 = Feature.create!()
    KlassFeatureFeature.create!(feature_id: alchemist2_feature1.id, klass_feature_id: alchemist2.id)
    FeatureSkillNote.create!(feature_id: alchemist2_feature1.id, skill_id: Skill.find_by!(name: "Craft").id, custom: "alchemy", note: "when creating an alchemical item, gain a competence bonus equal to your class level")
  alchemist_spell_list = SpellList.create!(name: "Alchemist Spells List")
  alchemist2_feature2 = Feature.create!()
    KlassFeatureFeature.create!(feature_id: alchemist2_feature2.id, klass_feature_id: alchemist2.id)
    alchemist_spellcasting = FeatureSpellcasting.create!(feature_id: alchemist2_feature2.id, ability_score: "intelligence", prepare_spells: true, expend_prepared_spells: true, infinite_zero_level: false, known_spell_list: true, apply_metamagic_when_casting: false, apply_metamagic_when_preparing: true, type_of_magic: "Alchemy", caster_level_penalty: 0, spell_list_id: alchemist_spell_list.id)

    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 1, spells: 1, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 2, spells: 2, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 3, spells: 3, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 4, spells: 3, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 4, spells: 3, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 5, spells: 4, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 6, spells: 4, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 7, spells: 4, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 8, spells: 4, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 9, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 10, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 11, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 12, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 13, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 14, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 15, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 16, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 17, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 18, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 19, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 20, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 4, spells: 1, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 5, spells: 2, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 6, spells: 3, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 7, spells: 3, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 8, spells: 4, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 9, spells: 4, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 10, spells: 4, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 11, spells: 4, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 12, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 13, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 14, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 15, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 16, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 17, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 18, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 19, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 20, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 7, spells: 1, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 8, spells: 2, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 9, spells: 3, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 10, spells: 3, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 11, spells: 4, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 12, spells: 4, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 13, spells: 4, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 14, spells: 4, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 15, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 16, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 17, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 18, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 19, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 20, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 10, spells: 1, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 11, spells: 2, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 12, spells: 3, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 13, spells: 3, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 14, spells: 4, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 15, spells: 4, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 16, spells: 4, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 17, spells: 4, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 18, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 19, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 20, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 13, spells: 1, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 14, spells: 2, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 15, spells: 3, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 16, spells: 3, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 17, spells: 4, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 18, spells: 4, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 19, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 20, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 16, spells: 1, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 17, spells: 2, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 18, spells: 3, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 19, spells: 4, feature_spellcasting_id: alchemist_spellcasting.id)
    SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 20, spells: 5, feature_spellcasting_id: alchemist_spellcasting.id)

alchemist3 = KlassFeature.create!(klass_id: alchemist.id, name: "Bomb", description: "In addition to magical extracts, alchemists are adept at swiftly mixing various volatile chemicals and infusing them with their magical reserves to create powerful bombs that they can hurl at their enemies. An alchemist can use a number of bombs each day equal to his class level + his Intelligence modifier. Bombs are unstable, and if not used in the round they are created, they degrade and become inert—their method of creation prevents large volumes of explosive material from being created and stored. In order to create a bomb, the alchemist must use a small vial containing an ounce of liquid catalyst—the alchemist can create this liquid catalyst from small amounts of chemicals from an alchemy lab, and these supplies can be readily refilled in the same manner as a spellcaster’s component pouch. Most alchemists create a number of catalyst vials at the start of the day equal to the total number of bombs they can create in that day—once created, a catalyst vial remains usable by the alchemist for years.

Drawing the components of, creating, and throwing a bomb requires a standard action that provokes an attack of opportunity. Thrown bombs have a range of 20 feet and use the Throw Splash Weapon special attack. Bombs are considered weapons and can be selected using feats such as Point-Blank Shot and Weapon Focus. On a direct hit, an alchemist’s bomb inflicts 1d6 points of fire damage + additional damage equal to the alchemist’s Intelligence modifier. The damage of an alchemist’s bomb increases by 1d6 points at every odd-numbered alchemist level (this bonus damage is not multiplied on a critical hit or by using feats such as Vital Strike). Splash damage from an alchemist bomb is always equal to the bomb’s minimum damage (so if the bomb would deal 2d6+4 points of fire damage on a direct hit, its splash damage would be 6 points of fire damage). Those caught in the splash damage can attempt a Reflex save for half damage. The DC of this save is equal to 10 + 1/2 the alchemist’s level + the alchemist’s Intelligence modifier.

Alchemists can learn new types of bombs as discoveries (see the Discovery ability) as they level up. An alchemist’s bomb, like an extract, becomes inert if used or carried by anyone else.")
  FeatureLevel.create!(klass_feature_id: alchemist3.id, level: 1, table_description: "Bomb 1d6")
  FeatureLevel.create!(klass_feature_id: alchemist3.id, level: 3, table_description: "Bomb 2d6")
  FeatureLevel.create!(klass_feature_id: alchemist3.id, level: 5, table_description: "Bomb 3d6")
  FeatureLevel.create!(klass_feature_id: alchemist3.id, level: 7, table_description: "Bomb 4d6")
  FeatureLevel.create!(klass_feature_id: alchemist3.id, level: 9, table_description: "Bomb 5d6")
  FeatureLevel.create!(klass_feature_id: alchemist3.id, level: 11, table_description: "Bomb 6d6")
  FeatureLevel.create!(klass_feature_id: alchemist3.id, level: 13, table_description: "Bomb 7d6")
  FeatureLevel.create!(klass_feature_id: alchemist3.id, level: 15, table_description: "Bomb 8d6")
  FeatureLevel.create!(klass_feature_id: alchemist3.id, level: 17, table_description: "Bomb 9d6")
  FeatureLevel.create!(klass_feature_id: alchemist3.id, level: 19, table_description: "Bomb 10d6")

alchemist4 = KlassFeature.create!(klass_id: alchemist.id, name: "Brew Potion", description: "At 1st level, alchemists receive Brew Potion as a bonus feat. An alchemist can brew potions of any formulae he knows (up to 3rd level), using his alchemist level as his caster level. The spell must be one that can be made into a potion. The alchemist does not need to meet the prerequisites for this feat.")
  FeatureLevel.create!(klass_feature_id: alchemist4.id, level: 1, table_description: "Brew Potion")

alchemist5 = KlassFeature.create!(klass_id: alchemist.id, name: "Mutagen", description: "At 1st level, an alchemist discovers how to create a mutagen that he can imbibe in order to heighten his physical prowess at the cost of his personality. It takes 1 hour to brew a dose of mutagen, and once brewed, it remains potent until used. An alchemist can only maintain one dose of mutagen at a time—if he brews a second dose, any existing mutagen becomes inert. As with an extract or bomb, a mutagen that is not in an alchemist’s possession becomes inert until an alchemist picks it up again.

When an alchemist brews a mutagen, he selects one physical ability score—either Strength, Dexterity, or Constitution. It’s a standard action to drink a mutagen. Upon being imbibed, the mutagen causes the alchemist to grow bulkier and more bestial, granting him a +2 natural armor bonus and a +4 alchemical bonus to the selected ability score for 10 minutes per alchemist level. In addition, while the mutagen is in effect, the alchemist takes a –2 penalty to one of his mental ability scores. If the mutagen enhances his Strength, it applies a penalty to his Intelligence. If it enhances his Dexterity, it applies a penalty to his Wisdom. If it enhances his Constitution, it applies a penalty to his Charisma.

A non-alchemist who drinks a mutagen must make a Fortitude save (DC 10 + 1/2 the alchemist’s level + the alchemist’s Intelligence modifier) or become nauseated for 1 hour—a non-alchemist can never gain the benefit of a mutagen, but an alchemist can gain the effects of another alchemist’s mutagen if he drinks it. (Although if the other alchemist creates a different mutagen, the effects of the “stolen” mutagen immediately cease.) The effects of a mutagen do not stack. Whenever an alchemist drinks a mutagen, the effects of any previous mutagen immediately end.")
  FeatureLevel.create!(klass_feature_id: alchemist5.id, level: 1, table_description: "Mutagen")

alchemist6 = KlassFeature.create!(klass_id: alchemist.id, name: "Throw Anything", description: "All alchemists gain the Throw Anything feat as a bonus feat at 1st level. An alchemist adds his Intelligence modifier to damage done with splash weapons, including the splash damage if any. This bonus damage is already included in the bomb class feature.")
  FeatureLevel.create!(klass_feature_id: alchemist6.id, level: 1, table_description: "Throw Anything")

alchemist7 = KlassFeature.create!(klass_id: alchemist.id, name: "Discovery", has_klass_feature_options: true, description: "At 2nd level, and then again every 2 levels thereafter (up to 18th level), an alchemist makes an incredible alchemical discovery. Unless otherwise noted, an alchemist cannot select an individual discovery more than once. Some discoveries can only be made if the alchemist has met certain prerequisites first, such as uncovering other discoveries. Discoveries that modify bombs that are marked with an asterisk (*) do not stack. Only one such discovery can be applied to an individual bomb. The DC of any saving throw called for by a discovery is equal to 10 + 1/2 the alchemist’s level + the alchemist’s Intelligence modifier.")
  FeatureLevel.create!(klass_feature_id: alchemist7.id, level: 2, table_description: "Discovery")
  FeatureLevel.create!(klass_feature_id: alchemist7.id, level: 4, table_description: "Discovery")
  FeatureLevel.create!(klass_feature_id: alchemist7.id, level: 6, table_description: "Discovery")
  FeatureLevel.create!(klass_feature_id: alchemist7.id, level: 8, table_description: "Discovery")
  FeatureLevel.create!(klass_feature_id: alchemist7.id, level: 10, table_description: "Discovery")
  FeatureLevel.create!(klass_feature_id: alchemist7.id, level: 12, table_description: "Discovery")
  FeatureLevel.create!(klass_feature_id: alchemist7.id, level: 14, table_description: "Discovery")
  FeatureLevel.create!(klass_feature_id: alchemist7.id, level: 16, table_description: "Discovery")
  FeatureLevel.create!(klass_feature_id: alchemist7.id, level: 18, table_description: "Discovery")

alchemist8 = KlassFeature.create!(klass_id: alchemist.id, name: "Poison Resistance", description: "At 2nd level, an alchemist gains a +2 bonus on all saving throws against poison. This bonus increases to +4 at 5th level, and then again to +6 at 8th level. At 10th level, an alchemist becomes completely immune to poison.")
  FeatureLevel.create!(klass_feature_id: alchemist8.id, level: 2, table_description: "Poison Resistance +2")
  FeatureLevel.create!(klass_feature_id: alchemist8.id, level: 5, table_description: "Poison Resistance +4")
  FeatureLevel.create!(klass_feature_id: alchemist8.id, level: 8, table_description: "Poison Resistance +6")
  FeatureLevel.create!(klass_feature_id: alchemist8.id, level: 10, table_description: "Poison Immunity")

alchemist9 = KlassFeature.create!(klass_id: alchemist.id, name: "Poison Use", description: "Alchemists are trained in the use of poison and starting at 2nd level, cannot accidentally poison themselves when applying poison to a weapon.")
  FeatureLevel.create!(klass_feature_id: alchemist9.id, level: 2, table_description: "Poison Use")

alchemist10 = KlassFeature.create!(klass_id: alchemist.id, name: "Swift Alchemy", description: "At 3rd level, an alchemist can create alchemical items with astounding speed. It takes an alchemist half the normal amount of time to create alchemical items, and he can apply poison to a weapon as a move action.")
  FeatureLevel.create!(klass_feature_id: alchemist10.id, level: 3, table_description: "Swift Alchemy")

alchemist11 = KlassFeature.create!(klass_id: alchemist.id, name: "Swift Poisoning", description: "At 6th level, an alchemist can apply a dose of poison to a weapon as a swift action.")
  FeatureLevel.create!(klass_feature_id: alchemist11.id, level: 6, table_description: "Swift Poisoning")

alchemist12 = KlassFeature.create!(klass_id: alchemist.id, name: "Persistant Mutagen", description: "At 14th level, the effects of a mutagen last for 1 hour per level.")
  FeatureLevel.create!(klass_feature_id: alchemist12.id, level: 14, table_description: "Persistant Mutagen")

alchemist13 = KlassFeature.create!(klass_id: alchemist.id, name: "Instant Alchemy", description: "At 18th level, an alchemist can create alchemical items with almost supernatural speed. He can create any alchemical item as a full-round action if he succeeds at the Craft (alchemy) check and has the appropriate resources at hand to fund the creation. He can apply poison to a weapon as an immediate action.")
  FeatureLevel.create!(klass_feature_id: alchemist13.id, level: 18, table_description: "Instant Alchemy")

alchemist14 = KlassFeature.create!(klass_id: alchemist.id, name: "Grand Discovery", description: "At 20th level, the alchemist makes a grand discovery. He immediately learns two normal discoveries, but also learns a third discovery chosen from the linked list below, representing a truly astounding alchemical breakthrough of significant import. For many alchemists, the promise of one of these grand discoveries is the primary goal of their experiments and hard work.")
  FeatureLevel.create!(klass_feature_id: alchemist14.id, level: 20, table_description: "Grand Discovery")

print "Alchemist features created! \r"

# ///////////////////////////////////////////////////////
# <-*-*-----*-*-*- Class Feature Options!-*-*-*-----*-*->
# ///////////////////////////////////////////////////////

FeatureOption.create!(name: "Enhance Potion", klass_feature_id: alchemist7.id, level_available: 2, description: "A number of times per day equal to his Intelligence modifier, the alchemist can cause any potion he drinks to function at a caster level equal to his class level.")

FeatureOption.create!(name: "Explosive Bomb", klass_feature_id: alchemist7.id, level_available: 2, description: "The alchemist’s bombs now have a splash radius of 10 feet rather than 5 feet (see Throw Splash Weapon). Creatures that take a direct hit from an explosive bomb catch fire, taking 1d6 points of fire damage each round until the fire is extinguished. Extinguishing the flames is a full-round action that requires a Reflex save. Rolling on the ground provides the target with a +2 to the save. Dousing the target with at least 2 gallons of water automatically extinguishes the flames.")

FeatureOption.create!(name: "Infused Mutagen", klass_feature_id: alchemist7.id, level_available: 2, description: "When the alchemist creates a mutagen he can infuse it with an extra bit of his own magical power. This inflicts 2 points of Intelligence damage to the alchemist and costs 1,000 gp in rare reagents, but the mutagen created persists on its own and is not rendered inert if the alchemist creates another mutagen. This allows an alchemist to create different types of mutagens and keep them handy for emergencies. This does not allow an alchemist to gain the effects of multiple mutagens—only the most recently imbibed mutagen has any effect.")

FeatureOption.create!(name: "Infusion", klass_feature_id: alchemist7.id, level_available: 2, description: "When the alchemist creates an extract, he can infuse it with an extra bit of his own magical power. The extract created now persists even after the alchemist sets it down. As long as the extract exists, it continues to occupy one of the alchemist’s daily extract slots. An infused extract can be imbibed by a non-alchemist to gain its effects.")

# //////////////////////////////////////////////////
# <-*-*-----*-*-*- Class Archetypes!-*-*-*-----*-*->
# //////////////////////////////////////////////////

vivisectionist = KlassArchetype.create!(name: "Vivisectionist", klass_id: alchemist.id, source_id: ultimate_magic.id, description: "A vivisectionist studies bodies to better understand their function. Unlike a chirurgeon, a vivisectionist’s goals are not related to healing, but rather to experimentation and knowledge that most people would consider evil.")

  vivisectionist1 = KlassArchetypeFeature.create!(name: "Sneak Attack", klass_archetype_id: vivisectionist.id, description: "At 1st level, a vivisectionist gains the sneak attack ability as a rogue of the same level. If a character already has sneak attack from another class, the levels from the classes that grant sneak attack stack to determine the effective rogue level for the sneak attack’s extra damage dice (so an alchemist 1/rogue 1 has a +1d6 sneak attack like a 2nd-level rogue, an alchemist 2/rogue 1 has a +2d6 sneak attack like a 3rd-level rogue, and so on).

  This ability replaces bomb.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: vivisectionist1.id, level: 1, table_description: "Sneak Attack +1d6")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: vivisectionist1.id, level: 3, table_description: "Sneak Attack +2d6")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: vivisectionist1.id, level: 5, table_description: "Sneak Attack +3d6")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: vivisectionist1.id, level: 7, table_description: "Sneak Attack +4d6")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: vivisectionist1.id, level: 9, table_description: "Sneak Attack +5d6")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: vivisectionist1.id, level: 11, table_description: "Sneak Attack +6d6")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: vivisectionist1.id, level: 13, table_description: "Sneak Attack +7d6")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: vivisectionist1.id, level: 15, table_description: "Sneak Attack +8d6")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: vivisectionist1.id, level: 17, table_description: "Sneak Attack +9d6")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: vivisectionist1.id, level: 19, table_description: "Sneak Attack +10d6")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: alchemist3.id, klass_archetype_feature_id: vivisectionist1.id, replace_or_alter: "replace")

  vivisectionist2 = KlassArchetypeFeature.create!(name: "Torturer's Eye", klass_archetype_id: vivisectionist.id, description: "At 2nd level, a vivisectionist adds deathwatch to his formula book as a 1st-level extract.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: vivisectionist2.id, level: 2, table_description: "Torturer's Eye")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_archetype_feature_id: vivisectionist2.id, replace_or_alter: "replace")

  vivisectionist3 = KlassArchetypeFeature.create!(name: "Cruel Anatomist", klass_archetype_id: vivisectionist.id, description: "At 3rd level, a vivisectionist may use his Knowledge (nature) skill bonus in place of his Heal skill bonus.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: vivisectionist3.id, level: 3, table_description: "Cruel Anatomist")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_archetype_feature_id: vivisectionist3.id, replace_or_alter: "replace")

  vivisectionist4 = KlassArchetypeFeature.create!(name: "Torturous Transformation", klass_archetype_id: vivisectionist.id, description: "At 7th level, a vivisectionist adds anthropomorphic animal to his formula book as a 2nd-level extract. When he uses this extract, he injects it into an animal as part of a 2-hour surgical procedure. By using multiple doses of this extract as part of the surgery, he multiplies the duration by the number of extracts used.

  At 9th level, a vivisectionist adds awaken and baleful polymorph to his formula book as 3rd-level extracts. When he uses the awaken or baleful polymorph extract, he injects it into the target (not a plant) as part of a 24-hour surgical procedure. He can make anthropomorphic animal permanent on a creature by spending 7,500 gp.

  At 15th level, a vivisectionist adds regenerate to his formula book as a 5th-level extract.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: vivisectionist4.id, level: 7, table_description: "Torturous Transformation")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: vivisectionist4.id, level: 9, table_description: "Torturous Transformation")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: vivisectionist4.id, level: 15, table_description: "Torturous Transformation")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_archetype_feature_id: vivisectionist4.id, replace_or_alter: "replace")

  vivisectionist5 = KlassArchetypeFeature.create!(name: "Bleeding Attack", klass_archetype_id: vivisectionist.id, description: "A vivisectionist may select the bleeding attack rogue talent in place of a discovery.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: vivisectionist5.id, level: 1, table_description: "")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_archetype_feature_id: vivisectionist5.id, replace_or_alter: "replace")

  vivisectionist6 = KlassArchetypeFeature.create!(name: "Crippling Strike", klass_archetype_id: vivisectionist.id, description: "At 10th level or later, a vivisectionist may select the crippling strike rogue talent in place of a discovery.")
    KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: vivisectionist6.id, level: 10, table_description: "")
    ArchetypeFeatureReplaceKlassFeature.create!(klass_archetype_feature_id: vivisectionist6.id, replace_or_alter: "replace")

  print "Vivisectionist Archetype Created! \r"


  # IDENTIFIER = KlassArchetypeFeature.create!(name: "NAME", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "NAME")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")

  # IDENTIFIER = KlassArchetypeFeature.create!(name: "NAME", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "NAME")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")

  # IDENTIFIER = KlassArchetypeFeature.create!(name: "NAME", klass_archetype_id: ARCHETYPE.id, description: "")
  #   KlassArchetypeFeatureLevel.create!(klass_archetype_feature_id: IDENTIFIER.id, level: 1, table_description: "NAME")
  #   ArchetypeFeatureReplaceKlassFeature.create!(klass_feature_id: KLASSFEATURE.id, klass_archetype_feature_id: IDENTIFIER.id, replace_or_alter: "alter")

puts "Alchemist Created!"
