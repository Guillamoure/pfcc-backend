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
occult_adventures = Source.find_by!(title: "Occult Adventures", abbreviation: "OA", code: "PZO1132")
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


kineticist = Klass.create!(name: "Kineticist", hit_die: 8, skill_ranks: 4, fortitude: 0.5, reflex: 0.5, will: 0.34, img_url: "https://i.pinimg.com/originals/72/98/03/7298033008c80fa30c625b02f085a3ab.png", starting_wealth: "1d6 × 10 gp (average 35 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", source_id: occult_adventures.id, description: "Kineticists are living channels for elemental matter and energy, manipulating the world around them by drawing upon inner reserves from their own bodies. Kineticists often awaken to their kinetic abilities during a violent or traumatic experience, releasing their power involuntarily. As kinetic power is seldom inherited, kineticists are rarely able to find mentors to guide them, so they must delve into these mysteries on their own to learn to control their gifts.

Role: Kineticists generally use their powers to assail their foes from range, but based on the way their talents develop, they can channel their kinetic abilities for a variety of situations. Kineticists are usually quite different from their families and friends, so they often strike out on their own or alongside others with extraordinary talents.

Alignment: Any.")

ClassSkillsetSkill.create!(klass_id: kineticist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Acrobatics").id)
ClassSkillsetSkill.create!(klass_id: kineticist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: kineticist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Heal").id)
ClassSkillsetSkill.create!(klass_id: kineticist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Intimidate").id)
ClassSkillsetSkill.create!(klass_id: kineticist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Knowledge").id)
ClassSkillsetSkill.create!(klass_id: kineticist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Perception").id)
ClassSkillsetSkill.create!(klass_id: kineticist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: kineticist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Stealth").id)
ClassSkillsetSkill.create!(klass_id: kineticist.id, skillset_id: cr.id, skill_id: Skill.find_by!(name: "Use Magic Device").id)

ClassSkillsetSkill.create!(klass_id: kineticist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Acrobatics").id)
ClassSkillsetSkill.create!(klass_id: kineticist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Craft").id)
ClassSkillsetSkill.create!(klass_id: kineticist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Heal").id)
ClassSkillsetSkill.create!(klass_id: kineticist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Intimidate").id)
ClassSkillsetSkill.create!(klass_id: kineticist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Knowledge").id)
ClassSkillsetSkill.create!(klass_id: kineticist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Perception").id)
ClassSkillsetSkill.create!(klass_id: kineticist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Profession").id)
ClassSkillsetSkill.create!(klass_id: kineticist.id, skillset_id: ravnica_custom.id, skill_id: Skill.find_by!(name: "Stealth").id)


# /////////////////////////////////////////////////////
# <-*-*-----*-*-*- Base Class Features!-*-*-*-----*-*->
# /////////////////////////////////////////////////////

kineticist1 = KlassFeature.create!(klass_id: kineticist.id, name: "Weapon and Armor Proficiency", description: "Kineticists are proficient with all simple weapons and light armor, but not shields.")
  FeatureLevel.create!(klass_feature_id: kineticist1.id, level: 1, table_description: "")
  kineticist1_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: kineticist1.id, feature_id: kineticist1_feature.id)
    FeatureWeaponProficiency.create!(feature_id: kineticist1_feature.id, proficiency_group: "Simple")
    FeatureArmorProficiency.create!(feature_id: kineticist1_feature.id, proficiency_group: "Light")

kineticist2 = KlassFeature.create!(klass_id: kineticist.id, name: "Elemental Focus", description: "At 1st level, a kineticist chooses one primary element on which to focus. This element determines how she accesses the raw power of the Ethereal Plane, and grants her access to specific wild talents (see below) and additional class skills. She gains her selected element’s basic utility wild talent (basic telekinesis, basic aerokinesis, etc.) as a bonus wild talent.", specialization: true, choice_amount: 1)
  FeatureLevel.create!(klass_feature_id: kineticist2.id, level: 1, table_description: "Elemental Focus")

kineticist3 = KlassFeature.create!(klass_id: kineticist.id, name: "Wild Talents", description: "A kineticist can use wild talents—magical abilities similar to spells but drawn from the kineticist’s innate psychic talent and usable at will. Wild talents are typically spell-like abilities (though some are supernatural abilities), and take a standard action to use unless otherwise noted. A wild talent always has the elemental descriptor or descriptors (aether, air, earth, fire, or water) matching its element entry. A wild talent that can be used with any of several elements gains the appropriate elemental descriptor when used with an element. For example, the wall wild talent gains the earth descriptor when used by a geokineticist.

Every wild talent has an effective spell level. A kineticist can always select 1st-level wild talents, but she can select a wild talent of a higher level only if her kineticist level is at least double the wild talent’s effective spell level. Kinetic blast and defense wild talents are always considered to have an effective spell level equal to 1/2 the kineticist’s class level (to a maximum effective spell level of 9th at kineticist level 18th).

Unless otherwise noted, the DC for a saving throw against a wild talent is equal to 10 + the wild talent’s effective spell level + the kineticist’s Constitution modifier. The kineticist uses her Constitution modifier on all concentration checks for wild talents.

In addition to the wild talents she gains from her other class features, at 2nd level and every 2 levels thereafter, a kineticist selects a new utility wild talent from the list of options available to her. A kineticist can select only universal wild talents or those that match her element (see Elemental Focus above). At 6th, 10th, and 16th levels, a kineticist can replace one of her utility wild talents with another wild talent of the same level or lower. She can’t replace a wild talent that she used to qualify for another of her wild talents.")
  FeatureLevel.create!(klass_feature_id: kineticist3.id, level: 1, table_description: "")
  FeatureLevel.create!(klass_feature_id: kineticist3.id, level: 2, table_description: "Utility Wild Talent")
  FeatureLevel.create!(klass_feature_id: kineticist3.id, level: 4, table_description: "Utility Wild Talent")
  FeatureLevel.create!(klass_feature_id: kineticist3.id, level: 6, table_description: "Utility Wild Talent")
  FeatureLevel.create!(klass_feature_id: kineticist3.id, level: 8, table_description: "Utility Wild Talent")
  FeatureLevel.create!(klass_feature_id: kineticist3.id, level: 10, table_description: "Utility Wild Talent")
  FeatureLevel.create!(klass_feature_id: kineticist3.id, level: 12, table_description: "Utility Wild Talent")
  FeatureLevel.create!(klass_feature_id: kineticist3.id, level: 14, table_description: "Utility Wild Talent")
  FeatureLevel.create!(klass_feature_id: kineticist3.id, level: 16, table_description: "Utility Wild Talent")
  FeatureLevel.create!(klass_feature_id: kineticist3.id, level: 18, table_description: "Utility Wild Talent")
  FeatureLevel.create!(klass_feature_id: kineticist3.id, level: 20, table_description: "Utility Wild Talent")

kineticist3 = KlassFeature.create!(klass_id: kineticist.id, name: "Burn", description: "At 1st level, a kineticist can overexert herself to channel more power than normal, pushing past the limit of what is safe for her body by accepting burn. Some of her wild talents allow her to accept burn in exchange for a greater effect, while others require her to accept a certain amount of burn to use that talent at all. For each point of burn she accepts, a kineticist takes 1 point of nonlethal damage per character level. This damage can’t be healed by any means other than getting a full night’s rest, which removes all burn and associated nonlethal damage. Nonlethal damage from burn can’t be reduced or redirected, and a kineticist incapable of taking nonlethal damage can’t accept burn. A kineticist can accept only 1 point of burn per round. This limit rises to 2 points of burn at 6th level, and rises by 1 additional point every 3 levels thereafter. A kineticist can’t choose to accept burn if it would put her total number of points of burn higher than 3 + her Constitution modifier (though she can be forced to accept more burn from a source outside her control). A kineticist who has accepted burn never benefits from abilities that allow her to ignore or alter the effects she receives from nonlethal damage.")
  FeatureLevel.create!(klass_feature_id: kineticist3.id, level: 1, table_description: "Burn")

kineticist4 = KlassFeature.create!(klass_id: kineticist.id, name: "Kinetic Blast", description: "At 1st level, a kineticist gains a kinetic blast wild talent of her choice. This kinetic blast must be a simple blast that matches her element. Simple blasts are listed with their corresponding elements.

As a standard action, the kineticist can unleash a kinetic blast at a single target up to a range of 30 feet. She must have at least one hand free to aim the blast (or one prehensile appendage, if she doesn’t have hands). All damage from a kinetic blast is treated as magic for the purpose of bypassing damage reduction. Kinetic blasts count as a type of weapon for the purpose of feats such as Weapon Focus. The kineticist is never considered to be wielding or gripping the kinetic blast (regardless of effects from form infusions; see Infusion), and she can’t use Vital Strike feats with kinetic blasts. Even the weakest kinetic blast involves a sizable mass of elemental matter or energy, so kinetic blasts always deal full damage to swarms of any size (though only area blasts deal extra damage to swarms). A readied kinetic blast can be used to counterspell any spell of equal or lower level that shares its descriptor. A kinetic blast that deals energy damage of any type (including force) has the corresponding descriptor.

Each simple blast is either a physical blast or an energy blast.

Physical blasts are ranged attacks that deal an amount of damage equal to 1d6+1 + the kineticist’s Constitution modifier, increasing by 1d6+1 for every 2 kineticist levels beyond 1st. Spell resistance doesn’t apply against physical blasts.

Energy blasts are ranged touch attacks that deal an amount of damage equal to 1d6 + 1/2 the kineticist’s Constitution modifier, increasing by 1d6 for every 2 kineticist levels beyond 1st.

Composite blasts combine elements to form a new blast. When a kineticist gains a new element through expanded element, she gains access to all composite blasts for which she qualifies. All composite blasts are listed after the kineticist elements.

Most composite blasts are either physical or energy blasts, like simple blasts.

Physical composite blasts deal an amount of damage equal to 2d6+2 + the kineticist’s Constitution modifier, increasing by 2d6+2 for every 2 kineticist levels beyond 1st.

Energy composite blasts deal an amount of damage equal to 2d6 + 1/2 the kineticist’s Constitution modifier, increasing by 2d6 for every 2 kineticist levels beyond 1st.", specialization: true, choice_amount: 1)
  FeatureLevel.create!(klass_feature_id: kineticist4.id, level: 1, table_description: "Kinetic Blast")

kineticist5 = KlassFeature.create!(klass_id: kineticist.id, name: "Gather Power", description: "If she has both hands free (or all of her prehensile appendages free, for unusual kineticists), a kineticist can gather energy or elemental matter as a move action. Gathering power creates an extremely loud, visible display in a 20-foot radius centered on the kineticist, as the energy or matter swirls around her. Gathering power in this way allows the kineticist to reduce the total burn cost of a blast wild talent she uses in the same round by 1 point. The kineticist can instead gather power for 1 full round in order to reduce the total burn cost of a blast wild talent used on her next turn by 2 points (to a minimum of 0 points). If she does so, she can also gather power as a move action during her next turn to reduce the burn cost by a total of 3 points. If the kineticist takes damage during or after gathering power and before using the kinetic blast that releases it, she must succeed at a concentration check (DC = 10 + damage taken + effective spell level of her kinetic blast) or lose the energy in a wild surge that forces her to accept a number of points of burn equal to the number of points by which her gathered power would have reduced the burn cost. This ability can never reduce the burn cost of a wild talent below 0 points.")
  FeatureLevel.create!(klass_feature_id: kineticist5.id, level: 1, table_description: "Gather Power")

kineticist6 = KlassFeature.create!(klass_id: kineticist.id, name: "Infusion", description: "At 1st level, a kineticist gains an infusion wild talent from the list of options available based on her elemental focus. She gains additional infusions at 3rd, 5th, 9th, 11th, 13th, 17th, and 19th levels. By using infusions along with her kinetic blasts, a kineticist can alter her kinetic blasts to suit her needs. Infusions come in two types, each of which changes a kinetic blast differently: a substance infusion causes an additional effect, while a form infusion causes the kinetic blast to manifest in a different way. Each infusion can alter only certain kinds of kinetic blasts, which are listed in its Associated Blasts entry. Each time the kineticist uses one of her kinetic blast wild talents, she can apply up to one associated form infusion and up to one associated substance infusion.

Some infusions change the action required to activate a kinetic blast or entirely transform the kinetic blast’s normal effects.

The burn cost listed in each infusion’s Burn entry is added to the burn cost of the kinetic blast the infusion modifies.

The DC for a save against an infusion is based on the associated kinetic blast’s effective spell level, not the level of the infusion. The DCs for form infusions are calculated using the kineticist’s Dexterity modifier instead of her Constitution modifier. When a kineticist modifies a kinetic blast with a form infusion and a substance infusion that both require saving throws, each target first attempts a saving throw against the form infusion. If a target succeeds and a successful save negates the infusion’s effects, the entire kinetic blast is negated; otherwise, the target then attempts a saving throw against the substance infusion. If a kineticist’s form and substance infusions both alter the kinetic blast’s damage, apply the substance infusion’s alteration first.

At 5th, 11th, and 17th levels, a kineticist can replace one of her infusions with another infusion of the same effective spell level or lower. She can’t replace an infusion that she used to qualify for another of her wild talents.")
  FeatureLevel.create!(klass_feature_id: kineticist6.id, level: 1, table_description: "Infusion")
  FeatureLevel.create!(klass_feature_id: kineticist6.id, level: 3, table_description: "Infusion")
  FeatureLevel.create!(klass_feature_id: kineticist6.id, level: 5, table_description: "Infusion")
  FeatureLevel.create!(klass_feature_id: kineticist6.id, level: 9, table_description: "Infusion")
  FeatureLevel.create!(klass_feature_id: kineticist6.id, level: 11, table_description: "Infusion")
  FeatureLevel.create!(klass_feature_id: kineticist6.id, level: 13, table_description: "Infusion")
  FeatureLevel.create!(klass_feature_id: kineticist6.id, level: 17, table_description: "Infusion")
  FeatureLevel.create!(klass_feature_id: kineticist6.id, level: 19, table_description: "Infusion")

kineticist7 = KlassFeature.create!(klass_id: kineticist.id, name: "Elemental Defense", description: "At 2nd level, a kineticist gains her element’s defensive wild talent.

She must select the expanded defense utility wild talent to gain the defensive wild talent of any element she gains via the expanded element class feature.")
  FeatureLevel.create!(klass_feature_id: kineticist7.id, level: 2, table_description: "Elemental Defense")

kineticist8 = KlassFeature.create!(klass_id: kineticist.id, name: "Elemental Overflow", description: "At 3rd level, a kineticist’s body surges with energy from her chosen element whenever she accepts burn, causing her to glow with a nimbus of fire, weep water from her pores, or experience some other thematic effect. In addition, she receives a bonus on her attack rolls with kinetic blasts equal to the total number of points of burn she currently has, to a maximum bonus of +1 for every 3 kineticist levels she possesses. She also receives a bonus on damage rolls with her kinetic blast equal to double the bonus on attack rolls. The kineticist can suppress the visual effects of elemental overflow by concentrating for 1 full round, but doing so suppresses all of this ability’s other benefits, as well. The next time the kineticist uses any wild talent, the visual effects and benefits return instantly.

As a kineticist’s body becomes more and more suffused with her element, she begins to gain more powerful benefits.

Starting at 6th level, whenever she has at least 3 points of burn, the kineticist gains a +2 size bonus to two physical ability scores of her choice. She also gains a chance to ignore the effects of a critical hit or sneak attack equal to 5% × her current number of points of burn. At 11th level, whenever the kineticist has at least 5 points of burn, these bonuses increase to a +4 size bonus to one physical ability score of her choice and a +2 size bonus to each of her other two physical ability scores.

At 16th level, whenever the kineticist has at least 7 points of burn, these bonuses increase to a +6 size bonus to one physical ability score of her choice, a +4 size bonus to a second physical ability score of her choice, and a +2 size bonus to the remaining physical ability score.")
  FeatureLevel.create!(klass_feature_id: kineticist8.id, level: 3, table_description: "Elemental Overflow +1")
  FeatureLevel.create!(klass_feature_id: kineticist8.id, level: 6, table_description: "Elemental Overflow +2")
  FeatureLevel.create!(klass_feature_id: kineticist8.id, level: 6, table_description: "Elemental Overflow Increase")
  FeatureLevel.create!(klass_feature_id: kineticist8.id, level: 9, table_description: "Elemental Overflow +3")
  FeatureLevel.create!(klass_feature_id: kineticist8.id, level: 11, table_description: "Elemental Overflow Increase")
  FeatureLevel.create!(klass_feature_id: kineticist8.id, level: 12, table_description: "Elemental Overflow +4")
  FeatureLevel.create!(klass_feature_id: kineticist8.id, level: 15, table_description: "Elemental Overflow +5")
  FeatureLevel.create!(klass_feature_id: kineticist8.id, level: 17, table_description: "Elemental Overflow Increase")
  FeatureLevel.create!(klass_feature_id: kineticist8.id, level: 18, table_description: "Elemental Overflow +6")

kineticist9 = KlassFeature.create!(klass_id: kineticist.id, name: "Infusion Specialization", description: "At 5th level, whenever a kineticist uses one or more infusions with a blast, she reduces the combined burn cost of the infusions by 1. This can’t reduce the total cost of the infusions used below 0.

She reduces the burn cost by 1 additional point at 8th, 11th, 14th, 17th, and 20th levels.")
  FeatureLevel.create!(klass_feature_id: kineticist9.id, level: 5, table_description: "Infusion Specialization 1")
  FeatureLevel.create!(klass_feature_id: kineticist9.id, level: 8, table_description: "Infusion Specialization 2")
  FeatureLevel.create!(klass_feature_id: kineticist9.id, level: 11, table_description: "Infusion Specialization 3")
  FeatureLevel.create!(klass_feature_id: kineticist9.id, level: 14, table_description: "Infusion Specialization 4")
  FeatureLevel.create!(klass_feature_id: kineticist9.id, level: 17, table_description: "Infusion Specialization 5")
  FeatureLevel.create!(klass_feature_id: kineticist9.id, level: 20, table_description: "Infusion Specialization 6")

kineticist10 = KlassFeature.create!(klass_id: kineticist.id, name: "Metakinesis", description: "At 5th level, a kineticist gains the ability to alter her kinetic blasts as if with metamagic feats by accepting burn. By accepting 1 point of burn, she can empower her kinetic blast (as if using Empower Spell). At 9th level, by accepting 2 points of burn, she can maximize her kinetic blast as if using Maximize Spell. At 13th level, by accepting 3 points of burn, she can quicken her kinetic blast as if using Quicken Spell.

At 17th level, by accepting 4 points of burn, the kineticist can use her kinetic blast twice with the same standard action, or swift action if she also uses metakinesis to quicken the blast.

When she uses a double kinetic blast, all modifications, such as metakinesis and infusions, apply to both of the blasts, but the kineticist needs to pay the burn cost only once.")
  FeatureLevel.create!(klass_feature_id: kineticist10.id, level: 5, table_description: "Metakinesis (Empower)")
  FeatureLevel.create!(klass_feature_id: kineticist10.id, level: 9, table_description: "Metakinesis (Maximize)")
  FeatureLevel.create!(klass_feature_id: kineticist10.id, level: 13, table_description: "Metakinesis (Quicken)")
  FeatureLevel.create!(klass_feature_id: kineticist10.id, level: 17, table_description: "Metakinesis (Twice)")

kineticist11 = KlassFeature.create!(klass_id: kineticist.id, name: "Internal Buffer", description: "At 6th level, a kineticist’s study of her body and the elemental forces that course through it allow her to form an internal buffer to store extra energy.

The buffer starts empty and doesn’t replenish each day, but the kineticist can accept 1 point of burn to add 1 point to the buffer as a full-round action, to a maximum of 1 point total. This maximum increases to 2 points at 11th level and to 3 points at 16th level. Once the kineticist adds points to her buffer, they remain indefinitely until she spends them.

When she would otherwise accept burn, a kineticist can spend 1 point from her buffer to avoid accepting 1 point of burn. She cannot spend more than 1 point from her buffer in this way for a single wild talent. Points spent from the internal buffer don’t activate elemental overflow or add to its effects. Similarly, this buffer can be used to exceed the limit on the number of points of burn the kineticist can accept in a single turn.")
  FeatureLevel.create!(klass_feature_id: kineticist11.id, level: 6, table_description: "Internal Buffer 1")
  FeatureLevel.create!(klass_feature_id: kineticist11.id, level: 11, table_description: "Internal Buffer 2")
  FeatureLevel.create!(klass_feature_id: kineticist11.id, level: 16, table_description: "Internal Buffer 3")

kineticist12 = KlassFeature.create!(klass_id: kineticist.id, name: "Expanded Element", description: "At 7th level, a kineticist learns to use another element or expands her understanding of her own element. She can choose any element, including her primary element. She gains one of that element’s simple blast wild talents that she does not already possess, if any. She also gains all composite blast wild talents whose prerequisites she meets, as well as the basic wild talent of her chosen expanded element (for instance, basic aerokinesis if she chooses air). See Composite Blasts for additional rules for and descriptions of composite blasts. She doesn’t gain the defensive wild talent of the expanded element unless she later selects it with the expanded defense utility wild talent, nor does she gain the additional class skills from her expanded element unless she later selects the Elemental Knowledge feat.

If the kineticist’s expanded element is different from her primary element, she treats her kineticist level as 4 levels lower for the purpose of determining which wild talents she can learn from her expanded element.

If the kineticist chooses to expand her understanding of an element she already has, she gains an additional utility wild talent or infusion of her choice from that element, as if from her infusion or wild talent class feature, as appropriate.

At 15th level, the kineticist can either select a new element or expand her understanding of her original element. She can’t select the same element she selected at 7th level unless it is her primary element. She gains all the benefits from her new expanded element as listed above. However, if the kineticist selected her primary element as her expanded element at both 7th and 15th levels, her mastery of that element increases. For wild talents of her element, the kineticist gains a +1 bonus on attack rolls and damage rolls, as well as to caster level and DCs.")
  FeatureLevel.create!(klass_feature_id: kineticist12.id, level: 7, table_description: "Expanded Element")
  FeatureLevel.create!(klass_feature_id: kineticist12.id, level: 15, table_description: "Expanded Element")

kineticist13 = KlassFeature.create!(klass_id: kineticist.id, name: "Supercharge", description: "At 11th level, when using gather power as a move action, a kineticist can reduce the total burn cost of a single wild talent by 2 points instead of 1. When using gather power for 1 full round, she can reduce the burn cost of a single wild talent by 3 points instead of 2.")
  FeatureLevel.create!(klass_feature_id: kineticist13.id, level: 11, table_description: "Supercharge")
#
kineticist14 = KlassFeature.create!(klass_id: kineticist.id, name: "Composite Specialization", description: "At 16th level, a kineticist becomes more adept at creating composite blasts. She reduces the burn cost of all composite blasts by 1 point.

This can’t reduce the cost of a composite blast below 0 points.")
  FeatureLevel.create!(klass_feature_id: kineticist14.id, level: 16, table_description: "Composite Specialization")
#
kineticist15 = KlassFeature.create!(klass_id: kineticist.id, name: "Metakinetic Master", description: "At 19th level, a kineticist chooses one type of metakinesis, such as empower or quicken. She reduces the burn cost of that metakinesis by 1 point (to a minimum of 0 points).")
  FeatureLevel.create!(klass_feature_id: kineticist15.id, level: 19, table_description: "Metakinetic Master")

kineticist16 = KlassFeature.create!(klass_id: kineticist.id, name: "Omnikinesis", description: "At 20th level, a kineticist transcends the distinction between the different elements and can bend all creation to her will. By accepting 1 point of burn (in addition to any burn requirement of the kinetic blast she chooses), she can use any blast wild talent she doesn’t know.

By accepting 1 point of burn as a standard action, she can change any of her wild talents into any other wild talent of the same category (such as simple blasts or defense) for 24 hours, ignoring any elemental requirements or restrictions (but not any other requirements or restrictions).")
  FeatureLevel.create!(klass_feature_id: kineticist16.id, level: 20, table_description: "Omnikinesis")

print "Kineticist Features Created! \r"

# ///////////////////////////////////////////////////////
# <-*-*-----*-*-*- Class Specializations!-*-*-*-----*-*->
# ///////////////////////////////////////////////////////

aether = KlassSpecialization.create!(name: "Aether", description: "Kineticists who focus on the element of aether—a rare substance formed when elemental energy affects the Ethereal Plane—are called telekineticists. Telekineticists use strands of aether to move objects with their minds.

Class Skills: A telekineticist adds Knowledge (engineering) and Sleight of Hand to her list of class skills.

Basic Manipulation: A telekineticist gains basic telekinesis.

<underline>Basic Telekinesis</underline>

Element(s) aether; Type utility (Sp); Level 1; Burn 0

This ability is similar to mage hand, except you can move an object that weighs up to 5 pounds per 2 kineticist levels you possess (minimum 5 pounds), and you can move magical objects. Additionally, you can create a container of entwined strands of aether in order to hold liquids or piles of small objects of the same weight. You can dip the container to pick up or drop a liquid as a move action. If you possess the extended range wild talent, you can increase the range of basic telekinesis to medium range and increase the rate of movement to 30 feet per round, and if you possess the extreme range wild talent, You can increase the range of basic telekinesis to long range and increase the rate of movement to 60 feet per round. You can also use your basic telekinesis to duplicate the effects of the open/close cantrip.

Simple Blast: A telekineticist gains telekinetic blast as a simple blast wild talent.

<underline>Telekinetic Blast</underline>

Element(s) aether; Type simple blast (Sp); Level —; Burn 0

Blast Type: physical; Damage bludgeoning, piercing, or slashing

You throw a nearby unattended object at a single foe as a ranged attack. The object must weigh no more than 5 pounds per kineticist level you possess. If the attack hits, the target and the thrown object each take the blast’s damage. Since the object is enfolded in strands of aether, even if you use this power on a magic weapon or other unusual object, the attack doesn’t use any of the magic weapon’s bonuses or effects; it simply deals your blast damage. Alternatively, you can loosen the strands of aether in order to deal damage to both the object and the target as though you had thrown the object yourself (instead of dealing your normal blast damage).

You substitute your Constitution modifier for your Strength modifier if throwing the object would have added your Strength modifier on the damage roll, and you don’t take the –4 penalty on the attack roll for throwing an object that wasn’t designed to be thrown. In this case, the object’s special effects apply (including effects from its materials), and if the object is a weapon, you must be proficient with it and able to wield it with one hand; otherwise, the item deals damage as a one-handed improvised weapon for a creature of your size.

Defense: a telekineticist’s defensive wild talent is force ward.

<underline>Force Ward</underline>

Element(s) aether; Type defense (Su); Level —; Burn 0

You constantly surround yourself with a ward of force. You gain a number of temporary hit points equal to your kineticist level.

You always lose these temporary hit points first, even before other temporary hit points. If an attack deals less damage than you still have as temporary hit points from force ward, it still reduces those temporary hit points but otherwise counts as a miss for the purpose of abilities that trigger on a hit or a miss. These temporary hit points regenerate at a rate of 1 per minute. By accepting 1 point of burn as a standard action, you can increase the maximum number of temporary hit points provided by your force ward by half your kineticist level until the next time your burn is removed.

If you use this ability multiple times, the increases stack. For every 2 points of burn you accept in this way, your force ward’s rate of regeneration increases by 1 hit point per minute. Whenever you accept burn while using an aether wild talent, you siphon some of the energy from the aether flowing through you and your force ward recovers a number of temporary hit points equal to your character level, up to its current maximum. You can dismiss or restore your force ward as an immediate action, but doing so doesn’t change the number of temporary hit points available, and the temporary hit points don’t recover while this ability is inactive.

Wild Talents: A telekineticist qualifies for the following wild talents in addition to all those listed as universal:

Infusion: 1st—pushing infusion, telekinetic boomerang; 2nd—bowling infusion; 3rd—foe throw, force hook; 6th—disintegrating infusion; 8th—many throw

Utility: 1st—basic telekinesis, kinetic cover, kinetic healer, telekinetic finesse; 2nd—telekinetic haul; 3rd—self telekinesis, telekinetic invisibility, touchsight; 4th—healing burst, telekinetic maneuvers, touchsight (spying); 5th—aether puppet, force barrier, self telekinesis (greater), touchsight (reactive); 6th—kinetic revivification, suffocate; 7th—spell deflection; 8th—telekinetic deflection, telekinetic globe; 9th—aether architect")
  KlassFeatureKlassSpecialization.create!(klass_feature_id: kineticist2.id, klass_specialization_id: aether.id)

air = KlassSpecialization.create!(name: "Air", description: "Kineticists who focus on the element of air are called aerokineticists. Aerokineticists often control air flow or electricity, specializing in mobility and ranged combat.

Class Skills: An aerokineticist adds Fly and Knowledge (nature) to her list of class skills.

Basic Manipulation: An aerokineticists gains basic aerokinesis.

<underline>Basic Aerokinesis</underline>

Element(s) air; Type utility (Sp); Level 1; Burn 0

You can create a light breeze that blows against a creature or object from a direction of your choice that follows the target wherever it goes. The breeze grants the subject a +2 bonus on saves against very hot conditions, severe heat, breath weapons, and cloud vapors and gases (such as cloudkill, stinking cloud, and inhaled poisons). This wild talent doesn’t function without air or while underwater. You can have only one such breeze active at any one time.

You can also use your aerokinesis to make it harder to detect you or others by scent. You can designate a number of creatures or objects equal to your Constitution bonus. These creatures and objects always count as being downwind for the purpose of determining the distance at which they can be detected by scent. This effect lasts for 1 hour or until you use basic aerokinesis again, whichever comes first.

Simple Blast: An aerokineticist can select either air blast or electric blast as her simple blast. She gains one of them when she first selects air, and must select air again with expanded element to gain the other.

<underline>Air Blast</underline>

Element(s) air; Type simple blast (Sp); Level —; Burn 0

Blast Type: physical; Damage bludgeoning

You batter a single foe with a gust of air.

<underline>Electric Blast</underline>

Element(s) air; Type simple blast (Sp); Level —; Burn 0

Blast Type: energy; Damage electricity

You shoot an arc of electricity to shock a single foe.

Defense: An aerokineticist’s defensive wild talent is enveloping winds.

<underline>Enveloping Winds</underline>

Element(s) air; Type defense (Su); Level —; Burn 0

You constantly surround yourself with a whirling torrent of air, crackling arcs of lightning, or both to protect yourself from ranged attacks. All ranged attacks made with physical weapons suffer a 20% miss chance against you, except for attacks from massive weapons such as a giant’s thrown boulder or a ballista. This ability has no effect on ray attacks. The miss chance increases by 5% for every 5 kineticist levels you possess beyond 2nd. By accepting 1 point of burn, you can increase the miss chance by 5% until the next time your burn is removed. You can continue to accept points of burn to increase the miss chance further, up to a maximum of 75%. Whenever you accept burn while using an air wild talent, the energy surging through you causes your enveloping winds to also affect non-physical ranged attacks such as ray attacks for 1 round.

You can dismiss or restore this effect as an immediate action.

Wild Talents: A aerokineticist qualifies for the following wild talents in addition to all those listed as universal:

Infusion: 1st—energize weapon, gusting infusion, pushing infusion, thundering infusion; 2nd—penetrating infusion; 3rd—magnetic infusion, synaptic infusion; torrent; 4th—cyclone; 5th—chain; 7th—cloud;

Utility: 1st—aerial adaptation, air cushion, air’s leap, air’s reach, air shroud, basic aerokinesis, voice of the wind; 2nd—living capacitor, voice of the wind (greater); 3rd—aerial evasion, celerity, engulfing winds, windsight, wings of air; 4rd—body of air; 5th—air shroud (greater), winfsight (greater); 6th—suffocate, wind manipulator; 8th—weather master")
  KlassFeatureKlassSpecialization.create!(klass_feature_id: kineticist2.id, klass_specialization_id: air.id)

earth = KlassSpecialization.create!(name: "Earth", description: "Kineticists who focus on the element of earth are called geokineticists. Geokineticists manipulate the earth itself, and they are masters of defensive techniques.

Class Skills: A geokineticist adds Climb and Knowledge (dungeoneering) to her list of class skills.

Basic Manipulation: A geokineticist gains basic geokinesis.

<underline>Basic Geokinesis</underline>

Element(s) earth; Type utility (Sp); Level 1; Burn 0

You can move up to 5 pounds per kineticist level of rocks, loose earth, sand, clay, and other similar materials up to 15 feet as a move action. You can search earthen and stone areas from a distance as if using the sift cantrip.

Simple Blast: A geokineticist gains earth blast as a simple blast wild talent.

<underline>Earth Blast</underline>

Element(s) earth; Type simple blast (Sp); Level —; Burn 0

Blast Type: physical; Damage bludgeoning, piercing, or slashing

You shape earth into clumps or shards and send them flying at a foe.

Defense: A geokineticist’s defensive wild talent is flesh of stone.

<underlin>Flesh of Stone</underline>

Element(s) earth; Type defense (Su); Level —; Burn 0

Your skin hardens like stone, dampening the impact of most attacks. You gain DR 1/adamantine. This DR increases by 1 for every 2 kineticist levels you possess beyond 2nd. By accepting 1 point of burn, you can increase the DR by 1 until the next time your burn is removed, to a maximum DR equal to your kineticist level. Whenever you accept burn while using an earth wild talent, the energy surging through you causes your damage reduction to change from DR/adamantine to DR/— for 1 round.

You can dismiss and restore this effect as an immediate action.

Wild Talents: A geokineticist qualifies for the following wild talents in addition to all those listed as universal:

Infusion: 1st—pushing infusionl; 2nd—bowling infusion, entangling infusion; 3rd—impale, magnetic infusion, rare metal infusion; 5th—tremor; 6th—deadly earth; 7th—fragmentation

Utility: 1st—basic geokinesis, eath walk, kinetic cover; 2nd—earth climb; 3rd—jagged flesh, tremorsense; 4th—earthmeld, shift earth, enduring earth; 5th—earth glide, stone sculptor, tremorsense (greater); 7th—shift earth (greater); 8th—earth tongue; 9th—seismic master")
  KlassFeatureKlassSpecialization.create!(klass_feature_id: kineticist2.id, klass_specialization_id: earth.id)

fire = KlassSpecialization.create!(name: "Fire", description: "Kineticists who focus on the element of fire are called pyrokineticists. Pyrokineticists wield elemental fire as a potent weapon, and they possess a powerful offense.

Class Skills: A pyrokineticist adds Escape Artist and Knowledge (nature) to her list of class skills.

Basic Manipulation: A pyrokineticist gains basic pyrokinesis.

<underline>Basic Pyrokinesis</underline>

Element(s) fire; Type utility (Sp); Level 1; Burn 0

You can use your inner flame to reproduce the effects of a flare, light, or spark cantrip, except that the light you create with light produces heat like a normal flame; using any of the three abilities ends any previous light effect from this wild talent.

Simple Blast: A pyrokineticist gains fire blast as a simple blast wild talent.

<underline>Fire Blast</underline>

Element(s) fire; Type simple blast (Sp); Level —; Burn 0

Blast Type: energy; Damage fire

You unleash a gout of flickering fire to burn a single foe.

Defense: A pyrokineticist’s defensive wild talent is searing flesh.

<underline>Searing Flesh</underline>

Element(s) fire; Type defense (Su); Level —; Burn 0

Your body becomes painfully hot. Whenever a creature hits you with a natural attack or an unarmed strike, that creature takes 1 point of fire damage per 4 kineticist levels you possess (minimum 1 point of fire damage). A creature in a grapple with you takes double this amount of damage at the end of each of its turns.

Weapons that strike you also take this damage, though the damage is unlikely to penetrate the weapon’s hardness. By accepting 1 point of burn, you can increase this damage by 1 point per 4 kineticist levels you possess until the next time your burn is removed. You can increase the damage in this way up to seven times.

Whenever you accept burn while using a fire wild talent, the surging flame causes your searing flesh to deal double its current amount of damage for 1 round (a creature in a grapple with you takes a total of four times as much damage as normal). You can dismiss or restore this effect as an immediate action.

Wild Talents: A pyrokineticist qualifies for the following wild talents in addition to all those listed as universal:

Infusion: 1st—burning infusion, dazzling infusion, energize weapon, fan of flames; 2nd—penetrating infusion; 3rd—eruption, foxfire infusion, torrent; 4th—detonation, flash infusion; 5th—unravelling infusion; 6th—brilliant infusion; 7th—explosion, pure flame infusion

Utility: 1st—basic pyrokinesis, cold adaptation, fire sculptor, fire’s fury, heat adaptation; 2nd flame trap, foxfire, searing flame; 3rd firesight, heatwave, flame jet, smoke storm; 5th flame jet (greater), flame shield, trail of flames; 9th from the ashes")
  KlassFeatureKlassSpecialization.create!(klass_feature_id: kineticist2.id, klass_specialization_id: fire.id)

# IDENTIFIER = KlassSpecialization.create!(name: "", description: "")
#   KlassFeatureKlassSpecialization.create!(klass_feature_id: CLASS.id, klass_specialization_id: IDENTIFIER.id)

# IDENTIFIER = KlassSpecialization.create!(name: "", description: "")
#   KlassFeatureKlassSpecialization.create!(klass_feature_id: CLASS.id, klass_specialization_id: IDENTIFIER.id)

# IDENTIFIER = KlassSpecialization.create!(name: "", description: "")
#   KlassFeatureKlassSpecialization.create!(klass_feature_id: CLASS.id, klass_specialization_id: IDENTIFIER.id)

# IDENTIFIER = KlassSpecialization.create!(name: "", description: "")
#   KlassFeatureKlassSpecialization.create!(klass_feature_id: CLASS.id, klass_specialization_id: IDENTIFIER.id)

# IDENTIFIER = KlassSpecialization.create!(name: "", description: "")
#   KlassFeatureKlassSpecialization.create!(klass_feature_id: CLASS.id, klass_specialization_id: IDENTIFIER.id)

# ///////////////////////////////////////////////////////
# <-*-*-----*-*-*- Class Feature Options!-*-*-*-----*-*->
# ///////////////////////////////////////////////////////

FeatureOption.create!(name: "Cold Adaptation", klass_feature_id: kineticist3.id, level_available: 1, description: "Element(s) fire or water; Type utility (Sp); Level 1; Burn 0

You are constantly protected by endure elements against cold temperatures only.

You gain cold resistance equal to twice your current amount of burn.")

FeatureOption.create!(name: "Heat Adaptation", klass_feature_id: kineticist3.id, level_available: 1, description: "Element(s) fire or water; Type utility (Sp); Level 1; Burn 0

You are constantly protected by endure elements against hot temperatures only.

You gain fire resistance equal to twice your current amount of burn.")

FeatureOption.create!(name: "Burning Infusion", klass_feature_id: kineticist6.id, level_available: 1, description: "Element(s) fire; Type substance infusion; Level 1; Burn 1
Associated Blasts blue flame, fire, magma, plasma
Saving Throw Reflex negates

Your kinetic blast ignites your foes. Whenever an infused blast hits a foe and penetrates its spell resistance, that foe catches on fire, regardless of whether it takes damage. A foe that catches fire takes 1d6 points of fire damage each round until the fire is extinguished. Against a creature on fire from this infusion, any fire kinetic blasts gain a +2 bonus on attack rolls, to DCs, and on caster level checks to overcome spell resistance.")

FeatureOption.create!(name: "Extended Range", klass_feature_id: kineticist6.id, level_available: 1, description: "Element(s) universal; Type form infusion; Level 1; Burn 1
Associated Blasts any
Saving Throw none

Your kinetic blast can strike any target within 120 feet.")

FeatureOption.create!(name: "Kinetic Blade", klass_feature_id: kineticist6.id, level_available: 1, description: "Element(s) universal; Type form infusion; Level 1; Burn 1
Associated Blasts any
Saving Throw none

You form a weapon using your kinetic abilities. You create a non-reach, light or one-handed weapon in your hand formed of pure energy or elemental matter. (If you’re a telekineticist, you instead transfer the power of your kinetic blast to any object held in one hand.) The kinetic blade’s shape is purely cosmetic and doesn’t affect the damage dice, critical threat range, or critical multiplier of the kinetic blade, nor does it grant the kinetic blade any weapon special features. The object held by a telekineticist for this form infusion doesn’t prevent her from using gather power.

You can use this form infusion once as part of an attack action, a charge action, or a full-attack action in order to make melee attacks with your kinetic blade. Since it’s part of another action (and isn’t an action itself), using this wild talent doesn’t provoke any additional attacks of opportunity. The kinetic blade deals your kinetic blast damage on each hit (applying any modifiers to your kinetic blast’s damage as normal, but not your Strength modifier). The blade disappears at the end of your turn. The weapon deals the same damage type that your kinetic blast deals, and it interacts with Armor Class and spell resistance as normal for a blast of its type. Even if a telekineticist uses this power on a magic weapon or another unusual object, the attack doesn’t use any of the magic weapon’s bonuses or effects and simply deals the telekineticist’s blast damage. The kinetic blade doesn’t add the damage bonus from elemental overflow.")


# //////////////////////////////////////////////////
# <-*-*-----*-*-*- Class Archetypes!-*-*-*-----*-*->
# //////////////////////////////////////////////////


puts "Kineticist Created!"
