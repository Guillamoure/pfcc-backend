MagicSchool.destroy_all
Component.destroy_all
SpellRange.destroy_all
Subschool.destroy_all
Spell.destroy_all
SpellSubschool.destroy_all
SpellComponent.destroy_all
SpellListSpell.destroy_all
FeatureSpontaneousCasting.destroy_all
FeatureCastableSpell.destroy_all

puts "Spells Destroyed"

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
# <-*-*-----*-*-*- Feature -*-*-*-----*-*->
# /////////////////////////////////////////

cleric6_feature = KlassFeature.find_by(name: "Spontaneous Casting", description: "A good cleric (or a neutral cleric of a good deity) can channel stored spell energy into healing spells that she did not prepare ahead of time. The cleric can “lose” any prepared spell that is not an orison or domain spell in order to cast any cure spell of the same spell level or lower (a cure spell is any spell with “cure” in its name).

An evil cleric (or a neutral cleric of an evil deity) can’t convert prepared spells to cure spells but can convert them to inflict spells (an inflict spell is one with “inflict” in its name).

A cleric who is neither good nor evil and whose deity is neither good nor evil can convert spells to either cure spells or inflict spells (player’s choice). Once the player makes this choice, it cannot be reversed. This choice also determines whether the cleric channels positive or negative energy (see channel energy).").features[0]

warpriest4_feature = KlassFeature.find_by(name: "Spontaneous Casting", description: "A good warpriest (or a neutral warpriest of a good deity) can channel stored spell energy into healing spells that he did not prepare ahead of time. The warpriest can expend any prepared spell that isn’t an orison to cast any cure spell of the same spell level or lower. A cure spell is any spell with “cure” in its name.

An evil warpriest (or a neutral warpriest of an evil deity) can’t convert spells to cure spells, but can convert them to inflict spells. An inflict spell is any spell with “inflict” in its name.

A warpriest that is neither good nor evil and whose deity is neither good nor evil chooses whether he can convert spells into either cure spells or inflict spells. Once this choice is made, it cannot be changed. This choice also determines whether the warpriest channels positive or negative energy (see Channel Energy, below).").features[0]

air_domain3_feature = KlassSpecializationFeature.find_by!(name: "Domain Spells", description: "1st—obscuring mist, 2nd—wind wall, 3rd—gaseous form, 4th—air walk, 5th—control winds, 6th—chain lightning, 7th—elemental body IV (air only), 8th—whirlwind, 9th—elemental swarm (air spell only).", level: 1).features[0]

animal_domain2_feature = KlassSpecializationFeature.find_by!(name: "Speak with Animals", description: "You can speak with animals, as per the spell, for a number of rounds per day equal to 3 + your cleric level.", level: 1).features[0]

animal_domain4_feature = KlassSpecializationFeature.find_by!(name: "Domain Spells", description: "1st—calm animals, 2nd—hold animal, 3rd—dominate animal, 4th—summon nature’s ally IV (animals only), 5th—beast shape III (animals only), 6th—antilife shell, 7th—animal shapes, 8th—summon nature’s ally VIII (animals only), 9th—shapechange.", level: 1).features[0]

artifice_domain1_feature = KlassSpecializationFeature.find_by!(name: "Artificer's Touch", description: "You can cast mending at will, using your cleric level as the caster level to repair damaged objects. In addition, you can cause damage to objects and construct creatures by striking them with a melee touch attack. Objects and constructs take 1d6 points of damage +1 for every two cleric levels you possess. This attack bypasses an amount of damage reduction and hardness equal to your cleric level. You can use this ability a number of times per day equal to 3 + your Wisdom modifier.", level: 1).features[0]

artifice_domain3_feature = KlassSpecializationFeature.find_by!(name: "Domain Spells", description: "1st—animate rope, 2nd—wood shape, 3rd—stone shape, 4th—minor creation, 5th—fabricate, 6th—major creation, 7th—wall of iron, 8th—statue*, 9th—prismatic sphere.", level: 1).features[0]

chaos_domain3_feature = KlassSpecializationFeature.find_by!(name: "Domain Spells", description: "1st—protection from law, 2nd—align weapon (chaos only), 3rd—magic circle against law, 4th—chaos hammer, 5th—dispel law, 6th—animate objects, 7th—word of chaos, 8th—cloak of chaos, 9th—summon monster IX (chaos spell only).").features[0]

occultist_conjurers_focus_feature1 = KlassArchetypeFeature.find_by!(name: "Conjurer's Focus", description: "An occultist can spend 1 point from her arcane reservoir to cast summon monster I. She can cast this spell as a standard action and the summoned creatures remain for 1 minute per level (instead of 1 round per level). At 3rd level and every 2 levels thereafter, the power of this ability increases by one spell level, allowing her to summon more powerful creatures (to a maximum of summon monster IX at 17th level), at the cost of an additional point from her arcane spell reserve per spell level. An occultist cannot have more than one summon monster spell active in this way at one time. If this ability is used again, any existing summon monster immediately ends.\n\n  This ability replaces the arcanist exploit gained at 1st level.").features[0]


# ////////////////////////////////////////////////////////
# <-*-*-----*-*-*- Summoned Creature List -*-*-*-----*-*->
# ////////////////////////////////////////////////////////

summon_monster_list = SummonedCreatureList.find_or_create_by!(name: "Summon Monster List")

# /////////////////////////////////////////
# <-*-*-----*-*-*- Spell List -*-*-*-----*-*->
# /////////////////////////////////////////

bard_spell_list = SpellList.find_or_create_by!(name: "Bard Spells List")
cleric_spell_list = SpellList.find_or_create_by!(name: "Cleric Spells List")
ranger_spell_list = SpellList.find_or_create_by!(name: "Ranger Spells List")
alchemist_spell_list = SpellList.find_or_create_by!(name: "Alchemist Spells List")
magus_spell_list = SpellList.find_or_create_by!(name: "Magus Spells List")
witch_spell_list = SpellList.find_or_create_by!(name: "Witch Spells List")
wizard_spell_list = SpellList.find_or_create_by!(name: "Wizard Spells List")
summoner_spell_list = SpellList.find_or_create_by!(name: "Summoner Spells List")


puts "References Found"

# /////////////////////////////////////////
# <-*-*-----*-*-*- Schools of Magic!-*-*-*-----*-*->
# /////////////////////////////////////////

abjuration = MagicSchool.create!(name: "Abjuration", description: "Abjurations are protective spells. They create physical or magical barriers, negate magical or physical abilities, harm trespassers, or even banish the subject of the spell to another plane of existence.

If one abjuration spell is active within 10 feet of another for 24 hours or more, the magical fields interfere with each other and create barely visible energy fluctuations. The DC to find such spells with the Perception skill drops by 4.

If an abjuration creates a barrier that keeps certain types of creatures at bay, that barrier cannot be used to push away those creatures. If you force the barrier against such a creature, you feel a discernible pressure against the barrier. If you continue to apply pressure, you end the spell.")

conjuration = MagicSchool.create!(name: "Conjuration", description: "Each conjuration spell belongs to one of five subschools. Conjurations transport creatures from another plane of existence to your plane (calling); create objects or effects on the spot (creation); heal (healing); bring manifestations of objects, creatures, or forms of energy to you (summoning); or transport creatures or objects over great distances (teleportation). Creatures you conjure usually- but not always- obey your commands.

A creature or object brought into being or transported to your location by a conjuration spell cannot appear inside another creature or object, nor can it appear floating in an empty space. It must arrive in an open location on a surface capable of supporting it.

The creature or object must appear within the spell’s range, but it does not have to remain within the range.")

divination = MagicSchool.create!(name: "Divination", description: "Divination spells enable you to learn secrets long forgotten, predict the future, find hidden things, and foil deceptive spells.

Many divination spells have cone-shaped areas. These move with you and extend in the direction you choose. The cone defines the area that you can sweep each round. If you study the same area for multiple rounds, you can often gain additional information, as noted in the descriptive text for the spell.")

enchantment = MagicSchool.create!(name: "Enchantment", description: "Enchantment spells affect the minds of others, influencing or controlling their behavior.

All enchantments are mind-affecting spells. Two subschools of enchantment spells grant you influence over a subject creature.")

evocation = MagicSchool.create!(name: "Evocation", description: "Evocation spells manipulate magical energy or tap an unseen source of power to produce a desired end. In effect, an evocation draws upon magic to create something out of nothing. Many of these spells produce spectacular effects, and evocation spells can deal large amounts of damage.")

illusion = MagicSchool.create!(name: "Illusion", description: "Illusion spells deceive the senses or minds of others. They cause people to see things that are not there, not see things that are there, hear phantom noises, or remember things that never happened.

Saving Throws and Illusions (Disbelief): Creatures encountering an illusion usually do not receive saving throws to recognize it as illusory until they study it carefully or interact with it in some fashion.

A successful saving throw against an illusion reveals it to be false, but a figment or phantasm remains as a translucent outline.

A failed saving throw indicates that a character fails to notice something is amiss. a character faced with proof that an illusion isn’t real needs no saving throw. If any viewer successfully disbelieves an illusion and communicates this fact to others, each such viewer gains a saving throw with a +4 bonus.")

necromancy = MagicSchool.create!(name: "Necromancy", description: "Necromancy spells manipulate the power of death, unlife, and the life force. Spells involving undead creatures make up a large part of this school.")

transmutation = MagicSchool.create!(name: "Transmutation", description: "Transmutation spells change the properties of some creature, thing, or condition.")

universal = MagicSchool.create!(name: "Universal", description: "Universal spells belongs to specific school of magic.")

# /////////////////////////////////////////
# <-*-*-----*-*-*- Spell Components!-*-*-*-----*-*->
# /////////////////////////////////////////

verbal = Component.create!(name: "Verbal", description: "A verbal component is a spoken incantation. To provide a verbal component, you must be able to speak in a strong voice. A silence spell or a gag spoils the incantation (and thus the spell). a spellcaster who has been deafened has a 20% chance of spoiling any spell with a verbal component that he tries to cast.", abbreviation: "V")
somatic = Component.create!(name: "Somatic", description: "A somatic component is a measured and precise movement of the hand. You must have at least one hand free to provide a somatic component.", abbreviation: "S")
material = Component.create!(name: "Material", description: "A material component consists of one or more physical substances or objects that are annihilated by the spell energies in the casting process. Unless a cost is given for a material component, the cost is negligible. Don’t bother to keep track of material components with negligible cost. Assume you have all you need as long as you have your spell component pouch.", abbreviation: "M")
focus = Component.create!(name: "Focus", description: "A focus component is a prop of some sort. Unlike a material component, a focus is not consumed when the spell is cast and can be reused. As with material components, the cost for a focus is negligible unless a price is given. Assume that focus components of negligible cost are in your spell component pouch.", abbreviation: "F")
divine_focus = Component.create!(name: "Divine Focus", description: "A divine focus component is an item of spiritual significance. The divine focus for a cleric or a paladin is a holy symbol appropriate to the character’s faith. The divine focus for a druid or a ranger is a sprig of holly, or some other sacred plant.

If the Components line includes F/DF or M/DF, the arcane version of the spell has a focus component or a material component (the abbreviation before the slash) and the divine version has a divine focus component (the abbreviation after the slash).", abbreviation: "DF")

# /////////////////////////////////////////
# <-*-*-----*-*-*- Spell Ranges-*-*-*-----*-*->
# /////////////////////////////////////////

personal = SpellRange.create!(name: "Personal", feet: 0, increase_per_level: 0, description: "The spell affects only you.")
touch = SpellRange.create!(name: "Touch", feet: 0, increase_per_level: 0, description: "You must touch a creature or object to affect it. A touch spell that deals damage can score a critical hit just as a weapon can. A touch spell threatens a critical hit on a natural roll of 20 and deals double damage on a successful critical hit. Some touch spells allow you to touch multiple targets. You can touch up to 6 willing targets as part of the casting, but all targets of the spell must be touched in the same round that you finish casting the spell. If the spell allows you to touch targets over multiple rounds, touching 6 creatures is a full-round action.")
close = SpellRange.create!(name: "Close", feet: 25, increase_per_level: 2.5, description: "The spell reaches as far as 25 feet away from you. The maximum range increases by 5 feet for every two full caster levels.")
medium = SpellRange.create!(name: "Medium", feet: 100, increase_per_level: 10, description: "The spell reaches as far as 100 feet + 10 feet per caster level.")
long = SpellRange.create!(name: "Long", feet: 400, increase_per_level: 40, description: "The spell reaches as far as 400 feet + 40 feet per caster level.")
unlimited = SpellRange.create!(name: "Unlimited", feet: 1000000, increase_per_level: 0, description: "The spell reaches anywhere on the same plane of existence.")
zero_feet = SpellRange.create!(name: "0 ft", feet: 0, increase_per_level: 0, description: "0 ft")
five_feet = SpellRange.create!(name: "5 ft", feet: 5, increase_per_level: 0, description: "5 ft")
ten_feet = SpellRange.create!(name: "10 ft", feet: 10, increase_per_level: 0, description: "10 ft")
fifteen_feet = SpellRange.create!(name: "15 ft", feet: 15, increase_per_level: 0, description: "15 ft")
twenty_feet = SpellRange.create!(name: "20 ft", feet: 20, increase_per_level: 0, description: "20 ft")
thirty_feet = SpellRange.create!(name: "30 ft", feet: 30, increase_per_level: 0, description: "30 ft")
sixty_feet = SpellRange.create!(name: "60 ft", feet: 60, increase_per_level: 0, description: "60 ft")
one_hundred_twenty_feet = SpellRange.create!(name: "120 ft", feet: 120, increase_per_level: 0, description: "120 ft")
forty_feet_per_level = SpellRange.create!(name: "40 ft./level", feet: 40, increase_per_level: 40, description: "40 ft./level")
forty_feet = SpellRange.create!(name: "40 ft", feet: 40, increase_per_level: 0, description: "40 ft")
fifty_feet = SpellRange.create!(name: "50 ft", feet: 50, increase_per_level: 0, description: "50 ft")


# /////////////////////////////////////////
# <-*-*-----*-*-*- Subschools!-*-*-*-----*-*->
# /////////////////////////////////////////

charm = Subschool.create!(name: "Charm", description: "A charm spell changes how the subject views you, typically making it see you as a good friend.")
mind_affecting = Subschool.create!(name: "Mind-Affecting", description: "Mindless creatures (those with an Intelligence score of “—”) and undead are immune to mind-affecting effects.")
language_dependent = Subschool.create!(name: "Language-Dependent", description: "A language-dependent spell uses intelligible language as a medium for communication. If the target cannot understand or hear what the caster of a language-dependent spell says, the spell has no effect, even if the target fails its saving throw.")
light = Subschool.create!(name: "Light", description: "Spells that create significant amounts of light or attack darkness effects should have the light descriptor. Giving a spell the light descriptor indicates whether a spell like darkness is high enough level counter or dispel it.")
darkness = Subschool.create!(name: "Darkness", description: "Spells that create darkness or reduce the amount of light should have the darkness descriptor. Giving a spell the darkness descriptor indicates whether a spell like daylight is high enough level to counter or dispel it.")
electricity = Subschool.create!(name: "Electricity", description: "Electricity effects involve the presence and flow of electrical charge, whether expressed in amperes or volts. Electricity deals damage to creatures by disrupting their biological systems. It deals damage to objects (as well as creatures) by heating the material it passes through, and thus technically many electricity spells could also be treated as fire spells, but for sake of game simplicity, it is better to just let electricity-based spells deal electricity damage. Electricity effects may stun, paralyze, or even kill.")
compulsion = Subschool.create!(name: "Compulsion", description: "A compulsion spell forces the subject to act in some manner or changes the way its mind works. Some compulsion spells determine the subject’s actions or the effects on the subject, others allow you to determine the subject’s actions when you cast the spell, and still others give you ongoing control over the subject.")
glamer = Subschool.create!(name: "Glamer", description: "A glamer spell changes a subject’s sensory qualities, making it look, feel, taste, smell, or sound like something else, or even seem to disappear.")
healing = Subschool.create!(name: "Healing", description: "Certain divine conjurations heal creatures or even bring them back to life.")
force = Subschool.create!(name: "Force", description: "Spells with the force descriptor create or manipulate magical force. Force spells affect incorporeal creatures normally (as if they were corporeal creatures).")
summoning = Subschool.create!(name: "Summoning", description: "A summoning spell instantly brings a creature or object to a place you designate. When the spell ends or is dispelled, a summoned creature is instantly sent back to where it came from, but a summoned object is not sent back unless the spell description specifically indicates this. A summoned creature also goes away if it is killed or if its hit points drop to 0 or lower, but it is not really dead. It takes 24 hours for the creature to reform, during which time it can’t be summoned again.")
figment = Subschool.create!(name: "Figment", description: "A figment spell creates a false sensation. Those who perceive the figment perceive the same thing, not their own slightly different versions of the figment. It is not a personalized mental impression. Figments cannot make something seem to be something else. A figment that includes audible effects cannot duplicate intelligible speech unless the spell description specifically says it can. If intelligible speech is possible, it must be in a language you can speak. If you try to duplicate a language you cannot speak, the figment produces gibberish. Likewise, you cannot make a visual copy of something unless you know what it looks like (or copy another sense exactly unless you have experienced it).

Because figments and glamers are unreal, they cannot produce real effects the way that other types of illusions can. Figments and glamers cannot cause damage to objects or creatures, support weight, provide nutrition, or provide protection from the elements. Consequently, these spells are useful for confounding foes, but useless for attacking them directly.

A figment’s AC is equal to 10 + its size modifier.")
shadow = Subschool.create!(name: "Shadow", description: "A shadow spell creates something that is partially real from extradimensional energy. Such illusions can have real effects. Damage dealt by a shadow illusion is real.")
curse = Subschool.create!(name: "Curse", description: "Curses are often permanent effects, and usually cannot be dispelled, but can be removed with a break enchantment, limited wish, miracle, remove curse, or wish.")
fire = Subschool.create!(name: "Fire", description: "Fire effects make the target hotter by creating fire, directly heating the target with magic or friction. Lava, steam, and boiling water all deal fire damage. Fire effects can also cause confusion, dizziness, exhaustion, fatigue, nausea, unconsciousness, and death. Spells that manipulate fire or conjure creatures from fire-dominant planes or with the fire subtype should have the fire descriptor.")
acid = Subschool.create!(name: "Acid", description: "Acid effects deal damage with chemical reactions rather than cold, electricity, heat, or vibration. This descriptor includes both actual acids and their chemical opposites, called bases or alkalines (such as ammonia and lye).")
creation = Subschool.create!(name: "Creation", description: "A creation spell manipulates matter to create an object or creature in the place the spellcaster designates. If the spell has a duration other than instantaneous, magic holds the creation together, and when the spell ends, the conjured creature or object vanishes without a trace. If the spell has an instantaneous duration, the created object or creature is merely assembled through magic. It lasts indefinitely and does not depend on magic for its existence.")
sonic = Subschool.create!(name: "Sonic", description: "Sonic effects transmit energy to the target through frequent oscillations of pressure through the air, water, or ground. Sounds that are too high or too low for the humanoid ear to detect can still transmit enough energy to cause harm, which means that these effects can even affect deafened creatures. Sound effects can cause hit point damage, deafness, dizziness, nausea, pain, shortness of breath, and temporary blindness, and can detect creatures using batlike echolocation.")
water = Subschool.create!(name: 'Water', description: 'Spells that manipulate water or conjure creatures from water-dominant planes or with the water subtype should have the water descriptor.')
air = Subschool.create!(name: 'Air', description: 'Spells that create air, manipulate air, or conjure creatures from air-dominant planes or with the air subtype should have the air descriptor.')
polymorph = Subschool.create!(name: 'Polymorph', description:'a polymorph spell transforms your physical body to take on the shape of another creature. While these spells make you appear to be the creature, granting you a +10 bonus on Disguise skill checks, they do not grant you all of the abilities and powers of the creature. Each polymorph spell allows you to assume the form of a creature of a specific type, granting you a number of bonuses to your ability scores and a bonus to your natural armor. In addition, each polymorph spell can grant you a number of other benefits, including movement types, resistances, and senses. If the form you choose grants these benefits, or a greater ability of the same type, you gain the listed benefit. If the form grants a lesser ability of the same type, you gain the lesser ability instead. Your base speed changes to match that of the form you assume. If the form grants a swim or burrow speed, you maintain the ability to breathe if you are swimming or burrowing. The DC for any of these abilities equals your DC for the polymorph spell used to change you into that form.

In addition to these benefits, you gain any of the natural attacks of the base creature, including proficiency in those attacks. These attacks are based on your base attack bonus, modified by your Strength or Dexterity as appropriate, and use your Strength modifier for determining damage bonuses.

If a polymorph spell causes you to change size, apply the size modifiers appropriately, changing your armor class, attack bonus, Combat Maneuver Bonus, and Stealth skill modifiers. Your ability scores are not modified by this change unless noted by the spell.

Unless otherwise noted, polymorph spells cannot be used to change into specific individuals. Although many of the fine details can be controlled, your appearance is always that of a generic member of that creature’s type. Polymorph spells cannot be used to assume the form of a creature with a template or an advanced version of a creature.

When you cast a polymorph spell that changes you into a creature of the animal, dragon, elemental, magical beast, plant, or vermin type, all of your gear melds into your body. Items that provide constant bonuses and do not need to be activated continue to function while melded in this way (with the exception of armor and shield bonuses, which cease to function). Items that require activation cannot be used while you maintain that form. While in such a form, you cannot cast any spells that require material components (unless you have the Eschew Materials or Natural Spell feat), and can only cast spells with somatic or verbal components if the form you choose has the capability to make such movements or speak, such as a dragon. Other polymorph spells might be subject to this restriction as well, if they change you into a form that is unlike your original form (subject to GM discretion). If your new form does not cause your equipment to meld into your form, the equipment resizes to match your new size.

While under the effects of a polymorph spell, you lose all extraordinary and supernatural abilities that depend on your original form (such as keen senses, scent, and darkvision), as well as any natural attacks and movement types possessed by your original form. You also lose any class features that depend upon form, but those that allow you to add features (such as sorcerers that can grow claws) still function. While most of these should be obvious, the GM is the final arbiter of what abilities depend on form and are lost when a new form is assumed. Your new form might restore a number of these abilities if they are possessed by the new form.

You can only be affected by one polymorph spell at a time. If a new polymorph spell is cast on you (or you activate a polymorph effect, such as wild shape), you can decide whether or not to allow it to affect you, taking the place of the old spell. In addition, other spells that change your size have no effect on you while you are under the effects of a polymorph spell.

If a polymorph spell is cast on a creature that is smaller than Small or larger than Medium, first adjust its ability scores to one of these two sizes using the following table before applying the bonuses granted by the polymorph spell.')
cold = Subschool.create!(name: 'Cold', description: 'Cold effects deal damage by making the target colder, typically by blasting it with supernaturally cooled matter or energy. Cold effects also include those that create ice, sleet, or snow out of nothing. They can cause frostbite, numbness, coordination problems, slowed movement and reactions, stupor, and death.')
death = Subschool.create!(name: 'Death', description: 'Spells with the death descriptor directly attack a creature’s life force to cause immediate death, or to draw on the power of a dead or dying creature. The death ward spell protects against death effects, and some creature types are immune to death effects.')
poison = Subschool.create!(name: 'Poison', description: 'Poison effects use poison, venom, drugs, or similar toxic substances to disrupt and damage living creatures through chemical reactions. Technically, acids and poisons are both chemical reactions, but for the purpose of this game, they are categorized as different effects, with acids dealing hit point damage and poisons causing ability damage, ability drain, bleeding, confusion, convulsions, nausea, paralysis, reduced healing, suffocation, unconsciousness, or death. Creatures with resistance to poison (such as dwarves) apply that resistance to their saving throws and the effects of poison spells. Creatures with immunity are immune to poisonous aspects of poison spells, but not necessarily all effects of the spell (for example, a spell that creates a pit full of liquid poison could still trap or drown a poison-immune creature).')
earth = Subschool.create!(name: 'Earth', description: 'Spells that manipulate earth or conjure creatures from earth-dominant planes or with the earth subtype should have the earth descriptor.')
emotion = Subschool.create!(name: 'Emotion', description: 'Spells with this descriptor create emotions or manipulate the target’s existing emotions. Most emotion spells are enchantments, except for fear spells, which are usually necromancy.')
chaotic = Subschool.create!(name: 'Chaotic', description: "Spells that draw upon the power of true chaos or conjure creatures from chaos-aligned planes or with the chaotic subtype should have the chaos descriptor.")
good = Subschool.create!(name: 'Good', description: "Spells that draw upon the power of true goodness or conjure creatures from good-aligned planes or with the good subtype should have the good descriptor.")
evil = Subschool.create!(name: 'Evil', description: "Spells that draw upon evil powers or conjure creatures from evil-aligned planes or with the evil subtype should have the evil descriptor.")
calling = Subschool.create!(name: 'Calling', description: "A calling spell transports a creature from another plane to the plane you are on. The spell grants the creature the one-time ability to return to its plane of origin, although the spell may limit the circumstances under which this is possible. Creatures who are called actually die when they are killed; they do not disappear and reform, as do those brought by a summoning spell (see below). The duration of a calling spell is instantaneous, which means that the called creature can’t be dispelled.")
teleportation = Subschool.create!(name: 'Teleportation', description: "A teleportation spell transports one or more creatures or objects a great distance. The most powerful of these spells can cross planar boundaries. Unlike summoning spells, the transportation is (unless otherwise noted) one-way and not dispellable.")
fear = Subschool.create!(name: "Fear", description: "Spells with the fear descriptor create, enhance, or manipulate fear. Most fear spells are necromancy spells, though some are enchantment spells.")
pattern = Subschool.create!(name: "Pattern", description: "Like a figment, a pattern spell creates an image that others can see, but a pattern also affects the minds of those who see it or are caught in it. All patterns are mind-affecting spells.")

# /////////////////////////////////////////
# <-*-*-----*-*-*- Spells!-*-*-*-----*-*->
# /////////////////////////////////////////


sp1 = Spell.create!(name: "Charm Person", description: "This charm makes a humanoid creature regard you as its trusted friend and ally (treat the target’s attitude as friendly). If the creature is currently being threatened or attacked by you or your allies, however, it receives a +5 bonus on its saving throw.

The spell does not enable you to control the charmed person as if it were an automaton, but it perceives your words and actions in the most favorable way. You can try to give the subject orders, but you must win an opposed Charisma check to convince it to do anything it wouldn’t ordinarily do. (Retries are not allowed.) An affected creature never obeys suicidal or obviously harmful orders, but it might be convinced that something very dangerous is worth doing. Any act by you or your apparent allies that threatens the charmed person breaks the spell. You must speak the person’s language to communicate your commands, or else be good at pantomiming.", target: "one humanoid creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: enchantment.id, duration: "1 hour/lvl", time: 1, unit_of_time: "hour", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp1.id, subschool_id: charm.id)
  SpellSubschool.create!(spell_id: sp1.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp1.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp1.id, component_id: somatic.id)
  charm_person_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp1.id, spell_level: 1)
  charm_person_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp1.id, spell_level: 1)
  charm_person_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp1.id, spell_level: 1)
  # charm_person_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp1.id, spell_level: 1)
  # charm_person_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp1.id, spell_level: 1)

sp2 = Spell.create!(name: "Detect Magic", description: "You detect magical auras. The amount of information revealed depends on how long you study a particular area or subject.

1st Round: Presence or absence of magical auras.

2nd Round: Number of different magical auras and the power of the most potent aura.

3rd Round: The strength and location of each aura. If the items or creatures bearing the auras are in line of sight, you can make Knowledge (arcana) skill checks to determine the school of magic involved in each. (Make one check per aura: DC 15 + spell level, or 15 + 1/2 caster level for a nonspell effect.) If the aura emanates from a magic item, you can attempt to identify its properties (see Spellcraft).

Magical areas, multiple types of magic, or strong local magical emanations may distort or conceal weaker auras.

Aura Strength: An aura’s power depends on a spell’s functioning spell level or an item’s caster level; see the accompanying table. If an aura falls into more than one category, detect magic indicates the stronger of the two.

Spell or Object	Aura Power
Faint	Moderate	Strong	Overwhelming
Functioning spell (spell level)	3rd or lower	4th-6th	7th-9th	10th+ (deity-level)
Magic item (caster level)	5th or lower	6th-11th	12th-20th	21st+ (artifact)
Lingering Aura: A magical aura lingers after its original source dissipates (in the case of a spell) or is destroyed (in the case of a magic item). If detect magic is cast and directed at such a location, the spell indicates an aura strength of dim (even weaker than a faint aura). How long the aura lingers at this dim level depends on its original power:

Original Strength	Duration of Lingering Aura
Faint	1d6 rounds
Moderate	1d6 minutes
Strong	1d6x10 minutes
Overwhelming	1d6 days
Outsiders and elementals are not magical in themselves, but if they are summoned, the conjuration spell registers. Each round, you can turn to detect magic in a new area. The spell can penetrate barriers, but 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt blocks it.

Detect magic can be made permanent with a permanency spell.", target: "cone-shaped emanation", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: sixty_feet.id, magic_school_id: divination.id, duration: "concentration, up to 1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: true)
  SpellComponent.create!(spell_id: sp2.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp2.id, component_id: somatic.id)
  detect_magic_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp2.id, spell_level: 0)
  detect_magic_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp2.id, spell_level: 0)
  detect_magic_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp2.id, spell_level: 0)
  # detect_magic_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp2.id, spell_level: 0)
  detect_magic_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp2.id, spell_level: 0)
  # detect_magic_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp2.id, spell_level: 0)
  # detect_magic_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp2.id, spell_level: 0)
  detect_magic_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp2.id, spell_level: 0)
  # detect_magic_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp2.id, spell_level: 0)
  # detect_magic_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp2.id, spell_level: 0)
  detect_magic_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp2.id, spell_level: 0)

sp3 = Spell.create!(name: "Mending", description: "This spell repairs damaged objects, restoring 1d4 hit points to the object. If the object has the broken condition, this condition is removed if the object is restored to at least half its original hit points. All of the pieces of an object must be present for this spell to function. Magic items can be repaired by this spell, but you must have a caster level equal to or higher than that of the object. Magic items that are destroyed (at 0 hit points or less) can be repaired with this spell, but this spell does not restore their magic abilities. This spell does not affect creatures (including constructs). This spell has no effect on objects that have been warped or otherwise transmuted, but it can still repair damage done to such items.", target: "one object of up to 1 lb./level", saving_throw: "Will", spell_resistance: true, action_id: ten.id, spell_range_id: ten_feet.id, magic_school_id: transmutation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp3.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp3.id, component_id: somatic.id)
  mending_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp3.id, spell_level: 0)
  mending_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp3.id, spell_level: 0)
  mending_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp3.id, spell_level: 0)
  # mending_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp3.id, spell_level: 0)
  # mending_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp3.id, spell_level: 0)
  # mending_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp3.id, spell_level: 0)
  # mending_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp3.id, spell_level: 0)
  mending_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp3.id, spell_level: 0)

  FeatureCastableSpell.create!(feature_id: artifice_domain1_feature.id, spell_id: sp3.id, effective_level_based_on_feature_level: true, added_to_known_spells: false, applicable_spell_level: 0, bonus_spell_slot_option: false, cast_at_will: true)


sp4 = Spell.create!(name: "Message", description: "You can whisper messages and receive whispered replies. Those nearby can hear these messages with a DC 25 Perception check. You point your finger at each creature you want to receive the message. When you whisper, the whispered message is audible to all targeted creatures within range. Magical silence, 1 foot of stone, 1 inch of common metal (or a thin sheet of lead), or 3 feet of wood or dirt blocks the spell. The message does not have to travel in a straight line. It can circumvent a barrier if there is an open path between you and the subject, and the path’s entire length lies within the spell’s range. The creatures that receive the message can whisper a reply that you hear. The spell transmits sound, not meaning; it doesn’t transcend language barriers. To speak a message, you must mouth the words and whisper.", target: "one creature/level", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: medium.id, magic_school_id: transmutation.id, duration: "10 min./level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp4.id, subschool_id: language_dependent.id)
  SpellComponent.create!(spell_id: sp4.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp4.id, component_id: somatic.id)
  SpellComponent.create!(spell_id: sp4.id, component_id: focus.id, item: "a piece of copper wire")
  message_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp4.id, spell_level: 0)
  message_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp4.id, spell_level: 0)
  message_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp4.id, spell_level: 0)
  # message_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp4.id, spell_level: 0)
  # message_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp4.id, spell_level: 0)
  message_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp4.id, spell_level: 0)

sp5 = Spell.create!(name: "Light", description: "This spell causes a touched object to glow like a torch, shedding normal light in a 20-foot radius from the point touched, and increasing the light level for an additional 20 feet by one step, up to normal light (darkness becomes dim light, and dim light becomes normal light). In an area of normal or bright light, this spell has no effect. The effect is immobile, but it can be cast on a movable object.

You can only have one light spell active at any one time. If you cast this spell while another casting is still in effect, the previous casting is dispelled. If you make this spell permanent (through permanency or a similar effect), it does not count against this limit. Light can be used to counter or dispel any darkness spell of equal or lower spell level.", target: "object touched", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: touch.id, magic_school_id: evocation.id, duration: "10 min./level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp5.id, subschool_id: light.id)
  SpellComponent.create!(spell_id: sp5.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp5.id, component_id: material.id, item: "a firefly")
  SpellComponent.create!(spell_id: sp5.id, component_id: divine_focus.id, item: "a firefly")
  light_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp5.id, spell_level: 0)
  light_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp5.id, spell_level: 0)
  light_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp5.id, spell_level: 0)
  # light_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp5.id, spell_level: 0)
  light_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp5.id, spell_level: 0)
  # light_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp5.id, spell_level: 0)
  # light_inqusitor = SpellListSpell.create!(spell_list_id: inqusitor.id, spell_id: sp5.id, spell_level: 0)
  light_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp5.id, spell_level: 0)
  # light_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp5.id, spell_level: 0)
  # light_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp5.id, spell_level: 0)
  light_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp5.id, spell_level: 0)

sp6 = Spell.create!(name: "Discern Next of Kin", description: "You can scan the thoughts of one individual and learn the names and locations of the target’s living relatives, as well as the attitude of the target toward those relatives (and vice versa). You learn about one relative per round you concentrate on the target. For example, you might learn the target’s father’s name, that the father lives on a nearby farm, and that the target and his father don’t get along. Since this spell reads the target’s mind, you can learn only what the target knows or believes.", target: "one creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: sixty_feet.id, magic_school_id: divination.id, duration: "concentration, up to 1 minute/level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: true)
  SpellSubschool.create!(spell_id: sp6.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp6.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp6.id, component_id: somatic.id)
  SpellComponent.create!(spell_id: sp6.id, component_id: focus.id, item: "a copper piece")
  # discern_next_of_kin_arcanist = SpellListSpell.create!(spell_list_id: arcanist.id, spell_id: sp6.id, spell_level: 1)
  discern_next_of_kin_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp6.id, spell_level: 1)
  discern_next_of_kin_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp6.id, spell_level: 1)
  discern_next_of_kin_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp6.id, spell_level: 1)
  # discern_next_of_kin_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp6.id, spell_level: 1)
  # discern_next_of_kin_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp6.id, spell_level: 1)
  # discern_next_of_kin_fate_weaver = SpellListSpell.create!(spell_list_id: fate_weaver.id, spell_id: sp6.id, spell_level: 0)

sp7 = Spell.create!(name: "Lightning Bolt", description: "You release a powerful stroke of electrical energy that deals 1d6 points of electricity damage per caster level (maximum 10d6) to each creature within its area. The bolt begins at your fingertips.

The lightning bolt sets fire to combustibles and damages objects in its path. It can melt metals with a low melting point, such as lead, gold, copper, silver, or bronze. If the damage caused to an interposing barrier shatters or breaks through it, the bolt may continue beyond the barrier if the spell’s range permits; otherwise, it stops at the barrier just as any other spell effect does.", target: "120 ft", saving_throw: "Reflex", spell_resistance: true, action_id: standard.id, spell_range_id: one_hundred_twenty_feet.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp7.id, subschool_id: electricity.id)
  SpellComponent.create!(spell_id: sp7.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp7.id, component_id: somatic.id)
  SpellComponent.create!(spell_id: sp7.id, component_id: material.id, item: "fur and a glass rod")
  lightning_bolt_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp7.id, spell_level: 3)
  lightning_bolt_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp7.id, spell_level: 3)
  # lightning_bolt_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp7.id, spell_level: 3)
  lightning_bolt_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp7.id, spell_level: 3)

sp8 = Spell.create!(name: "Open/Close", description: "You can open or close (your choice) a door, chest, box, window, bag, pouch, bottle, barrel, or other container. If anything resists this activity (such as a bar on a door or a lock on a chest), the spell fails. In addition, the spell can only open and close things weighing 30 pounds or less. Thus, doors, chests, and similar objects sized for enormous creatures may be beyond this spell’s ability to affect.", target: "object weighing up to 30 lbs. or portal that can be opened or closed", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp8.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp8.id, component_id: somatic.id)
  SpellComponent.create!(spell_id: sp8.id, component_id: focus.id, item: "a brass key")
  open_close_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp8.id, spell_level: 0)
  open_close_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp8.id, spell_level: 0)
  # open_close_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp8.id, spell_level: 0)
  open_close_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp8.id, spell_level: 0)
  # open_close_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp8.id, spell_level: 0)
  open_close_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp8.id, spell_level: 0)

sp9 = Spell.create!(name: "Haste", description: "The transmuted creatures move and act more quickly than normal. This extra speed has several effects.

When making a full attack action, a hasted creature may make one extra attack with one natural or manufactured weapon. The attack is made using the creature’s full base attack bonus, plus any modifiers appropriate to the situation. (This effect is not cumulative with similar effects, such as that provided by a speed weapon, nor does it actually grant an extra action, so you can’t use it to cast a second spell or otherwise take an extra action in the round.)

A hasted creature gains a +1 bonus on attack rolls and a +1 dodge bonus to AC and Reflex saves. Any condition that makes you lose your Dexterity bonus to Armor Class (if any) also makes you lose dodge bonuses.

All of the hasted creature’s modes of movement (including land movement, burrow, climb, fly, and swim) increase by 30 feet, to a maximum of twice the subject’s normal speed using that form of movement. This increase counts as an enhancement bonus, and it affects the creature’s jumping distance as normal for increased speed. Multiple haste effects don’t stack. Haste dispels and counters slow.", target: "one creature/level, no two of which can be more than 30 ft. apart", saving_throw: "Fortitude", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp9.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp9.id, component_id: somatic.id)
  SpellComponent.create!(spell_id: sp9.id, component_id: material.id, item: "a shaving of licorice root")
  # haste_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp9.id, spell_level: 3)
  haste_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp9.id, spell_level: 3)
  haste_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp9.id, spell_level: 3)
  haste_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp9.id, spell_level: 3)
  # haste_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp9.id, spell_level: 3)
  haste_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp9.id, spell_level: 3)
  # haste_medium = SpellListSpell.create!(spell_list_id: medium.id, spell_id: sp9.id, spell_level: 2)
  # haste_occultist = SpellListSpell.create!(spell_list_id: occultist.id, spell_id: sp9.id, spell_level: 3)
  # haste_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp9.id, spell_level: 3)
  # haste_spiritualist = SpellListSpell.create!(spell_list_id: spiritualist.id, spell_id: sp9.id, spell_level: 3)
  haste_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp9.id, spell_level: 2)

sp10 = Spell.create!(name: "Mage Hand", description: "You point your finger at an object and can lift it and move it at will from a distance. As a move action, you can propel the object as far as 15 feet in any direction, though the spell ends if the distance between you and the object ever exceeds the spell’s range.", target: "one non-magical, unattended object weighing up to 5 lbs.", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "concentration", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: true)
  SpellComponent.create!(spell_id: sp10.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp10.id, component_id: somatic.id)
  mage_hand_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp10.id, spell_level: 0)
  mage_hand_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp10.id, spell_level: 0)
  # mage_hand_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp10.id, spell_level: 0)
  mage_hand_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp10.id, spell_level: 0)
  # mage_hand_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp10.id, spell_level: 0)
  mage_hand_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp10.id, spell_level: 0)

print "10 Spells Created \r"

sp11 = Spell.create!(name: "Suggestion", description: "You influence the actions of the target creature by suggesting a course of activity (limited to a sentence or two). The suggestion must be worded in such a manner as to make the activity sound reasonable. Asking the creature to do some obviously harmful act automatically negates the effect of the spell.

The suggested course of activity can continue for the entire duration. If the suggested activity can be completed in a shorter time, the spell ends when the subject finishes what it was asked to do. You can instead specify conditions that will trigger a special activity during the duration. If the condition is not met before the spell duration expires, the activity is not performed.

A very reasonable suggestion causes the save to be made with a penalty (such as -1 or -2).", target: "one living creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: enchantment.id, duration: "1 hour/level or until completed", time: 1, unit_of_time: "hour", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp11.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: sp11.id, subschool_id: mind_affecting.id)
  SpellSubschool.create!(spell_id: sp11.id, subschool_id: language_dependent.id)
  SpellComponent.create!(spell_id: sp11.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp11.id, component_id: material.id, item: "a snake’s tongue and a honeycomb")
  suggestion_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp11.id, spell_level: 3)
  suggestion_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp11.id, spell_level: 3)
  suggestion_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp11.id, spell_level: 2)
  # suggestion_medium = SpellListSpell.create!(spell_list_id: medium.id, spell_id: sp11.id, spell_level: 2)
  # suggestion_mesmerist = SpellListSpell.create!(spell_list_id: mesmerist.id, spell_id: sp11.id, spell_level: 2)
  # suggestion_occultist = SpellListSpell.create!(spell_list_id: occultist.id, spell_id: sp11.id, spell_level: 3)
  # suggestion_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp11.id, spell_level: 2)

sp12 = Spell.create!(name: "Decrepit Disguise", description: "You make an object seem like a worthless version of itself. A masterwork or magic sword could seem to be a useless, rusting, discarded blade, and a luxurious throne could appear to be a decrepit wooden chair. If used against an attended object, the wielder can immediately attempt a Will save to disbelieve the effect. Decrepit disguise counters and dispels quintessence.

Decrepit disguise can be made permanent with a permanency spell by a caster of 9th level or higher for the cost of 500 gp.", target: "one object of no more than 10 cu. ft./level", saving_throw: "Will", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: illusion.id, duration: "1 day/level", time: 1, unit_of_time: "day", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp12.id, subschool_id: glamer.id)
  SpellComponent.create!(spell_id: sp12.id, component_id: verbal.id)
  suggestion_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp12.id, spell_level: 1)
  suggestion_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp12.id, spell_level: 1)
  # suggestion_medium = SpellListSpell.create!(spell_list_id: medium.id, spell_id: sp12.id, spell_level: 1)
  # suggestion_mesmerist = SpellListSpell.create!(spell_list_id: mesmerist.id, spell_id: sp12.id, spell_level: 1)
  # suggestion_occultist = SpellListSpell.create!(spell_list_id: occultist.id, spell_id: sp12.id, spell_level: 1)
  # suggestion_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp12.id, spell_level: 1)

sp13 = Spell.create!(name: "Prestidigitation", description: "Prestidigitations are minor tricks that novice spellcasters use for practice. Once cast, a prestidigitation spell enables you to perform simple magical effects for 1 hour. The effects are minor and have severe limitations. A prestidigitation can slowly lift 1 pound of material. It can color, clean, or soil items in a 1-foot cube each round. It can chill, warm, or flavor 1 pound of nonliving material. It cannot deal damage or affect the concentration of spellcasters. Prestidigitation can create small objects, but they look crude and artificial. The materials created by a prestidigitation spell are extremely fragile, and they cannot be used as tools, weapons, or spell components. Finally, prestidigitation lacks the power to duplicate any other spell effects. Any actual change to an object (beyond just moving, cleaning, or soiling it) persists only 1 hour.", target: "see text", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: ten_feet.id, magic_school_id: universal.id, duration: "1 hour", time: 1, unit_of_time: "hour", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp13.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp13.id, component_id: somatic.id)
  prestidigitation_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp13.id, spell_level: 0)
  prestidigitation_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp13.id, spell_level: 0)
  prestidigitation_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp13.id, spell_level: 0)
  # prestidigitation_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp13.id, spell_level: 0)

sp14 = Spell.create!(name: "Identify", description: "This spell functions as detect magic, except that it gives you a +10 enhancement bonus on Spellcraft checks made to identify the properties and command words of magic items in your possession. This spell does not allow you to identify artifacts.", target: "cone-shaped emanation", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: sixty_feet.id, magic_school_id: divination.id, duration: "3 rounds/level", time: 3, unit_of_time: "round", increase_per_level: 3, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp14.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp14.id, component_id: somatic.id)
  SpellComponent.create!(spell_id: sp14.id, component_id: material.id, item: "wine stirred with an owl’s feather")
  identify_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp14.id, spell_level: 1)
  identify_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp14.id, spell_level: 1)
  # identify_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp14.id, spell_level: 1)
  identify_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp14.id, spell_level: 1)
  identify_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp14.id, spell_level: 1)
  # identify_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp14.id, spell_level: 1)
  identify_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp14.id, spell_level: 1)

sp15 = Spell.create!(name: "Vanish", description: "This spell functions like invisibility, except the effect only lasts for 1 round per caster level (maximum of 5 rounds). Like invisibility, the spell immediately ends if the subject attacks any creature.", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: illusion.id, duration: "1 round/level (up to 5 rounds)", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp15.id, subschool_id: glamer.id)
  SpellComponent.create!(spell_id: sp15.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp15.id, component_id: somatic.id)
  vanish_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp15.id, spell_level: 1)
  vanish_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp15.id, spell_level: 1)
  vanish_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp15.id, spell_level: 1)
  # vanish_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp15.id, spell_level: 1)

sp16 = Spell.create!(name: "Invisibility", description: "The creature or object touched becomes invisible. If the recipient is a creature carrying gear, that vanishes, too. If you cast the spell on someone else, neither you nor your allies can see the subject, unless you can normally see invisible things or you employ magic to do so.

Items dropped or put down by an invisible creature become visible; items picked up disappear if tucked into the clothing or pouches worn by the creature. Light, however, never becomes invisible, although a source of light can become so (thus, the effect is that of a light with no visible source). Any part of an item that the subject carries but that extends more than 10 feet from it becomes visible.

Of course, the subject is not magically silenced, and certain other conditions can render the recipient detectable (such as swimming in water or stepping in a puddle). If a check is required, a stationary invisible creature has a +40 bonus on its Stealth checks. This bonus is reduced to +20 if the creature is moving. The spell ends if the subject attacks any creature. For purposes of this spell, an attack includes any spell targeting a foe or whose area or effect includes a foe. Exactly who is a foe depends on the invisible character’s perceptions. Actions directed at unattended objects do not break the spell. Causing harm indirectly is not an attack. Thus, an invisible being can open doors, talk, eat, climb stairs, summon monsters and have them attack, cut the ropes holding a rope bridge while enemies are on the bridge, remotely trigger traps, open a portcullis to release attack dogs, and so forth. If the subject attacks directly, however, it immediately becomes visible along with all its gear. Spells such as bless that specifically affect allies but not foes are not attacks for this purpose, even when they include foes in their area.

Invisibility can be made permanent (on objects only) with a permanency spell.", target: "you or a creature or object weighing no more than 100 lbs./level", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: illusion.id, duration: "1 min./level ", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp16.id, subschool_id: glamer.id)
  SpellComponent.create!(spell_id: sp16.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp16.id, component_id: somatic.id)
  SpellComponent.create!(spell_id: sp16.id, component_id: material.id, item: "an eyelash encased in gum arabic")
  SpellComponent.create!(spell_id: sp16.id, component_id: divine_focus.id, item: "an eyelash encased in gum arabic")
  invisiblilty_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp16.id, spell_level: 2)
  invisiblilty_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp16.id, spell_level: 2)
  # invisiblilty_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp16.id, spell_level: 2)
  invisiblilty_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp16.id, spell_level: 2)
  # invisiblilty_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin.id, spell_id: sp16.id, spell_level: 2)
  # invisiblilty_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp16.id, spell_level: 2)
  invisiblilty_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp16.id, spell_level: 2)
  # invisiblilty_medium = SpellListSpell.create!(spell_list_id: medium.id, spell_id: sp16.id, spell_level: 2)
  # invisiblilty_mesmerist = SpellListSpell.create!(spell_list_id: mesmerist.id, spell_id: sp16.id, spell_level: 2)
  # invisiblilty_occultist = SpellListSpell.create!(spell_list_id: occultist.id, spell_id: sp16.id, spell_level: 2)
  # invisiblilty_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp16.id, spell_level: 2)
  # invisiblilty_spiritualist = SpellListSpell.create!(spell_list_id: spiritualist.id, spell_id: sp16.id, spell_level: 2)
  invisiblilty_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp16.id, spell_level: 2)

sp17 = Spell.create!(name: "Cure Light Wounds", description: "When laying your hand upon a living creature, you channel positive energy that cures 1d8 points of damage +1 point per caster level (maximum +5). Since undead are powered by negative energy, this spell deals damage to them instead of curing their wounds. An undead creature can apply Spell Resistance, and can attempt a Will save to take half damage.", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp17.id, subschool_id: healing.id)
  SpellComponent.create!(spell_id: sp17.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp17.id, component_id: somatic.id)
  cure_light_wounds_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp17.id, spell_level: 1)
  cure_light_wounds_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp17.id, spell_level: 1)
  cure_light_wounds_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp17.id, spell_level: 1)
  cure_light_wounds_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp17.id, spell_level: 1)
  # cure_light_wounds_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp17.id, spell_level: 1)
  # cure_light_wounds_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp17.id, spell_level: 1)
  # cure_light_wounds_paladin = SpellListSpell.create!(spell_list_id: paladin.id, spell_id: sp17.id, spell_level: 1)
  cure_light_wounds_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp17.id, spell_level: 2)
  # cure_light_wounds_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp17.id, spell_level: 1)

  FeatureSpontaneousCasting.create!(feature_id: cleric6_feature.id, spell_id: sp17.id, keyword: "cure", spell_level: 1, player_choice: true)
  FeatureSpontaneousCasting.create!(feature_id: warpriest4_feature.id, spell_id: sp17.id, keyword: "cure", spell_level: 1, player_choice: true)


sp18 = Spell.create!(name: "Feather Fall", description: "The affected creatures or objects fall slowly. Feather fall instantly changes the rate at which the targets fall to a mere 60 feet per round (equivalent to the end of a fall from a few feet), and the subjects take no damage upon landing while the spell is in effect. When the spell duration expires, a normal rate of falling resumes.

The spell affects one or more Medium or smaller creatures (including gear and carried objects up to each creature’s maximum load) or objects, or the equivalent in larger creatures: a Large creature or object counts as two Medium creatures or objects, a Huge creature or object counts as four Medium creatures or objects, and so forth.

This spell has no special effect on ranged weapons unless they are falling quite a distance. If the spell is cast on a falling item, the object does half normal damage based on its weight, with no bonus for the height of the drop.

Feather fall works only upon free-falling objects. It does not affect a sword blow or a charging or flying creature.", target: "one Medium or smaller free-falling object or creature/level, no two of which may be more than 20 ft. apart", saving_throw: "Will", spell_resistance: true, action_id: immediate.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "until landing or 1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp18.id, component_id: verbal.id)
  feather_fall_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp18.id, spell_level: 1)
  feather_fall_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp18.id, spell_level: 1)
  # feather_fall_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp18.id, spell_level: 1)
  # feather_fall_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp18.id, spell_level: 1)
  feather_fall_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp18.id, spell_level: 1)
  # feather_fall_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp18.id, spell_level: 1)
  feather_fall_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp18.id, spell_level: 1)

sp19 = Spell.create!(name: "Shield", description: "Shield creates an invisible shield of force that hovers in front of you. It negates magic missile attacks directed at you. The disk also provides a +4 shield bonus to AC. This bonus applies against incorporeal touch attacks, since it is a force effect. The shield has no armor check penalty or arcane spell failure chance.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: abjuration.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp19.id, subschool_id: force.id)
  SpellComponent.create!(spell_id: sp19.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp19.id, component_id: somatic.id)
  shield_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp19.id, spell_level: 1)
  # shield_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp19.id, spell_level: 1)
  shield_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp19.id, spell_level: 1)
  # shield_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp19.id, spell_level: 1)
  shield_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp19.id, spell_level: 1)
  # shield_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp19.id, spell_level: 1)
  shield_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp19.id, spell_level: 1)

sp20 = Spell.create!(name: "Dancing Lights", description: "Depending on the version selected, you create up to four lights that resemble lanterns or torches (and cast that amount of light), or up to four glowing spheres of light (which look like will-o’-wisps), or one faintly glowing, vaguely humanoid shape. The dancing lights must stay within a 10-foot-radius area in relation to each other but otherwise move as you desire (no concentration required): forward or back, up or down, straight or turning corners, or the like. The lights can move up to 100 feet per round. A light winks out if the distance between you and it exceeds the spell’s range.

You can only have one dancing lights spell active at any one time. If you cast this spell while another casting is still in effect, the previous casting is dispelled. If you make this spell permanent, it does not count against this limit.

Dancing lights can be made permanent with a permanency spell.", target: "Up to four lights, all within a 10-ft.-radius area", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: medium.id, magic_school_id: evocation.id, duration: "1 minute", time: 1, unit_of_time: "minute", increase_per_level: 0, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp20.id, subschool_id: light.id)
  SpellComponent.create!(spell_id: sp20.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp20.id, component_id: somatic.id)
  dancing_lights_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp20.id, spell_level: 0)
  dancing_lights_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp20.id, spell_level: 0)
  dancing_lights_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp20.id, spell_level: 0)
  dancing_lights_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp20.id, spell_level: 0)
  # dancing_lights_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp20.id, spell_level: 0)
  # dancing_lights_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp20.id, spell_level: 0)

print "20 Spells Created \r"

sp21 = Spell.create!(name: "Resistance", description: "You imbue the subject with magical energy that protects it from harm, granting it a +1 resistance bonus on saves.

Resistance can be made permanent with a permanency spell.", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: abjuration.id, duration: "1 minute", time: 1, unit_of_time: "minute", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp21.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp21.id, component_id: somatic.id)
  SpellComponent.create!(spell_id: sp21.id, component_id: material.id, item: "a miniature cloak")
  SpellComponent.create!(spell_id: sp21.id, component_id: divine_focus.id, item: "a miniature cloak")
  resistance_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp21.id, spell_level: 0)
  resistance_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp21.id, spell_level: 0)
  resistance_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp21.id, spell_level: 0)
  # resistance_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp21.id, spell_level: 0)
  resistance_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp21.id, spell_level: 0)
  # resistance_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp21.id, spell_level: 0)
  # resistance_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp21.id, spell_level: 0)
  # resistance_paladin = SpellListSpell.create!(spell_list_id: paladin.id, spell_id: sp21.id, spell_level: 1)
  # resistance_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp21.id, spell_level: 0)
  # resistance_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp21.id, spell_level: 0)
  resistance_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp21.id, spell_level: 0)

sp22 = Spell.create!(name: "Summon Instrument", description: "This spell summons one handheld musical instrument of your choice. This instrument appears in your hands or at your feet (your choice). The instrument is typical for its type. Only one instrument appears per casting, and it will play only for you. You can’t summon an instrument too large to be held in two hands. The summoned instrument disappears at the end of this spell.", target: "one summoned handheld musical instrument", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: zero_feet.id, magic_school_id: conjuration.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp22.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp22.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp22.id, component_id: somatic.id, item: nil)
  summon_instrument_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp22.id, spell_level: 0)

sp23 = Spell.create!(name: "Read Magic", description: "You can decipher magical inscriptions on objects – books, scrolls, weapons, and the like – that would otherwise be unintelligible. This deciphering does not normally invoke the magic contained in the writing, although it may do so in the case of a cursed or trapped scroll. Furthermore, once the spell is cast and you have read the magical inscription, you are thereafter able to read that particular writing without recourse to the use of read magic. You can read at the rate of one page (250 words) per minute. The spell allows you to identify a glyph of warding with a DC 13 Spellcraft check, a greater glyph of warding with a DC 16 Spellcraft check, or any symbol spell with a Spellcraft check (DC 10 + spell level).

Read magic can be made permanent with a permanency spell.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: divination.id, duration: "10 min./level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp23.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp23.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp23.id, component_id: focus.id, item: "a clear crystal or mineral prism")
  read_magic_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp23.id, spell_level: 0)
  read_magic_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp23.id, spell_level: 0)
  read_magic_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp23.id, spell_level: 0)
  # read_magic_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp23.id, spell_level: 0)
  read_magic_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp23.id, spell_level: 0)
  # read_magic_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin.id, spell_id: sp23.id, spell_level: 1)
  # read_magic_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp23.id, spell_level: 0)
  # read_magic_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp23.id, spell_level: 0)
  read_magic_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp23.id, spell_level: 0)
  # read_magic_paladin = SpellListSpell.create!(spell_list_id: paladin.id, spell_id: sp23.id, spell_level: 1)
  # read_magic_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp23.id, spell_level: 0)
  read_magic_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp23.id, spell_level: 1)
  # read_magic_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp23.id, spell_level: 0)
  read_magic_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp23.id, spell_level: 0)

sp24 = Spell.create!(name: "Haunted Fey Aspect", description: "You surround yourself with disturbing illusions, making you look and sound like a bizarre, insane fey creature. You gain DR 1/cold iron against a single opponent until the end of the spell, or until you take damage.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: illusion.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp24.id, subschool_id: glamer.id)
  SpellComponent.create!(spell_id: sp24.id, component_id: somatic.id, item: nil)
  haunted_fey_aspect_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp24.id, spell_level: 0)
  haunted_fey_aspect_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp24.id, spell_level: 0)
  # haunted_fey_aspect_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp24.id, spell_level: 0)

sp25 = Spell.create!(name: "Jitterbugs", description: "You cause the target to perceive itself as being covered in creeping, crawling, stinging bugs. This causes the target to become jittery and unable to stay still, forcing it to constantly move and twitch. The target takes a –4 penalty on all Dexterity checks and Dexterity-based skill checks, and cannot take the delay, ready, or total defense actions.", target: "one creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: illusion.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp25.id, subschool_id: figment.id)
  SpellSubschool.create!(spell_id: sp25.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp25.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp25.id, component_id: somatic.id, item: nil)
  jitterbugs_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp25.id, spell_level: 1)
  jitterbugs_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp25.id, spell_level: 2)
  # jitterbugs_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp25.id, spell_level: 2)
  # jitterbugs_mesmerist = SpellListSpell.create!(spell_list_id: mesmerist.id, spell_id: sp25.id, spell_level: 1)

sp26 = Spell.create!(name: "Silent Image", description: "This spell creates the visual illusion of an object, creature, or force, as visualized by you. The illusion does not create sound, smell, texture, or temperature. You can move the image within the limits of the size of the effect.", target: "visual figment that cannot extend beyond four 10-ft. cubes + one 10-ft. cube/level (S)", saving_throw: "Will", spell_resistance: false, action_id: standard.id, spell_range_id: long.id, magic_school_id: illusion.id, duration: "concentration", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: true)
  SpellSubschool.create!(spell_id: sp26.id, subschool_id: figment.id)
  SpellComponent.create!(spell_id: sp26.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp26.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp26.id, component_id: focus.id, item: 'a bit of fleece')
  silent_image_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp26.id, spell_level: 1)
  silent_image_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp26.id, spell_level: 1)
  silent_image_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp26.id, spell_level: 1)
  # silent_image_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp26.id, spell_level: 1)

sp27 = Spell.create!(name: "Slow", description: "An affected creature moves and attacks at a drastically slowed rate. Creatures affected by this spell are staggered and can take only a single move action or standard action each turn, but not both (nor may it take full-round actions). Additionally, it takes a -1 penalty on attack rolls, AC, and Reflex saves. A slowed creature moves at half its normal speed (round down to the next 5-foot increment), which affects the creature’s jumping distance as normal for decreased speed.

Multiple slow effects don’t stack. Slow counters and dispels haste.", target: "one creature/level, no two of which can be more than 30 ft. apart", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp27.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp27.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp27.id, component_id: material.id, item: "a drop of molasses")
  slow_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp27.id, spell_level: 3)
  slow_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp27.id, spell_level: 3)
  # slow_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp27.id, spell_level: 3)
  # slow_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp27.id, spell_level: 4)
  slow_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp27.id, spell_level: 3)
  # slow_medium = SpellListSpell.create!(spell_list_id: medium.id, spell_id: sp27.id, spell_level: 2)
  # slow_occultist = SpellListSpell.create!(spell_list_id: occultist.id, spell_id: sp27.id, spell_level: 3)
  # slow_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp27.id, spell_level: 3)
  # slow_spiritualist = SpellListSpell.create!(spell_list_id: spiritualist.id, spell_id: sp27.id, spell_level: 3)
  slow_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp27.id, spell_level: 2)

sp28 = Spell.create!(name: "Bleed for your Master", description: "When you would be hit by an attack that requires an attack roll, or when you are within an area of effect that allows you to attempt a Reflex saving throw, with a single touch you compel the target to throw itself in front of the blow or shield you from the effect.

If an attack roll triggered this spell’s casting, the target takes the damage instead of you, even if the attack roll would not normally hit the target’s Armor Class.

If an area of effect that allows you to attempt a Reflex save triggered this spell’s casting, the target instead grants you cover against the effect (+2 bonus on Reflex saves) if it is your size or smaller, or improved cover (+4 bonus on Reflex saves and improved evasion against the effect) if it is larger than you. the target automatically fails its Reflex save against the effect but can still benefit from improved evasion and similar mitigating effects.

After taking damage, the target is shaken for 1 minute. If the target was already shaken, it becomes frightened instead.", target: "your animal companion, familiar, or fiendish servant", saving_throw: "none", spell_resistance: false, action_id: immediate.id, spell_range_id: touch.id, magic_school_id: enchantment.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp28.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: sp28.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp28.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp28.id, component_id: somatic.id, item: nil)
  bleed_for_your_master_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp28.id, spell_level: 3)
  bleed_for_your_master_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp28.id, spell_level: 3)
  # bleed_for_your_master_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin.id, spell_id: sp28.id, spell_level: 2)
  # bleed_for_your_master_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp28.id, spell_level: 3)
  bleed_for_your_master_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp28.id, spell_level: 3)

sp29 = Spell.create!(name: "Dominate Person", description: "You can control the actions of any humanoid creature through a telepathic link that you establish with the subject’s mind.

If you and the subject have a common language, you can generally force the subject to perform as you desire, within the limits of its abilities. If no common language exists, you can communicate only basic commands, such as “Come here,” “Go there,” “Fight,” and “Stand still.” You know what the subject is experiencing, but you do not receive direct sensory input from it, nor can it communicate with you telepathically.

Once you have given a dominated creature a command, it continues to attempt to carry out that command to the exclusion of all other activities except those necessary for day-to-day survival (such as sleeping, eating, and so forth). Because of this limited range of activity, a Sense Motive check against DC 15 (rather than DC 25) can determine that the subject’s behavior is being influenced by an enchantment effect (see the Sense Motive skill description).

Changing your orders or giving a dominated creature a new command is a move action.

By concentrating fully on the spell (a standard action), you can receive full sensory input as interpreted by the mind of the subject, though it still can’t communicate with you. You can’t actually see through the subject’s eyes, so it’s not as good as being there yourself, but you still get a good idea of what’s going on.

Subjects resist this control, and any subject forced to take actions against its nature receives a new saving throw with a +2 bonus. Obviously self-destructive orders are not carried out. Once control is established, the range at which it can be exercised is unlimited, as long as you and the subject are on the same plane. You need not see the subject to control it.

If you don’t spend at least 1 round concentrating on the spell each day, the subject receives a new saving throw to throw off the domination.

Protection from evil or a similar spell can prevent you from exercising control or using the telepathic link while the subject is so warded, but such an effect does not automatically dispel it.", target: "one humanoid", saving_throw: "Will", spell_resistance: true, action_id: full_round.id, spell_range_id: close.id, magic_school_id: enchantment.id, duration: "1 day/level", time: 1, unit_of_time: "day", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp29.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: sp29.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp29.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp29.id, component_id: somatic.id, item: nil)
  dominate_person_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp29.id, spell_level: 4)
  dominate_person_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp29.id, spell_level: 5)
  dominate_person_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp29.id, spell_level: 5)
  # dominate_person_mesmerist = SpellListSpell.create!(spell_list_id: mesmerist.id, spell_id: sp29.id, spell_level: 4)
  # dominate_person_shaman = SpellListSpell.create!(spell_list_id:_shaman.id, spell_id: sp29.id, spell_level: 5)

sp30 = Spell.create!(name: "Shadow Trap", description: "You pin the target’s shadow to its current location, causing the target to become entangled and preventing it from moving farther than 5 feet from its original position, as if its shadow were anchored to the terrain. Each round on its turn, the target can attempt a new saving throw to end the effect as a full-round action. A flying creature can only hover in place or fall while entangled in this manner. This spell automatically fails when cast on a creature that doesn’t throw a shadow, and it ends if the creature is entirely in an area with no illumination.", target: "one creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: illusion.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp30.id, subschool_id: shadow.id)
  SpellComponent.create!(spell_id: sp30.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp30.id, component_id: somatic.id, item: nil)
  shadow_trap_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp30.id, spell_level: 1)
  shadow_trap_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp30.id, spell_level: 1)
  shadow_trap_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp30.id, spell_level: 1)
  shadow_trap_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp30.id, spell_level: 1)
  # shadow_trap_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin.id, spell_id: sp30.id, spell_level: 1)
  # shadow_trap_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp30.id, spell_level: 1)
  # shadow_trap_mesmerist = SpellListSpell.create!(spell_list_id: mesmerist.id, spell_id: sp30.id, spell_level: 1)
  # shadow_trap_occultist = SpellListSpell.create!(spell_list_id: occultist.id, spell_id: sp30.id, spell_level: 1)
  # shadow_trap_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp30.id, spell_level: 1)
  # shadow_trap_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp30.id, spell_level: 1)

print "30 Spells Created \r"

sp31 = Spell.create!(name: "Arcane Disruption", description: "This spell makes it difficult for the subject to cast arcane spells, use spell-like abilities, and use some abilities granted by arcane spellcasting classes. The subject must succeed at a concentration check (DC = 10 + 1/2 its caster level) in order to cast an arcane spell, use any spell-like ability (even those that come from a divine source), use arcane spell completion or spell trigger magic items, or use any of the following class features that come from an arcane spellcasting class: arcane school powers, arcanist exploits, bardic performances, magus arcana, or witch hexes. Spells, spell-like abilities, or class features that take a free, swift, or immediate action aren’t affected by this spell, nor are mythic spells or mythic powers.

While under the effect of this spell, if the subject must attempt a concentration check to cast an arcane spell or use an arcane spell-like ability for any reason other than the effect of this spell (such as casting defensively, being injured while casting, and so on), it takes a penalty on that check equal to 1/2 its caster level.", target: "one creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: enchantment.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp31.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: sp31.id, subschool_id: curse.id)
  SpellSubschool.create!(spell_id: sp31.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp31.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp31.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp31.id, component_id: material.id, item: 'a pinch of pepper')
  arcane_disruption_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp31.id, spell_level: 2)
  arcane_disruption_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp31.id, spell_level: 2)
  arcane_disruption_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp31.id, spell_level: 2)
  # arcane_disruption_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp31.id, spell_level: 2)
  arcane_disruption_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp31.id, spell_level: 2)

sp32 = Spell.create!(name: "Summon Monster II", description: "This spell functions like summon monster I, except that you can summon one creature from the 2nd-level list or 1d3 creatures of the same kind from the 1st-level list.", target: "one summoned creature", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp32.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp32.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp32.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp32.id, component_id: focus.id, item: 'a tiny bag and a small candle')
  SpellComponent.create!(spell_id: sp32.id, component_id: divine_focus.id, item: 'a tiny bag and a small candle')
  summon_monster_II_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp32.id, spell_level: 2)
  summon_monster_II_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp32.id, spell_level: 2)
  # summon_monster_II_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp32.id, spell_level: 2)
  summon_monster_II_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp32.id, spell_level: 2)
  summon_monster_II_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp32.id, spell_level: 2)
  # summon_monster_II_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin.id, spell_id: sp32.id, spell_level: 2)
  # summon_monster_II_medium = SpellListSpell.create!(spell_list_id: medium.id, spell_id: sp32.id, spell_level: 2)
  # summon_monster_II_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp32.id, spell_level: 2)
  # summon_monster_II_spiritualist = SpellListSpell.create!(spell_list_id: spiritualist.id, spell_id: sp32.id, spell_level: 2)
  summon_monster_II_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp32.id, spell_level: 2)

sp33 = Spell.create!(name: "Summon Monster I", description: "This spell summons an extraplanar creature (typically an outsider, elemental, or magical beast native to another plane). It appears where you designate and acts immediately, on your turn. It attacks your opponents to the best of its ability. If you can communicate with the creature, you can direct it not to attack, to attack particular enemies, or to perform other actions. The spell conjures one of the creatures from the 1st Level list on Table: Summon Monster. You choose which kind of creature to summon, and you can choose a different one each time you cast the spell.

A summoned monster cannot summon or otherwise conjure another creature, nor can it use any teleportation or planar travel abilities. Creatures cannot be summoned into an environment that cannot support them. Creatures summoned using this spell cannot use spells or spell-like abilities that duplicate spells with expensive material components (such as wish).

When you use a summoning spell to summon a creature with an alignment or elemental subtype, it is a spell of that type. Creatures on Table: Summon Monster marked with an “*” are summoned with the celestial template, if you are good, and the fiendish template, if you are evil. If you are neutral, you may choose which template to apply to the creature. Creatures marked with an “*” always have an alignment that matches yours, regardless of their usual alignment. Summoning these creatures makes the summoning spell’s type match your alignment.

The summon monster spells have numerous entries representing creatures that are summoned from the Outer Planes, and thus have the celestial or fiendish template or can be summoned with the entropic or resolute template (Pathfinder RPG Bestiary 2, pages 292 and 293, respectively).", target: "one summoned creature", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp33.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp33.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp33.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp33.id, component_id: focus.id, item: 'a tiny bag and a small candle')
  SpellComponent.create!(spell_id: sp33.id, component_id: divine_focus.id, item: 'a tiny bag and a small candle')
  summon_monster_I_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp33.id, spell_level: 1)
  summon_monster_I_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp33.id, spell_level: 1)
  # summon_monster_I_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp33.id, spell_level: 1)
  summon_monster_I_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp33.id, spell_level: 1)
  summon_monster_I_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp33.id, spell_level: 1)
  # summon_monster_I_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin.id, spell_id: sp33.id, spell_level: 1)
  # summon_monster_I_medium = SpellListSpell.create!(spell_list_id: medium.id, spell_id: sp33.id, spell_level: 1)
  # summon_monster_I_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp33.id, spell_level: 1)
  # summon_monster_I_spiritualist = SpellListSpell.create!(spell_list_id: spiritualist.id, spell_id: sp33.id, spell_level: 1)
  summon_monster_I_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp33.id, spell_level: 1)
  summon_monster_I_feature = Feature.create!()
    SpellFeature.create!(spell_id: sp33.id, feature_id: summon_monster_I_feature.id)
    FeatureAnimal.create!(feature_id: summon_monster_I_feature.id, animal_type: "summoned", summoned_creature_list_id: summon_monster_list.id)

  FeatureCastableSpell.create!(feature_id: occultist_conjurers_focus_feature1.id, spell_id: sp33.id, added_to_known_spells: false, applicable_spell_level: 1, bonus_spell_slot_option: false)

sp34 = Spell.create!(name: "Tiny Hut", description: "You create an unmoving, opaque sphere of force of any color you desire around yourself. Half the sphere projects above the ground, and the lower hemisphere passes through the ground. As many as nine other Medium creatures can fit into the field with you; they can freely pass into and out of the hut without harming it. However, if you remove yourself from the hut, the spell ends.

The temperature inside the hut is 70° F if the exterior temperature is between 0° and 100° F. An exterior temperature below 0° or above 100° lowers or raises the interior temperature on a 1-degree-for-1 basis. The hut also provides protection against the elements, such as rain, dust, and sandstorms. The hut withstands any wind of less than hurricane force, but a hurricane (75+ mph wind speed) or greater force destroys it.

The interior of the hut is a hemisphere. You can illuminate it dimly upon command or extinguish the light as desired. Although the force field is opaque from the outside, it is transparent from within. Missiles, weapons, and most spell effects can pass through the hut without affecting it, although the occupants cannot be seen from outside the hut (they have total concealment).", target: "20-ft.-radius sphere centered on your location", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: twenty_feet.id, magic_school_id: evocation.id, duration: "2 hours/level", time: 2, unit_of_time: "hour", increase_per_level: 2, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp34.id, subschool_id: force.id)
  SpellComponent.create!(spell_id: sp34.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp34.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp34.id, component_id: material.id, item: 'a small crystal bead')
  tiny_hut_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp34.id, spell_level: 3)
  tiny_hut_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp34.id, spell_level: 3)

sp35 = Spell.create!(name: "Dispel Magic", description: "You can use dispel magic to end one ongoing spell that has been cast on a creature or object, to temporarily suppress the magical abilities of a magic item, or to counter another spellcaster’s spell. A dispelled spell ends as if its duration had expired. Some spells, as detailed in their descriptions, can’t be defeated by dispel magic. Dispel magic can dispel (but not counter) spell-like effects just as it does spells. The effect of a spell with an instantaneous duration can’t be dispelled, because the magical effect is already over before the dispel magic can take effect.

You choose to use dispel magic in one of two ways: a targeted dispel or a counterspell.

Targeted Dispel: One object, creature, or spell is the target of the dispel magic spell. You make one dispel check (1d20 + your caster level) and compare that to the spell with highest caster level (DC = 11 + the spell’s caster level). If successful, that spell ends. If not, compare the same result to the spell with the next highest caster level. Repeat this process until you have dispelled one spell affecting the target, or you have failed to dispel every spell.

For example, a 7th-level caster casts dispel magic, targeting a creature affected by stoneskin (caster level 12th) and fly (caster level 6th). The caster level check results in a 19. This check is not high enough to end the stoneskin (which would have required a 23 or higher), but it is high enough to end the fly (which only required a 17). Had the dispel check resulted in a 23 or higher, the stoneskin would have been dispelled, leaving the fly intact. Had the dispel check been a 16 or less, no spells would have been affected.

You can also use a targeted dispel to specifically end one spell affecting the target or one spell affecting an area (such as a wall of fire). You must name the specific spell effect to be targeted in this way. If your caster level check is equal to or higher than the DC of that spell, it ends. No other spells or effects on the target are dispelled if your check is not high enough to end the targeted effect.

If you target an object or creature that is the effect of an ongoing spell (such as a monster summoned by summon monster), you make a dispel check to end the spell that conjured the object or creature.

If the object that you target is a magic item, you make a dispel check against the item’s caster level (DC = 11 + the item’s caster level). If you succeed, all the item’s magical properties are suppressed for 1d4 rounds, after which the item recovers its magical properties. A suppressed item becomes nonmagical for the duration of the effect. An interdimensional opening (such as a bag of holding) is temporarily closed. A magic item’s physical properties are unchanged: A suppressed magic sword is still a sword (a masterwork sword, in fact). Artifacts and deities are unaffected by mortal magic such as this.

You automatically succeed on your dispel check against any spell that you cast yourself.

Counterspell: When dispel magic is used in this way, the spell targets a spellcaster and is cast as a counterspell. Unlike a true counterspell, however, dispel magic may not work; you must make a dispel check to counter the other spellcaster’s spell.", target: "one spellcaster, creature, or object", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: medium.id, magic_school_id: abjuration.id, duration: "instantaneous", time: 0, unit_of_time: "round", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp35.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp35.id, component_id: somatic.id, item: nil)
  dispel_magic_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp35.id, spell_level: 3)
  dispel_magic_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp35.id, spell_level: 3)
  # dispel_magic_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp35.id, spell_level: 3)
  dispel_magic_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp35.id, spell_level: 3)
  dispel_magic_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp35.id, spell_level: 3)
  # dispel_magic_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin.id, spell_id: sp35.id, spell_level: 3)
  # dispel_magic_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp35.id, spell_level: 4)
  # dispel_magic_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp35.id, spell_level: 3)
  dispel_magic_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp35.id, spell_level: 3)
  # dispel_magic_medium = SpellListSpell.create!(spell_list_id: medium.id, spell_id: sp35.id, spell_level: 3)
  # dispel_magic_mesmerist = SpellListSpell.create!(spell_list_id: mesmerist.id, spell_id: sp35.id, spell_level: 3)
  # dispel_magic_occultist = SpellListSpell.create!(spell_list_id: occultist.id, spell_id: sp35.id, spell_level: 3)
  # dispel_magic_paladin = SpellListSpell.create!(spell_list_id: paladin.id, spell_id: sp35.id, spell_level: 3)
  # dispel_magic_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp35.id, spell_level: 3)
  # dispel_magic_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp35.id, spell_level: 3)
  # dispel_magic_spiritualist = SpellListSpell.create!(spell_list_id: spiritualist.id, spell_id: sp35.id, spell_level: 3)
  dispel_magic_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp35.id, spell_level: 3)

sp36 = Spell.create!(name: "Whip of Spiders", description: "You summon hundreds of Diminutive spiders, which cling together in the form of a whip made for a creature of your size. You can wield this object as if it were an actual whip, except you make a melee touch attack with it instead of a regular attack. Any creature you strike with the whip takes swarm damage as if it were attacked by a spider swarm (1d6 points of damage plus poison and distraction). The swarm whip is able to damage creatures with armor or natural armor, even if a normal whip could not. It cannot be used to make bull rush, grapple, or trip attacks, and (unlike a swarm) is subject to a miss chance for concealment and cover.

The whip is immune to all weapon damage, is never staggered or reduced to a dying state by damage, and is immune to any spell or effect that targets a specific number of creatures (including single-target spells such as disintegrate). The whip takes half again as much damage from spells or effects that affect an area, but since it is considered part of your gear, it takes damage only if you fail a saving throw on a 1 or if it is specifically targeted by an opponent. The whip does not have a swarm’s susceptibility to high winds.

As a standard action, you can transform the whip into a spider swarm (all squares of the swarm must be within 15 feet of you); thereafter it functions as summon swarm. The spider swarm has 3 hit points and persists in that form for 2 rounds or until the end of this spell’s duration, whichever comes first.", target: "whiplike swarm", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: zero_feet.id, magic_school_id: conjuration.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp36.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp36.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp36.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp36.id, component_id: material.id, item: 'a square of red cloth')
  SpellComponent.create!(spell_id: sp36.id, component_id: divine_focus.id, item: 'a square of red cloth')
  whip_of_spiders_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp36.id, spell_level: 2)
  whip_of_spiders_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp36.id, spell_level: 2)
  # whip_of_spiders_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp36.id, spell_level: 2)
  whip_of_spiders_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp36.id, spell_level: 2)
  # whip_of_spiders_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp36.id, spell_level: 2)
  whip_of_spiders_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp36.id, spell_level: 2)

sp37 = Spell.create!(name: "Summon Swarm", description: "You summon a swarm of bats, rats, or spiders (your choice), which attacks all other creatures within its area. (You may summon the swarm so that it shares the area of other creatures.) If no living creatures are within its area, the swarm attacks or pursues the nearest creature as best it can. The caster has no control over its target or direction of travel.", target: "one swarm of bats, rats, or spiders", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "concentration + 2 rounds", time: 2, unit_of_time: "round", increase_per_level: 0, dismissible: false, concentration: true)
  SpellSubschool.create!(spell_id: sp37.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp37.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp37.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp37.id, component_id: material.id, item: 'a square of red cloth')
  SpellComponent.create!(spell_id: sp37.id, component_id: divine_focus.id, item: 'a square of red cloth')
  summon_swarm_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp37.id, spell_level: 2)
  summon_swarm_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp37.id, spell_level: 2)
  # summon_swarm_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp37.id, spell_level: 2)
  summon_swarm_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp37.id, spell_level: 2)
  # summon_swarm_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp37.id, spell_level: 2)
  summon_swarm_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp37.id, spell_level: 2)

sp38 = Spell.create!(name: "Pugwampi's Grace", description: "The gremlins known as pugwampis infect those around them with a malignant form of unluck—an effect that this spell emulates. If the target fails its Will save, it becomes infused with the so-called “grace of the pugwampi.” A creature affected by this spell must roll two d20s whenever a situation calls for a d20 roll (such as an attack roll, a skill check, or a saving throw) and must use the lower of the two results generated. As with the aura shed by actual pugwampies, this spell has no effect on animals, gremlins, or gnolls. The effects of this spell are negated as long as a target gains any sort of luck bonus to a d20 roll (such as those granted by a luckstone or divine favor), but the spell’s duration is not impacted by these effects. If the luck bonus goes away before the pugwampi’s grace effect ends, the unluck returns and remains until the spell’s normal duration runs out.", target: "one creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: enchantment.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp38.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: sp38.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp38.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp38.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp38.id, component_id: material.id, item: "a pugwampi's hair")
  pugwampis_grace_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp38.id, spell_level: 2)
  pugwampis_grace_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp38.id, spell_level: 3)
  pugwampis_grace_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp38.id, spell_level: 3)

sp39 = Spell.create!(name: "Mount", description: "You summon a light horse or a pony (your choice) to serve you as a mount. The steed serves willingly and well. The mount comes with a bit and bridle and a riding saddle.", target: "one mount", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "2 hours/level", time: 2, unit_of_time: "hour", increase_per_level: 2, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp39.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp39.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp39.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp39.id, component_id: material.id, item: 'a bit of horse hair')
  mount_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp39.id, spell_level: 1)
  # mount_arcanist = SpellListSpell.create!(spell_list_id: arcanist.id, spell_id: sp39.id, spell_level: 1)
  mount_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp39.id, spell_level: 1)
  # mount_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp39.id, spell_level: 1)
  mount_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp39.id, spell_level: 1)
  mount_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp39.id, spell_level: 1)

sp40 = Spell.create!(name: "Trial of Fire and Acid", description: "The target creature is covered in burning acid that deals 1d6 points of acid damage and 1d6 points of fire damage each round.

The subject can attempt a Fortitude saving throw each round to reduce the damage by half. Dousing the target in water ends the effect (both the acid and the fire), but rolling on the ground does not extinguish the fire or affect the acid.", target: "creature touched", saving_throw: "Fortitude", spell_resistance: false, action_id: standard.id, spell_range_id: touch.id, magic_school_id: evocation.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp40.id, subschool_id: fire.id)
  SpellSubschool.create!(spell_id: sp40.id, subschool_id: acid.id)
  SpellComponent.create!(spell_id: sp40.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp40.id, component_id: somatic.id, item: nil)
  trial_of_fire_and_acid_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp40.id, spell_level: 3)
  trial_of_fire_and_acid_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp40.id, spell_level: 3)
  trial_of_fire_and_acid_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp40.id, spell_level: 3)
  # trial_of_fire_and_acid_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp40.id, spell_level: 3)
  trial_of_fire_and_acid_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp40.id, spell_level: 3)
  # trial_of_fire_and_acid_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp40.id, spell_level: 3)

print "40 Spells Created \r"

sp41 = Spell.create!(name: "Unerring Weapon", description: "This spell causes a weapon to veer closer to vital areas, improving the result of a critical threat. This transmutation grants a +2 bonus on attack rolls to confirm critical hits plus 1 additional bonus point per four caster levels (maximum total bonus +7). If the spell is cast on projectiles, the effect ends on a specific projectile whenever that projectile is used to make an attack, regardless of whether the attack hits. For this spell, shuriken are considered projectiles.", target: "one weapon or 20 projectiles, all of which must be together at the time of casting", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp41.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp41.id, component_id: somatic.id, item: nil)
  unerring_weapon_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp41.id, spell_level: 1)
  unerring_weapon_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp41.id, spell_level: 1)
  # unerring_weapon_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp41.id, spell_level: 1)
  # unerring_weapon_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp41.id, spell_level: 1)
  unerring_weapon_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp41.id, spell_level: 1)
  # unerring_weapon_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp41.id, spell_level: 1)

sp42 = Spell.create!(name: "Create Pit", description: "You create a 10-foot-by-10-foot extra-dimensional hole with a depth of 10 feet per two caster levels (maximum 30 feet). You must create the pit on a horizontal surface of sufficient size. Since it extends into another dimension, the pit has no weight and does not otherwise displace the original underlying material. You can create the pit in the deck of a ship as easily as in a dungeon floor or the ground of a forest. Any creature standing in the area where you first conjured the pit must make a Reflex saving throw to jump to safety in the nearest open space. In addition, the edges of the pit are sloped, and any creature ending its turn on a square adjacent to the pit must make a Reflex saving throw with a +2 bonus to avoid falling into it. Creatures subjected to an effect intended to push them into the pit (such as bull rush) do not get a saving throw to avoid falling in if they are affected by the pushing effect.

Creatures who fall into the pit take falling damage as normal. The pit’s coarse stone walls have a Climb DC of 25. When the duration of the spell ends, creatures within the hole rise up with the bottom of the pit until they are standing on the surface over the course of a single round.", target: "10-ft.-by-10-ft. hole, 10 ft. deep/2 levels", saving_throw: "Reflex", spell_resistance: false, action_id: standard.id, spell_range_id: medium.id, magic_school_id: conjuration.id, duration: "1 round + 1 round/level", time: 2, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp42.id, subschool_id: creation.id)
  SpellComponent.create!(spell_id: sp42.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp42.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp42.id, component_id: focus.id, item: 'miniature shovel costing 10gp')
  create_pit_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp42.id, spell_level: 2)
  # create_pit_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp42.id, spell_level: 2)
  create_pit_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp42.id, spell_level: 2)

sp43 = Spell.create!(name: "Inflict Light Wounds", description: "When laying your hand upon a creature, you channel negative energy that deals 1d8 points of damage + 1 point per caster level (maximum +5).

Since undead are powered by negative energy, this spell cures such a creature of a like amount of damage, rather than harming it.", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: necromancy.id, duration: "instantaneous", time: 0, unit_of_time: "round", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp43.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp43.id, component_id: somatic.id, item: nil)
  inflict_light_wounds_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp43.id, spell_level: 1)
  inflict_light_wounds_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp43.id, spell_level: 1)
  # inflict_light_wounds_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin.id, spell_id: sp43.id, spell_level: 1)
  # inflict_light_wounds_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp43.id, spell_level: 1)
  # inflict_light_wounds_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp43.id, spell_level: 1)

  FeatureSpontaneousCasting.create!(feature_id: cleric6_feature.id, spell_id: sp43.id, keyword: "inflict", spell_level: 1, player_choice: true)
  FeatureSpontaneousCasting.create!(feature_id: warpriest4_feature.id, spell_id: sp43.id, keyword: "inflict", spell_level: 1, player_choice: true)


sp44 = Spell.create!(name: "Inflict Moderate Wounds", description: "This spell functions like inflict light wounds, except that you deal 2d8 points of damage + 1 point per caster level (maximum +10).", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: necromancy.id, duration: "instantaneous", time: 0, unit_of_time: "round", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp44.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp44.id, component_id: somatic.id, item: nil)
  inflict_moderate_wounds_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp44.id, spell_level: 2)
  inflict_moderate_wounds_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp44.id, spell_level: 2)
  # inflict_moderate_wounds_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin.id, spell_id: sp44.id, spell_level: 3)
  # inflict_moderate_wounds_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp44.id, spell_level: 2)
  # inflict_moderate_wounds_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp44.id, spell_level: 2)

  FeatureSpontaneousCasting.create!(feature_id: cleric6_feature.id, spell_id: sp44.id, keyword: "inflict", spell_level: 2, player_choice: true)
  FeatureSpontaneousCasting.create!(feature_id: warpriest4_feature.id, spell_id: sp44.id, keyword: "inflict", spell_level: 2, player_choice: true)


sp45 = Spell.create!(name: "Cure Moderate Wounds", description: "This spell functions like cure light wounds, except that it cures 2d8 points of damage + 1 point per caster level (maximum +10).", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp45.id, subschool_id: healing.id)
  SpellComponent.create!(spell_id: sp45.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp45.id, component_id: somatic.id)
  cure_moderate_wounds_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp45.id, spell_level: 2)
  cure_moderate_wounds_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp45.id, spell_level: 2)
  cure_moderate_wounds_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp45.id, spell_level: 2)
  cure_moderate_wounds_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp45.id, spell_level: 2)
  # cure_moderate_wounds_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp45.id, spell_level: 3)
  # cure_moderate_wounds_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp45.id, spell_level: 2)
  # cure_moderate_wounds_paladin = SpellListSpell.create!(spell_list_id: paladin.id, spell_id: sp45.id, spell_level: 2)
  cure_moderate_wounds_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp45.id, spell_level: 3)
  # cure_moderate_wounds_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp45.id, spell_level: 2)

  FeatureSpontaneousCasting.create!(feature_id: cleric6_feature.id, spell_id: sp45.id, keyword: "cure", spell_level: 2, player_choice: true)
  FeatureSpontaneousCasting.create!(feature_id: warpriest4_feature.id, spell_id: sp45.id, keyword: "cure", spell_level: 2, player_choice: true)


sp46 = Spell.create!(name: "See Invisibility", description: "You can see any objects or beings that are invisible within your range of vision, as well as any that are ethereal, as if they were normally visible. Such creatures are visible to you as translucent shapes, allowing you easily to discern the difference between visible, invisible, and ethereal creatures.

The spell does not reveal the method used to obtain invisibility. It does not reveal illusions or enable you to see through opaque objects. It does not reveal creatures who are simply hiding, concealed, or otherwise hard to see.

See invisibility can be made permanent with a permanency spell.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: divination.id, duration: "10 min./level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp46.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp46.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp46.id, component_id: material.id, item: 'talc and powdered silver')
  see_invisibility_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp46.id, spell_level: 3)
  see_invisibility_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp46.id, spell_level: 2)
  see_invisibility_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp46.id, spell_level: 2)
  # see_invisibility_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp46.id, spell_level: 2)
  see_invisibility_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp46.id, spell_level: 2)
  # see_invisibility_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp46.id, spell_level: 2)
  # see_invisibility_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp46.id, spell_level: 2)
  # see_invisibility_mesmerist = SpellListSpell.create!(spell_list_id: mesmerist.id, spell_id: sp46.id, spell_level: 3)
  # see_invisibility_occultist = SpellListSpell.create!(spell_list_id: occultist.id, spell_id: sp46.id, spell_level: 2)
  # see_invisibility_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp46.id, spell_level: 2)
  # see_invisibility_spiritualist = SpellListSpell.create!(spell_list_id: spiritualist.id, spell_id: sp46.id, spell_level: 2)
  see_invisibility_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp46.id, spell_level: 2)

sp47 = Spell.create!(name: "Misdirection", description: "By means of this spell, you misdirect the information from divination spells that reveal auras (detect evil, detect magic, discern lies, and the like). On casting the spell, you choose another object within range. For the duration of the spell, the subject of misdirection is detected as if it were the other object. Neither the subject nor the other object gets a saving throw against this effect. Detection spells provide information based on the second object rather than on the actual target of the detection unless the caster of the detection succeeds on a Will save. For instance, you could make yourself detect as a tree if one were within range at casting: not evil, not lying, not magical, neutral in alignment, and so forth. This spell does not affect other types of divination magic (augury, detect thoughts, clairaudience/clairvoyance, and the like).", target: "one creature or object, up to a 10-ft. cube in size", saving_throw: "Will", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: illusion.id, duration: "1 hour/level", time: 1, unit_of_time: "hour", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp47.id, subschool_id: glamer.id)
  SpellComponent.create!(spell_id: sp47.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp47.id, component_id: somatic.id, item: nil)
  misdirection_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp47.id, spell_level: 2)
  misdirection_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp47.id, spell_level: 2)
  # misdirection_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp47.id, spell_level: 2)
  # misdirection_medium = SpellListSpell.create!(spell_list_id: medium.id, spell_id: sp47.id, spell_level: 2)
  # misdirection_mesmerist = SpellListSpell.create!(spell_list_id: mesmerist.id, spell_id: sp47.id, spell_level: 2)
  # misdirection_occultist = SpellListSpell.create!(spell_list_id: occultist.id, spell_id: sp47.id, spell_level: 2)
  # misdirection_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp47.id, spell_level: 2)
  # misdirection_spiritualist = SpellListSpell.create!(spell_list_id: spiritualist.id, spell_id: sp47.id, spell_level: 2)
  misdirection_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp47.id, spell_level: 2)

sp48 = Spell.create!(name: "Boneshaker", description: "By using a bone fetish like a marionette, you take control of a target creature’s skeleton. This has a variety of effects depending on whether the target is living or undead.

A living creature has its skeleton rattle within its flesh, causing it grievous harm. The target takes 3d6 points of damage, plus 1d6 additional points of damage per 2 caster levels you have.

In addition, you can move the target 5 feet. This movement doesn’t provoke attacks of opportunity. A successful saving throw halves the damage and negates the movement.

An undead creature takes no damage. Instead, you manipulate the undead, forcing it to take an immediate action to either move up to its speed (provoking attacks of opportunity as normal) or make a single attack against a creature of your choice in its reach. Either of these is the most basic version of the action the creature can take (it doesn’t activate any special abilities that it could apply to the movement or attack, such as grab). A successful saving throw negates this effect. A mindless undead creature doesn’t receive a save against this effect.", target: "one living creature or undead creature with a skeleton", saving_throw: "Fortitude", spell_resistance: true, action_id: standard.id, spell_range_id: medium.id, magic_school_id: necromancy.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp48.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp48.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp48.id, component_id: focus.id, item: 'human-shaped fetish made of bones')
  boneshaker_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp48.id, spell_level: 2)
  boneshaker_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp48.id, spell_level: 2)
  boneshaker_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp48.id, spell_level: 2)
  # boneshaker_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin.id, spell_id: sp48.id, spell_level: 1)
  # boneshaker_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp48.id, spell_level: 2)
  # boneshaker_spiritualist = SpellListSpell.create!(spell_list_id: spiritualist.id, spell_id: sp48.id, spell_level: 2)

sp49 = Spell.create!(name: "Beguiling Gift", description: "You offer an object to an adjacent creature, and entice it into using or consuming the proffered item. If the target fails its Will save, it immediately takes the offered object, dropping an already held object if necessary. On its next turn, it consumes or dons the object, as appropriate for the item in question. For example, an apple would be eaten, a potion consumed, a ring put on a finger, and a sword wielded in a free hand. If the target is physically unable to accept the object, the spell fails. The subject is under no obligation to continue consuming or using the item once the spell’s duration has expired, although it may find a cursed item difficult to be rid of.", target: "one creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: five_feet.id, magic_school_id: enchantment.id, duration: "1 round", time: 1, unit_of_time: "round", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp49.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: sp49.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp49.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp49.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp49.id, component_id: focus.id, item: 'the object to be offered')
  beguiling_gift_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp49.id, spell_level: 1)
  beguiling_gift_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp49.id, spell_level: 1)
  # beguiling_gift_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp49.id, spell_level: 1)

sp50 = Spell.create!(name: "Ray of Enfeeblement", description: "A coruscating ray springs from your hand. You must succeed on a ranged touch attack to strike a target. The subject takes a penalty to Strength equal to 1d6+1 per two caster levels (maximum 1d6+5). The subject’s Strength score cannot drop below 1. A successful Fortitude save reduces this penalty by half. This penalty does not stack with itself. Apply the highest penalty instead.", target: "ray", saving_throw: "Fortitude", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: necromancy.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp50.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp50.id, component_id: somatic.id, item: nil)
  ray_of_enfeeblement_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp50.id, spell_level: 1)
  ray_of_enfeeblement_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp50.id, spell_level: 1)
  # ray_of_enfeeblement_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp50.id, spell_level: 1)
  ray_of_enfeeblement_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp50.id, spell_level: 1)

# rays count as weapons when it comes to bonuses that only apply to weapons damage (i.e., bard's inspire courage)

print "50 Spells Created \r"

sp51 = Spell.create!(name: "Ear-Piercing Scream", description: "You unleash a powerful scream, inaudible to all but a single target. The target is dazed for 1 round and takes 1d6 points of sonic damage per two caster levels (maximum 5d6). A successful save negates the daze effect and halves the damage.", target: "one creature", saving_throw: "Fortitude", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp51.id, subschool_id: sonic.id)
  SpellComponent.create!(spell_id: sp51.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp51.id, component_id: somatic.id, item: nil)
  ear_piercing_scream_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp51.id, spell_level: 1)
  ear_piercing_scream_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp51.id, spell_level: 1)
  ear_piercing_scream_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp51.id, spell_level: 1)
  # ear_piercing_scream_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp51.id, spell_level: 1)
  # ear_piercing_scream_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp51.id, spell_level: 1)
  # ear_piercing_scream_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp51.id, spell_level: 1)

sp52 = Spell.create!(name: "Expeditious Retreat", description: "This spell increases your base land speed by 30 feet. This adjustment is treated as an enhancement bonus. There is no effect on other modes of movement, such as burrow, climb, fly, or swim. As with any effect that increases your speed, this spell affects your jumping distance (see the Acrobatics skill).", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp52.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp52.id, component_id: somatic.id, item: nil)
  expeditious_retreat_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp52.id, spell_level: 1)
  expeditious_retreat_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp52.id, spell_level: 1)
  expeditious_retreat_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp52.id, spell_level: 1)
  # expeditious_retreat_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp52.id, spell_level: 1)
  expeditious_retreat_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp52.id, spell_level: 1)
  # expeditious_retreat_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp52.id, spell_level: 1)
  expeditious_retreat_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp52.id, spell_level: 1)
  # expeditious_retreat_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp52.id, spell_level: 1)
  expeditious_retreat_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp52.id, spell_level: 1)

sp53 = Spell.create!(name: "Glue Seal", description: "You cover a solid surface with a layer of sticky glue. Anyone in the area when the spell is cast must attempt a Reflex save. Those who fail become entangled, but can break free by succeeding at a combat maneuver check or an Escape Artist check as a standard action against the DC of this spell. The area of the spell is considered difficult terrain. A creature moving through the glue must succeed at a combat maneuver check or an Escape Artist check as part of its move action (DC = the spell’s DC). Creatures that fail lose their movement and become entangled in the first square they enter.

The spell can also be used to create a sticky coating on an item. A creature holding a targeted item can attempt a Reflex saving throw against the spell’s DC. If the initial saving throw succeeds, the item is unaffected. If it fails, the item is stuck in place. If an affected item is connected to another item (such as a sword in a sheath or a cork in a potion bottle), it cannot be separated from the other item unless the creature succeeds at a combat maneuver check or a Strength check as a move action to free it (DC = the spell’s DC). A creature must succeed at saving throw each time it attempts to use the sticky item; otherwise, the item becomes stuck to the creature. Sticky armor or clothing imposes a –10 circumstance penalty on Escape Artist checks and combat maneuver checks to escape a grapple attempted by the wearer, as well as to the wearer’s CMD to avoid being grappled.", target: "one object or one 5-ft. square", saving_throw: "Reflex", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 minute/level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp53.id, subschool_id: creation.id)
  SpellComponent.create!(spell_id: sp53.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp53.id, component_id: somatic.id, item: nil)
  glue_seal_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp53.id, spell_level: 1)
  glue_seal_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp53.id, spell_level: 1)
  # glue_seal_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp53.id, spell_level: 1)
  glue_seal_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp53.id, spell_level: 1)
  # glue_seal_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp53.id, spell_level: 1)
  glue_seal_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp53.id, spell_level: 1)

sp54 = Spell.create!(name: "Corrosive Touch", description: "Your successful melee touch attack deals 1d4 points of acid damage per caster level (maximum 5d4).", target: "creature or object touched", saving_throw: "none", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp54.id, subschool_id: creation.id)
  SpellSubschool.create!(spell_id: sp54.id, subschool_id: acid.id)
  SpellComponent.create!(spell_id: sp54.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp54.id, component_id: somatic.id, item: nil)
  corrosive_touch_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp54.id, spell_level: 1)
  # corrosive_touch_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp54.id, spell_level: 1)
  # corrosive_touch_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp54.id, spell_level: 1)
  corrosive_touch_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp54.id, spell_level: 1)
  corrosive_touch_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp54.id, spell_level: 1)

sp55 = Spell.create!(name: "Disguise Self", description: "You make yourself – including clothing, armor, weapons, and equipment – look different. You can seem 1 foot shorter or taller, thin, fat, or in between. You cannot change your creature type (although you can appear as another subtype). Otherwise, the extent of the apparent change is up to you. You could add or obscure a minor feature or look like an entirely different person or gender.

The spell does not provide the abilities or mannerisms of the chosen form, nor does it alter the perceived tactile (touch) or audible (sound) properties of you or your equipment. If you use this spell to create a disguise, you get a +10 bonus on the Disguise check. A creature that interacts with the glamer gets a Will save to recognize it as an illusion.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: illusion.id, duration: "10 min./level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp55.id, subschool_id: glamer.id)
  SpellComponent.create!(spell_id: sp55.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp55.id, component_id: somatic.id, item: nil)
  disguise_self_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp55.id, spell_level: 1)
  disguise_self_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp55.id, spell_level: 1)
  disguise_self_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp55.id, spell_level: 1)
  # disguise_self_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin.id, spell_id: sp55.id, spell_level: 1)
  # disguise_self_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp55.id, spell_level: 1)
  # disguise_self_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp55.id, spell_level: 1)

sp56 =  Spell.create!(name: "Levitate", description: "Levitate allows you to move yourself, another creature, or an object up and down as you wish. A creature must be willing to be levitated, and an object must be unattended or possessed by a willing creature. You can mentally direct the recipient to move up or down as much as 20 feet each round; doing so is a move action. You cannot move the recipient horizontally, but the recipient could clamber along the face of a cliff, for example, or push against a ceiling to move laterally (generally at half its base land speed).

A levitating creature that attacks with a melee or ranged weapon finds itself increasingly unstable; the first attack has a -1 penalty on attack rolls, the second -2, and so on, to a maximum penalty of -5. A full round spent stabilizing allows the creature to begin again at -1.", target: "you or one willing creature or one object (total weight up to 100 lbs./level)", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp56.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp56.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp56.id, component_id: focus.id, item: 'a leather loop or golden wire bent into a cup shape')
  levitate_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp56.id, spell_level: 2)
  # levitate_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp56.id, spell_level: 2)
  levitate_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp56.id, spell_level: 2)
  levitate_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp56.id, spell_level: 2)
  # levitate_medium = SpellListSpell.create!(spell_list_id: medium.id, spell_id: sp56.id, spell_level: 2)
  # levitate_mesmerist = SpellListSpell.create!(spell_list_id: mesmerist.id, spell_id: sp56.id, spell_level: 2)
  # levitate_occultist = SpellListSpell.create!(spell_list_id: occultist.id, spell_id: sp56.id, spell_level: 2)
  # levitate_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp56.id, spell_level: 2)
  # levitate_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp56.id, spell_level: 2)
  # levitate_spiritualist = SpellListSpell.create!(spell_list_id: spiritualist.id, spell_id: sp56.id, spell_level: 2)
  levitate_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp56.id, spell_level: 2)

sp57 =  Spell.create!(name: "Fly", description: "The subject can fly at a speed of 60 feet (or 40 feet if it wears medium or heavy armor, or if it carries a medium or heavy load). It can ascend at half speed and descend at double speed, and its maneuverability is good.

Using a fly spell requires only as much concentration as walking, so the subject can attack or cast spells normally. The subject of a fly spell can charge but not run, and it cannot carry aloft more weight than its maximum load, plus any armor it wears. The subject gains a bonus on Fly skill checks equal to 1/2 your caster level.

Should the spell duration expire while the subject is still aloft, the magic fails slowly. The subject floats downward 60 feet per round for 1d6 rounds. If it reaches the ground in that amount of time, it lands safely. If not, it falls the rest of the distance, taking 1d6 points of damage per 10 feet of fall. Since dispelling a spell effectively ends it, the subject also descends safely in this way if the fly spell is dispelled, but not if it is negated by an antimagic field.

See Falling Damage if something bad happens!", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp57.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp57.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp57.id, component_id: focus.id, item: 'a wing feather')
  fly_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp57.id, spell_level: 3)
  fly_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp57.id, spell_level: 3)
  # fly_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp57.id, spell_level: 3)
  fly_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp57.id, spell_level: 3)
  # fly_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp57.id, spell_level: 3)
  fly_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp57.id, spell_level: 3)
  # fly_medium = SpellListSpell.create!(spell_list_id: medium.id, spell_id: sp57.id, spell_level: 3)
  # fly_occultist = SpellListSpell.create!(spell_list_id: occultist.id, spell_id: sp57.id, spell_level: 3)
  # fly_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp57.id, spell_level: 3)
  # fly_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp57.id, spell_level: 3)
  # fly_spiritualist = SpellListSpell.create!(spell_list_id: spiritualist.id, spell_id: sp57.id, spell_level: 3)
  fly_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp57.id, spell_level: 3)

sp58 =  Spell.create!(name: "Sleep", description: "A sleep spell causes a magical slumber to come upon 4 HD of creatures. Creatures with the fewest HD are affected first. Among creatures with equal HD, those who are closest to the spell’s point of origin are affected first. HD that are not sufficient to affect a creature are wasted. Sleeping creatures are helpless. Slapping or wounding awakens an affected creature, but normal noise does not. Awakening a creature is a standard action (an application of the aid another action). Sleep does not target unconscious creatures, constructs, or undead creatures.", target: "one or more living creatures within a 10-ft.-radius burst", saving_throw: "Will", spell_resistance: true, action_id: full_round.id, spell_range_id: medium.id, magic_school_id: enchantment.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp58.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: sp58.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp58.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp58.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp58.id, component_id: material.id, item: 'fine sand, rose petals, or a live cricket')
  sleep_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp58.id, spell_level: 1)
  sleep_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp58.id, spell_level: 1)
  sleep_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp58.id, spell_level: 1)
  # sleep_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp58.id, spell_level: 1)
  # sleep_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp58.id, spell_level: 1)

sp59 = Spell.create!(name: "Force Punch", description: "This spell charges your hand with telekinetic force. Your successful melee touch attack deals 1d4 points of force damage per level (maximum 10d4) and causes the target to be pushed away from you in a straight line up to 5 feet per two caster levels. For every size category of the target above Medium, reduce the distance pushed by 5 feet (–5 feet for Large, –10 feet for Huge, –15 for Gargantuan, and –20 feet for Colossal) to a minimum of 0 feet. A successful Fortitude save negates the movement but not the damage.", target: "creature touched", saving_throw: "Fortitude", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp59.id, subschool_id: force.id)
  SpellComponent.create!(spell_id: sp59.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp59.id, component_id: somatic.id, item: nil)
  force_punch_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp59.id, spell_level: 3)
  # force_punch_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp59.id, spell_level: 3)
  force_punch_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp59.id, spell_level: 3)
  # force_punch_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp59.id, spell_level: 3)
  # force_punch_spiritualist = SpellListSpell.create!(spell_list_id: spiritualist.id, spell_id: sp59.id, spell_level: 3)

sp60 = Spell.create!(name: "Magic Fang", description: "Magic fang gives one natural weapon or unarmed strike of the subject a +1 enhancement bonus on attack and damage rolls. The spell can affect a slam attack, fist, bite, or other natural weapon. The spell does not change an unarmed strike’s damage from nonlethal damage to lethal damage.

Magic fang can be made permanent with a permanency spell.", target: "living creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp60.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp60.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp60.id, component_id: divine_focus.id, item: nil)
  # magic_fang_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp60.id, spell_level: 1)
  # magic_fang_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp60.id, spell_level: 1)
  magic_fang_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp60.id, spell_level: 1)
  magic_fang_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp60.id, spell_level: 1)

print "60 Spells Created \r"

sp61 = Spell.create!(name: "Greater Magic Fang", description: "This spell functions like magic fang, except that the enhancement bonus on attack and damage rolls is +1 per four caster levels (maximum +5). This bonus does not allow a natural weapon or unarmed strike to bypass damage reduction aside from magic.

Alternatively, you may imbue all of the creature’s natural weapons with a +1 enhancement bonus (regardless of your caster level).

Greater magic fang can be made permanent with a permanency spell.", target: "one living creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "1 hour/level", time: 1, unit_of_time: "hour", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp61.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp61.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp61.id, component_id: divine_focus.id, item: nil)
  # greater_magic_fang_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp61.id, spell_level: 3)
  # greater_magic_fang_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp61.id, spell_level: 3)
  greater_magic_fang_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp61.id, spell_level: 3)
  greater_magic_fang_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp61.id, spell_level: 3)

sp62 = Spell.create!(name: "Unseen Servant", description: "An unseen servant is an invisible, mindless, shapeless force that performs simple tasks at your command. It can run and fetch things, open unstuck doors, and hold chairs, as well as clean and mend. The servant can perform only one activity at a time, but it repeats the same activity over and over again if told to do so as long as you remain within range. It can open only normal doors, drawers, lids, and the like. It has an effective Strength score of 2 (so it can lift 20 pounds or drag 100 pounds). It can trigger traps and such, but it can exert only 20 pounds of force, which is not enough to activate certain pressure plates and other devices. It can’t perform any task that requires a skill check with a DC higher than 10 or that requires a check using a skill that can’t be used untrained. This servant cannot fly, climb, or even swim (though it can walk on water). Its base speed is 15 feet.

The servant cannot attack in any way; it is never allowed an attack roll. It cannot be killed, but it dissipates if it takes 6 points of damage from area attacks. (It gets no saves against attacks.) If you attempt to send it beyond the spell’s range (measured from your current position), the servant ceases to exist.", target: "one invisible, mindless, shapeless servant", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 hour/level", time: 1, unit_of_time: "hour", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp62.id, subschool_id: creation.id)
  SpellComponent.create!(spell_id: sp62.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp62.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp62.id, component_id: material.id, item: 'a piece of string and a bit of wood')
  unseen_servant_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp62.id, spell_level: 1)
  unseen_servant_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp62.id, spell_level: 1)
  # unseen_servant_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp62.id, spell_level: 1)
  unseen_servant_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp62.id, spell_level: 1)
  unseen_servant_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp62.id, spell_level: 1)
  # unseen_servant_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp62.id, spell_level: 1)
  unseen_servant_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp62.id, spell_level: 1)

sp63 = Spell.create!(name: "Obscuring Mist", description: "A misty vapor arises around you. It is stationary. The vapor obscures all sight, including darkvision, beyond 5 feet. A creature 5 feet away has concealment (attacks have a 20% miss chance). Creatures farther away have total concealment (50% miss chance, and the attacker cannot use sight to locate the target).

A moderate wind (11+ mph), such as from a gust of wind spell, disperses the fog in 4 rounds. A strong wind (21+ mph) disperses the fog in 1 round. A fireball, flame strike, or similar spell burns away the fog in the explosive or fiery spell’s area. A wall of fire burns away the fog in the area into which it deals damage.

This spell does not function underwater.", target: "cloud spreads in 20-ft. radius from you, 20 ft. high", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: twenty_feet.id, magic_school_id: conjuration.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp63.id, subschool_id: creation.id)
  SpellComponent.create!(spell_id: sp63.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp63.id, component_id: somatic.id, item: nil)
  obscuring_mist_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp63.id, spell_level: 1)
  obscuring_mist_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp63.id, spell_level: 1)
  # obscuring_mist_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp63.id, spell_level: 1)
  obscuring_mist_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp63.id, spell_level: 1)
  # obscuring_mist_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp63.id, spell_level: 1)
  obscuring_mist_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp63.id, spell_level: 1)
  # obscuring_mist_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp63.id, spell_level: 1)

  FeatureCastableSpell.create!(feature_id: air_domain3_feature.id, spell_id: sp63.id, added_to_known_spells: false, applicable_spell_level: 1, bonus_spell_slot_option: true)

sp64 = Spell.create!(name: "Enlarge Person", description: "This spell causes instant growth of a humanoid creature, doubling its height and multiplying its weight by 8. This increase changes the creature’s size category to the next larger one. The target gains a +2 size bonus to Strength, a -2 size penalty to Dexterity (to a minimum of 1), and a -1 penalty on attack rolls and AC due to its increased size.

A humanoid creature whose size increases to Large has a space of 10 feet and a natural reach of 10 feet. This spell does not change the target’s speed.

If insufficient room is available for the desired growth, the creature attains the maximum possible size and may make a Strength check (using its increased Strength) to burst any enclosures in the process. If it fails, it is constrained without harm by the materials enclosing it–the spell cannot be used to crush a creature by increasing its size.

All equipment worn or carried by a creature is similarly enlarged by the spell. Melee weapons affected by this spell deal more damage (see Table: Medium/Large Weapon Damage). Other magical properties are not affected by this spell. Any enlarged item that leaves an enlarged creature’s possession (including a projectile or thrown weapon) instantly returns to its normal size. This means that thrown and projectile weapons deal their normal damage. Magical properties of enlarged items are not increased by this spell.

Multiple magical effects that increase size do not stack.

Enlarge person counters and dispels reduce person .

Enlarge person can be made permanent with a permanency spell.", target: "one humanoid creature", saving_throw: "Fortitude", spell_resistance: true, action_id: full_round.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp64.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp64.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp64.id, component_id: material.id, item: 'powdered iron')
  enlarge_person_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp64.id, spell_level: 1)
  # enlarge_person_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp64.id, spell_level: 1)
  enlarge_person_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp64.id, spell_level: 1)
  # enlarge_person_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp64.id, spell_level: 1)
  enlarge_person_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp64.id, spell_level: 1)
  # enlarge_person_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp64.id, spell_level: 1)
  enlarge_person_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp64.id, spell_level: 1)
  enlarge_person_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp64.id, spell_level: 1)

sp65 = Spell.create!(name: "Reduce Person", description: "This spell causes instant diminution of a humanoid creature, halving its height, length, and width and dividing its weight by 8. This decrease changes the creature’s size category to the next smaller one. The target gains a +2 size bonus to Dexterity, a -2 size penalty to Strength (to a minimum of 1), and a +1 bonus on attack rolls and AC due to its reduced size.

A Small humanoid creature whose size decreases to Tiny has a space of 2-1/2 feet and a natural reach of 0 feet (meaning that it must enter an opponent’s square to attack). A Large humanoid creature whose size decreases to Medium has a space of 5 feet and a natural reach of 5 feet. This spell doesn’t change the target’s speed.

All equipment worn or carried by a creature is similarly reduced by the spell.

Melee and projectile weapons deal less damage. Other magical properties are not affected by this spell. Any reduced item that leaves the reduced creature’s possession (including a projectile or thrown weapon) instantly returns to its normal size. This means that thrown weapons deal their normal damage (projectiles deal damage based on the size of the weapon that fired them).

Multiple magical effects that reduce size do not stack. Reduce person counters and dispels enlarge person.

Reduce person can be made permanent with a permanency spell.", target: "one humanoid creature", saving_throw: "Fortitude", spell_resistance: true, action_id: full_round.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp65.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp65.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp65.id, component_id: material.id, item: 'a pinch of powdered iron')
  reduce_person_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp65.id, spell_level: 1)
  # reduce_person_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp65.id, spell_level: 1)
  reduce_person_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp65.id, spell_level: 1)
  # reduce_person_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp65.id, spell_level: 1)
  reduce_person_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp65.id, spell_level: 1)
  # reduce_person_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp65.id, spell_level: 1)
  reduce_person_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp65.id, spell_level: 1)
  reduce_person_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp65.id, spell_level: 1)

sp66 = Spell.create!(name: "Shrink Item", description: "You are able to shrink one nonmagical item (if it is within the size limit) to 1/16 of its normal size in each dimension (to about 1/4,000 the original volume and mass). This change effectively reduces the object’s size by four categories. Optionally, you can also change its now shrunken composition to a clothlike one. Objects changed by a shrink item spell can be returned to normal composition and size merely by tossing them onto any solid surface or by a word of command from the original caster. Even a burning fire and its fuel can be shrunk by this spell. Restoring the shrunken object to its normal size and composition ends the spell.

Shrink item can be made permanent with a permanency spell, in which case the affected object can be shrunk and expanded an indefinite number of times, but only by the original caster.", target: "one touched object of up to 2 cu. ft./level", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 day/level", time: 1, unit_of_time: "day", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp66.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp66.id, component_id: somatic.id, item: nil)
  shrink_item_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp66.id, spell_level: 3)
  # shrink_item_occultist = SpellListSpell.create!(spell_list_id: occultist.id, spell_id: sp66.id, spell_level: 3)
  # shrink_item_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp66.id, spell_level: 3)

sp67 = Spell.create!(name: "Mass Enlarge Person", description: "This spell functions like enlarge person, except that it affects multiple creatures.", target: "one humanoid creature/level, no two of which can be more than 30 ft. apart", saving_throw: "Fortitude", spell_resistance: true, action_id: full_round.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp67.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp67.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp67.id, component_id: material.id, item: 'powdered iron')
  # enlarge_person_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp67.id, spell_level: 4)
  enlarge_person_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp67.id, spell_level: 4)
  # enlarge_person_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp67.id, spell_level: 4)
  enlarge_person_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp67.id, spell_level: 4)
  # enlarge_person_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp67.id, spell_level: 4)
  enlarge_person_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp67.id, spell_level: 3)

sp68 = Spell.create!(name: "Mass Reduce Person", description: "This spell functions like reduce person, except that it affects multiple creatures.", target: "one humanoid creature/level, no two of which can be more than 30 ft. apart", saving_throw: "Fortitude", spell_resistance: true, action_id: full_round.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp68.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp68.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp68.id, component_id: material.id, item: 'a pinch of powdered iron')
  # reduce_person_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp68.id, spell_level: 4)
  reduce_person_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp68.id, spell_level: 4)
  # reduce_person_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp68.id, spell_level: 4)
  reduce_person_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp68.id, spell_level: 4)
  # reduce_person_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp68.id, spell_level: 4)
  reduce_person_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp68.id, spell_level: 3)

sp69 = Spell.create!(name: "Fireball", description: "A fireball spell generates a searing explosion of flame that detonates with a low roar and deals 1d6 points of fire damage per caster level (maximum 10d6) to every creature within the area. Unattended objects also take this damage. The explosion creates almost no pressure.

You point your finger and determine the range (distance and height) at which the fireball is to burst. A glowing, pea-sized bead streaks from the pointing digit and, unless it impacts upon a material body or solid barrier prior to attaining the prescribed range, blossoms into the fireball at that point. An early impact results in an early detonation. If you attempt to send the bead through a narrow passage, such as through an arrow slit, you must “hit” the opening with a ranged touch attack, or else the bead strikes the barrier and detonates prematurely.

The fireball sets fire to combustibles and damages objects in the area. It can melt metals with low melting points, such as lead, gold, copper, silver, and bronze. If the damage caused to an interposing barrier shatters or breaks through it, the fireball may continue beyond the barrier if the area permits; otherwise it stops at the barrier just as any other spell effect does.", target: "20-ft.-radius spread", saving_throw: "Reflex", spell_resistance: true, action_id: standard.id, spell_range_id: long.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp69.id, subschool_id: fire.id)
  SpellComponent.create!(spell_id: sp69.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp69.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp69.id, component_id: material.id, item: 'a ball of bat guano and sulfur')
  # fireball_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp69.id, spell_level: 3)
  fireball_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp69.id, spell_level: 3)
  fireball_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp69.id, spell_level: 3)

sp70 = Spell.create!(name: "Touch of the Sea", description: "You cause webs to grow between the target’s fingers and its feet to transform into flippers, granting a swim speed of 30 feet along with the standard +8 bonus on Swim checks and the ability to take 10 even if distracted or endangered. You can also use the run action while swimming, provided you swim in a straight line. This transformation causes any boots or gloves the target is wearing to meld into its form (although magic items with a continuous effect continue to function). This spell does not grant the target any ability to breathe water.", target: "creature touched", saving_throw: "Fortitude", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 minute/level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp70.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp70.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp70.id, component_id: material.id, item: 'a fish scale')
  touch_of_the_sea_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp70.id, spell_level: 1)
  # touch_of_the_sea_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp70.id, spell_level: 1)
  # touch_of_the_sea_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp70.id, spell_level: 1)
  touch_of_the_sea_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp70.id, spell_level: 1)

print "70 Spells Created \r"

sp71 = Spell.create!(name: "Hydraulic Push", description: "You call forth a quick blast of water that knocks over and soaks one creature or square. You can use this blast of water to make a bull rush against any one creature or object. Your CMB for this bull rush is equal to your caster level plus your Intelligence, Wisdom, or Charisma modifier, whichever is highest. This bull rush does not provoke an attack of opportunity. Hydraulic push extinguishes any normal fires on a creature, object, or in a single 5-foot square which it is targeted against. Magical fires are unaffected.", target: "one creature or object", saving_throw: "none", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp71.id, subschool_id: water.id)
  SpellComponent.create!(spell_id: sp71.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp71.id, component_id: somatic.id, item: nil)
  # hydraulic_push_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp71.id, spell_level: 1)
  # hydraulic_push_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp71.id, spell_level: 1)
  hydraulic_push_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp71.id, spell_level: 1)
  # hydraulic_push_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp71.id, spell_level: 1)
  hydraulic_push_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp71.id, spell_level: 1)

sp72 = Spell.create!(name: "Gust of Wind", description: "This spell creates a severe blast of air (approximately 50 mph) that originates from you, affecting all creatures in its path. All flying creatures in this area take a -4 penalty on Fly skill checks. Tiny or smaller flying creatures must make a DC 25 Fly skill check or be blown back 2d6 x 10 feet and take 2d6 points of damage. Small or smaller flying creatures must make a DC 20 Fly skill check to move against the force of the wind.

A Tiny or smaller creature on the ground is knocked down and rolled 1d4 x 10 feet, taking 1d4 points of nonlethal damage per 10 feet.

Small creatures are knocked prone by the force of the wind.

Medium or smaller creatures are unable to move forward against the force of the wind unless they succeed at a DC 15 Strength check.

Large or larger creatures may move normally within a gust of wind effect.

This spell can’t move a creature beyond the limit of it’s range.

Any creature, regardless of size, takes a -4 penalty on ranged attacks and Perception checks in the area of a gust of wind.

The force of the gust automatically extinguishes candles, torches, and similar unprotected flames. It causes protected flames, such as those in lanterns, to dance wildly and has a 50% chance to extinguish those lights.

In addition to the effects noted, a gust of wind can do anything that a sudden blast of wind would be expected to do. It can create a stinging spray of sand or dust, fan a large fire, overturn delicate awnings or hangings, heel over a small boat, and blow gases or vapors to the edge of its range.

Gust of wind can be made permanent with a permanency spell.", target: "line-shaped gust of severe wind emanating out from you to the extreme of the range", saving_throw: "Fortitude", spell_resistance: true, action_id: standard.id, spell_range_id: sixty_feet.id, magic_school_id: evocation.id, duration: "1 round", time: 1, unit_of_time: "round", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp72.id, subschool_id: air.id)
  SpellComponent.create!(spell_id: sp72.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp72.id, component_id: somatic.id, item: nil)
  # gust_of_wind_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp72.id, spell_level: 2)
  # gust_of_wind_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp72.id, spell_level: 2)
  gust_of_wind_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp72.id, spell_level: 2)
  gust_of_wind_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp72.id, spell_level: 2)

sp73 = Spell.create!(name: "Slipstream", description: "You create a low-cresting wave of water that carries the target along the surface of water or the ground. When moving across level ground, the target’s speed increases by 10 feet.

If going downhill, speed increases by 20 feet instead, but slipstream provides no movement bonus when going uphill.

While swimming, the slipstream increases the target’s swim speed by 20 feet-if the target does not have a swim speed, this spell grants a swim speed of 20 ft.", target: "creature touched", saving_throw: "Reflex", spell_resistance: false, action_id: standard.id, spell_range_id: touch.id, magic_school_id: conjuration.id, duration: "10 minutes/level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp73.id, subschool_id: creation.id)
  SpellSubschool.create!(spell_id: sp73.id, subschool_id: water.id)
  SpellComponent.create!(spell_id: sp73.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp73.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp73.id, component_id: material.id, item: 'a few drops of oil and water')
  SpellComponent.create!(spell_id: sp73.id, component_id: divine_focus.id, item: 'a few drops of oil and water')
  # slipstream_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp73.id, spell_level: 2)
  # slipstream_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp73.id, spell_level: 2)
  slipstream_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp73.id, spell_level: 2)
  slipstream_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp73.id, spell_level: 2)

sp74 = Spell.create!(name: "Augury", description: "An augury can tell you whether a particular action will bring good or bad results for you in the immediate future.

The base chance for receiving a meaningful reply is 70% + 1% per caster level, to a maximum of 90%; this roll is made secretly. A question may be so straightforward that a successful result is automatic, or so vague as to have no chance of success. If the augury succeeds, you get one of four results:

Weal (if the action will probably bring good results).
Woe (for bad results).
Weal and woe (for both).
Nothing (for actions that don’t have especially good or bad results).
If the spell fails, you get the “nothing” result. A cleric who gets the “nothing” result has no way to tell whether it was the consequence of a failed or successful augury.

The augury can see into the future only about half an hour, so anything that might happen after that does not affect the result. Thus, the result might not take into account the long-term consequences of a contemplated action. All auguries cast by the same person about the same topic use the same die result as the first casting.", target: "you", saving_throw: "none", spell_resistance: false, action_id: one_minute.id, spell_range_id: personal.id, magic_school_id: divination.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp74.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp74.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp74.id, component_id: material.id, item: 'incense worth at least 25 gp')
  SpellComponent.create!(spell_id: sp74.id, component_id: focus.id, item: 'a set of marked sticks or bones worth at least 25 gp')
  augury_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp74.id, spell_level: 2)
  # augury_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp74.id, spell_level: 2)
  # augury_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp74.id, spell_level: 2)
  augury_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp74.id, spell_level: 2)

sp75 = Spell.create!(name: "Endure Elements", description: "A creature protected by endure elements suffers no harm from being in a hot or cold environment. It can exist comfortably in conditions between -50 and 140 degrees Fahrenheit (-45 and 60 degrees Celsius) without having to make Fortitude saves. The creature’s equipment is likewise protected.

Endure elements doesn’t provide any protection from fire or cold damage, nor does it protect against other environmental hazards such as smoke, lack of air, and so forth.", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: abjuration.id, duration: "24 hours", time: 24, unit_of_time: "hour", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp75.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp75.id, component_id: somatic.id, item: nil)
  endure_elements_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp75.id, spell_level: 1)
  # endure_elements_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp75.id, spell_level: 1)
  endure_elements_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp75.id, spell_level: 1)
  # endure_elements_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp75.id, spell_level: 1)
  # endure_elements_paladin = SpellListSpell.create!(spell_list_id: paladin.id, spell_id: sp75.id, spell_level: 1)
  # endure_elements_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp75.id, spell_level: 1)
  endure_elements_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp75.id, spell_level: 1)
  # endure_elements_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp75.id, spell_level: 1)
  endure_elements_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp75.id, spell_level: 1)
  # endure_elements_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp75.id, spell_level: 1)
  endure_elements_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp75.id, spell_level: 1)

sp76 = Spell.create!(name: "Alter Self", description: "When you cast this spell, you can assume the form of any Small or Medium creature of the humanoid type. If the form you assume has any of the following abilities, you gain the listed ability: darkvision 60 feet, low-light vision, scent, and swim 30 feet.

Small creature: If the form you take is that of a Small humanoid, you gain a +2 size bonus to your Dexterity.

Medium creature: If the form you take is that of a Medium humanoid, you gain a +2 size bonus to your Strength.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp76.id, subschool_id: polymorph.id)
  SpellComponent.create!(spell_id: sp76.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp76.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp76.id, component_id: material.id, item: 'a piece of the creature whose form you plan to assume')
  alter_self_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp76.id, spell_level: 2)
  alter_self_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp76.id, spell_level: 2)
  alter_self_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp76.id, spell_level: 2)
  # alter_self_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp76.id, spell_level: 2)
  # alter_self_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp76.id, spell_level: 2)
  alter_self_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp76.id, spell_level: 2)
  # alter_self_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp76.id, spell_level: 2)
  alter_self_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp76.id, spell_level: 2)

sp77 = Spell.create!(name: "Air Bubble", description: "Air bubble creates a small pocket of breathable air that surrounds the touched creature’s head or the touched object. The air bubble allows the creature touched to breathe underwater or in similar airless environments, or protects the object touched from water damage. A firearm within an air bubble can be loaded—assuming the black powder comes from a powder horn, a cartridge, or some other airtight protective device—and fired. When shooting such a firearm underwater, the shot still takes the standard –2 penalty on attack rolls for every 5 feet of water the bullet passes through, in addition to normal penalties due to range. If a firearm within the air bubble explodes, the explosion occurs normally.", target: "one creature or one object no larger than a Large two-handed weapon", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: conjuration.id, duration: "1 minute/level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp77.id, subschool_id: creation.id)
  SpellComponent.create!(spell_id: sp77.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp77.id, component_id: material.id, item: 'a small bladder filled with air')
  SpellComponent.create!(spell_id: sp77.id, component_id: divine_focus.id, item: 'a small bladder filled with air')
  air_bubble_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp77.id, spell_level: 1)
  # air_bubble_driud = SpellListSpell.create!(spell_list_id: driud.id, spell_id: sp77.id, spell_level: 1)
  # air_bubble_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp77.id, spell_level: 1)
  air_bubble_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp77.id, spell_level: 1)
  air_bubble_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp77.id, spell_level: 1)
  air_bubble_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp77.id, spell_level: 1)

sp78 = Spell.create!(name: "Enhance Water", description: "This spell transforms water into an alcoholic beverage, typically ale, beer, mead, or wine. The alcohol is of middling quality but perfectly drinkable. The spell also serves to remove poisons, diseases, minerals, and other toxins from the water as it transforms. The more contaminants that exist in the water, the darker the ale or the more full-bodied the wine becomes. The beverage’s alcohol content is not affected by the presence or absence of contaminants.

This spell does not work on unholy water, potions, or other liquids with magical power.", target: "1 pint of water/level", saving_throw: "Fortitude", spell_resistance: true, action_id: full_round.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp78.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp78.id, component_id: somatic.id, item: nil)
  enhance_water_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp78.id, spell_level: 1)
  enhance_water_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp78.id, spell_level: 1)
  # enhance_water_paladin = SpellListSpell.create!(spell_list_id: paladin.id, spell_id: sp78.id, spell_level: 1)

sp79 = Spell.create!(name: "Fabricate Disguise", description: "You change outfits or create a disguise out of materials you are wearing or carrying (potentially including a disguise kit). The spell can’t alter your body or change the structure of objects, but can style wigs, apply makeup or piercings, and otherwise make use of tools to make superficial changes. In an instant, you have a non-magical disguise or clothing change. Attempt a Disguise check to determine the effectiveness of the disguise.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: transmutation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp79.id, component_id: somatic.id, item: nil)
  fabricate_disguise_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp79.id, spell_level: 1)
  # fabricate_disguise_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin.id, spell_id: sp79.id, spell_level: 1)
  fabricate_disguise_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp79.id, spell_level: 1)
  # fabricate_disguise_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp79.id, spell_level: 1)
  # fabricate_disguise_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp79.id, spell_level: 1)
  fabricate_disguise_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp79.id, spell_level: 1)
  fabricate_disguise_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp79.id, spell_level: 1)

sp80 = Spell.create!(name: "Charm Monster", description: "This spell functions like charm person, except that the effect is not restricted by creature type or size.", target: "one living creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: enchantment.id, duration: "1 day/level", time: 1, unit_of_time: "day", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp80.id, subschool_id: charm.id)
  SpellSubschool.create!(spell_id: sp80.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp80.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp80.id, component_id: somatic.id, item: nil)
  charm_monster_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp80.id, spell_level: 3)
  charm_monster_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp80.id, spell_level: 4)
  # charm_monster_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp80.id, spell_level: 4)
  charm_monster_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp80.id, spell_level: 4)
  charm_monster_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp80.id, spell_level: 3)

print "80 Spells Created \r"

sp81 = Spell.create!(name: "Gentle Repose", description: "You preserve the remains of a dead creature so that they do not decay. Doing so effectively extends the time limit on raising that creature from the dead (see raise dead). Days spent under the influence of this spell don’t count against the time limit. Additionally, this spell makes transporting a slain (and thus decaying) comrade less unpleasant.

The spell also works on severed body parts and the like.", target: "corpse touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: necromancy.id, duration: "1 day/level", time: 1, unit_of_time: "day", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp81.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp81.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp81.id, component_id: material.id, item: 'salt and a copper piece for each of the corpse’s eyes')
  SpellComponent.create!(spell_id: sp81.id, component_id: divine_focus.id, item: 'salt and a copper piece for each of the corpse’s eyes')
  gentle_repose_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp81.id, spell_level: 2)
  # gentle_repose_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp81.id, spell_level: 2)
  gentle_repose_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp81.id, spell_level: 2)

sp82 = Spell.create!(name: "Vitriolic Mist", description: "This functions as fire shield, except it wreathes you in yellow or green acidic mist instead of hot or cold flames. The spell deals acid damage to attackers and protects you against acid damage. This spell does not shed light.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: evocation.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp82.id, subschool_id: acid.id)
  SpellComponent.create!(spell_id: sp82.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp82.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp82.id, component_id: material.id, item: 'a piece of lemon rind')
  vitriolic_mist_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp82.id, spell_level: 4)
  # vitriolic_mist_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp82.id, spell_level: 4)
  vitriolic_mist_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp82.id, spell_level: 4)
  # vitriolic_mist_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp82.id, spell_level: 4)
  vitriolic_mist_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp82.id, spell_level: 4)

sp83 = Spell.create!(name: "Fire Shield", description: "This spell wreathes you in flame and causes damage to each creature that attacks you in melee. The flames also protect you from either cold-based or fire-based attacks, depending on if you choose cool or warm flames for your fire shield.

Any creature striking you with its body or a hand-held weapon deals normal damage, but at the same time the attacker takes 1d6 points of damage + 1 point per caster level (maximum +15). This damage is either cold damage (if you choose a chill shield) or fire damage (if you choose a warm shield). If the attacker has spell resistance, it applies to this effect. Creatures wielding melee weapons with reach are not subject to this damage if they attack you.

When casting this spell, you appear to immolate yourself, but the flames are thin and wispy, increasing the light level within 10 feet by one step, up to normal light. The color of the flames is blue or green if the chill shield is cast, violet or red if the warm shield is employed. The special powers of each version are as follows.

Chill Shield: The flames are cool to the touch. You take only half damage from fire-based attacks. If such an attack allows a Reflex save for half damage, you take no damage on a successful saving throw.

Warm Shield: The flames are warm to the touch. You take only half damage from cold-based attacks. If such an attack allows a Reflex save for half damage, you take no damage on a successful saving throw.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: evocation.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp83.id, subschool_id: fire.id)
  SpellSubschool.create!(spell_id: sp83.id, subschool_id: cold.id)
  SpellComponent.create!(spell_id: sp83.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp83.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp83.id, component_id: material.id, item: 'phosphorus for the warm shield; a firefly or glowworm for the chill shield')
  fire_shield_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp83.id, spell_level: 4)
  # fire_shield_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp83.id, spell_level: 4)
  fire_shield_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp83.id, spell_level: 4)
  fire_shield_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp83.id, spell_level: 4)
  # fire_shield_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp83.id, spell_level: 4)
  fire_shield_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp83.id, spell_level: 3)

sp84 = Spell.create!(name: "Minor Creation", description: "You create a non-magical, unattended object of nonliving vegetable matter. The volume of the item created cannot exceed 1 cubic foot per caster level. You must succeed on an appropriate Craft skill check to make a complex item.

Attempting to use any created object as a material component causes the spell to fail.", target: "unattended, non-magical object of nonliving plant matter, up to 1 cu. ft./level", saving_throw: "none", spell_resistance: false, action_id: one_minute.id, spell_range_id: zero_feet.id, magic_school_id: conjuration.id, duration: "1 hour/level", time: 1, unit_of_time: "hour", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp84.id, subschool_id: creation.id)
  SpellComponent.create!(spell_id: sp84.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp84.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp84.id, component_id: material.id, item: 'a tiny piece of matter of the same sort of item you plan to create with minor creation')
  minor_creation_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp84.id, spell_level: 4)
  # minor_creation_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp84.id, spell_level: 3)
  minor_creation_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp84.id, spell_level: 4)
  minor_creation_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp84.id, spell_level: 3)

  FeatureCastableSpell.create!(feature_id: artifice_domain3_feature.id, spell_id: sp84.id, added_to_known_spells: false, applicable_spell_level: 4, bonus_spell_slot_option: true)

sp85 = Spell.create!(name: "Major Creation", description: "This spell functions like minor creation, except that you can also create an object of mineral nature: stone, crystal, metal, or the like. The duration of the created item varies with its relative hardness and rarity, as indicated on the following table.

Hardness and Rarity Examples	Duration
Vegetable matter	2 hr./level
Stone, crystal, base metals	1 hr./level
Precious metals	20 min./level
Gems	10 min./level
Rare metal*	1 round/level", target: "unattended, non-magical object, up to 1 cu. ft./level", saving_throw: "none", spell_resistance: false, action_id: ten.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "varies", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp85.id, subschool_id: creation.id)
  SpellComponent.create!(spell_id: sp85.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp85.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp85.id, component_id: material.id, item: 'a tiny piece of matter of the same sort of item you plan to create with minor creation')
  major_creation_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp85.id, spell_level: 5)
  # major_creation_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp85.id, spell_level: 4)
  major_creation_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp85.id, spell_level: 5)
  major_creation_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp85.id, spell_level: 4)

  FeatureCastableSpell.create!(feature_id: artifice_domain3_feature.id, spell_id: sp85.id, added_to_known_spells: false, applicable_spell_level: 6, bonus_spell_slot_option: true)

sp86 = Spell.create!(name: "Acid Fog", description: "Acid fog creates a billowing mass of misty vapors like the solid fog spell. In addition to slowing down creatures and obscuring sight, this spell’s vapors are highly acidic. Each round on your turn, starting when you cast the spell, the fog deals 2d6 points of acid damage to each creature and object within it.", target: "fog spreads in 20-ft. radius, 20 ft. high", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: medium.id, magic_school_id: conjuration.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp86.id, subschool_id: creation.id)
  SpellComponent.create!(spell_id: sp86.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp86.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp86.id, component_id: material.id, item: 'powdered peas and an animal hoof')
  acid_fog_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp86.id, spell_level: 6)
  acid_fog_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp86.id, spell_level: 6)
  # acid_fog_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp86.id, spell_level: 6)

sp87 = Spell.create!(name: "Solid Fog", description: "This spell functions like fog cloud, but in addition to obscuring sight, the solid fog is so thick that it impedes movement. Creatures moving through a solid fog move at half their normal speed and take a -2 penalty on all melee attack and melee damage rolls. The vapors prevent effective ranged weapon attacks (except for magic rays and the like). A creature or object that falls into solid fog is slowed so that each 10 feet of vapor that it passes through reduces the falling damage by 1d6. A creature cannot take a 5-foot-step while in solid fog. Solid fog, and effects that work like solid fog, do not stack with each other in terms of slowed movement and attack penalties.

Unlike normal fog, only a severe wind (31+ mph) disperses these vapors, and it does so in 1 round.

Solid fog can be made permanent with a permanency spell. A permanent solid fog dispersed by wind reforms in 10 minutes.", target: "fog spreads in 20-ft. radius", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: medium.id, magic_school_id: conjuration.id, duration: "1 minute/level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp87.id, subschool_id: creation.id)
  SpellComponent.create!(spell_id: sp87.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp87.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp87.id, component_id: material.id, item: 'powdered peas and an animal hoof')
  solid_fog_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp87.id, spell_level: 4)
  # solid_fog_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp87.id, spell_level: 4)
  solid_fog_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp87.id, spell_level: 4)
  # solid_fog_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp87.id, spell_level: 4)
  solid_fog_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp87.id, spell_level: 4)

sp88 = Spell.create!(name: "Fog Cloud", description: "A bank of fog billows out from the point you designate. The fog obscures all sight, including darkvision, beyond 5 feet. A creature within 5 feet has concealment (attacks have a 20% miss chance). Creatures farther away have total concealment (50% miss chance, and the attacker can’t use sight to locate the target).

A moderate wind (11+ mph) disperses the fog in 4 rounds; a strong wind (21+ mph) disperses the fog in 1 round.

The spell does not function underwater.", target: "fog spreads in 20-ft. radius", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: medium.id, magic_school_id: conjuration.id, duration: "10 minutes/level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp88.id, subschool_id: creation.id)
  SpellComponent.create!(spell_id: sp88.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp88.id, component_id: somatic.id, item: nil)
  # fog_cloud_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp88.id, spell_level: 2)
  fog_cloud_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp88.id, spell_level: 2)
  # fog_cloud_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp88.id, spell_level: 2)
  fog_cloud_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp88.id, spell_level: 2)
  # fog_cloud_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp88.id, spell_level: 2)
  fog_cloud_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp88.id, spell_level: 2)

sp89 = Spell.create!(name: "Caustic Eruption", description: "Acid erupts from your space in all directions, causing 1d6 points of damage per caster level (maximum 20d6) to creatures and unattended objects in the area. On your turn in each of the next 2 rounds, creatures and objects that failed their saves against the initial burst take an additional 1d6 points of acid damage per 2 caster levels (maximum 10d6) unless the acid is neutralized, dispelled, or washed away.", target: "30-ft.-radius burst", saving_throw: "Reflex", spell_resistance: false, action_id: standard.id, spell_range_id: thirty_feet.id, magic_school_id: conjuration.id, duration: "instantaneous and 2 rounds", time: 2, unit_of_time: "round", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp89.id, subschool_id: creation.id)
  SpellSubschool.create!(spell_id: sp89.id, subschool_id: acid.id)
  SpellComponent.create!(spell_id: sp89.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp89.id, component_id: somatic.id, item: nil)
  caustic_eruption_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp89.id, spell_level: 7)

sp90 = Spell.create!(name: "Horrid Wilting", description: "This spell evaporates moisture from the body of each subject living creature, causing flesh to wither and crack and crumble to dust. This deals 1d6 points of damage per caster level (maximum 20d6). This spell is especially devastating to water elementals and plant creatures, which instead take 1d8 points of damage per caster level (maximum 20d8).", target: "living creatures, no two of which can be more than 60 ft. apart", saving_throw: "Fortitude", spell_resistance: true, action_id: standard.id, spell_range_id: long.id, magic_school_id: necromancy.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp90.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp90.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp90.id, component_id: material.id, item: 'a bit of sponge')
  SpellComponent.create!(spell_id: sp90.id, component_id: divine_focus.id, item: 'a bit of sponge')
  horrid_wilting_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp90.id, spell_level: 8)
  # horrid_wilting_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp90.id, spell_level: 8)
  horrid_wilting_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp90.id, spell_level: 8)

print "90 Spells Created \r"

sp91 = Spell.create!(name: "Wail of the Banshee", description: "When you cast this spell, you emit a terrible, soul-chilling scream that possibly kills creatures that hear it (except for yourself). The spell affects up to one creature per caster level, inflicting 10 points of damage per caster level. Creatures closest to the point of origin are affected first.", target: "one living creature/level within a 40-ft.-radius spread", saving_throw: "Fortitude", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: necromancy.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp91.id, subschool_id: death.id)
  SpellSubschool.create!(spell_id: sp91.id, subschool_id: sonic.id)
  SpellComponent.create!(spell_id: sp91.id, component_id: verbal.id, item: nil)
  # wail_of_the_banshee_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp91.id, spell_level: 9)
  wail_of_the_banshee_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp91.id, spell_level: 9)
  wail_of_the_banshee_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp91.id, spell_level: 9)

sp92 = Spell.create!(name: "Arcane Mark", description: "This spell allows you to inscribe your personal rune or mark, which can consist of no more than six characters. The writing can be visible or invisible. An arcane mark spell enables you to etch the rune upon any substance without harm to the material upon which it is placed. If an invisible mark is made, a detect magic spell causes it to glow and be visible, though not necessarily understandable.

See invisibility, true seeing, a gem of seeing, or a robe of eyes likewise allows the user to see an invisible arcane mark. A read magic spell reveals the words, if any. The mark cannot be dispelled, but it can be removed by the caster or by an erase spell.

If an arcane mark is placed on a living being, the effect gradually fades in about a month.

Arcane mark must be cast on an object prior to casting instant summons on the same object (see that spell description for details).", target: "one personal rune or mark, all of which must fit within 1 sq. ft.", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: touch.id, magic_school_id: universal.id, duration: "permanent", time: 1000000, unit_of_time: "year", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp92.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp92.id, component_id: somatic.id, item: nil)
  arcane_mark_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp92.id, spell_level: 0)
  # arcane_mark_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp92.id, spell_level: 0)
  # arcane_mark_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp92.id, spell_level: 0)
  arcane_mark_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp92.id, spell_level: 0)
  # arcane_mark_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp92.id, spell_level: 0)
  arcane_mark_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp92.id, spell_level: 0)
  arcane_mark_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp92.id, spell_level: 0)

sp93 = Spell.create!(name: "Bleed", description: "You cause a living creature that is below 0 hit points but stabilized to resume dying. Upon casting this spell, you target a living creature that has -1 or fewer hit points. That creature begins dying, taking 1 point of damage per round. The creature can be stabilized later normally. This spell causes a creature that is dying to take 1 point of damage.", target: "one living creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: necromancy.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp93.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp93.id, component_id: somatic.id, item: nil)
  bleed_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp93.id, spell_level: 0)
  # bleed_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp93.id, spell_level: 0)
  # bleed_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp93.id, spell_level: 0)
  # bleed_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp93.id, spell_level: 0)
  bleed_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp93.id, spell_level: 0)
  bleed_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp93.id, spell_level: 0)

sp94 = Spell.create!(name: "Daze", description: "This spell clouds the mind of a humanoid creature with 4 or fewer Hit Dice so that it takes no actions. Humanoids of 5 or more HD are not affected. A dazed subject is not stunned, so attackers get no special advantage against it. After a creature has been dazed by this spell, it is immune to the effects of this spell for 1 minute.", target: "one humanoid creature of 4 HD or less", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: enchantment.id, duration: "1 round", time: 1, unit_of_time: "round", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp94.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: sp94.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp94.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp94.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp94.id, component_id: material.id, item: 'a pinch of wool or similar substance')
  daze_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp94.id, spell_level: 0)
  # daze_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp94.id, spell_level: 0)
  daze_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp94.id, spell_level: 0)
  # daze_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp94.id, spell_level: 0)
  # daze_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp94.id, spell_level: 0)
  daze_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp94.id, spell_level: 0)
  # daze_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp94.id, spell_level: 0)
  daze_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp94.id, spell_level: 0)
  daze_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp94.id, spell_level: 0)

sp95 = Spell.create!(name: "Detect Poison", description: "You determine whether a creature, object, or area has been poisoned or is poisonous. You can determine the exact type of poison with a DC 20 Wisdom check. A character with the Craft (alchemy) skill may try a DC 20 Craft (alchemy) check if the Wisdom check fails, or may try the Craft (alchemy) check prior to the Wisdom check. The spell can penetrate barriers, but 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt blocks it.", target: "one creature, one object, or a 5-ft. cube", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: divination.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp95.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp95.id, component_id: somatic.id, item: nil)
  # detect_poison_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin.id, spell_id: sp95.id, spell_level: 1)
  # detect_poison_paladin = SpellListSpell.create!(spell_list_id: paladin.id, spell_id: sp95.id, spell_level: 1)
  detect_poison_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp95.id, spell_level: 1)
  detect_poison_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp95.id, spell_level: 0)
  # detect_poison_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp95.id, spell_level: 0)
  # detect_poison_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp95.id, spell_level: 0)
  # detect_poison_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp95.id, spell_level: 0)
  # detect_poison_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp95.id, spell_level: 0)
  detect_poison_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp95.id, spell_level: 0)
  detect_poison_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp95.id, spell_level: 0)

sp96 = Spell.create!(name: "Guidance", description: "This spell imbues the subject with a touch of divine guidance.

The creature gets a +1 competence bonus on a single attack roll, saving throw, or skill check. It must choose to use the bonus before making the roll to which it applies.", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: divination.id, duration: "1 minute or until discharged", time: 1, unit_of_time: "minute", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp96.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp96.id, component_id: somatic.id, item: nil)
  guidance_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp96.id, spell_level: 0)
  # guidance_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp96.id, spell_level: 0)
  # guidance_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp96.id, spell_level: 0)
  # guidance_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp96.id, spell_level: 0)
  guidance_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp96.id, spell_level: 0)
  guidance_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp96.id, spell_level: 0)

sp97 = Spell.create!(name: "Putrefy Food and Drink", description: "This spell causes otherwise edible food to rot and spoil instantly, and water and other liquids to become brackish and undrinkable. Holy water and similar food and drink of significance are spoiled by putrefy food and drink, but the spell has no effect on creatures of any type, nor upon unholy water. Water weighs about 8 pounds per gallon. One cubic foot of water contains roughly 8 gallons and weighs about 60 pounds.

Although potions and elixirs are unaffected by the normal use of the spell, you can instead choose to target a single such object with this spell, destroying it if it fails a Saving Throw.", target: "1 cu. ft./level of food and water or one potion", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: ten_feet.id, magic_school_id: transmutation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp97.id, subschool_id: poison.id)
  SpellComponent.create!(spell_id: sp97.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp97.id, component_id: somatic.id, item: nil)
  putrefy_food_and_drink_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp97.id, spell_level: 0)

sp98 = Spell.create!(name: "Spark", description: "You can make an unattended Fine flammable object catch on fire. This works as if you were using flint and steel except that you can use spark in any sort of weather and it takes much less time to actually ignite an object. NOTE: verbal OR somatic component", target: "one Fine object", saving_throw: "Fortitude", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp98.id, subschool_id: fire.id)
  SpellComponent.create!(spell_id: sp98.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp98.id, component_id: somatic.id, item: nil)
  spark_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp98.id, spell_level: 0)
  spark_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp98.id, spell_level: 0)
  # spark_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp98.id, spell_level: 0)
  spark_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp98.id, spell_level: 0)
  spark_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp98.id, spell_level: 0)
  spark_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp98.id, spell_level: 0)

sp99 = Spell.create!(name: "Stabilize", description: "Upon casting this spell, you target a living creature that has –1 or fewer hit points. That creature is automatically stabilized and does not lose any further hit points. If the creature later takes damage, it continues dying normally.", target: "one living creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp99.id, subschool_id: healing.id)
  SpellComponent.create!(spell_id: sp99.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp99.id, component_id: somatic.id, item: nil)
  stabilize_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp99.id, spell_level: 0)
  # stabilize_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp99.id, spell_level: 0)
  # stabilize_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp99.id, spell_level: 0)
  # stabilize_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp99.id, spell_level: 0)
  stabilize_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp99.id, spell_level: 0)

sp100 = Spell.create!(name: "Magic Missile", description: "A missile of magical energy darts forth from your fingertip and strikes its target, dealing 1d4+1 points of force damage.

The missile strikes unerringly, even if the target is in melee combat, so long as it has less than total cover or total concealment. Specific parts of a creature can’t be singled out. Objects are not damaged by the spell.

For every two caster levels beyond 1st, you gain an additional missile – two at 3rd level, three at 5th, four at 7th, and the maximum of five missiles at 9th level or higher. If you shoot multiple missiles, you can have them strike a single creature or several creatures. A single missile can strike only one creature. You must designate targets before you check for spell resistance or roll damage.", target: "up to five creatures, no two of which can be more than 15 ft. apart", saving_throw: "none", spell_resistance: true, action_id: standard.id, spell_range_id: medium.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp100.id, subschool_id: force.id)
  SpellComponent.create!(spell_id: sp100.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp100.id, component_id: somatic.id, item: nil)
  # magic_missile_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp100.id, spell_level: 1)
  magic_missile_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp100.id, spell_level: 1)
  # magic_missile_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp100.id, spell_level: 1)
  magic_missile_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp100.id, spell_level: 1)

print "100 Spells Created \r"

sp101 = Spell.create!(name: "Touch of Fatigue", description: "You channel negative energy through your touch, fatiguing the target. You must succeed on a touch attack to strike a target. The subject is immediately fatigued for the spell’s duration.

This spell has no effect on a creature that is already fatigued. Unlike with normal fatigue, the effect ends as soon as the spell’s duration expires.", target: "creature touched", saving_throw: "Fortitude", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: necromancy.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp101.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp101.id, component_id: somatic.id, item: nil)
  # touch_of_fatigue_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp101.id, spell_level: 0)
  touch_of_fatigue_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp101.id, spell_level: 0)
  touch_of_fatigue_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp101.id, spell_level: 0)

sp102 = Spell.create!(name: "Burning Hands", description: "A cone of searing flame shoots from your fingertips. Any creature in the area of the flames takes 1d4 points of fire damage per caster level (maximum 5d4).

Flammable materials burn if the flames touch them. A character can extinguish burning items as a full-round action.", target: "cone-shaped burst", saving_throw: "Reflex", spell_resistance: true, action_id: standard.id, spell_range_id: fifteen_feet.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp102.id, subschool_id: fire.id)
  SpellComponent.create!(spell_id: sp102.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp102.id, component_id: somatic.id, item: nil)
  # burning_hands_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp102.id, spell_level: 1)
  burning_hands_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp102.id, spell_level: 1)
  # burning_hands_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp102.id, spell_level: 1)
  burning_hands_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp102.id, spell_level: 1)
  burning_hands_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp102.id, spell_level: 1)

sp103 = Spell.create!(name: "Mage Armor", description: "An invisible but tangible field of force surrounds the subject of a mage armor spell, providing a +4 armor bonus to AC.

Unlike mundane armor, mage armor entails no armor check penalty, arcane spell failure chance, or speed reduction. Since mage armor is made of force, incorporeal creatures can’t bypass it the way they do normal armor.", target: "creature touched", saving_throw: "Will", spell_resistance: false, action_id: standard.id, spell_range_id: touch.id, magic_school_id: conjuration.id, duration: "1 hour/level", time: 1, unit_of_time: "hour", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp103.id, subschool_id: creation.id)
  SpellSubschool.create!(spell_id: sp103.id, subschool_id: force.id)
  SpellComponent.create!(spell_id: sp103.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp103.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp103.id, component_id: material.id, item: 'a piece of curled leather')
  # mage_armor_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp103.id, spell_level: 1)
  # mage_armor_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp103.id, spell_level: 1)
  mage_armor_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp103.id, spell_level: 1)
  # mage_armor_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp103.id, spell_level: 1)
  mage_armor_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp103.id, spell_level: 1)
  mage_armor_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp103.id, spell_level: 1)

sp104 = Spell.create!(name: "Snowball", description: "You throw a ball of elemental ice and snow at a single target as a ranged touch attack. The snowball deals 1d6 points of cold damage per caster level you have (maximum 5d6).", target: "one ball of ice and snow", saving_throw: "none", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp104.id, subschool_id: cold.id)
  SpellSubschool.create!(spell_id: sp104.id, subschool_id: water.id)
  SpellComponent.create!(spell_id: sp104.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp104.id, component_id: somatic.id, item: nil)
  # snowball_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager, spell_id: sp104.id, spell_level: 1)
  # snowball_druid = SpellListSpell.create!(spell_list_id: druid, spell_id: sp104.id, spell_level: 1)
  # snowball_magus = SpellListSpell.create!(spell_list_id: magus, spell_id: sp104.id, spell_level: 1)
  snowball_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp104.id, spell_level: 1)
  snowball_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp104.id, spell_level: 1)
  snowball_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp104.id, spell_level: 1)

sp105 = Spell.create!(name: "Acid Splash", description: "You fire a small orb of acid at the target. You must succeed on a ranged touch attack to hit your target. The orb deals 1d3 points of acid damage. This acid disappears after 1 round.", target: "one missile of acid", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp105.id, subschool_id: creation.id)
  SpellSubschool.create!(spell_id: sp105.id, subschool_id: acid.id)
  SpellComponent.create!(spell_id: sp105.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp105.id, component_id: somatic.id, item: nil)
  # acid_splash_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp105.id, spell_level: 0)
  acid_splash_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp105.id, spell_level: 0)
  acid_splash_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp105.id, spell_level: 0)
  # acid_splash_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp105.id, spell_level: 0)
  acid_splash_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp105.id, spell_level: 0)

sp106 = Spell.create!(name: "Comprehend Languages", description: "You can understand the spoken words of creatures or read otherwise incomprehensible written messages. The ability to read does not necessarily impart insight into the material, merely its literal meaning. The spell enables you to understand or read an unknown language, not speak or write it.

Written material can be read at the rate of one page (250 words) per minute. Magical writing cannot be read, though the spell reveals that it is magical. This spell can be foiled by certain warding magic (such as the secret page and illusory script spells). It does not decipher codes or reveal messages concealed in otherwise normal text.

Comprehend languages can be made permanent with a permanency spell.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: divination.id, duration: "10 minutes/level", time: 10, unit_of_time: "minutes", increase_per_level: 10, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp106.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp106.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp106.id, component_id: material.id, item: 'pinch of soot and salt')
  SpellComponent.create!(spell_id: sp106.id, component_id: divine_focus.id, item: nil)
  comprehend_languages_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp106.id, spell_level: 1)
  comprehend_languages_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp106.id, spell_level: 1)
  comprehend_languages_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp106.id, spell_level: 1)
  # comprehend_languages_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp106.id, spell_level: 1)
  # comprehend_languages_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp106.id, spell_level: 1)
  # comprehend_languages_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp106.id, spell_level: 1)
  comprehend_languages_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp106.id, spell_level: 1)
  comprehend_languages_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp106.id, spell_level: 1)

sp107 = Spell.create!(name: "Deathwatch", description: "Using the powers of necromancy, you can determine the condition of creatures near death within the spell’s range. You instantly know whether each creature within the area is dead, fragile (alive and wounded, with 3 or fewer hit points left), fighting off death (alive with 4 or more hit points), healthy, undead, or neither alive nor dead (such as a construct). Deathwatch sees through any spell or ability that allows creatures to feign death.", target: "cone-shaped emanation", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: thirty_feet.id, magic_school_id: necromancy.id, duration: "10 minutes/level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp107.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp107.id, component_id: somatic.id, item: nil)
  deathwatch_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp107.id, spell_level: 1)

sp108 = Spell.create!(name: "Lay of the Land", description: "In a flash of recognition, you learn about the geography of your surroundings within a radius of 1 mile per 2 caster levels (minimum 1 mile). This instant familiarity grants you an insight bonus equal to your caster level (maximum +5) on Knowledge (geography) checks and Survival checks to avoid getting lost so long as you remain in the affected area.

Additionally, for the duration of the spell you can make Knowledge (geography) checks regarding the affected area as though you were trained in that skill.", target: "you", saving_throw: "none", spell_resistance: true, action_id: one_minute.id, spell_range_id: personal.id, magic_school_id: divination.id, duration: "1 day", time: 1, unit_of_time: "day", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp108.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp108.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp108.id, component_id: material.id, item: 'a piece of soil from the land to be memorized')
  lay_of_the_land_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp108.id, spell_level: 2)
  lay_of_the_land_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp108.id, spell_level: 2)
  # lay_of_the_land_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp108.id, spell_level: 2)
  lay_of_the_land_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp108.id, spell_level: 2)
  lay_of_the_land_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp108.id, spell_level: 2)

sp109 = Spell.create!(name: "Kiss of the First World", description: "This spell infuses a living creature with a surge of positive energy, filling the target with the raw energies of life. The exact effects of this spell vary, depending on the nature of the creature touched. Constructs are immune to the effects of this spell.

Living Creature: A living creature gains a 20-foot increase to his base land speed and a +2 insight bonus on all Charisma-based skill checks. In addition, the creature gains fast healing 2. Fire, acid, and negative energy cause this fast healing to stop functioning on the round following the attack.
Undead Creature: An undead creature targeted by this spell is staggered for the duration of this spell. It does not gain the benefits of any channel resistance it might normally enjoy, and the save DCs for any of its special attacks (but not spell-like abilities or spells) are reduced by 2.", target: "living or undead creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp109.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp109.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp109.id, component_id: material.id, item: 'diamond dust worth 100 gp')
  kiss_of_the_first_world_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp109.id, spell_level: 4)
  # kiss_of_the_first_world_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp109.id, spell_level: 4)

sp110 = Spell.create!(name: "Mass Cure Light Wounds", description: "You channel positive energy to cure 1d8 points of damage + 1 point per caster level (maximum +25) on each selected creature. Like other cure spells, mass cure light wounds deals damage to undead in its area rather than curing them. Each affected undead may attempt a Will save for half damage.", target: "one creature/level, no two of which can be more than 30 ft. apart", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp110.id, subschool_id: healing.id)
  SpellComponent.create!(spell_id: sp110.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp110.id, component_id: somatic.id, item: nil)
  mass_cure_light_wounds_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp110.id, spell_level: 5)
  mass_cure_light_wounds_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp110.id, spell_level: 5)
  # mass_cure_light_wounds_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp110.id, spell_level: 6)
  # mass_cure_light_wounds_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp110.id, spell_level: 5)
  # mass_cure_light_wounds_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp110.id, spell_level: 5)
  mass_cure_light_wounds_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp110.id, spell_level: 6)

  FeatureSpontaneousCasting.create!(feature_id: cleric6_feature.id, spell_id: sp110.id, keyword: "cure", spell_level: 5, player_choice: true)
  FeatureSpontaneousCasting.create!(feature_id: warpriest4_feature.id, spell_id: sp110.id, keyword: "cure", spell_level: 5, player_choice: true)

print "110 Spells Created \r"

sp111 = Spell.create!(name: "Music of the Spheres", description: "The music of the spheres is the harmonic constant that plays under and through all of reality. It is this constant song, this otherworldly music, that keeps the laws of reality constant and the connections between the planes of existence strong.

With this spell, one can amplify the underlying music of the spheres in the spell’s area of effect to infuse yourself and all creatures within 20 feet of you, friend and foe alike. All creatures that begin their turn within the area of this spell’s effect gain fast healing 5, resistance 10 to all energy types, and a +3 sacred bonus on all saving throws against poison and disease. Any creature that enters the area of effect does not gain the benefits of the music of the spheres until it begins its turn in that area. You must maintain concentration on the amplification of the music or the effects immediately end, but you can move around to prevent enemies from gaining the benefits of this spell.", target: "20-ft.-radius spherical emanation, centered on you", saving_throw: "none", spell_resistance: true, action_id: standard.id, spell_range_id: twenty_feet.id, magic_school_id: conjuration.id, duration: "concentration, up to 1 round per level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: true)
  SpellSubschool.create!(spell_id: sp111.id, subschool_id: healing.id)
  SpellSubschool.create!(spell_id: sp111.id, subschool_id: sonic.id)
  SpellComponent.create!(spell_id: sp111.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp111.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp111.id, component_id: material.id, item: 'a stick of incense treated with special balms')
  music_of_the_spheres_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp111.id, spell_level: 5)
  music_of_the_spheres_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp111.id, spell_level: 6)

sp112 = Spell.create!(name: "Mass Cure Moderate Wounds", description: "This spell functions like mass cure light wounds, except that it cures 2d8 points of damage + 1 point per caster level (maximum +30).", target: "one creature/level, no two of which can be mor ethan 30 ft. apart", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp112.id, subschool_id: healing.id)
  SpellComponent.create!(spell_id: sp112.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp112.id, component_id: somatic.id, item: nil)
  mass_cure_moderate_wounds_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp112.id, spell_level: 6)
  mass_cure_moderate_wounds_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp112.id, spell_level: 6)
  # mass_cure_moderate_wounds_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp112.id, spell_level: 7)
  # mass_cure_moderate_wounds_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp112.id, spell_level: 6)
  # mass_cure_moderate_wounds_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp112.id, spell_level: 6)
  mass_cure_moderate_wounds_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp112.id, spell_level: 7)

  FeatureSpontaneousCasting.create!(feature_id: cleric6_feature.id, spell_id: sp112.id, keyword: "cure", spell_level: 6, player_choice: true)
  FeatureSpontaneousCasting.create!(feature_id: warpriest4_feature.id, spell_id: sp112.id, keyword: "cure", spell_level: 6, player_choice: true)

sp113 = Spell.create!(name: "Jolt", description: "You cause a spark of electricity to strike the target with a successful ranged touch attack. The spell deals 1d3 points of electricity damage.", target: "spark of electricity", saving_throw: "none", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp113.id, subschool_id: electricity.id)
  SpellComponent.create!(spell_id: sp113.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp113.id, component_id: somatic.id, item: nil)
  jolt_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp113.id, spell_level: 0)

sp114 = Spell.create!(name: "True Strike", description: "You gain temporary, intuitive insight into the immediate future during your next attack. Your next single attack roll (if it is made before the end of the next round) gains a +20 insight bonus. Additionally, you are not affected by the miss chance that applies to attackers trying to strike a concealed target.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: divination.id, duration: "see text", time: 1, unit_of_time: "round", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp114.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp114.id, component_id: focus.id, item: 'small wooden replica of an archery target')
  true_strike_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp114.id, spell_level: 1)
  # true_strike_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp114.id, spell_level: 1)
  # true_strike_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp114.id, spell_level: 1)
  true_strike_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp114.id, spell_level: 1)
  # true_strike_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp114.id, spell_level: 1)
  true_strike_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp114.id, spell_level: 1)

sp115 = Spell.create!(name: "Floating Disk", description: "You create a slightly concave, circular plane of force that follows you about and carries loads for you. The disk is 3 feet in diameter and 1 inch deep at its center. It can hold 100 pounds of weight per caster level. If used to transport a liquid, its capacity is 2 gallons. The disk floats approximately 3 feet above the ground at all times and remains level. It floats along horizontally within spell range and will accompany you at a rate of no more than your normal speed each round. If not otherwise directed, it maintains a constant interval of 5 feet between itself and you. The disk winks out of existence when the spell duration expires. The disk also winks out if you move beyond its range or try to take the disk more than 3 feet away from the surface beneath it. When the disk winks out, whatever it was supporting falls to the surface beneath it.", target: "3-ft.-diameter disk of force", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: evocation.id, duration: "1 hour/level", time: 1, unit_of_time: "hour", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp115.id, subschool_id: force.id)
  SpellComponent.create!(spell_id: sp115.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp115.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp115.id, component_id: material.id, item: 'a drop of mercury')
  floating_disk_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp115.id, spell_level: 1)
  # floating_disk_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp115.id, spell_level: 1)
  floating_disk_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp115.id, spell_level: 1)

sp116 = Spell.create!(name: "Touch of Combustion", description: "Your successful melee touch attack causes the target to ignite in a violent burst of flame, dealing 1d6 points of fire damage. If it fails its saving throw, the target also catches on fire. If the target catches fire, on the first round thereafter, creatures adjacent to it (including you) must each succeed at a Reflex save or take 1d4 points of fire damage.", target: "creature or object touched", saving_throw: "Reflex", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp116.id, subschool_id: fire.id)
  SpellComponent.create!(spell_id: sp116.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp116.id, component_id: somatic.id, item: nil)
  # touch_of_combustion_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp116.id, spell_level: 1)
  # touch_of_combustion_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp116.id, spell_level: 1)
  # touch_of_combustion_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp116.id, spell_level: 1)
  touch_of_combustion_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp116.id, spell_level: 1)
  # touch_of_combustion_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp116.id, spell_level: 1)
  touch_of_combustion_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp116.id, spell_level: 1)
  touch_of_combustion_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp116.id, spell_level: 1)

sp117 = Spell.create!(name: "Endothermic Touch", description: "The target is staggered and moves at half its normal speed (round down to the next 5-foot increment), but it can hold its breath for twice as long as normal.", target: "one living creature that has the dragon type or the reptilian subtype", saving_throw: "Fortitude", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp117.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp117.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp117.id, component_id: material.id, item: 'a small bit of snakeskin')
  SpellComponent.create!(spell_id: sp117.id, component_id: divine_focus.id, item: nil)
# endothermic_touch_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp117.id, spell_level: 1)
# endothermic_touch_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp117.id, spell_level: 1)
endothermic_touch_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp117.id, spell_level: 1)
endothermic_touch_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp117.id, spell_level: 1)

sp118 = Spell.create!(name: "Stone Call", description: "A rain of dirt, gravel, and small pebbles fills the area, dealing 2d6 points of bludgeoning damage to every creature in the area. This damage only occurs once, when the spell is cast.

For the remaining duration of the spell, this debris covers the ground, making the entire area difficult terrain. At the end of the duration, the rocks disappear, leaving no aftereffects (other than the damage dealt).", target: "cylinder (40-ft. radius, 20 ft. high)", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: medium.id, magic_school_id: conjuration.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp118.id, subschool_id: creation.id)
  SpellSubschool.create!(spell_id: sp118.id, subschool_id: earth.id)
  SpellComponent.create!(spell_id: sp118.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp118.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp118.id, component_id: divine_focus.id, item: nil)
  # stone_call_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp118.id, spell_level: 2)
  # stone_call_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp118.id, spell_level: 2)
  stone_call_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp118.id, spell_level: 2)
  stone_call_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp118.id, spell_level: 2)
  stone_call_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp118.id, spell_level: 2)

sp119 = Spell.create!(name: "Sonic Scream", description: "Up to three times during this spell’s duration, you can emit a cone of powerful sound as a standard action. The first cone deals 4d4 points of sonic damage to every creature in the area. The second deals 2d4 points of sonic damage to every creature in the area. The third deals 1d4 points of sonic damage to every creature in the area. A successful Reflex save against a cone halves that cone’s damage. After the third cone of sound, the spell ends. Until you use all three cones, you cannot use your voice for any magic-related purpose (bardic performance, verbal spellcasting, and so on), and cannot speak at any volume lower than a shout.", target: "cone-shaped burst", saving_throw: "Reflex", spell_resistance: true, action_id: standard.id, spell_range_id: fifteen_feet.id, magic_school_id: evocation.id, duration: "1 round/level or until discharged", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp119.id, subschool_id: sonic.id)
  SpellComponent.create!(spell_id: sp119.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp119.id, component_id: somatic.id, item: nil)
  sonic_scream_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp119.id, spell_level: 2)
  # sonic_scream_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp119.id, spell_level: 2)
  sonic_scream_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp119.id, spell_level: 2)
  # sonic_scream_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp119.id, spell_level: 2)
  sonic_scream_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp119.id, spell_level: 2)

sp120 = Spell.create!(name: "Admonishing Ray", description: "You blast your enemies with rays of nonlethal force. You may fire one ray, plus one additional ray for every four levels you possess beyond 3rd (to a maximum of three rays at 11th level). Each ray requires a ranged touch attack to hit and deals 4d6 points of nonlethal damage. This is a force effect. The rays may be fired at the same or different targets, but all rays must be fired simultaneously and aimed at targets within 30 feet of each other. The rays hit about as hard as a punch from a strong adult human, and can knock away unattended objects weighing up to 10 pounds if that amount of force could normally do so.", target: "one or more rays", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp120.id, subschool_id: force.id)
  SpellComponent.create!(spell_id: sp120.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp120.id, component_id: somatic.id, item: nil)
  admonishing_ray_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp120.id, spell_level: 2)
  admonishing_ray_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp120.id, spell_level: 2)

  # rays count as weapons when it comes to bonuses that only apply to weapons damage (i.e., bard's inspire courage)


print "120 Spells Created \r"

sp121 = Spell.create!(name: "Twisted Futures", description: "By rearranging the threads of fate, you disrupt fortunate outcomes for other creatures. A creature affected by this spell is unable to benefit from effects that grant the ability to roll multiple times and take the higher result (like the swashbuckler’s charmed life ability) or to choose the die result in lieu of rolling (like the wizard’s prescience school power or the cyclops’s flash of insight ability). This doesn’t affect abilities that force a creature to take the lower of two rolls, such as ill omen or a pugwampi’s unluck aura. A cyclops can’t use its flash of insight ability to save against this spell.", target: "one creature/level, no two of which can be more than 30 ft. apart", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: divination.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp121.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp121.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp121.id, component_id: material.id, item: 'a small die with the faces scratched off')
  twisted_futures_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp121.id, spell_level: 1)
  twisted_futures_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp121.id, spell_level: 2)
  # twisted_futures_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp121.id, spell_level: 1)
  # twisted_futures_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp121.id, spell_level: 1)
  twisted_futures_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp121.id, spell_level: 2)
  twisted_futures_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp121.id, spell_level: 1)

sp122 = Spell.create!(name: "Twisted Space", description: "You distort the space around a creature, twisting the path of its melee attacks unpredictably, but always toward a nearby creature that the target threatens. Until the start of your next turn, melee attacks made by the target creature affect a random target instead of their intended target.", target: "one creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "1 round", time: 1, unit_of_time: "round", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp122.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp122.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp122.id, component_id: material.id, item: 'a length of wire bent into a circle')
  twisted_space_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp122.id, spell_level: 2)
  # twisted_space_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp122.id, spell_level: 2)
  twisted_space_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp122.id, spell_level: 2)
  # twisted_space_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp122.id, spell_level: 2)
  twisted_space_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp122.id, spell_level: 2)

sp123 = Spell.create!(name: "Make Whole", description: "This spell functions as mending, except that it repairs 1d6 points of damage per level when cast on an object or construct creature (maximum 5d6).

Make whole can fix destroyed magic items (at 0 hit points or less), and restores the magic properties of the item if your caster level is at least twice that of the item. Items with charges (such as wands) and single-use items (such as potions and scrolls) cannot be repaired in this way. When make whole is used on a construct creature, the spell bypasses any immunity to magic as if the spell did not allow spell resistance.", target: "one object of up to 10 cu. ft./level or one construct creature of any size", saving_throw: "Will", spell_resistance: true, action_id: ten.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp123.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp123.id, component_id: somatic.id, item: nil)
  make_whole_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp123.id, spell_level: 2)
  # make_whole_occultist = SpellListSpell.create!(spell_list_id: occultist.id, spell_id: sp123.id, spell_level: 2)
  # make_whole_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp123.id, spell_level: 2)
  make_whole_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp123.id, spell_level: 2)

sp124 = Spell.create!(name: "Blink", description: "You “blink” quickly back and forth between the Material Plane and the Ethereal Plane and look as though you’re winking in and out of reality at random. Blink has several effects, as follows.

Physical attacks against you have a 50% miss chance, and the Blind-Fight feat doesn’t help opponents, since you’re ethereal and not merely invisible. If the attack is capable of striking ethereal creatures, the miss chance is only 20% (for concealment).

If the attacker can see invisible creatures, the miss chance is also only 20%. (For an attacker who can both see and strike ethereal creatures, there is no miss chance.) Likewise, your own attacks have a 20% miss chance, since you sometimes go ethereal just as you are about to strike.

Any individually targeted spell has a 50% chance to fail against you while you’re blinking unless your attacker can target invisible, ethereal creatures. Your own spells have a 20% chance to activate just as you go ethereal, in which case they typically do not affect the Material Plane (but they might affect targets on the Ethereal Plane).

While blinking, you take only half damage from area attacks (but full damage from those that extend onto the Ethereal Plane). Although you are only partially visible, you are not considered invisible and targets retain their Dexterity bonus to AC against your attacks. You do receive a +2 bonus on attack rolls made against enemies that cannot see invisible creatures.

You take only half damage from falling, since you fall only while you are material.

While blinking, you can step through (but not see through) solid objects. For each 5 feet of solid material you walk through, there is a 50% chance that you become material. If this occurs, you are shunted off to the nearest open space and take 1d6 points of damage per 5 feet so traveled.

Since you spend about half your time on the Ethereal Plane, you can see and even attack ethereal creatures. You interact with ethereal creatures roughly the same way you interact with material ones.

An ethereal creature is invisible, incorporeal, and capable of moving in any direction, even up or down. As an incorporeal creature, you can move through solid objects, including living creatures.

An ethereal creature can see and hear the Material Plane, but everything looks gray and insubstantial. Sight and hearing on the Material Plane are limited to 60 feet.

Force effects and abjurations affect you normally. Their effects extend onto the Ethereal Plane from the Material Plane, but not vice versa. An ethereal creature can’t attack material creatures, and spells you cast while ethereal affect only other ethereal things. Certain material creatures or objects have attacks or effects that work on the Ethereal Plane. Treat other ethereal creatures and objects as material.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: transmutation.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp124.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp124.id, component_id: somatic.id, item: nil)
  blink_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp124.id, spell_level: 3)
  blink_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp124.id, spell_level: 3)
  # blink_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp124.id, spell_level: 3)
  blink_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp124.id, spell_level: 3)

sp125 = Spell.create!(name: "Control Water", description: "This spell has two different applications, both of which control water in different ways. The first version of this spell causes water in the area to swiftly evaporate or to sink into the ground below, lowering the water’s depth. The second version causes the water to surge and rise, increasing its overall depth and possibly flooding nearby areas.

Lower Water: This causes water or similar liquid to reduce its depth by as much as 2 feet per caster level (to a minimum depth of 1 inch). The water is lowered within a squarish depression whose sides are up to caster level x 10 feet long. In extremely large and deep bodies of water, such as a deep ocean, the spell creates a whirlpool that sweeps ships and similar craft downward, putting them at risk and rendering them unable to leave by normal movement for the duration of the spell. When cast on water elementals and other water-based creatures, this spell acts as a slow spell (Will negates). The spell has no effect on other creatures.

Raise Water: This causes water or similar liquid to rise in height, just as the lower water version causes it to lower. Boats raised in this way slide down the sides of the hump that the spell creates. If the area affected by the spell includes riverbanks, a beach, or other land nearby, the water can spill over onto dry land.

With either version of this spell, you may reduce one horizontal dimension by half and double the other horizontal dimension to change the overall area of effect.", target: "water in a volume of 10 ft./level by 10 ft./level by 2 ft./level", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: long.id, magic_school_id: transmutation.id, duration: "10 minutes/level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp125.id, subschool_id: water.id)
  SpellComponent.create!(spell_id: sp125.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp125.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp125.id, component_id: material.id, item: 'a pinch of dust for lower water or a drop of water for raise water')
  SpellComponent.create!(spell_id: sp125.id, component_id: divine_focus.id, item: nil)
  control_water_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp125.id, spell_level: 4)
  # control_water_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp125.id, spell_level: 4)
  # control_water_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp125.id, spell_level: 4)
  control_water_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp125.id, spell_level: 6)

sp126 = Spell.create!(name: "Spider Climb", description: "The subject can climb and travel on vertical surfaces or even traverse ceilings as well as a spider does. The affected creature must have its hands free to climb in this manner. The subject gains a climb speed of 20 feet and a +8 racial bonus on Climb skill checks; furthermore, it need not make Climb checks to traverse a vertical or horizontal surface (even upside down). A spider climbing creature retains its Dexterity bonus to Armor Class (if any) while climbing, and opponents get no special bonus to their attacks against it. It cannot, however, use the run action while climbing.", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "10 minutes/level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp126.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp126.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp126.id, component_id: material.id, item: 'a live spider')
  spider_climb_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp126.id, spell_level: 2)
  # spider_climb_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp126.id, spell_level: 2)
  # spider_climb_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp126.id, spell_level: 2)
  spider_climb_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp126.id, spell_level: 2)
  # spider_climb_medium = SpellListSpell.create!(spell_list_id: medium.id, spell_id: sp126.id, spell_level: 2)
  # spider_climb_occultist = SpellListSpell.create!(spell_list_id: occultist.id, spell_id: sp126.id, spell_level: 2)
  # spider_climb_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp126.id, spell_level: 2)
  spider_climb_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp126.id, spell_level: 2)
  # spider_climb_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp126.id, spell_level: 2)
  spider_climb_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp126.id, spell_level: 2)

sp127 = Spell.create!(name: "Magic Aura", description: "You alter an item’s aura so that it registers to detect spells (and spells with similar capabilities) as though it were non-magical, or a magic item of a kind you specify, or the subject of a spell you specify. If the object bearing magic aura has identify cast on it or is similarly examined, the examiner recognizes that the aura is false and detects the object’s actual qualities if he succeeds on a Will save. Otherwise, he believes the aura and no amount of testing reveals what the true magic is.

If the targeted item’s own aura is exceptionally powerful (if it is an artifact, for instance), magic aura doesn’t work.

Note: A magic weapon, shield, or suit of armor must be a masterwork item, so a sword of average make, for example, looks suspicious if it has a magical aura.", target: "one touched object weighing up to 5 lbs./level", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: touch.id, magic_school_id: illusion.id, duration: "1 day/level", time: 1, unit_of_time: "day", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp127.id, subschool_id: glamer.id)
  SpellComponent.create!(spell_id: sp127.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp127.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp127.id, component_id: focus.id, item: 'a small square of silk that must be passed over the object that receives the aura')
  magic_aura_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp127.id, spell_level: 1)
  # magic_aura_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp127.id, spell_level: 1)
  magic_aura_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp127.id, spell_level: 1)

sp128 = Spell.create!(name: "Detect Evil", description: "You can sense the presence of evil. The amount of information revealed depends on how long you study a particular area or subject.

1st Round: Presence or absence of evil.

2nd Round: Number of evil auras (creatures, objects, or spells) in the area and the power of the most potent evil aura present.

If you are of good alignment, and the strongest evil aura’s power is overwhelming (see below), and the HD or level of the aura’s source is at least twice your character level, you are stunned for 1 round and the spell ends.

3rd Round: The power and location of each aura. If an aura is outside your line of sight, then you discern its direction but not its exact location.


Aura Power
An evil aura’s power depends on the type of evil creature or object that you’re detecting and its HD, caster level, or (in the case of a cleric) class level; see the table below. If an aura falls into more than one strength category, the spell indicates the stronger of the two.

Creature/Object	Aura Power
None	Faint	Moderate	Strong	Overwhelming
Aligned creature(1) (HD)	4 or lower	5-10	11-25	26-50	51 or higher
Aligned Undead (HD)	—	2 or lower	3-8	9-20	21 or higher
Aligned Outsider (HD)	—	1 or lower	2-4	5-10	11 or higher
Cleric or paladin of an aligned deity(2) (class levels)	—	1	2-4	5-10	11 or higher
Aligned magic item or spell (caster level)	5 or lower	6-10	11-15	16-20	21 or higher
(1) Except for Undead and Outsider, which have their own entries on the table.

(2) Some characters who are not clerics may radiate an aura of equivalent power. The class description will indicate whether this applies.

Lingering Aura: An evil aura lingers after its original source dissipates (in the case of a spell) or is destroyed (in the case of a creature or magic item). If detect evil is cast and directed at such a location, the spell indicates an aura strength of dim (even weaker than a faint aura). How long the aura lingers at this dim level depends on its original power:

Original Strength	Duration of Lingering Aura
Faint	1d6 rounds
Moderate	1d6 minutes
Strong	1d6x10 minutes
Overwhelming	1d6 days
Animals, traps, poisons, and other potential perils are not evil, and as such this spell does not detect them. Creatures with actively evil intents count as evil creatures for the purpose of this spell.

Each round, you can turn to detect evil in a new area. The spell can penetrate barriers, but 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt blocks it.", target: "cone-shaped emanation", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: sixty_feet.id, magic_school_id: divination.id, duration: "concentration, up to 10 min./ level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: true, concentration: true)
  SpellComponent.create!(spell_id: sp128.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp128.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp128.id, component_id: divine_focus.id, item: nil)
  detect_evil_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp128.id, spell_level: 1)
  # detect_evil_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp128.id, spell_level: 1)
  # detect_evil_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp128.id, spell_level: 1)

  KlassFeatureAssociatedSpell.create!(klass_feature_id: KlassFeature.find_by(name: "Aura", description: "A cleric of a chaotic, evil, good, or lawful deity has a particularly powerful aura corresponding to the deity’s alignment (see detect evil for details).").id, spell_id: sp128.id)


sp129 = Spell.create!(name: "Faerie Fire", description: "A pale glow surrounds and outlines the subjects. Outlined subjects shed light as candles. Creatures outlined by faerie fire take a -20 penalty on all Stealth checks. Outlined creatures do not benefit from the concealment normally provided by darkness (though a 2nd-level or higher magical darkness effect functions normally), blur, displacement, invisibility, or similar effects. The light is too dim to have any special effect on undead or dark-dwelling creatures vulnerable to light.

The faerie fire can be blue, green, or violet, according to your choice at the time of casting. The faerie fire does not cause any harm to the objects or creatures thus outlined.", target: "creatures and objects within a 5-ft.-radius burst", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: long.id, magic_school_id: evocation.id, duration: "1 minute/level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp129.id, subschool_id: light.id)
  SpellComponent.create!(spell_id: sp129.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp129.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp129.id, component_id: divine_focus.id, item: nil)
  # faerie_fire_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp129.id, spell_level: 1)

sp130 = Spell.create!(name: "Entangle", description: "This spell causes tall grass, weeds, and other plants to wrap around creatures in the area of effect or those that enter the area. Creatures that fail their save gain the entangled condition. Creatures that make their save can move as normal, but those that remain in the area must save again at the end of your turn. Creatures that move into the area must save immediately. Those that fail must end their movement and gain the entangled condition. Entangled creatures can attempt to break free as a move action, making a Strength or Escape Artist check. The DC for this check is equal to the DC of the spell. The entire area of effect is considered difficult terrain while the effect lasts.

If the plants in the area are covered in thorns, those in the area take 1 point of damage each time they fail a save against the entangle or fail a check made to break free. Other effects, depending on the local plants, might be possible at GM discretion.", target: "plants in a 40-ft.-radius spread", saving_throw: "Reflex", spell_resistance: false, action_id: standard.id, spell_range_id: long.id, magic_school_id: transmutation.id, duration: "1 minute/level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp130.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp130.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp130.id, component_id: divine_focus.id, item: nil)
  # entangle_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp130.id, spell_level: 1)
  entangle_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp130.id, spell_level: 1)
  # entangle_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp130.id, spell_level: 1)

print "130 Spells Created \r"

sp131 = Spell.create!(name: "Glitterdust", description: "A cloud of golden particles covers everyone and everything in the area, causing creatures to become blinded and visibly outlining invisible things for the duration of the spell. All within the area are covered by the dust, which cannot be removed and continues to sparkle until it fades. Each round at the end of their turn blinded creatures may attempt new saving throws to end the blindness effect.

Any creature covered by the dust takes a -40 penalty on Stealth checks.", target: "creatures and objects within 10-ft.-radius spread", saving_throw: "Will", spell_resistance: false, action_id: standard.id, spell_range_id: medium.id, magic_school_id: conjuration.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp131.id, subschool_id: creation.id)
  SpellComponent.create!(spell_id: sp131.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp131.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp131.id, component_id: material.id, item: 'ground mica')
  glitterdust_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp131.id, spell_level: 2)
  # glitterdust_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp131.id, spell_level: 2)
  glitterdust_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp131.id, spell_level: 2)
  glitterdust_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp131.id, spell_level: 2)
  # glitterdust_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner.id, spell_id: sp131.id, spell_level: 2)
  glitterdust_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp131.id, spell_level: 2)
  glitterdust_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp131.id, spell_level: 2)

sp132 = Spell.create!(name: "Deep Slumber", description: "This spell functions like sleep, except that it affects 10 HD of targets.", target: "one or more living creatures within a 10-ft.-radius burst", saving_throw: "Will", spell_resistance: true, action_id: full_round.id, spell_range_id: close.id, magic_school_id: enchantment.id, duration: "1 minute/level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp132.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: sp132.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp132.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp132.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp132.id, component_id: material.id, item: 'fine sand, rose petals, or a live cricket')
  deep_slumber_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp132.id, spell_level: 3)
  # deep_slumber_mesmerist = SpellListSpell.create!(spell_list_id: mesmerist.id, spell_id: sp132.id, spell_level: 3)
  # deep_slumber_occultist = SpellListSpell.create!(spell_list_id: occultist.id, spell_id: sp132.id, spell_level: 3)
  # deep_slumber_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp132.id, spell_level: 3)
  # deep_slumber_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp132.id, spell_level: 3)
  deep_slumber_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp132.id, spell_level: 3)
  deep_slumber_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp132.id, spell_level: 3)

sp133 = Spell.create!(name: "Hold Person", description: "The subject becomes paralyzed and freezes in place. It is aware and breathes normally but cannot take any actions, even speech. Each round on its turn, the subject may attempt a new saving throw to end the effect. This is a full-round action that does not provoke attacks of opportunity. A winged creature who is paralyzed cannot flap its wings and falls. A swimmer can’t swim and may drown.", target: "one humanoid creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: medium.id, magic_school_id: enchantment.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp133.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: sp133.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp133.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp133.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp133.id, component_id: focus.id, item: 'a small, straight piece of iron')
  SpellComponent.create!(spell_id: sp133.id, component_id: divine_focus.id, item: nil)
  # hold_person_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin.id, spell_id: sp133.id, spell_level: 2)
  hold_person_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp133.id, spell_level: 2)
  # hold_person_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager.id, spell_id: sp133.id, spell_level: 3)
  hold_person_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp133.id, spell_level: 2)
  # hold_person_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp133.id, spell_level: 2)
  # hold_person_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp133.id, spell_level: 2)
  hold_person_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp133.id, spell_level: 3)
  # hold_person_medium = SpellListSpell.create!(spell_list_id: medium.id, spell_id: sp133.id, spell_level: 2)
  # hold_person_mesmerist = SpellListSpell.create!(spell_list_id: mesmerist.id, spell_id: sp133.id, spell_level: 3)
  # hold_person_occultist = SpellListSpell.create!(spell_list_id: occultist.id, spell_id: sp133.id, spell_level: 2)
  # hold_person_psychic = SpellListSpell.create!(spell_list_id: psychic.id, spell_id: sp133.id, spell_level: 2)
  hold_person_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp133.id, spell_level: 2)

sp134 = Spell.create!(name: "Alchemical Allocation", description: "This extract causes a pale aura to emanate from your mouth.

If you consume a potion or elixir on the round following the consumption of this extract, you can spit it back into its container as a free action. You gain all the benefits of the potion or elixir, but it is not consumed. You can only gain the benefits of one potion or elixir in this way per use of this extract.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: transmutation.id, duration: "1 round", time: 1, unit_of_time: "round", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp134.id, component_id: somatic.id, item: nil)
  alchemical_allocation_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp134.id, spell_level: 2)

sp135 = Spell.create!(name: "Lesser Restoration", description: "Lesser restoration dispels any magical effects reducing one of the subject’s ability scores or cures 1d4 points of temporary ability damage to one of the subject’s ability scores. It also eliminates any fatigue suffered by the character, and improves an exhausted condition to fatigued. It does not restore permanent ability drain.", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: three_rounds.id, spell_range_id: touch.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "round", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp135.id, subschool_id: healing.id)
  SpellComponent.create!(spell_id: sp135.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp135.id, component_id: somatic.id, item: nil)
  lesser_restoration_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp135.id, spell_level: 2)
  lesser_restoration_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp135.id, spell_level: 2)
  # lesser_restoration_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp135.id, spell_level: 2)
  # lesser_restoration_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp135.id, spell_level: 2)
  # lesser_restoration_paladin = SpellListSpell.create!(spell_list_id: paladin.id, spell_id: sp135.id, spell_level: 1)
  # lesser_restoration_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp135.id, spell_level: 2)

sp136 = Spell.create!(name: "Channel Vigor", description: "You focus the energy of your mind, body, and spirit into a specific part of your being, granting yourself an exceptional ability to perform certain tasks. When you cast the spell, choose one of the following portions of your self as your focus target. Thereafter, you may change the focus target as a move action. You can gain the benefit of only one channel vigor spell at a time.

Limbs: You gain the benefits of a haste spell.
Mind: You gain a +4 competence bonus on Knowledge and Perception skill checks and on ranged attack rolls.
Spirit: You gain a +6 competence bonus on Will saving throws and Bluff and Intimidate checks.
Torso: You gain a +6 competence bonus on Fortitude saving throws and concentration checks.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: transmutation.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp136.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp136.id, component_id: somatic.id, item: nil)
  channel_vigor_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp136.id, spell_level: 3)
  channel_vigor_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp136.id, spell_level: 3)
  # channel_vigor_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp136.id, spell_level: 3)
  channel_vigor_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp136.id, spell_level: 3)

sp137 = Spell.create!(name: "Cure Serious Wounds", description: "This spell functions like cure light wounds, except that it cures 3d8 points of damage + 1 point per caster level (maximum +15).", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 1, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp137.id, subschool_id: healing.id)
  SpellComponent.create!(spell_id: sp137.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp137.id, component_id: somatic.id, item: nil)
  cure_serious_wounds_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp137.id, spell_level: 3)
  cure_serious_wounds_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp137.id, spell_level: 3)
  cure_serious_wounds_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp137.id, spell_level: 3)
  # cure_serious_wounds_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp137.id, spell_level: 4)
  # cure_serious_wounds_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp137.id, spell_level: 3)
  # cure_serious_wounds_paladin = SpellListSpell.create!(spell_list_id: paladin.id, spell_id: sp137.id, spell_level: 4)
  # cure_serious_wounds_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp137.id, spell_level: 3)
  cure_serious_wounds_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp137.id, spell_level: 4)
  cure_serious_wounds_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp137.id, spell_level: 4)

  FeatureSpontaneousCasting.create!(feature_id: cleric6_feature.id, spell_id: sp137.id, keyword: "cure", spell_level: 3, player_choice: true)
  FeatureSpontaneousCasting.create!(feature_id: warpriest4_feature.id, spell_id: sp137.id, keyword: "cure", spell_level: 3, player_choice: true)

sp138 = Spell.create!(name: "Cure Critical Wounds", description: "This spell functions like cure light wounds, except that it cures 4d8 points of damage + 1 point per caster level (maximum +20).", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 1, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp138.id, subschool_id: healing.id)
  SpellComponent.create!(spell_id: sp138.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp138.id, component_id: somatic.id, item: nil)
  cure_critical_wounds_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp138.id, spell_level: 4)
  cure_critical_wounds_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp138.id, spell_level: 4)
  cure_critical_wounds_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp138.id, spell_level: 4)
  # cure_critical_wounds_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp138.id, spell_level: 5)
  # cure_critical_wounds_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: sp138.id, spell_level: 4)
  # cure_critical_wounds_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp138.id, spell_level: 4)
  cure_critical_wounds_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp138.id, spell_level: 5)

  FeatureSpontaneousCasting.create!(feature_id: cleric6_feature.id, spell_id: sp138.id, keyword: "cure", spell_level: 4, player_choice: true)
  FeatureSpontaneousCasting.create!(feature_id: warpriest4_feature.id, spell_id: sp138.id, keyword: "cure", spell_level: 4, player_choice: true)

sp139 = Spell.create!(name: "Mass Cure Serious Wounds", description: "This spell functions like mass cure light wounds, except that it cures 3d8 points of damage + 1 point per caster level (maximum +35).", target: "one creature/level, no two of which can be more than 30 ft. apart", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 1, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp139.id, subschool_id: healing.id)
  SpellComponent.create!(spell_id: sp139.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp139.id, component_id: somatic.id, item: nil)
  mass_cure_serious_wounds_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp139.id, spell_level: 7)
  # mass_cure_serious_wounds_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp139.id, spell_level: 8)
  # mass_cure_serious_wounds_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp139.id, spell_level: 7)
  mass_cure_serious_wounds_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp139.id, spell_level: 8)

  FeatureSpontaneousCasting.create!(feature_id: cleric6_feature.id, spell_id: sp139.id, keyword: "cure", spell_level: 7, player_choice: true)

sp140 = Spell.create!(name: "Mass Cure Critical Wounds", description: "This spell functions like mass cure light wounds, except that it cures 4d8 points of damage + 1 point per caster level (maximum +40).", target: "one creature/level, no two of which can be more than 30 ft. apart", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp140.id, subschool_id: healing.id)
  SpellComponent.create!(spell_id: sp140.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp140.id, component_id: somatic.id, item: nil)
  mass_cure_serious_wounds_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp140.id, spell_level: 8)
  # mass_cure_serious_wounds_druid = SpellListSpell.create!(spell_list_id: druid.id, spell_id: sp140.id, spell_level: 9)
  # mass_cure_serious_wounds_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: sp140.id, spell_level: 8)
  mass_cure_serious_wounds_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp140.id, spell_level: 9)

  FeatureSpontaneousCasting.create!(feature_id: cleric6_feature.id, spell_id: sp140.id, keyword: "cure", spell_level: 8, player_choice: true)

  print "140 Spells Created \r"

sp141 = Spell.create!(name: "Inflict Serious Wounds", description: "This spell functions like inflict light wounds, except that you deal 3d8 points of damage + 1 point per caster level (maximum +15).", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: necromancy.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp141.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp141.id, component_id: somatic.id, item: nil)
  # inflict_serious_wounds_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin_spell_list.id, spell_id: sp141.id, spell_level: 4)
  inflict_serious_wounds_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp141.id, spell_level: 3)
  # inflict_serious_wounds_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: sp141.id, spell_level: 3)
  # inflict_serious_wounds_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp141.id, spell_level: 3)
  inflict_serious_wounds_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp141.id, spell_level: 4)

  FeatureSpontaneousCasting.create!(feature_id: cleric6_feature.id, spell_id: sp141.id, keyword: "inflict", spell_level: 3, player_choice: true)
  FeatureSpontaneousCasting.create!(feature_id: warpriest4_feature.id, spell_id: sp141.id, keyword: "inflict", spell_level: 3, player_choice: true)

sp142 = Spell.create!(name: "Inflict Critical Wounds", description: "This spell functions like inflict light wounds, except that you deal 4d8 points of damage + 1 point per caster level (maximum +20).", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: necromancy.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp142.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp142.id, component_id: somatic.id, item: nil)
  inflict_critical_wounds_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp142.id, spell_level: 4)
  # inflict_critical_wounds_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: sp142.id, spell_level: 4)
  # inflict_critical_wounds_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp142.id, spell_level: 4)
  inflict_critical_wounds_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp142.id, spell_level: 5)

  FeatureSpontaneousCasting.create!(feature_id: cleric6_feature.id, spell_id: sp142.id, keyword: "inflict", spell_level: 4, player_choice: true)
  FeatureSpontaneousCasting.create!(feature_id: warpriest4_feature.id, spell_id: sp142.id, keyword: "inflict", spell_level: 4, player_choice: true)

sp143 = Spell.create!(name: "Mass Inflict Light Wounds", description: "Negative energy spreads out in all directions from the point of origin, dealing 1d8 points of damage + 1 point per caster level (maximum +25) to nearby living enemies.

Like other inflict spells, mass inflict light wounds cures undead in its area rather than damaging them. A cleric capable of spontaneously casting inflict spells can also spontaneously cast mass inflict spells.", target: "one creature/level, no two of which can be more than 30 ft. apart", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: necromancy.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp143.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp143.id, component_id: somatic.id, item: nil)
  mass_inflict_light_wounds_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp143.id, spell_level: 5)
  # mass_inflict_light_wounds_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: sp143.id, spell_level: 5)
  # mass_inflict_light_wounds_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp143.id, spell_level: 5)
  mass_inflict_light_wounds_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp143.id, spell_level: 6)

  FeatureSpontaneousCasting.create!(feature_id: cleric6_feature.id, spell_id: sp143.id, keyword: "inflict", spell_level: 5, player_choice: true)
  FeatureSpontaneousCasting.create!(feature_id: warpriest4_feature.id, spell_id: sp143.id, keyword: "inflict", spell_level: 5, player_choice: true)

sp144 = Spell.create!(name: "Mass Inflict Moderate Wounds", description: "This spell functions like mass inflict light wounds, except that it deals 2d8 points of damage + 1 point per caster level (maximum +30).", target: "one creature/level, no two of which can be more than 30 ft. apart", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: necromancy.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp144.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp144.id, component_id: somatic.id, item: nil)
  mass_inflict_moderate_wounds_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp144.id, spell_level: 6)
  # mass_inflict_moderate_wounds_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: sp144.id, spell_level: 6)
  # mass_inflict_moderate_wounds_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp144.id, spell_level: 6)
  mass_inflict_moderate_wounds_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp144.id, spell_level: 7)

  FeatureSpontaneousCasting.create!(feature_id: cleric6_feature.id, spell_id: sp144.id, keyword: "inflict", spell_level: 6, player_choice: true)
  FeatureSpontaneousCasting.create!(feature_id: warpriest4_feature.id, spell_id: sp144.id, keyword: "inflict", spell_level: 6, player_choice: true)

sp145 = Spell.create!(name: "Mass Inflict Serious Wounds", description: "This spell functions like mass inflict light wounds, except that it deals 3d8 points of damage + 1 point per caster level (maximum +35).", target: "one creature/level, no two of which can be more than 30 ft. apart", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: necromancy.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp145.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp145.id, component_id: somatic.id, item: nil)
  mass_inflict_serious_wounds_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp145.id, spell_level: 7)
  # mass_inflict_serious_wounds_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp145.id, spell_level: 7)
  mass_inflict_serious_wounds_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp145.id, spell_level: 8)

  FeatureSpontaneousCasting.create!(feature_id: cleric6_feature.id, spell_id: sp145.id, keyword: "inflict", spell_level: 7, player_choice: true)

sp146 = Spell.create!(name: "Mass Inflict Critical Wounds", description: "This spell functions like mass inflict light wounds, except that it deals 4d8 points of damage + 1 point per caster level (maximum +40).", target: "one creature/level, no two of which can be more than 30 ft. apart", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: necromancy.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp146.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp146.id, component_id: somatic.id, item: nil)
  mass_inflict_critical_wounds_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp146.id, spell_level: 8)
  # mass_inflict_critical_wounds_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp146.id, spell_level: 8)
  mass_inflict_critical_wounds_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp146.id, spell_level: 9)

  FeatureSpontaneousCasting.create!(feature_id: cleric6_feature.id, spell_id: sp146.id, keyword: "inflict", spell_level: 8, player_choice: true)

sp147 = Spell.create!(name: "Wind Wall", description: "An invisible vertical curtain of wind appears. It is 2 feet thick and of considerable strength. It is a roaring blast sufficient to blow away any bird smaller than an eagle, or tear papers and similar materials from unsuspecting hands. (A Reflex save allows a creature to maintain its grasp on an object.) Tiny and Small flying creatures cannot pass through the barrier. Loose materials and cloth garments fly upward when caught in a wind wall. Arrows and bolts are deflected upward and miss, while any other normal ranged weapon passing through the wall has a 30% miss chance. (A giant-thrown boulder, a siege engine projectile, and other massive ranged weapons are not affected.) Gases, most gaseous breath weapons, and creatures in gaseous form cannot pass through the wall (although it is no barrier to incorporeal creatures).

While the wall must be vertical, you can shape it in any continuous path along the ground that you like. It is possible to create cylindrical or square wind walls to enclose specific points.", target: "wall up to 10 ft./level long and 5 ft./level high (S)", saving_throw: "none", spell_resistance: true, action_id: standard.id, spell_range_id: medium.id, magic_school_id: evocation.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp147.id, subschool_id: air.id)
  SpellComponent.create!(spell_id: sp147.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp147.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp147.id, component_id: material.id, item: "a tiny feather and an exotic fan")
  SpellComponent.create!(spell_id: sp147.id, component_id: divine_focus.id, item: nil)
  # wind_wall_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager_spell_list.id, spell_id: sp147.id, spell_level: 3)
  wind_wall_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp147.id, spell_level: 3)
  # wind_wall_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp147.id, spell_level: 3)
  wind_wall_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp147.id, spell_level: 3)
  wind_wall_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp147.id, spell_level: 2)
  # wind_wall_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp147.id, spell_level: 3)
  wind_wall_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp147.id, spell_level: 3)
  # wind_wall_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: sp147.id, spell_level: 3)
  wind_wall_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp147.id, spell_level: 2)

  FeatureCastableSpell.create!(feature_id: air_domain3_feature.id, spell_id: sp147.id, added_to_known_spells: false, applicable_spell_level: 2, bonus_spell_slot_option: true)

sp148 = Spell.create!(name: "Gaseous Form", description: "The subject and all its gear become insubstantial, misty, and translucent. Its material armor (including natural armor) becomes worthless, though its size, Dexterity, deflection bonuses, and armor bonuses from force effects still apply. The subject gains DR 10/magic and becomes immune to poison, sneak attacks, and critical hits. It can’t attack or cast spells with verbal, somatic, material, or focus components while in gaseous form. This does not rule out the use of certain spells that the subject may have prepared using the feats Silent Spell, Still Spell, and Eschew Materials. The subject also loses supernatural abilities while in gaseous form. If it has a touch spell ready to use, that spell is discharged harmlessly when the gaseous form spell takes effect.

A gaseous creature can’t run, but it can fly at a speed of 10 feet and automatically succeeds on all Fly skill checks. It can pass through small holes or narrow openings, even mere cracks, with all it was wearing or holding in its hands, as long as the spell persists. The creature is subject to the effects of wind, and it can’t enter water or other liquid. It also can’t manipulate objects or activate items, even those carried along with its gaseous form. Continuously active items remain active, though in some cases their effects may be moot.", target: "willing corporeal creature touched", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "2 min./level (D)", time: 2, unit_of_time: "minutes", increase_per_level: 2, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp148.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp148.id, component_id: material.id, item: "a bit of gauze and a wisp of smoke")
  SpellComponent.create!(spell_id: sp148.id, component_id: divine_focus.id, item: nil)
  gaseous_form_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp148.id, spell_level: 3)
  gaseous_form_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp148.id, spell_level: 3)
  gaseous_form_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp148.id, spell_level: 3)
  # gaseous_form_medium = SpellListSpell.create!(spell_list_id: medium_spell_list.id, spell_id: sp148.id, spell_level: 3)
  # gaseous_form_occultist = SpellListSpell.create!(spell_list_id: occultist_spell_list.id, spell_id: sp148.id, spell_level: 3)
  # gaseous_form_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: sp148.id, spell_level: 3)
  gaseous_form_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp148.id, spell_level: 3)
  # gaseous_form_spiritualist = SpellListSpell.create!(spell_list_id: spiritualist_spell_list.id, spell_id: sp148.id, spell_level: 3)

  FeatureCastableSpell.create!(feature_id: air_domain3_feature.id, spell_id: sp148.id, added_to_known_spells: false, applicable_spell_level: 3, bonus_spell_slot_option: true)

sp149 = Spell.create!(name: "Air Walk", description: "The subject can tread on air as if walking on solid ground. Moving upward is similar to walking up a hill. The maximum upward or downward angle possible is 45 degrees, at a rate equal to half the air walker’s normal speed.

A strong wind (21+ miles per hour) can push the subject along or hold it back. At the end of a creature’s turn each round, the wind blows the air walker 5 feet for each 5 miles per hour of wind speed. The creature may be subject to additional penalties in exceptionally strong or turbulent winds, such as loss of control over movement or physical damage from being buffeted about.

Should the spell duration expire while the subject is still aloft, the magic fails slowly. The subject floats downward 60 feet per round for 1d6 rounds. If it reaches the ground in that amount of time, it lands safely. If not, it falls the rest of the distance, taking 1d6 points of damage per 10 feet of fall. Since dispelling a spell effectively ends it, the subject also descends in this way if the air walk spell is dispelled, but not if it is negated by an antimagic field.

You can cast air walk on a specially trained mount so it can be ridden through the air. You can train a mount to move with the aid of air walk (counts as a trick; see Handle Animal skill) with 1 week of work and a DC 25 Handle Animal check.", target: "creature (Gargantuan or smaller) touched", saving_throw: "none", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "10 min./level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp149.id, subschool_id: air.id)
  SpellComponent.create!(spell_id: sp149.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp149.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp149.id, component_id: divine_focus.id, item: nil)
  air_walk_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp149.id, spell_level: 4)
  air_walk_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp149.id, spell_level: 4)
  # air_walk_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp149.id, spell_level: 4)

  FeatureCastableSpell.create!(feature_id: air_domain3_feature.id, spell_id: sp149.id, added_to_known_spells: false, applicable_spell_level: 4, bonus_spell_slot_option: true)

sp150 = Spell.create!(name: "Control Winds", description: "You alter wind force in the area surrounding you. You can make the wind blow in a certain direction or manner, increase its strength, or decrease its strength. The new wind direction and strength persist until the spell ends or until you choose to alter your handiwork, which requires concentration. You may create an “eye” of calm air up to 80 feet in diameter at the center of the area if you so desire, and you may choose to limit the area to any cylindrical area less than your full limit.

Wind Direction: You may choose one of four basic wind patterns to function over the spell’s area.

A downdraft blows from the center outward in equal strength in all directions.
An updraft blows from the outer edges in toward the center in equal strength from all directions, veering upward before impinging on the eye in the center.
Rotation causes the winds to circle the center in clockwise or counterclockwise fashion.
A blast simply causes the winds to blow in one direction across the entire area from one side to the other.
Wind Strength: For every three caster levels, you can increase or decrease wind strength by one level. Each round on your turn, a creature in the wind must make a Fortitude save or suffer the effect of being in the windy area. See Environment for more details.

Strong winds (21+ mph) make sailing difficult.

A severe wind (31+ mph) causes minor ship and building damage.

A windstorm (51+ mph) drives most flying creatures from the skies, uproots small trees, knocks down light wooden structures, tears off roofs, and endangers ships.

Hurricane force winds (75+ mph) destroy wooden buildings, uproot large trees, and cause most ships to founder.

A tornado (175+ mph) destroys all nonfortified buildings and often uproots large trees.", target: "40 ft./level radius cylinder 40 ft. high", saving_throw: "Fortitude", spell_resistance: false, action_id: standard.id, spell_range_id: forty_feet_per_level.id, magic_school_id: transmutation.id, duration: "10 min./level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp150.id, subschool_id: air.id)
  SpellComponent.create!(spell_id: sp150.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp150.id, component_id: somatic.id, item: nil)
  # control_winds_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp150.id, spell_level: 5)
  # control_winds_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp150.id, spell_level: 5)

  FeatureCastableSpell.create!(feature_id: air_domain3_feature.id, spell_id: sp150.id, added_to_known_spells: false, applicable_spell_level: 5, bonus_spell_slot_option: true)

  print "150 Spells Created \r"

sp151 = Spell.create!(name: "Chain Lightning", description: "This spell creates an electrical discharge that begins as a single stroke commencing from your fingertips. Unlike lightning bolt, chain lightning strikes one object or creature initially, then arcs to other targets.

The bolt deals 1d6 points of electricity damage per caster level (maximum 20d6) to the primary target. After it strikes, lightning can arc to a number of secondary targets equal to your caster level (maximum 20). The secondary bolts each strike one target and deal as much damage as the primary bolt.

Each target can attempt a Reflex saving throw for half damage. The Reflex DC to halve the damage of the secondary bolts is 2 lower than the DC to halve the damage of the primary bolt. You choose secondary targets as you like, but they must all be within 30 feet of the primary target, and no target can be struck more than once. You can choose to affect fewer secondary targets than the maximum.", target: "one primary target, plus one secondary target/level (each of which must be within 30 ft. of the primary target)", saving_throw: "Reflex", spell_resistance: true, action_id: standard.id, spell_range_id: long.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp151.id, subschool_id: electricity.id)
  SpellComponent.create!(spell_id: sp151.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp151.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp151.id, component_id: focus.id, item: "a bit of fur; a piece of amber, glass or a crystal rod; plus one silver pin per caster level")
  chain_lightning_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp151.id, spell_level: 6)
  chain_lightning_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp151.id, spell_level: 6)
  chain_lightning_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp151.id, spell_level: 7)

  FeatureCastableSpell.create!(feature_id: air_domain3_feature.id, spell_id: sp151.id, added_to_known_spells: false, applicable_spell_level: 6, bonus_spell_slot_option: true)

sp152 = Spell.create!(name: "Elemental Body I", description: "When you cast this spell, you can assume the form of a Small air elemental, Small earth elemental, Small fire elemental, or Small water elemental. The abilities you gain depend upon the type of elemental into which you change. Elemental abilities based on size, such as burn, vortex, and whirlwind, use the size of the elemental you transform into to determine their effect.

Air elemental: If the form you take is that of a Small air elemental, you gain a +2 size bonus to your Dexterity and a +2 natural armor bonus. You also gain fly 60 feet (perfect), darkvision 60 feet, and the ability to create a whirlwind.
Earth elemental: If the form you take is that of a Small earth elemental, you gain a +2 size bonus to your Strength and a +4 natural armor bonus. You also gain darkvision 60 feet and the ability to earth glide.
Fire elemental: If the form you take is that of a Small fire elemental, you gain a +2 size bonus to your Dexterity and a +2 natural armor bonus. You gain darkvision 60 feet, resist fire 20, vulnerability to cold, and the burn ability.
Water elemental: If the form you take is that of a Small water elemental, you gain a +2 size bonus to your Constitution and a +4 natural armor bonus. You also gain swim 60 feet, darkvision 60 feet, the ability to create a vortex, and the ability to breathe water.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: transmutation.id, duration: "1 min/level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp152.id, subschool_id: polymorph.id)
  SpellComponent.create!(spell_id: sp152.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp152.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp152.id, component_id: material.id, item: "the element you plan to assume")
  elemenal_body_I_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp152.id, spell_level: 4)
  # elemenal_body_I_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager_spell_list.id, spell_id: sp152.id, spell_level: 4)
  elemenal_body_I_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp152.id, spell_level: 4)
  elemenal_body_I_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp152.id, spell_level: 4)

sp153 = Spell.create!(name: "Elemental Body II", description: "This spell functions as elemental body I, except that it also allows you to assume the form of a Medium air elemental, Medium earth elemental, Medium fire elemental, or Medium water elemental. The abilities you gain depend upon the elemental.

Air elemental: As elemental body I except that you gain a +4 size bonus to your Dexterity and a +3 natural armor bonus.
Earth elemental: As elemental body I except that you gain a +4 size bonus to your Strength and a +5 natural armor bonus.
Fire elemental: As elemental body I except that you gain a +4 size bonus to your Dexterity and a +3 natural armor bonus.
Water elemental: As elemental body I except that you gain a +4 size bonus to your Constitution and a +5 natural armor bonus.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: transmutation.id, duration: "1 min/level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp153.id, subschool_id: polymorph.id)
  SpellComponent.create!(spell_id: sp153.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp153.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp153.id, component_id: material.id, item: "the element you plan to assume")
  elemenal_body_II_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp153.id, spell_level: 5)
  elemenal_body_II_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp153.id, spell_level: 5)
  elemenal_body_II_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp153.id, spell_level: 5)

sp154 = Spell.create!(name: "Elemental Body III", description: "This spell functions as elemental body II, except that it also allows you to assume the form of a Large air elemental, large earth elemental, large fire elemental, or large water elemental. The abilities you gain depend upon the type of elemental into which you change. You are also immune to bleed damage, critical hits, and sneak attacks while in elemental form.

Air elemental: As elemental body I except that you gain a +2 size bonus to your Strength, +4 size bonus to your Dexterity, and a +4 natural armor bonus.
Earth elemental: As elemental body I except that you gain a +6 size bonus to your Strength, a -2 penalty on your Dexterity, a +2 size bonus to your Constitution, and a +6 natural armor bonus.
Fire elemental: As elemental body I except that you gain a +4 size bonus to your Dexterity, a +2 size bonus to your Constitution, and a +4 natural armor bonus.
Water elemental: As elemental body I except that you gain a +2 size bonus to your Strength, a -2 penalty on your Dexterity, a +6 size bonus to your Constitution, and a +6 natural armor bonus.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: transmutation.id, duration: "1 min/level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp154.id, subschool_id: polymorph.id)
  SpellComponent.create!(spell_id: sp154.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp154.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp154.id, component_id: material.id, item: "the element you plan to assume")
  elemenal_body_III_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp154.id, spell_level: 6)
  elemenal_body_III_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp154.id, spell_level: 6)
  elemenal_body_III_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp154.id, spell_level: 6)

sp155 = Spell.create!(name: "Elemental Body IV", description: "This spell functions as elemental body III, except that it also allows you to assume the form of a Huge air elemental, Huge earth elemental, Huge fire elemental, or Huge water elemental. The abilities you gain depend upon the type of elemental into which you change. You are also immune to bleed damage, critical hits, and sneak attacks while in elemental form and gain DR 5/—.

Air elemental: As elemental body I except that you gain a +4 size bonus to your Strength, +6 size bonus to your Dexterity, and a +4 natural armor bonus. You also gain fly 120 feet (perfect).
Earth elemental: As elemental body I except that you gain a +8 size bonus to your Strength, a -2 penalty on your Dexterity, a +4 size bonus to your Constitution, and a +6 natural armor bonus.
Fire elemental: As elemental body I except that you gain a +6 size bonus to your Dexterity, a +4 size bonus to your Constitution, and a +4 natural armor bonus.
Water elemental: As elemental body I except that you gain a +4 size bonus to your Strength, a -2 penalty on your Dexterity, a +8 size bonus to your Constitution, and a +6 natural armor bonus. You also gain swim 120 feet.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: transmutation.id, duration: "1 min/level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp155.id, subschool_id: polymorph.id)
  SpellComponent.create!(spell_id: sp155.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp155.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp155.id, component_id: material.id, item: "the element you plan to assume")
  elemenal_body_IV_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp155.id, spell_level: 7)

  FeatureCastableSpell.create!(feature_id: air_domain3_feature.id, spell_id: sp155.id, added_to_known_spells: false, applicable_spell_level: 7, bonus_spell_slot_option: true)

sp156 = Spell.create!(name: "Whirlwind", description: "This spell creates a powerful cyclone of raging wind that moves through the air, along the ground, or over water at a speed of 60 feet per round. You can concentrate on controlling the cyclone’s every movement or specify a simple program. Directing the cyclone’s movement or changing its programmed movement is a standard action for you. The cyclone always moves during your turn. If the cyclone exceeds the spell’s range, it moves in a random, uncontrolled fashion for 1d3 rounds and then dissipates. (You can’t regain control of the cyclone, even if it comes back within range.)

Any Large or smaller creature that comes in contact with the spell effect must succeed on a Reflex save or take 3d6 points of damage. A Medium or smaller creature that fails its first save must succeed on a second one or be picked up bodily by the cyclone and held suspended in its powerful winds, taking 1d8 points of damage each round on your turn with no save allowed. You may direct the cyclone to eject any carried creatures whenever you wish, depositing the hapless souls wherever the cyclone happens to be when they are released.", target: "cyclone 10 ft. wide at base, 30 ft. wide at top, and 30 ft. tall", saving_throw: "Reflex", spell_resistance: true, action_id: standard.id, spell_range_id: long.id, magic_school_id: evocation.id, duration: "1 round/level (D)", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp156.id, subschool_id: air.id)
  SpellComponent.create!(spell_id: sp156.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp156.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp156.id, component_id: divine_focus.id, item: nil)
  # whirlwind_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp156.id, spell_level: 8)
  # whirlwind_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp156.id, spell_level: 8)

  FeatureCastableSpell.create!(feature_id: air_domain3_feature.id, spell_id: sp156.id, added_to_known_spells: false, applicable_spell_level: 8, bonus_spell_slot_option: true)

sp157 = Spell.create!(name: "Elemental Swarm", description: "This spell opens a portal to an Elemental Plane and summons elementals from it. A druid can choose any plane (Air, Earth, Fire, or Water); a cleric opens a portal to the plane matching his domain.

When the spell is complete, 2d4 Large elementals appear. Ten minutes later, 1d4 Huge elementals appear. Ten minutes after that, one greater elemental appears. Each elemental has maximum hit points per HD. Once these creatures appear, they serve you for the duration of the spell.

The elementals obey you explicitly and never attack you, even if someone else manages to gain control over them. You do not need to concentrate to maintain control over the elementals. You can dismiss them singly or in groups at any time.

When you use a summoning spell to summon an air, earth, fire, or water creature, it is a spell of that type.", target: "two or more summoned creatures, no two of which can be more than 30 ft. apart", saving_throw: "none", spell_resistance: false, action_id: ten.id, spell_range_id: medium.id, magic_school_id: conjuration.id, duration: "10 min./level (D)", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp157.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp157.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp157.id, component_id: somatic.id, item: nil)
  # elemental_swarm_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp157.id, spell_level: 9)
  # elemental_swarm_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp157.id, spell_level: 9)
  elemental_swarm_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp157.id, spell_level: 9)

  FeatureCastableSpell.create!(feature_id: air_domain3_feature.id, spell_id: sp157.id, added_to_known_spells: false, applicable_spell_level: 9, bonus_spell_slot_option: true)

sp158 = Spell.create!(name: "Calm Animals", description: "This spell soothes and quiets animals, rendering them docile and harmless. Only ordinary animals (those with Intelligence scores of 1 or 2) can be affected by this spell. All the subjects must be of the same kind, and no two may be more than 30 feet apart. The maximum number of HD of animals you can affect is equal to 2d4 + caster level.

The affected creatures remain where they are and do not attack or flee. They are not helpless and defend themselves normally if attacked. Any threat breaks the spell on the threatened creatures.", target: "animals within 30 ft. of each other", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: enchantment.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp158.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: sp158.id, subschool_id: emotion.id)
  SpellSubschool.create!(spell_id: sp158.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp158.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp158.id, component_id: somatic.id, item: nil)
  # calm_animals_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp158.id, spell_level: 1)
  # calm_animals_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: sp158.id, spell_level: 1)
  calm_animals_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp158.id, spell_level: 1)
  # calm_animals_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp158.id, spell_level: 1)

  FeatureCastableSpell.create!(feature_id: animal_domain4_feature.id, spell_id: sp158.id, added_to_known_spells: false, applicable_spell_level: 1, bonus_spell_slot_option: true)

sp159 = Spell.create!(name: "Hold Animal", description: "This spell functions like hold person, except that it affects an animal instead of a humanoid.", target: "one animal", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: medium.id, magic_school_id: enchantment.id, duration: "1 round/level (D)", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp159.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: sp159.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp159.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp159.id, component_id: somatic.id, item: nil)
  # hold_animal_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp159.id, spell_level: 2)
  # hold_animal_mesmerist = SpellListSpell.create!(spell_list_id: mesmerist_spell_list.id, spell_id: sp159.id, spell_level: 2)
  # hold_animal_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: sp159.id, spell_level: 2)
  hold_animal_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp159.id, spell_level: 2)

  FeatureCastableSpell.create!(feature_id: animal_domain4_feature.id, spell_id: sp159.id, added_to_known_spells: false, applicable_spell_level: 2, bonus_spell_slot_option: true)

sp160 = Spell.create!(name: "Dominate Animal", description: "This spell allows you to enchant the targeted animal and direct it with simple commands such as “Attack,” “Run,” and “Fetch.” Suicidal or self-destructive commands (including an order to attack a creature two or more size categories larger than the dominated animal) are simply ignored.

Dominate animal establishes a mental link between you and the subject creature. The animal can be directed by silent mental command as long as it remains in range. You need not see the creature to control it. You do not receive direct sensory input from the creature, but you know what it is experiencing. Because you are directing the animal with your own intelligence, it may be able to undertake actions normally beyond its own comprehension. You need not concentrate exclusively on controlling the creature unless you are trying to direct it to do something it normally couldn’t do. Changing your instructions or giving a dominated creature a new command is the equivalent of redirecting a spell, so it is a move action.", target: "one animal", saving_throw: "Will", spell_resistance: true, action_id: full_round.id, spell_range_id: close.id, magic_school_id: enchantment.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp160.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: sp160.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp160.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp160.id, component_id: somatic.id, item: nil)
  # dominate_animal_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp160.id, spell_level: 3)
  # dominate_animal_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp160.id, spell_level: 3)

  FeatureCastableSpell.create!(feature_id: animal_domain4_feature.id, spell_id: sp160.id, added_to_known_spells: false, applicable_spell_level: 3, bonus_spell_slot_option: true)

  print "160 Spells Created \r"

sp161 = Spell.create!(name: "Summon Nature's Ally I", description: "This spell summons to your side a natural creature (typically an animal, fey, magical beast, outsider with the elemental subtype, or a giant). The summoned ally appears where you designate and acts immediately, on your turn. It attacks your opponents to the best of its ability. If you can communicate with the creature, you can direct it not to attack, to attack particular enemies, or to perform other actions as you command.

A summoned monster cannot summon or otherwise conjure another creature, nor can it use any teleportation or planar travel abilities. Creatures cannot be summoned into an environment that cannot support them. Creatures summoned using this spell cannot use spells or spell-like abilities that duplicate spells that have expensive material components (such as wish).

The spell conjures one of the creatures from the 1st Level list on Table: Nature’s Ally. You choose which kind of creature to summon, and you can change that choice each time you cast the spell. All the creatures on the table are neutral unless otherwise noted.

When you use a summoning spell to summon a creature with an alignment or elemental subtype, it is a spell of that type. All creatures summoned with this spell without alignment subtypes have an alignment that matches yours, regardless of their usual alignment. Summoning these creatures makes the summoning spell’s type match your alignment.", target: "one summoned creature", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 round/level (D)", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp161.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp161.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp161.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp161.id, component_id: divine_focus.id, item: nil)
  # summon_natures_ally_I_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp161.id, spell_level: 1)
  summon_natures_ally_I_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp161.id, spell_level: 1)
  # summon_natures_ally_I_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp161.id, spell_level: 1)

sp162 = Spell.create!(name: "Summon Nature's Ally II", description: "This spell functions as summon nature’s ally I, except that you summon one 2nd-level creature or 1d3 1st-level creatures of the same kind.", target: "one summoned creature", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 round/level (D)", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp162.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp162.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp162.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp162.id, component_id: divine_focus.id, item: nil)
  # summon_natures_ally_II_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp162.id, spell_level: 2)
  summon_natures_ally_II_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp162.id, spell_level: 2)
  # summon_natures_ally_II_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp162.id, spell_level: 2)

sp163 = Spell.create!(name: "Summon Nature's Ally III", description: "This spell functions like summon nature’s ally I, except that you can summon one 3rd-level creature, 1d3 2nd-level creatures of the same kind, or 1d4+1 1st-level creatures of the same kind.", target: "one summoned creature", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 round/level (D)", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp163.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp163.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp163.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp163.id, component_id: divine_focus.id, item: nil)
  # summon_natures_ally_III_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp163.id, spell_level: 3)
  summon_natures_ally_III_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp163.id, spell_level: 3)
  # summon_natures_ally_III_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp163.id, spell_level: 3)

sp164 = Spell.create!(name: "Summon Nature's Ally IV", description: "This spell functions like summon nature’s ally I, except that you can summon one 4th-level creature, 1d3 3rd-level creatures of the same kind, or 1d4+1 lower-level creatures of the same kind.", target: "one summoned creature", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 round/level (D)", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp164.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp164.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp164.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp164.id, component_id: divine_focus.id, item: nil)
  # summon_natures_ally_IV_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp164.id, spell_level: 4)
  summon_natures_ally_IV_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp164.id, spell_level: 4)
  # summon_natures_ally_IV_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp164.id, spell_level: 4)

  FeatureCastableSpell.create!(feature_id: animal_domain4_feature.id, spell_id: sp164.id, added_to_known_spells: false, applicable_spell_level: 4, bonus_spell_slot_option: true)

sp165 = Spell.create!(name: "Summon Nature's Ally V", description: "This spell functions like summon nature’s ally I, except that you can summon one 5th-level creature, 1d3 4th-level creatures of the same kind, or 1d4+1 lower-level creatures of the same kind.", target: "one summoned creature", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 round/level (D)", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp165.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp165.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp165.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp165.id, component_id: divine_focus.id, item: nil)
  # summon_natures_ally_V_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp165.id, spell_level: 5)
  # summon_natures_ally_V_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp165.id, spell_level: 5)

sp166 = Spell.create!(name: "Summon Nature's Ally VI", description: "This spell functions like summon nature’s ally I, except that you can summon one 6th-level creature, 1d3 5th-level creatures of the same kind, or 1d4+1 lower-level creatures of the same kind.", target: "one summoned creature", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 round/level (D)", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp166.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp166.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp166.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp166.id, component_id: divine_focus.id, item: nil)
  # summon_natures_ally_VI_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp166.id, spell_level: 6)
  # summon_natures_ally_VI_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp166.id, spell_level: 6)

sp167 = Spell.create!(name: "Summon Nature's Ally VII", description: "This spell functions like summon nature’s ally I, except that you can summon one 7th-level creature, 1d3 6th-level creatures of the same kind, or 1d4+1 lower-level creatures of the same kind.", target: "one summoned creature", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 round/level (D)", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp167.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp167.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp167.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp167.id, component_id: divine_focus.id, item: nil)
  # summon_natures_ally_VII_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp167.id, spell_level: 7)
  # summon_natures_ally_VII_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp167.id, spell_level: 7)

sp168 = Spell.create!(name: "Summon Nature's Ally VIII", description: "This spell functions like summon nature’s ally I, except that you can summon one 8th-level creature, 1d3 7th-level creatures of the same kind, or 1d4+1 lower-level creatures of the same kind.", target: "one summoned creature", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 round/level (D)", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp168.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp168.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp168.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp168.id, component_id: divine_focus.id, item: nil)
  # summon_natures_ally_VIII_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp168.id, spell_level: 8)
  # summon_natures_ally_VIII_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp168.id, spell_level: 8)

  FeatureCastableSpell.create!(feature_id: animal_domain4_feature.id, spell_id: sp168.id, added_to_known_spells: false, applicable_spell_level: 8, bonus_spell_slot_option: true)

sp169 = Spell.create!(name: "Summon Nature's Ally IX", description: "This spell functions like summon nature’s ally I, except that you can summon one 9th-level creature, 1d3 8th-level creatures of the same kind, or 1d4+1 lower-level creatures of the same kind.", target: "one summoned creature", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 round/level (D)", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp169.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp169.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp169.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp169.id, component_id: divine_focus.id, item: nil)
  # summon_natures_ally_IX_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp169.id, spell_level: 9)
  # summon_natures_ally_IX_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp169.id, spell_level: 9)

sp170 = Spell.create!(name: "Beast Shape I", description: "When you cast this spell, you can assume the form of any Small or Medium creature of the animal type. If the form you assume has any of the following abilities, you gain the listed ability: climb 30 feet, fly 30 feet (average maneuverability), swim 30 feet, darkvision 60 feet, low-light vision, and scent.

Small animal: If the form you take is that of a Small animal, you gain a +2 size bonus to your Dexterity and a +1 natural armor bonus.

Medium animal: If the form you take is that of a Medium animal, you gain a +2 size bonus to your Strength and a +2 natural armor bonus.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: transmutation.id, duration: "1 min./level (D)", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp170.id, subschool_id: polymorph.id)
  SpellComponent.create!(spell_id: sp170.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp170.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp170.id, component_id: material.id, item: "a piece of the creature whose form you plan to assume")
  beast_shape_I_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp170.id, spell_level: 3)
  # beast_shape_I_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager_spell_list.id, spell_id: sp170.id, spell_level: 3)
  beast_shape_I_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp170.id, spell_level: 3)
  beast_shape_I_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp170.id, spell_level: 3)

  print "170 Spells Created \r"

sp171 = Spell.create!(name: "Beast Shape II", description: "This spell functions as beast shape I, except that it also allows you to assume the form of a Tiny or Large creature of the animal type. If the form you assume has any of the following abilities, you gain the listed ability: climb 60 feet, fly 60 feet (good maneuverability), swim 60 feet, darkvision 60 feet, low-light vision, scent, grab, pounce, and trip.

Tiny animal: If the form you take is that of a Tiny animal, you gain a +4 size bonus to your Dexterity, a -2 penalty to your Strength, and a +1 natural armor bonus.

Large animal: If the form you take is that of a Large animal, you gain a +4 size bonus to your Strength, a -2 penalty to your Dexterity, and a +4 natural armor bonus.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: transmutation.id, duration: "1 min./level (D)", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp171.id, subschool_id: polymorph.id)
  SpellComponent.create!(spell_id: sp171.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp171.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp171.id, component_id: material.id, item: "a piece of the creature whose form you plan to assume")
  beast_shape_II_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp171.id, spell_level: 4)
  # beast_shape_II_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager_spell_list.id, spell_id: sp171.id, spell_level: 4)
  beast_shape_II_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp171.id, spell_level: 4)
  beast_shape_II_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp171.id, spell_level: 4)

sp172 = Spell.create!(name: "Beast Shape III", description: "This spell functions as beast shape II, except that it also allows you to assume the form of a Diminutive or Huge creature of the animal type. This spell also allows you to take on the form of a Small or Medium creature of the magical beast type. If the form you assume has any of the following abilities, you gain the listed ability: burrow 30 feet, climb 90 feet, fly 90 feet (good maneuverability), swim 90 feet, blindsense 30 feet, darkvision 60 feet, low-light vision, scent, constrict, ferocity, grab, jet, poison, pounce, rake, trample, trip, and web.

Diminutive animal: If the form you take is that of a Diminutive animal, you gain a +6 size bonus to your Dexterity, a -4 penalty to your Strength, and a +1 natural armor bonus.

Huge animal: If the form you take is that of a Huge animal, you gain a +6 size bonus to your Strength, a -4 penalty to your Dexterity, and a +6 natural armor bonus.

Small magical beast: If the form you take is that of a Small magical beast, you gain a +4 size bonus to your Dexterity, and a +2 natural armor bonus.

Medium magical beast: If the form you take is that of a Medium magical beast, you gain a +4 size bonus to your Strength, and a +4 natural armor bonus.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: transmutation.id, duration: "1 min./level (D)", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp172.id, subschool_id: polymorph.id)
  SpellComponent.create!(spell_id: sp172.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp172.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp172.id, component_id: material.id, item: "a piece of the creature whose form you plan to assume")
  beast_shape_III_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp172.id, spell_level: 5)
  beast_shape_III_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp172.id, spell_level: 5)
  beast_shape_III_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp172.id, spell_level: 5)

  FeatureCastableSpell.create!(feature_id: animal_domain4_feature.id, spell_id: sp172.id, added_to_known_spells: false, applicable_spell_level: 5, bonus_spell_slot_option: true)

sp173 = Spell.create!(name: "Beast Shape IV", description: "This spell functions as beast shape III except that it also allows you to assume the form of a Tiny or Large creature of the magical beast type. If the form you assume has any of the following abilities, you gain the listed ability: burrow 60 feet, climb 90 feet, fly 120 feet (good maneuverability), swim 120 feet, blindsense 60 feet, darkvision 90 feet, low-light vision, scent, tremorsense 60 feet, breath weapon, constrict, ferocity, grab, jet, poison, pounce, rake, rend, roar, spikes, trample, trip, and web. If the creature has immunity or resistance to any elements, you gain resistance 20 to those elements. If the creature has vulnerability to an element, you gain that vulnerability.

Tiny magical beast: If the form you take is that of a Tiny magical beast, you gain a -2 penalty to your Strength, a +8 size bonus to your Dexterity, and a +3 natural armor bonus.

Large magical beast: If the form you take is that of a Large magical beast, you gain a +6 size bonus to your Strength, a -2 penalty on your Dexterity, a +2 size bonus to your Constitution, and a +6 natural armor bonus.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: transmutation.id, duration: "1 min./level (D)", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp173.id, subschool_id: polymorph.id)
  SpellComponent.create!(spell_id: sp173.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp173.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp173.id, component_id: material.id, item: "a piece of the creature whose form you plan to assume")
  beast_shape_IV_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp173.id, spell_level: 5)
  beast_shape_IV_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp173.id, spell_level: 5)
  beast_shape_IV_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp173.id, spell_level: 5)

sp174 = Spell.create!(name: "Antilife Shell", description: "You bring into being a mobile, hemispherical energy field that prevents the entrance of most types of living creatures.

The effect hedges out animals, aberrations, dragons, fey, giants, humanoids, magical beasts, monstrous humanoids, oozes, plants, and vermin, but not constructs, elementals, outsiders, or undead.

This spell may be used only defensively, not aggressively. Forcing an abjuration barrier against creatures that the spell keeps at bay collapses the barrier.", target: "10-ft.-radius emanation, centered on you", saving_throw: "none", spell_resistance: true, action_id: full_round.id, spell_range_id: ten_feet.id, magic_school_id: abjuration.id, duration: "1 min./level (D)", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp174.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp174.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp174.id, component_id: divine_focus.id, item: nil)
  antilife_shell_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp174.id, spell_level: 6)
  # antilife_shell_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp174.id, spell_level: 6)
  # antilife_shell_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp174.id, spell_level: 6)

  FeatureCastableSpell.create!(feature_id: animal_domain4_feature.id, spell_id: sp174.id, added_to_known_spells: false, applicable_spell_level: 6, bonus_spell_slot_option: true)

sp175 = Spell.create!(name: "Animal Shapes", description: "As beast shape III, except you change the form of up to one willing creature per caster level into an animal of your choice; the spell has no effect on unwilling creatures. All creatures must take the same kind of animal form. Recipients remain in the animal form until the spell expires or until you dismiss it for all recipients. In addition, an individual subject may choose to resume its normal form as a full-round action; doing so ends the spell for that subject alone.", target: "up to one willing creature per level, all within 30 ft. of each other", saving_throw: "none", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "1 hour/level (D)", time: 1, unit_of_time: "hour", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp175.id, subschool_id: polymorph.id)
  SpellComponent.create!(spell_id: sp175.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp175.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp175.id, component_id: divine_focus.id, item: nil)
  # animal_shapes_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp175.id, spell_level: 8)
  # animal_shapes_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp175.id, spell_level: 8)

  FeatureCastableSpell.create!(feature_id: animal_domain4_feature.id, spell_id: sp175.id, added_to_known_spells: false, applicable_spell_level: 7, bonus_spell_slot_option: true)

sp176 = Spell.create!(name: "Shapechange", description: "This spell allows you to take the form of a wide variety of creatures. This spell can function as alter self, beast shape IV, elemental body IV, form of the dragon III, giant form II, and plant shape III depending on what form you take. You can change form once each round as a free action. The change takes place either immediately before your regular action or immediately after it, but not during the action.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: transmutation.id, duration: "10 min./level (D)", time: 10, unit_of_time: "min", increase_per_level: 10, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp176.id, subschool_id: polymorph.id)
  SpellComponent.create!(spell_id: sp176.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp176.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp176.id, component_id: focus.id, item: "jade circlet worth 1500 gp")
  # animal_shapes_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp176.id, spell_level: 9)
  # animal_shapes_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp176.id, spell_level: 9)

  FeatureCastableSpell.create!(feature_id: animal_domain4_feature.id, spell_id: sp176.id, added_to_known_spells: false, applicable_spell_level: 9, bonus_spell_slot_option: true)

sp177 = Spell.create!(name: "Speak with Animals", description: "You can ask questions of and receive answers from animals, but the spell doesn't make them any more friendly than normal. Wary and cunning animals are likely to be terse and evasive, while the more stupid ones make inane comments. If an animal is friendly towards you, it may do some favor or service for you.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: divination.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp177.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp177.id, component_id: somatic.id, item: nil)
  speak_with_animals_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp177.id, spell_level: 3)
  # speak_with_animals_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp177.id, spell_level: 1)
  # speak_with_animals_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: sp177.id, spell_level: 2)
  speak_with_animals_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp177.id, spell_level: 1)

  FeatureCastableSpell.create!(feature_id: animal_domain2_feature.id, spell_id: sp177.id, effective_level_based_on_feature_level: true, added_to_known_spells: false, applicable_spell_level: 1, bonus_spell_slot_option: false)

sp178 = Spell.create!(name: "Animate Rope", description: "You can animate a nonliving rope-like object. The maximum length assumes a rope with a 1-inch diameter. Reduce the maximum length by 50% for every additional inch of thickness, and increase it by 50% for each reduction of the rope’s diameter by half.

The possible commands are “coil” (form a neat, coiled stack), “coil and knot,” “loop,” “loop and knot,” “tie and knot,” and the opposites of all of the above (“uncoil,” and so forth). You can give one command each round as a move action, as if directing an active spell.

The rope can enwrap only a creature or an object within 1 foot of it – it does not snake outward – so it must be thrown near the intended target. Doing so requires a successful ranged touch attack roll (range increment 10 feet). A typical 1-inch-diameter hemp rope has 2 hit points, AC 10, and requires a DC 23 Strength check to burst it. The rope does not deal damage, but it can be used as a trip line or to cause a single opponent that fails a Reflex saving throw to become entangled. A creature capable of spellcasting that is bound by this spell must make a concentration check with a DC of 15 + the spell’s level to cast a spell. An entangled creature can slip free with a DC 20 Escape Artist check.

The rope itself and any knots tied in it are not magical.

The spell cannot affect objects carried or worn by a creature.", target: "one rope-like object, length up to 50 ft. + 5 ft./level", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: medium.id, magic_school_id: transmutation.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp178.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp178.id, component_id: somatic.id, item: nil)
  animate_rope_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp178.id, spell_level: 1)
  # animate_rope_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: sp178.id, spell_level: 1)
  animate_rope_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp178.id, spell_level: 1)
  # NOT ACCURATE, HARDCODED
  animate_rope_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp178.id, spell_level: 1)

  FeatureCastableSpell.create!(feature_id: artifice_domain3_feature.id, spell_id: sp178.id, added_to_known_spells: false, applicable_spell_level: 1, bonus_spell_slot_option: true)

sp179 = Spell.create!(name: "Wood Shape", description: "Wood shape enables you to form one existing piece of wood into any shape that suits your purpose. While it is possible to make crude coffers, doors, and so forth, fine detail isn’t possible. There is a 30% chance that any shape that includes moving parts simply doesn’t work.", target: "one touched piece of wood no larger than 10 cu. ft. + 1 cu. ft./level", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp179.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp179.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp179.id, component_id: divine_focus.id, item: nil)
  # wood_shape_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp179.id, spell_level: 2)
  # wood_shape_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp179.id, spell_level: 2)

  FeatureCastableSpell.create!(feature_id: artifice_domain3_feature.id, spell_id: sp179.id, added_to_known_spells: false, applicable_spell_level: 2, bonus_spell_slot_option: true)

sp180 = Spell.create!(name: "Stone Shape", description: "You can form an existing piece of stone into any shape that suits your purpose. While it’s possible to make crude coffers, doors, and so forth with stone shape, fine detail isn’t possible. There is a 30% chance that any shape including moving parts simply doesn’t work.", target: "stone or stone object touched, up to 10 cu. ft. + 1 cu. ft./level", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp180.id, subschool_id: earth.id)
  SpellComponent.create!(spell_id: sp180.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp180.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp180.id, component_id: material.id, item: "soft clay")
  SpellComponent.create!(spell_id: sp180.id, component_id: divine_focus.id, item: nil)
  stone_shape_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp180.id, spell_level: 3)
  # stone_shape_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp180.id, spell_level: 3)
  # stone_shape_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp180.id, spell_level: 3)
  stone_shape_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp180.id, spell_level: 4)

  FeatureCastableSpell.create!(feature_id: artifice_domain3_feature.id, spell_id: sp180.id, added_to_known_spells: false, applicable_spell_level: 3, bonus_spell_slot_option: true)

  print "180 Spells Created \r"

sp181 = Spell.create!(name: "Fabricate", description: "You convert material of one sort into a product that is of the same material. Creatures or magic items cannot be created or transmuted by the fabricate spell. The quality of items made by this spell is commensurate with the quality of material used as the basis for the new fabrication. If you work with a mineral, the target is reduced to 1 cubic foot per level instead of 10 cubic feet.

You must make an appropriate Craft check to fabricate articles requiring a high degree of craftsmanship.

Casting requires 1 round per 10 cubic feet of material to be affected by the spell.", target: "up to 10 cu. ft./level", saving_throw: "none", spell_resistance: false, action_id: varies.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp181.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp181.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp181.id, component_id: material.id, item: "the original material, which costs the same amount as the raw materials required to craft the item to be created")
  fabricate_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp181.id, spell_level: 5)

  FeatureCastableSpell.create!(feature_id: artifice_domain3_feature.id, spell_id: sp181.id, added_to_known_spells: false, applicable_spell_level: 5, bonus_spell_slot_option: true)

sp182 = Spell.create!(name: "Wall of Iron", description: "You cause a flat, vertical iron wall to spring into being. The wall inserts itself into any surrounding nonliving material if its area is sufficient to do so. The wall cannot be conjured so that it occupies the same space as a creature or another object. It must always be a flat plane, though you can shape its edges to fit the available space.

A wall of iron is 1 inch thick per four caster levels. You can double the wall’s area by halving its thickness. Each 5-foot square of the wall has 30 hit points per inch of thickness and hardness 10. A section of wall whose hit points drop to 0 is breached. If a creature tries to break through the wall with a single attack, the DC for the Strength check is 25 + 2 per inch of thickness.

If you desire, the wall can be created vertically resting on a flat surface but not attached to the surface, so that it can be tipped over to fall on and crush creatures beneath it. The wall is 50% likely to tip in either direction if left unpushed. Creatures can push the wall in one direction rather than letting it fall randomly. A creature must make a DC 40 Strength check to push the wall over. Creatures with room to flee the falling wall may do so by making successful Reflex saves. Any Large or smaller creature that fails takes 10d6 points of damage while fleeing from the wall. The wall cannot crush Huge and larger creatures.

Like any iron wall, this wall is subject to rust, perforation, and other natural phenomena. Iron created by this spell is not suitable for use in the creation of other objects and cannot be sold.", target: "iron wall whose area is up to one 5-ft. square/level", saving_throw: "Reflex", spell_resistance: false, action_id: standard.id, spell_range_id: medium.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp182.id, subschool_id: creation.id)
  SpellComponent.create!(spell_id: sp182.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp182.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp182.id, component_id: material.id, item: "a small iron sheet plus gold dust worth 50 gp")
  wall_of_iron_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp182.id, spell_level: 6)
  wall_of_iron_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp182.id, spell_level: 6)
  # wall_of_iron_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: sp182.id, spell_level: 6)
  wall_of_iron_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp182.id, spell_level: 5)

  FeatureCastableSpell.create!(feature_id: artifice_domain3_feature.id, spell_id: sp182.id, added_to_known_spells: false, applicable_spell_level: 7, bonus_spell_slot_option: true)

sp183 = Spell.create!(name: "Statue", description: "A statue spell turns the subject to solid stone, along with any garments and equipment worn or carried. In statue form, the subject gains hardness 8. The subject retains its own hit points. The subject can see, hear, and smell normally, but it does not need to eat or breathe. Feeling is limited to those sensations that can affect the granite-hard substance of the individual’s body. Chipping is equal to a mere scratch, but breaking off one of the statue’s arms constitutes serious damage. The subject of a statue spell can return to its normal state, act, and then return instantly to the statue state (a free action) if it so desires as long as the spell duration is in effect.", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: full_round.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 hour/level", time: 1, unit_of_time: "hour", increase_per_level: 1, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp183.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp183.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp183.id, component_id: material.id, item: "lime, sand, and a drop of water stirred by an iron spike")
  statue_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp183.id, spell_level: 6)
  statue_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp183.id, spell_level: 7)

  FeatureCastableSpell.create!(feature_id: artifice_domain3_feature.id, spell_id: sp183.id, added_to_known_spells: false, applicable_spell_level: 8, bonus_spell_slot_option: true)

sp184 = Spell.create!(name: "Prismatic Wall", description: "Prismatic wall creates a vertical, opaque wall- a shimmering, multicolored plane of light that protects you from all forms of attack. The wall flashes with seven colors, each of which has a distinct power and purpose. The wall is immobile, and you can pass through and remain near the wall without harm. Any other creature with less than 8 HD that is within 20 feet of the wall is blinded by the colors for 2d4 rounds if it looks at the wall.

The wall’s maximum proportions are 4 feet wide per caster level and 2 feet high per caster level. A prismatic wall spell cast to materialize in a space occupied by a creature is disrupted, and the spell is wasted.

Each color in the wall has a special effect. The accompanying table shows the seven colors of the wall, the order in which they appear, their effects on creatures trying to attack you or pass through the wall, and the magic needed to negate each color.

The wall can be destroyed, color by color, in consecutive order, by casting the specified spells on the wall; however, the first color must be brought down before the second can be affected, and so on. A rod of cancellation or a mage’s disjunction spell destroys a prismatic wall, but an antimagic field fails to penetrate it. Dispel magic and greater dispel magic can only be used on the wall once all the other colors have been destroyed. Spell Resistance is effective against a prismatic wall, but the caster level check must be repeated for each color present.

Prismatic wall can be made permanent with a permanency spell.

Order	Color	Effect of Color	Negated by
1st	Red	Stops non-magical ranged weapons.
Deals 20 points of fire damage (Reflex half).	Cone of cold
2nd	Orange	Stops magical ranged weapons.
Deals 40 points of acid damage (Reflex half).	Gust of wind
3rd	Yellow	Stops poisons, gases, and petrification.
Deals 80 points of electricity damage (Reflex half).	Disintegrate
4th	Green	Stops breath weapons.
Poison (Frequency: 1/rd. for 6 rd.; init. effect: death, sec. effect: 1 Con/rd.; Cure 2 consecutive Fort saves).	Passwall
5th	Blue	Stops divination and mental attacks.
Turned to stone (Fortitude negates).	Magic missile
6th	Indigo	Stops all spells.
Will save or become insane (as insanity spell).	Daylight
7th	Violet	Energy field destroys all objects and effects.*
Creatures sent to another plane (Will negates).	Dispel magic or greater dispel magic
* The violet effect makes the special effects of the other six colors redundant, but these six effects are included here because certain magic items can create prismatic effects one color at a time, and Spell Resistance might render some colors ineffective (see above).", target: "wall 4 ft./level wide, 2 ft./level high", saving_throw: "see text", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: abjuration.id, duration: "10 min./level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp184.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp184.id, component_id: somatic.id, item: nil)
  prismatic_wall_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp184.id, spell_level: 8)

sp185 = Spell.create!(name: "Prismatic Sphere", description: "This spell functions like prismatic wall, except you conjure up an immobile, opaque globe of shimmering, multicolored light that surrounds you and protects you from all forms of attack. The sphere flashes in all colors of the visible spectrum.

The sphere’s blindness effect on creatures with less than 8 HD lasts 2d4 x 10 minutes.

You can pass into and out of the prismatic sphere and remain near it without harm. When you’re inside it, however, the sphere blocks any attempt to project something through the sphere (including spells). Other creatures that attempt to attack you or pass through suffer the effects of each color, one at a time.

Typically, only the upper hemisphere of the globe exists, since you are at the center of the sphere, so the lower half is usually occluded by the floor surface you are standing on.

The colors of the sphere have the same effects as the colors of a prismatic wall.

Prismatic sphere can be made permanent with a permanency spell.", target: "10-ft.-radius sphere centered on you", saving_throw: "see text", spell_resistance: true, action_id: standard.id, spell_range_id: ten_feet.id, magic_school_id: abjuration.id, duration: "10 min./level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp185.id, component_id: verbal.id, item: nil)
  prismatic_sphere_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp185.id, spell_level: 9)

  FeatureCastableSpell.create!(feature_id: artifice_domain3_feature.id, spell_id: sp185.id, added_to_known_spells: false, applicable_spell_level: 9, bonus_spell_slot_option: true)

sp186 = Spell.create!(name: "Protection from Evil", description: "This spell wards a creature from attacks by evil creatures, from mental control, and from summoned creatures. It creates a magical barrier around the subject at a distance of 1 foot. The barrier moves with the subject and has three major effects.

First, the subject gains a +2 deflection bonus to AC and a +2 resistance bonus on saves. Both these bonuses apply against attacks made or effects created by evil creatures.

Second, the subject immediately receives another saving throw (if one was allowed to begin with) against any spells or effects that possess or exercise mental control over the creature (including enchantment [charm] effects and enchantment [compulsion] effects, such as charm person, command, and dominate person). This saving throw is made with a +2 morale bonus, using the same DC as the original effect. If successful, such effects are suppressed for the duration of this spell. The effects resume when the duration of this spell expires. While under the effects of this spell, the target is immune to any new attempts to possess or exercise mental control over the target. This spell does not expel a controlling life force (such as a ghost or spellcaster using magic jar), but it does prevent them from controlling the target. This second effect only functions against spells and effects created by evil creatures or objects, subject to GM discretion.

Third, the spell prevents bodily contact by evil summoned creatures. This causes the natural weapon attacks of such creatures to fail and the creatures to recoil if such attacks require touching the warded creature. Summoned creatures that are not evil are immune to this effect. The protection against contact by summoned creatures ends if the warded creature makes an attack against or tries to force the barrier against the blocked creature. Spell Resistance can allow a creature to overcome this protection and touch the warded creature.", target: "creature touched", saving_throw: "Will", spell_resistance: false, action_id: standard.id, spell_range_id: touch.id, magic_school_id: abjuration.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp186.id, subschool_id: good.id)
  SpellComponent.create!(spell_id: sp186.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp186.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp186.id, component_id: material.id, item: nil)
  SpellComponent.create!(spell_id: sp186.id, component_id: divine_focus.id, item: nil)
  protection_from_evil_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp186.id, spell_level: 1)
  # protection_from_evil_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: sp186.id, spell_level: 1)
  # protection_from_evil_paladin = SpellListSpell.create!(spell_list_id: paladin_spell_list.id, spell_id: sp186.id, spell_level: 1)
  # protection_from_evil_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp186.id, spell_level: 1)
  protection_from_evil_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp186.id, spell_level: 1)
  # protection_from_evil_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: sp186.id, spell_level: 1)
  protection_from_evil_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp186.id, spell_level: 1)

sp187 = Spell.create!(name: "Protection from Law", description: "This spell functions like protection from evil, except that the deflection and resistance bonuses apply to attacks made by lawful creatures. The target receives a new saving throw against control by lawful creatures and lawful summoned creatures cannot touch the target.", target: "creature touched", saving_throw: "Will", spell_resistance: false, action_id: standard.id, spell_range_id: touch.id, magic_school_id: abjuration.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp187.id, subschool_id: chaotic.id)
  SpellComponent.create!(spell_id: sp187.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp187.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp187.id, component_id: material.id, item: nil)
  SpellComponent.create!(spell_id: sp187.id, component_id: divine_focus.id, item: nil)
  # protection_from_law_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin_spell_list.id, spell_id: sp187.id, spell_level: 1)
  protection_from_law_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp187.id, spell_level: 1)
  # protection_from_law_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: sp187.id, spell_level: 1)
  # protection_from_law_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp187.id, spell_level: 1)
  protection_from_law_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp187.id, spell_level: 1)
  # protection_from_law_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: sp187.id, spell_level: 1)
  protection_from_law_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp187.id, spell_level: 1)

  FeatureCastableSpell.create!(feature_id: chaos_domain3_feature.id, spell_id: sp187.id, added_to_known_spells: false, applicable_spell_level: 1, bonus_spell_slot_option: true)

sp188 = Spell.create!(name: "Align Weapon", description: "Align weapon makes a weapon chaotic, evil, good, or lawful, as you choose. A weapon that is aligned can bypass the damage reduction of certain creatures. This spell has no effect on a weapon that already has an alignment.

You can’t cast this spell on a natural weapon, such as an unarmed strike. When you make a weapon chaotic, evil, good, or lawful, align weapon is a chaotic, evil, good, or lawful spell, respectively.", target: "weapon touched or 50 projectiles (all of which must be together at the time of casting)", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp188.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp188.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp188.id, component_id: divine_focus.id, item: nil)
  align_weapon_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp188.id, spell_level: 2)
  # align_weapon_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: sp188.id, spell_level: 2)

  FeatureCastableSpell.create!(feature_id: chaos_domain3_feature.id, spell_id: sp188.id, added_to_known_spells: false, applicable_spell_level: 2, bonus_spell_slot_option: true)

sp189 = Spell.create!(name: "Lesser Planar Binding", description: "Casting this spell attempts a dangerous act: to lure a creature from another plane to a specifically prepared trap, which must lie within the spell’s range. The called creature is held in the trap until it agrees to perform one service in return for its freedom.

To create the trap, you must use a magic circle spell, focused inward. The kind of creature to be bound must be known and stated. If you wish to call a specific individual, you must use that individual’s proper name in casting the spell.

The target creature is allowed a Will saving throw. If the saving throw succeeds, the creature resists the spell. If the saving throw fails, the creature is immediately drawn to the trap (Spell Resistance does not keep it from being called). The creature can escape from the trap by successfully pitting its Spell Resistance against your caster level check, by dimensional travel, or with a successful Charisma check (DC 15 + 1/2 your caster level + your Charisma modifier). It can try each method once per day. If it breaks loose, it can flee or attack you. A dimensional anchor cast on the creature prevents its escape via dimensional travel. You can also employ a calling diagram (see magic circle against evil) to make the trap more secure.

If the creature does not break free of the trap, you can keep it bound for as long as you dare. You can attempt to compel the creature to perform a service by describing the service and perhaps offering some sort of reward. You make a Charisma check opposed by the creature’s Charisma check. The check is assigned a bonus of +0 to +6 based on the nature of the service and the reward. If the creature wins the opposed check, it refuses service. New offers, bribes, and the like can be made or the old ones re-offered every 24 hours. This process can be repeated until the creature promises to serve, until it breaks free, or until you decide to get rid of it by means of some other spell. Impossible demands or unreasonable commands are never agreed to. If you ever roll a natural 1 on the Charisma check, the creature breaks free of the spell’s effect and can escape or attack you.

Once the requested service is completed, the creature need only to inform you to be instantly sent back whence it came. The creature might later seek revenge. If you assign some open-ended task that the creature cannot complete through its own actions, the spell remains in effect for a maximum of 1 day per caster level, and the creature gains an immediate chance to break free (with the same chance to resist as when it was trapped). Note that a clever recipient can subvert some instructions.

When you use a calling spell to call an air, chaotic, earth, evil, fire, good, lawful, or water creature, it is a spell of that type.", target: "one elemental or outsider with 6 HD or less", saving_throw: "Will", spell_resistance: true, action_id: ten.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp189.id, subschool_id: calling.id)
  SpellComponent.create!(spell_id: sp189.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp189.id, component_id: somatic.id, item: nil)
  lesser_planar_binding_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp189.id, spell_level: 5)
  # lesser_planar_binding_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: sp189.id, spell_level: 5)
  lesser_planar_binding_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp189.id, spell_level: 4)

sp190 = Spell.create!(name: "Planar Binding", description: "This spell functions like lesser planar binding, except that you may call a single creature of 12 HD or less, or up to three creatures of the same kind whose Hit Dice total no more than 12. Each creature gets a saving throw, makes an independent attempt to escape, and must be individually persuaded to aid you.", target: "up to three elementals or outsiders, totaling no more than 12 HD, no two of which can be more than 30 ft. apart when they appear", saving_throw: "Will", spell_resistance: true, action_id: ten.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp190.id, subschool_id: calling.id)
  SpellComponent.create!(spell_id: sp190.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp190.id, component_id: somatic.id, item: nil)
  planar_binding_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp190.id, spell_level: 6)
  # planar_binding_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: sp190.id, spell_level: 6)
  planar_binding_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp190.id, spell_level: 5)

print "190 Spells Created \r"

sp191 = Spell.create!(name: "Greater Planar Binding", description: "This spell functions like lesser planar binding, except that you may call a single creature of 18 HD or less, or up to three creatures of the same kind whose Hit Dice total no more than 18. Each creature gets a saving throw, makes an independent attempt to escape, and must be individually persuaded to aid you.", target: "up to three elementals or outsiders, totaling no more than 18 HD, no two of which can be more than 30 ft. apart when they appear", saving_throw: "Will", spell_resistance: true, action_id: ten.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp191.id, subschool_id: calling.id)
  SpellComponent.create!(spell_id: sp191.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp191.id, component_id: somatic.id, item: nil)
  greater_planar_binding_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp191.id, spell_level: 8)
  greater_planar_binding_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp191.id, spell_level: 6)

sp192 = Spell.create!(name: "Astral Projection", description: "By freeing your spirit from your physical body, this spell allows you to project an astral body onto another plane altogether. You can bring the astral forms of other willing creatures with you, provided that these subjects are linked in a circle with you at the time of the casting. These fellow travelers are dependent upon you and must accompany you at all times. If something happens to you during the journey, your companions are stranded wherever you left them.

You project your astral self onto the Astral Plane, leaving your physical body behind on the Material Plane in a state of suspended animation. The spell projects an astral copy of you and all you wear or carry onto the Astral Plane. Since the Astral Plane touches upon other planes, you can travel astrally to any of these other planes as you will. To enter one, you leave the Astral Plane, forming a new physical body (and equipment) on the plane of existence you have chosen to enter.

While you are on the Astral Plane, your astral body is connected at all times to your physical body by an incorporeal silver cord. If the cord is broken, you are killed, astrally and physically. Luckily, very few things can destroy a silver cord. When a second body is formed on a different plane, the silver cord remains invisibly attached to the new body. If the second body or the astral form is slain, the cord simply returns to your body where it rests on the Material Plane, thereby reviving it from its state of suspended animation. This is a traumatic affair, however, and you gain two permanent negative levels if your second body or astral form is slain. Although astral projections are able to function on the Astral Plane, their actions affect only creatures existing on the Astral Plane; a physical body must be materialized on other planes.

You and your companions may travel through the Astral Plane indefinitely. Your bodies simply wait behind in a state of suspended animation until you choose to return your spirits to them. The spell lasts until you desire to end it, or until it is terminated by some outside means, such as dispel magic cast upon either the physical body or the astral form, the breaking of the silver cord, or the destruction of your body back on the Material Plane (which kills you).

When this spell ends, your astral body and all of its gear, vanishes.", target: "you plus one additional willing create touched per two caster levels", saving_throw: "none", spell_resistance: true, action_id: thirty_minutes.id, spell_range_id: touch.id, magic_school_id: necromancy.id, duration: "indefinitely", time: 1000, unit_of_time: "days", increase_per_level: 1000, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp192.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp192.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp192.id, component_id: material.id, item: "1000 gp jacinth")
  astral_projection_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp192.id, spell_level: 9)
  astral_projection_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp192.id, spell_level: 9)
  astral_projection_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp192.id, spell_level: 9)

sp193 = Spell.create!(name: "Dimension Door", description: "You instantly transfer yourself from your current location to any other spot within range. You always arrive at exactly the spot desired – whether by simply visualizing the area or by stating direction. After using this spell, you can’t take any other actions until your next turn. You can bring along objects as long as their weight doesn’t exceed your maximum load. You may also bring one additional willing Medium or smaller creature (carrying gear or objects up to its maximum load) or its equivalent per three caster levels. A Large creature counts as two Medium creatures, a Huge creature counts as two Large creatures, and so forth. All creatures to be transported must be in contact with one another, and at least one of those creatures must be in contact with you.

If you arrive in a place that is already occupied by a solid body, you and each creature traveling with you take 1d6 points of damage and are shunted to a random open space on a suitable surface within 100 feet of the intended location.

If there is no free space within 100 feet, you and each creature traveling with you take an additional 2d6 points of damage and are shunted to a free space within 1,000 feet. If there is no free space within 1,000 feet, you and each creature traveling with you take an additional 4d6 points of damage and the spell simply fails.", target: "you and touched objects or other touched willing creatures", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: long.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp193.id, subschool_id: teleportation.id)
  SpellComponent.create!(spell_id: sp193.id, component_id: verbal.id, item: nil)
  dimension_door_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp193.id, spell_level: 4)
  dimension_door_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp193.id, spell_level: 4)
  dimension_door_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp193.id, spell_level: 4)
  # dimension_door_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: sp193.id, spell_level: 4)
  dimension_door_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp193.id, spell_level: 4)
  dimension_door_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp193.id, spell_level: 3)

sp194 = Spell.create!(name: "Ethereal Jaunt", description: "You become ethereal, along with your equipment. For the duration of the spell, you are in the Ethereal Plane, which overlaps the Material Plane. When the spell expires, you return to material existence.

An ethereal creature is invisible, insubstantial, and capable of moving in any direction, even up or down, albeit at half normal speed. As an insubstantial creature, you can move through solid objects, including living creatures. An ethereal creature can see and hear on the Material Plane, but everything looks gray and ephemeral. Sight and hearing onto the Material Plane are limited to 60 feet.

Force effects and abjurations affect an ethereal creature normally. Their effects extend onto the Ethereal Plane from the Material Plane, but not vice versa. An ethereal creature can’t attack material creatures, and spells you cast while ethereal affect only other ethereal things. Certain material creatures or objects have attacks or effects that work on the Ethereal Plane.

Treat other ethereal creatures and ethereal objects as if they were material.

If you end the spell and become material while inside a material object (such as a solid wall), you are shunted off to the nearest open space and take 1d6 points of damage per 5 feet that you so travel.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: transmutation.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp194.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp194.id, component_id: somatic.id, item: nil)
  ethereal_jaunt_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp194.id, spell_level: 7)
  ethereal_jaunt_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp194.id, spell_level: 7)
  # ethereal_jaunt_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: sp194.id, spell_level: 6)

sp195 = Spell.create!(name: "Etherealness", description: "This spell functions like ethereal jaunt, except that you and other willing creatures joined by linked hands (along with their equipment) become ethereal. Besides yourself, you can bring one creature per three caster levels to the Ethereal Plane. Once ethereal, the subjects need not stay together.

When the spell expires, all affected creatures on the Ethereal Plane return to material existence.", target: "you and one other touched creature per three levels", saving_throw: "none", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp195.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp195.id, component_id: somatic.id, item: nil)
  etherealness_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp195.id, spell_level: 9)
  # etherealness_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp195.id, spell_level: 9)
  etherealness_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp195.id, spell_level: 9)

sp196 = Spell.create!(name: "Gate", description: "Casting a gate spell has two effects.

First, it creates an interdimensional connection between your plane of existence and a plane you specify, allowing travel between those two planes in either direction.

Second, you may then call a particular individual or kind of being through the gate.

The gate itself is a circular hoop or disk from 5 to 20 feet in diameter (caster’s choice) oriented in the direction you desire when it comes into existence (typically vertical and facing you). It is a two-dimensional window looking into the plane you specified when casting the spell, and anyone or anything that moves through is shunted instantly to the other side.

A gate has a front and a back. Creatures moving through the gate from the front are transported to the other plane; creatures moving through it from the back are not.

Planar Travel: As a mode of planar travel, a gate spell functions much like a plane shift spell, except that the gate opens precisely at the point you desire (a creation effect). Deities and other beings who rule a planar realm can prevent a gate from opening in their presence or personal demesnes if they so desire. Travelers need not join hands with you–anyone who chooses to step through the portal is transported. A gate cannot be opened to another point on the same plane; the spell works only for interplanar travel.

You may hold the gate open only for a brief time (no more than 1 round per caster level), and you must concentrate on doing so, or else the interplanar connection is severed.

Calling Creatures: The second effect of the gate spell is to call an extraplanar creature to your aid (a calling effect). By naming a particular being or kind of being as you cast the spell, you cause the gate to open in the immediate vicinity of the desired creature and pull the subject through, willing or unwilling. Deities and unique beings are under no compulsion to come through the gate, although they may choose to do so of their own accord. This use of the spell creates a gate that remains open just long enough to transport the called creatures. This use of the spell has a material cost of 10,000 gp in rare incense and offerings. This cost is in addition to any cost that must be paid to the called creatures.

If you choose to call a kind of creature instead of a known individual, you may call either a single creature or several creatures. In either case, their total HD cannot exceed twice your caster level. In the case of a single creature, you can control it if its HD does not exceed your caster level. A creature with more HD than your caster level can’t be controlled. Deities and unique beings cannot be controlled in any event. An uncontrolled being acts as it pleases, making the calling of such creatures rather dangerous. An uncontrolled being may return to its home plane at any time.

If you choose to exact a longer or more involved form of service from a called creature, you must offer some fair trade in return for that service. The service exacted must be reasonable with respect to the promised favor or reward; see the lesser planar ally spell for appropriate rewards. Some creatures may want their payment in “livestock” rather than in coin, which could involve complications. Immediately upon completion of the service, the being is transported to your vicinity, and you must then and there turn over the promised reward. After this is done, the creature is instantly freed to return to its own plane.

Failure to fulfill the promise to the letter results in your being subjected to service by the creature or by its liege and master, at the very least. At worst, the creature or its kin may attack you.

Note: When you use a calling spell such as gate to call an air, chaotic, earth, evil, fire, good, lawful, or water creature, it becomes a spell of that type.", target: "see text", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: medium.id, magic_school_id: conjuration.id, duration: "instantaneous or concentration (up to 1 round/level)", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp196.id, subschool_id: creation.id)
  SpellSubschool.create!(spell_id: sp196.id, subschool_id: calling.id)
  SpellComponent.create!(spell_id: sp196.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp196.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp196.id, component_id: material.id, item: "see text")
  gate_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp196.id, spell_level: 9)
  gate_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp196.id, spell_level: 9)

sp197 = Spell.create!(name: "Plane Shift", description: "You move yourself or some other creature to another plane of existence or alternate dimension. If several willing persons link hands in a circle, as many as eight can be affected by the plane shift at the same time. Precise accuracy as to a particular arrival location on the intended plane is nigh impossible. From the Material Plane, you can reach any other plane, though you appear 5 to 500 miles (5d%) from your intended destination. Plane shift transports creatures instantaneously and then ends. The creatures need to find other means if they are to travel back (including casting plane shift again).", target: "creature touched, or up to eight willing creatures joining hands", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp197.id, subschool_id: teleportation.id)
  SpellComponent.create!(spell_id: sp197.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp197.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp197.id, component_id: focus.id, item: "a forked metal rod attuned to the plane of travel")
  plane_shift_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp197.id, spell_level: 5)
  # plane_shift_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp197.id, spell_level: 7)
  plane_shift_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp197.id, spell_level: 7)
  # plane_shift_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: sp197.id, spell_level: 6)
  plane_shift_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp197.id, spell_level: 7)

sp198 = Spell.create!(name: "Shadow Walk", description: "To use the shadow walk spell, you must be in an area of dim light. You and any creature you touch are then transported along a coiling path of shadowstuff to the edge of the Material Plane where it borders the Plane of Shadow. The effect is largely illusory, but the path is quasi-real. You can take more than one creature along with you (subject to your level limit), but all must be touching each other.

In the region of shadow, you move at a rate of 50 miles per hour, moving normally on the borders of the Plane of Shadow but much more rapidly relative to the Material Plane. Thus, you can use this spell to travel rapidly by stepping onto the Plane of Shadow, moving the desired distance, and then stepping back onto the Material Plane.

Because of the blurring of reality between the Plane of Shadow and the Material Plane, you can’t make out details of the terrain or areas you pass over during transit, nor can you predict perfectly where your travel will end. It’s impossible to judge distances accurately, making the spell virtually useless for scouting or spying. Furthermore, when the spell effect ends, you are shunted 1d10 x 100 feet in a random horizontal direction from your desired endpoint. If this would place you within a solid object, you are shunted 1d10 x 1,000 feet in the same direction. If this would still place you within a solid object, you (and any creatures with you) are shunted to the nearest empty space available, but the strain of this activity renders each creature fatigued (no save).

Shadow walk can also be used to travel to other planes that border on the Plane of Shadow, but this usage requires the transit of the Plane of Shadow to arrive at a border with another plane of reality. The transit of the Plane of Shadow requires 1d4 hours.

Any creatures touched by you when shadow walk is cast also make the transition to the borders of the Plane of Shadow.

They may opt to follow you, wander off through the plane, or stumble back into the Material Plane (50% chance for either of the latter results if they are lost or abandoned by you). Creatures unwilling to accompany you into the Plane of Shadow receive a Will saving throw, negating the effect if successful.", target: "up to one touched creature/level", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: illusion.id, duration: "1 hour/level", time: 1, unit_of_time: "hour", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp198.id, subschool_id: shadow.id)
  SpellComponent.create!(spell_id: sp198.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp198.id, component_id: somatic.id, item: nil)
  shadow_walk_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp198.id, spell_level: 6)
  shadow_walk_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp198.id, spell_level: 5)
  shadow_walk_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp198.id, spell_level: 6)

sp199 = Spell.create!(name: "Teleport", description: "This spell instantly transports you to a designated destination, which may be as distant as 100 miles per caster level. Interplanar travel is not possible. You can bring along objects as long as their weight doesn’t exceed your maximum load. You may also bring one additional willing Medium or smaller creature (carrying gear or objects up to its maximum load) or its equivalent per three caster levels. A Large creature counts as two Medium creatures, a Huge creature counts as four Medium creatures, and so forth. All creatures to be transported must be in contact with one another, and at least one of those creatures must be in contact with you. As with all spells where the range is personal and the target is you, you need not make a saving throw, nor is Spell Resistance applicable to you. Only objects held or in use (attended) by another person receive saving throws and Spell Resistance.

You must have some clear idea of the location and layout of the destination. The clearer your mental image, the more likely the teleportation works. Areas of strong physical or magical energy may make teleportation more hazardous or even impossible.

Familiarity	On Target	Off Target	Similar Area	Mishap
Very familiar	01–97	98–99	100	—
Studied carefully	01–94	95–97	98–99	100
Seen casually	01–88	89–94	95–98	99–100
Viewed once	01–76	77–88	89–96	97–100
False destination	—	—	81–92	93–100
To see how well the teleportation works, roll d% and consult the following table. Refer to the following information for definitions of the terms on the table.

Familiarity: “Very familiar” is a place where you have been very often and where you feel at home. “Studied carefully” is a place you know well, either because you can currently physically see it or you’ve been there often. “Seen casually” is a place that you have seen more than once but with which you are not very familiar. “Viewed once” is a place that you have seen once, possibly using magic such as scrying.

“False destination” is a place that does not truly exist or if you are teleporting to an otherwise familiar location that no longer exists as such or has been so completely altered as to no longer be familiar to you. When traveling to a false destination, roll 1d20+80 to obtain results on the table, rather than rolling d%, since there is no real destination for you to hope to arrive at or even be off target from.

On Target: You appear where you want to be.

Off Target: You appear safely a random distance away from the destination in a random direction. Distance off target is d% of the distance that was to be traveled. The direction off target is determined randomly.

Similar Area: You wind up in an area that’s visually or thematically similar to the target area. Generally, you appear in the closest similar place within range. If no such area exists within the spell’s range, the spell simply fails instead.

Mishap: You and anyone else teleporting with you have gotten “scrambled.” You each take 1d10 points of damage, and you reroll on the chart to see where you wind up. For these rerolls, roll 1d20+80. Each time “Mishap” comes up, the characters take more damage and must reroll.", target: "you and touched objects or other touched willing creatures", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp199.id, subschool_id: teleportation.id)
  SpellComponent.create!(spell_id: sp199.id, component_id: verbal.id, item: nil)
  teleport_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp199.id, spell_level: 5)
  # teleport_occultist = SpellListSpell.create!(spell_list_id: occultist_spell_list.id, spell_id: sp199.id, spell_level: 5)
  # teleport_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: sp199.id, spell_level: 5)
  teleport_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp199.id, spell_level: 5)
  # teleport_spiritualist = SpellListSpell.create!(spell_list_id: spiritualist_spell_list.id, spell_id: sp199.id, spell_level: 5)
  # teleport_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: sp199.id, spell_level: 5)
  teleport_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp199.id, spell_level: 5)

sp200 = Spell.create!(name: "Maze", description: "You banish the subject into an extra-dimensional labyrinth. Each round on its turn, it may attempt a DC 20 Intelligence check to escape the labyrinth as a full-round action. If the subject doesn’t escape, the maze disappears after 10 minutes, freeing the subject.

On escaping or leaving the maze, the subject reappears where it had been when the maze spell was cast. If this location is filled with a solid object, the subject appears in the nearest open space. Spells and abilities that move a creature within a plane, such as teleport and dimension door, do not help a creature escape a maze spell, although a plane shift spell allows it to exit to whatever plane is designated in that spell. Minotaurs are not affected by this spell.", target: "one creature", saving_throw: "none", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "see text", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp200.id, subschool_id: teleportation.id)
  SpellComponent.create!(spell_id: sp200.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp200.id, component_id: somatic.id, item: nil)
  maze_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp200.id, spell_level: 8)
  maze_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp200.id, spell_level: 8)

  print "200 Spells Created \r"

sp201 = Spell.create!(name: "Greater Teleport", description: "This spell functions like teleport, except that there is no range limit and there is no chance you arrive off target. In addition, you need not have seen the destination, but in that case you must have at least a reliable description of the place to which you are teleporting. If you attempt to teleport with insufficient information (or with misleading information), you disappear and simply reappear in your original location. Interplanar travel is not possible.", target: "you and touched objects or other touched willing creatures", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp201.id, subschool_id: teleportation.id)
  SpellComponent.create!(spell_id: sp201.id, component_id: verbal.id, item: nil)
  # greater_teleport_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: sp201.id, spell_level: 7)
  greater_teleport_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp201.id, spell_level: 7)
  # greater_teleport_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: sp201.id, spell_level: 6)
  greater_teleport_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp201.id, spell_level: 7)

sp202 = Spell.create!(name: "Teleportation Circle", description: "You create a circle on the floor or other horizontal surface that teleports, as greater teleport, any creature who stands on it to a designated spot. Once you designate the destination for the circle, you can’t change it. The spell fails if you attempt to set the circle to teleport creatures into a solid object, to a place with which you are not familiar and have no clear description, or to another plane.

The circle itself is subtle and nearly impossible to notice. If you intend to keep creatures from activating it accidentally, you need to mark the circle in some way.

Teleportation circle can be made permanent with a permanency spell. A permanent teleportation circle that is disabled becomes inactive for 10 minutes, then can be triggered again as normal.", target: "5-ft.-radius circle that teleports those who activate it", saving_throw: "none", spell_resistance: true, action_id: ten.id, spell_range_id: zero_feet.id, magic_school_id: conjuration.id, duration: "10 min./level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp202.id, subschool_id: teleportation.id)
  SpellComponent.create!(spell_id: sp202.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp202.id, component_id: material.id, item: "amber dust to cover circle worth 1000 gp")
  # teleportation_circle_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: sp202.id, spell_level: 9)
  teleportation_circle_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp202.id, spell_level: 9)
  teleportation_circle_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp202.id, spell_level: 9)

sp203 = Spell.create!(name: "Dimensional Anchor", description: "A green ray springs from your hand. You must make a ranged touch attack to hit the target. Any creature or object struck by the ray is covered with a shimmering emerald field that completely blocks extradimensional travel. Forms of movement barred by a dimensional anchor include astral projection, blink, dimension door, ethereal jaunt, etherealness, gate, maze, plane shift, shadow walk, teleport, and similar spell-like abilities. The spell also prevents the use of a gate or teleportation circle for the duration of the spell.

A dimensional anchor does not interfere with the movement of creatures already in ethereal or astral form when the spell is cast, nor does it block extradimensional perception or attack forms. Also, dimensional anchor does not prevent summoned creatures from disappearing at the end of a summoning spell.", target: "ray", saving_throw: "none", spell_resistance: true, action_id: standard.id, spell_range_id: medium.id, magic_school_id: abjuration.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp203.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp203.id, component_id: somatic.id, item: nil)
  dimensional_anchor_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp203.id, spell_level: 4)
  # dimensional_anchor_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: sp203.id, spell_level: 3)
  dimensional_anchor_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp203.id, spell_level: 4)
  # dimensional_anchor_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: sp203.id, spell_level: 4)

sp204 = Spell.create!(name: "Magic Circle against Evil", description: "All creatures within the area gain the effects of a protection from evil spell, and evil summoned creatures cannot enter the area either. Creatures in the area, or who later enter the area, receive only one attempt to suppress effects that are controlling them. If successful, such effects are suppressed as long as they remain in the area. Creatures that leave the area and come back are not protected. You must overcome a creature’s Spell Resistance in order to keep it at bay (as in the third function of protection from evil), but the deflection and resistance bonuses and the protection from mental control apply regardless of enemies’ Spell Resistance.

This spell has an alternative version that you may choose when casting it. A magic circle against evil can be focused inward rather than outward. When focused inward, the spell binds a non-good called creature (such as those called by the lesser planar binding, planar binding, and greater planar binding spells) for a maximum of 24 hours per caster level, provided that you cast the spell that calls the creature within 1 round of casting the magic circle. The creature cannot cross the circle’s boundaries. If a creature too large to fit into the spell’s area is the subject of the spell, the spell acts as a normal protection from evil spell for that creature only.

A magic circle leaves much to be desired as a trap. If the circle of powdered silver laid down in the process of spellcasting is broken, the effect immediately ends. The trapped creature can do nothing that disturbs the circle, directly or indirectly, but other creatures can. If the called creature has Spell Resistance, it can test the trap once a day. If you fail to overcome its Spell Resistance, the creature breaks free, destroying the circle. A creature capable of any form of dimensional travel (astral projection, blink, dimension door, etherealness, gate, plane shift, shadow walk, teleport, and similar abilities) can simply leave the circle through such means. You can prevent the creature’s extra-dimensional escape by casting a dimensional anchor spell on it, but you must cast the spell before the creature acts. If you are successful, the anchor effect lasts as long as the magic circle does. The creature cannot reach across the magic circle, but its ranged attacks (ranged weapons, spells, magical abilities, and the like) can. The creature can attack any target it can reach with its ranged attacks except for the circle itself.

You can add a special diagram (a two-dimensional bounded figure with no gaps along its circumference, augmented with various magical sigils) to make the magic circle more secure. Drawing the diagram by hand takes 10 minutes and requires a DC 20 Spellcraft check. You do not know the result of this check. If the check fails, the diagram is ineffective. You can take 10 when drawing the diagram if you are under no particular time pressure to complete the task. This task also takes 10 full minutes. If time is no factor at all, and you devote 3 hours and 20 minutes to the task, you can take 20.

A successful diagram allows you to cast a dimensional anchor spell on the magic circle during the round before casting any summoning spell. The anchor holds any called creatures in the magic circle for 24 hours per caster level. A creature cannot use its Spell Resistance against a magic circle prepared with a diagram, and none of its abilities or attacks can cross the diagram. If the creature tries a Charisma check to break free of the trap (see the lesser planar binding spell), the DC increases by 5. The creature is immediately released if anything disturbs the diagram – even a straw laid across it. The creature itself cannot disturb the diagram either directly or indirectly, as noted above.

This spell is not cumulative with protection from evil and vice versa.", target: "10-ft.-radius emanation from touched creature", saving_throw: "Will", spell_resistance: false, action_id: standard.id, spell_range_id: touch.id, magic_school_id: abjuration.id, duration: "10 min./level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp204.id, subschool_id: good.id)
  SpellComponent.create!(spell_id: sp204.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp204.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp204.id, component_id: material.id, item: "a 3-ft.-diameter circle of powdered silver")
  SpellComponent.create!(spell_id: sp204.id, component_id: divine_focus.id)
  magic_circle_against_evil_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp204.id, spell_level: 3)
  # magic_circle_against_evil_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: sp204.id, spell_level: 3)
  # magic_circle_against_evil_paladin = SpellListSpell.create!(spell_list_id: paladin_spell_list.id, spell_id: sp204.id, spell_level: 3)
  # magic_circle_against_evil_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp204.id, spell_level: 3)
  magic_circle_against_evil_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp204.id, spell_level: 3)
  # magic_circle_against_evil_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: sp204.id, spell_level: 3)

sp205 = Spell.create!(name: "Magic Circle against Law", description: "This spell functions like magic circle against evil, except that it is similar to protection from law instead of protection from evil, and it can imprison a non-chaotic called creature.", target: "10-ft.-radius emanation from touched creature", saving_throw: "Will", spell_resistance: false, action_id: standard.id, spell_range_id: touch.id, magic_school_id: abjuration.id, duration: "10 min./level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp205.id, subschool_id: chaotic.id)
  SpellComponent.create!(spell_id: sp205.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp205.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp204.id, component_id: material.id, item: "a 3-ft.-diameter circle of powdered silver")
  SpellComponent.create!(spell_id: sp204.id, component_id: divine_focus.id)
  # magic_circle_against_evil_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin_spell_list.id, spell_id: sp204.id, spell_level: 3)
  magic_circle_against_evil_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp204.id, spell_level: 3)
  # magic_circle_against_evil_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: sp204.id, spell_level: 3)
  # magic_circle_against_evil_paladin = SpellListSpell.create!(spell_list_id: paladin_spell_list.id, spell_id: sp204.id, spell_level: 3)
  # magic_circle_against_evil_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp204.id, spell_level: 3)
  magic_circle_against_evil_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp204.id, spell_level: 3)
  # magic_circle_against_evil_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: sp204.id, spell_level: 3)

  FeatureCastableSpell.create!(feature_id: chaos_domain3_feature.id, spell_id: sp205.id, added_to_known_spells: false, applicable_spell_level: 3, bonus_spell_slot_option: true)

sp206 = Spell.create!(name: "Chaos Hammer", description: "You unleash chaotic power to smite your enemies. The power takes the form of a multicolored explosion of leaping, ricocheting energy. Only lawful and neutral (not chaotic) creatures are harmed by the spell.

The spell deals 1d8 points of damage per two caster levels (maximum 5d8) to lawful creatures (or 1d6 points of damage per caster level, maximum 10d6, to lawful outsiders) and slows them for 1d6 rounds (see the slow spell). A successful Will save reduces the damage by half and negates the slow effect.

The spell deals only half damage against creatures who are neither lawful nor chaotic, and they are not slowed. Such a creature can reduce the damage by half again (down to one-quarter) with a successful Will save.", target: "20-ft.-radius burst", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: medium.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp206.id, subschool_id: chaotic.id)
  SpellComponent.create!(spell_id: sp206.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp206.id, component_id: somatic.id, item: nil)
  chaos_hammer_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp206.id, spell_level: 4)
  # chaos_hammer_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: sp206.id, spell_level: 4)

  FeatureCastableSpell.create!(feature_id: chaos_domain3_feature.id, spell_id: sp206.id, added_to_known_spells: false, applicable_spell_level: 4, bonus_spell_slot_option: true)

sp207 = Spell.create!(name: "Dispel Evil", description: "Shimmering, white holy energy surrounds you. This energy has three effects.

First, you gain a +4 deflection bonus to AC against attacks by evil creatures.

Second, on making a successful melee touch attack against an evil creature from another plane, you can choose to drive that creature back to its home plane. The creature can negate the effects with a successful Will save (Spell Resistance applies). This use discharges and ends the spell.

Third, with a touch you can automatically dispel any one enchantment spell cast by an evil creature or any one evil spell. Spells that can’t be dispelled by dispel magic also can’t be dispelled by dispel evil. Saving throws and Spell Resistance do not apply to this effect. This use discharges and ends the spell.", target: "you and a touched evil creature from another plane, or you and an enchantment or evil spell on a touched creature or object", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: abjuration.id, duration: "1 round/level or until discharged, whichever comes first", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp207.id, subschool_id: good.id)
  SpellComponent.create!(spell_id: sp207.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp207.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp207.id, component_id: divine_focus.id, item: nil)
  dispel_evil_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp207.id, spell_level: 5)
  # dispel_evil_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: sp207.id, spell_level: 5)
  # dispel_evil_paladin = SpellListSpell.create!(spell_list_id: paladin_spell_list.id, spell_id: sp207.id, spell_level: 4)
  # dispel_evil_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp207.id, spell_level: 5)

sp208 = Spell.create!(name: "Dispel Law", description: "This spell functions like dispel evil, except that you are surrounded by flickering, yellow chaotic energy, and the spell affects lawful creatures and spells rather than evil ones.", target: "you and a touched evil creature from another plane, or you and an enchantment or evil spell on a touched creature or object", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: abjuration.id, duration: "1 round/level or until discharged, whichever comes first", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp208.id, subschool_id: chaotic.id)
  SpellComponent.create!(spell_id: sp208.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp208.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp208.id, component_id: divine_focus.id, item: nil)
  # dispel_evil_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin_spell_list.id, spell_id: sp208.id, spell_level: 4)
  dispel_evil_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp208.id, spell_level: 5)
  # dispel_evil_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: sp208.id, spell_level: 5)
  # dispel_evil_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp208.id, spell_level: 5)

  FeatureCastableSpell.create!(feature_id: chaos_domain3_feature.id, spell_id: sp208.id, added_to_known_spells: false, applicable_spell_level: 5, bonus_spell_slot_option: true)

sp209 = Spell.create!(name: "Animate Objects", description: "You imbue inanimate objects with mobility and a semblance of life. Each such animated object then immediately attacks whomever or whatever you initially designate.

An animated object can be of any non-magical material. You may animate one Small or smaller object or a corresponding number of larger objects as follows: A Medium object counts as two Small or smaller objects, a Large object as four, a Huge object as eight, a Gargantuan object as 16, and a Colossal object as 32. You can change the designated target or targets as a move action, as if directing an active spell.

This spell cannot affect objects carried or worn by a creature.

Animated objects can be made permanent with a permanency spell.", target: "one Small object per caster level", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: medium.id, magic_school_id: transmutation.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp209.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp209.id, component_id: somatic.id, item: nil)
  animate_objects_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp209.id, spell_level: 6)
  animate_objects_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp209.id, spell_level: 6)
  animate_objects_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp209.id, spell_level: 6)

  FeatureCastableSpell.create!(feature_id: chaos_domain3_feature.id, spell_id: sp209.id, added_to_known_spells: false, applicable_spell_level: 6, bonus_spell_slot_option: true)

sp210 = Spell.create!(name: "Word of Chaos", description: "HD	Effect
Equal to caster level	Deafened
Up to caster level -1	Stunned, deafened
Up to caster level -5	Confused, stunned, deafened
Up to caster level -10	Killed, Confused, stunned, deafened
Any non-chaotic creature within the area of a word of chaos spell suffers the following ill effects, depending on their HD.

The effects are cumulative and concurrent. A successful Will save reduces or eliminates these effects. Creatures affected by multiple effects make only one save and apply the result to all the effects.

Deafened: The creature is deafened for 1d4 rounds. Save negates.

Stunned: The creature is stunned for 1 round. Save negates.

Confused: The creature is confused for 1d10 minutes. This is a mind-affecting enchantment effect. Save reduces the confused effect to 1 round.

Killed: Living creatures die. Undead creatures are destroyed. Save negates. If the save is successful, the creature instead takes 3d6 points of damage + 1 point per caster level (maximum +25).

Furthermore, if you are on your home plane when you cast this spell, non-chaotic extraplanar creatures within the area are instantly banished back to their home planes. Creatures so banished cannot return for at least 24 hours. This effect takes place regardless of whether the creatures hear the word of chaos or not. The banishment effect allows a Will save (at a -4 penalty) to negate.

Creatures whose HD exceed your caster level are unaffected by word of chaos.", target: "non-chaotic creatures in a 40-ft.-radius spread centered on you", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: forty_feet.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp210.id, subschool_id: chaotic.id)
  SpellSubschool.create!(spell_id: sp210.id, subschool_id: sonic.id)
  SpellComponent.create!(spell_id: sp210.id, component_id: verbal.id, item: nil)
  word_of_chaos_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp210.id, spell_level: 7)
  # word_of_chaos_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: sp210.id, spell_level: 6)

  FeatureCastableSpell.create!(feature_id: chaos_domain3_feature.id, spell_id: sp210.id, added_to_known_spells: false, applicable_spell_level: 7, bonus_spell_slot_option: true)

  print "210 Spells Created \r"

sp211 = Spell.create!(name: "Cloak of Chaos", description: "A random pattern of color surrounds the subjects, protecting them from attacks, granting them resistance to spells cast by lawful creatures, and causing lawful creatures that strike the subjects to become confused. This abjuration has four effects.

First, each warded creature gains a +4 deflection bonus to AC and a +4 resistance bonus on saves. Unlike protection from law, the benefit of this spell applies against all attacks, not just against attacks by lawful creatures.
Second, each warded creature gains spell resistance 25 against lawful spells and spells cast by lawful creatures.
Third, the abjuration protects from possession and mental influence, just as protection from law does.
Finally, if a lawful creature succeeds on a melee attack against a warded creature, the offending attacker is confused for 1 round (Will save negates, as with the confusion spell, but against the save DC of cloak of chaos).", target: "one creature/level in a 20-ft.-radius burst centered on you", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: twenty_feet.id, magic_school_id: abjuration.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp211.id, subschool_id: chaotic.id)
  SpellComponent.create!(spell_id: sp211.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp211.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp211.id, component_id: focus.id, item: "a tiny reliquary worth 500 gp")
  cloak_of_chaos_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp211.id, spell_level: 8)

  FeatureCastableSpell.create!(feature_id: chaos_domain3_feature.id, spell_id: sp211.id, added_to_known_spells: false, applicable_spell_level: 8, bonus_spell_slot_option: true)

sp212 = Spell.create!(name: "Summon Monster III", description: "This spell functions like summon monster I, except that you can summon one creature from the 3rd-level list, 1d3 creatures of the same kind from the 2nd-level list, or 1d4+1 creatures of the same kind from the 1st-level list.", target: "one summoned creature", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp212.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp212.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp212.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp212.id, component_id: focus.id, item: "a tiny bag and a small candle")
  SpellComponent.create!(spell_id: sp212.id, component_id: divine_focus.id, item: nil)
  # summon_monster_III_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin_spell_list.id, spell_id: sp212.id, spell_level: 3)
  summon_monster_III_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp212.id, spell_level: 3)
  summon_monster_III_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp212.id, spell_level: 3)
  # summon_monster_III_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: sp212.id, spell_level: 3)
  summon_monster_III_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp212.id, spell_level: 3)
  # summon_monster_III_spiritualist = SpellListSpell.create!(spell_list_id: spiritualist_spell_list.id, spell_id: sp212.id, spell_level: 3)
  summon_monster_III_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp212.id, spell_level: 3)

sp213 = Spell.create!(name: "Summon Monster IV", description: "This spell functions like summon monster I, except that you can summon one creature from the 4th-level list, 1d3 creatures of the same kind from the 3rd-level list, or 1d4+1 creatures of the same kind from a lower-level list.", target: "one summoned creature", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp213.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp213.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp213.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp213.id, component_id: focus.id, item: "a tiny bag and a small candle")
  SpellComponent.create!(spell_id: sp213.id, component_id: divine_focus.id, item: nil)
  # summon_monster_IV_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin_spell_list.id, spell_id: sp213.id, spell_level: 4)
  summon_monster_IV_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp213.id, spell_level: 4)
  summon_monster_IV_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp213.id, spell_level: 4)
  # summon_monster_IV_medium = SpellListSpell.create!(spell_list_id: medium_spell_list.id, spell_id: sp213.id, spell_level: 3)
  # summon_monster_IV_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: sp213.id, spell_level: 4)
  summon_monster_IV_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp213.id, spell_level: 4)
  # summon_monster_IV_spiritualist = SpellListSpell.create!(spell_list_id: spiritualist_spell_list.id, spell_id: sp213.id, spell_level: 4)
  summon_monster_IV_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp213.id, spell_level: 4)
  # summon_monster_IV_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: sp213.id, spell_level: 3)
  summon_monster_IV_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp213.id, spell_level: 3)

sp214 = Spell.create!(name: "Summon Monster V", description: "This spell functions like summon monster I, except that you can summon one creature from the 5th-level list, 1d3 creatures of the same kind from the 4th-level list, or 1d4+1 creatures of the same kind from a lower-level list.", target: "one summoned creature", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp214.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp214.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp214.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp214.id, component_id: focus.id, item: "a tiny bag and a small candle")
  SpellComponent.create!(spell_id: sp214.id, component_id: divine_focus.id, item: nil)
  summon_monster_V_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp214.id, spell_level: 5)
  summon_monster_V_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp214.id, spell_level: 5)
  # summon_monster_V_medium = SpellListSpell.create!(spell_list_id: medium_spell_list.id, spell_id: sp214.id, spell_level: 4)
  # summon_monster_V_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: sp214.id, spell_level: 5)
  summon_monster_V_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp214.id, spell_level: 5)
  # summon_monster_V_spiritualist = SpellListSpell.create!(spell_list_id: spiritualist_spell_list.id, spell_id: sp214.id, spell_level: 5)
  summon_monster_V_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp214.id, spell_level: 5)
  # summon_monster_V_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: sp214.id, spell_level: 4)
  summon_monster_V_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp214.id, spell_level: 4)

sp215 = Spell.create!(name: "Summon Monster VI", description: "This spell functions like summon monster I, except that you can summon one creature from the 6th-level list, 1d3 creatures of the same kind from the 5th-level list, or 1d4+1 creatures of the same kind from a lower-level list.", target: "one summoned creature", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp215.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp215.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp215.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp215.id, component_id: focus.id, item: "a tiny bag and a small candle")
  SpellComponent.create!(spell_id: sp215.id, component_id: divine_focus.id, item: nil)
  summon_monster_VI_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp215.id, spell_level: 6)
  summon_monster_VI_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp215.id, spell_level: 6)
  # summon_monster_VI_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: sp215.id, spell_level: 6)
  summon_monster_VI_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp215.id, spell_level: 6)
  # summon_monster_VI_spiritualist = SpellListSpell.create!(spell_list_id: spiritualist_spell_list.id, spell_id: sp215.id, spell_level: 6)
  summon_monster_VI_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp215.id, spell_level: 6)
  # summon_monster_VI_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: sp215.id, spell_level: 5)

sp216 = Spell.create!(name: "Summon Monster VII", description: "This spell functions like summon monster I, except that you can summon one creature from the 7th-level list, 1d3 creatures of the same kind from the 6th-level list, or 1d4+1 creatures of the same kind from a lower-level list.", target: "one summoned creature", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp216.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp216.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp216.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp216.id, component_id: focus.id, item: "a tiny bag and a small candle")
  SpellComponent.create!(spell_id: sp216.id, component_id: divine_focus.id, item: nil)
  summon_monster_VII_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp216.id, spell_level: 7)
  # summon_monster_VII_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: sp216.id, spell_level: 7)
  summon_monster_VII_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp216.id, spell_level: 7)
  summon_monster_VII_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp216.id, spell_level: 7)
  # summon_monster_VII_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: sp216.id, spell_level: 6)
  summon_monster_VII_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp216.id, spell_level: 5)

sp217 = Spell.create!(name: "Summon Monster VIII", description: "This spell functions like summon monster I, except that you can summon one creature from the 8th-level list, 1d3 creatures of the same kind from the 7th-level list, or 1d4+1 creatures of the same kind from a lower-level list.", target: "one summoned creature", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp217.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp217.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp217.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp217.id, component_id: focus.id, item: "a tiny bag and a small candle")
  SpellComponent.create!(spell_id: sp217.id, component_id: divine_focus.id, item: nil)
  summon_monster_VIII_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp217.id, spell_level: 8)
  # summon_monster_VIII_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: sp217.id, spell_level: 8)
  summon_monster_VIII_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp217.id, spell_level: 8)
  summon_monster_VIII_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp217.id, spell_level: 8)
  summon_monster_VIII_summoner = SpellListSpell.create!(spell_list_id: summoner_spell_list.id, spell_id: sp217.id, spell_level: 6)

sp218 = Spell.create!(name: "Summon Monster IX", description: "This spell functions like summon monster I, except that you can summon one creature from the 9th-level list, 1d3 creatures of the same kind from the 8th-level list, or 1d4+1 creatures of the same kind from a lower-level list.", target: "one summoned creature", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp218.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp218.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp218.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp218.id, component_id: focus.id, item: "a tiny bag and a small candle")
  SpellComponent.create!(spell_id: sp218.id, component_id: divine_focus.id, item: nil)
  summon_monster_IX_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp218.id, spell_level: 9)
  # summon_monster_IX_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: sp218.id, spell_level: 9)
  summon_monster_IX_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp218.id, spell_level: 9)
  summon_monster_IX_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp218.id, spell_level: 9)

  FeatureCastableSpell.create!(feature_id: chaos_domain3_feature.id, spell_id: sp218.id, added_to_known_spells: false, applicable_spell_level: 9, bonus_spell_slot_option: true)

sp219 = Spell.create!(name: "Goodberry", description: "Casting goodberry makes 2d4 freshly picked berries magical. You (as well as any other druid of 3rd or higher level) can immediately discern which berries are affected. Each transmuted berry provides nourishment as if it were a normal meal for a Medium creature. The berry also cures 1 point of damage when eaten, subject to a maximum of 8 points of such curing in any 24-hour period.", target: "2d4 fresh berries touched", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 day/level", time: 1, unit_of_time: "day", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp219.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp219.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp219.id, component_id: divine_focus.id, item: nil)
  # goodberry_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp219.id, spell_level: 1)
  # goodberry_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp219.id, spell_level: 1)

  AlternateRacialTraitAssociatedSpell.create!(alternate_racial_trait_id: AlternateRacialTrait.find_by!(name: "Grapevine").id, spell_id: sp219.id)


sp220 = Spell.create!(name: "Pass Without Trace", description: "The subject or subjects of this spell do not leave footprints or a scent trail while moving. Tracking the subjects is impossible by non-magical means.", target: "The subject or subjects of this spell do not leave footprints or a scent trail while moving. Tracking the subjects is impossible by non-magical means.", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 hour/level", time: 1, unit_of_time: "hour", increase_per_level: 1, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp220.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp220.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp220.id, component_id: divine_focus.id, item: nil)
  # pass_without_trace_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp220.id, spell_level: 1)
  pass_without_trace_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp220.id, spell_level: 1)
  # pass_without_trace_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp220.id, spell_level: 1)

  RacialTraitAssociatedSpell.create!(racial_trait_id: RacialTrait.find_by!(name: "Pass Without Trace").id, spell_id: sp220.id)

  print "220 Spells Created \r"

sp221 = Spell.create!(name: "Flare", description: "This cantrip creates a burst of light. If you cause the light to burst in front of a single creature, that creature is dazzled for 1 minute unless it makes a successful Fortitude save. Sightless creatures, as well as creatures already dazzled, are not affected by flare.", target: "burst of light", saving_throw: "Fortitude", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp221.id, subschool_id: light.id)
  SpellComponent.create!(spell_id: sp221.id, component_id: verbal.id, item: nil)
  flare_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp221.id, spell_level: 0)
  # flare_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp221.id, spell_level: 0)
  flare_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp221.id, spell_level: 0)
  # flare_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: sp221.id, spell_level: 0)
  flare_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp221.id, spell_level: 0)

sp222 = Spell.create!(name: "Darkness", description: "This spell causes an object to radiate darkness out to a 20-foot radius. This darkness causes the illumination level in the area to drop one step, from bright light to normal light, from normal light to dim light, or from dim light to darkness. This spell has no effect in an area that is already dark. Creatures with light vulnerability or sensitivity take no penalties in normal light. All creatures gain concealment (20% miss chance) in dim light. All creatures gain total concealment (50% miss chance) in darkness. Creatures with darkvision can see in an area of dim light or darkness without penalty. Nonmagical sources of light, such as torches and lanterns, do not increase the light level in an area of darkness. Magical light sources only increase the light level in an area if they are of a higher spell level than darkness.

If darkness is cast on a small object that is then placed inside or under a lightproof covering, the spell’s effect is blocked until the covering is removed.

This spell does not stack with itself. Darkness can be used to counter or dispel any light spell of equal or lower spell level.", target: "object touched", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: touch.id, magic_school_id: evocation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp222.id, subschool_id: darkness.id)
  SpellComponent.create!(spell_id: sp222.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp222.id, component_id: material.id, item: "bat fur and a piece of coal")
  SpellComponent.create!(spell_id: sp222.id, component_id: divine_focus.id, item: nil)
  # darkness_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin_spell_list.id, spell_id: sp222.id, spell_level: 2)
  darkness_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp222.id, spell_level: 2)
  darkness_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp222.id, spell_level: 2)
  # darkness_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: sp222.id, spell_level: 2)
  darkness_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp222.id, spell_level: 2)
  # darkness_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp222.id, spell_level: 2)
  darkness_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp222.id, spell_level: 2)

  RacialTraitAssociatedSpell.create!(racial_trait_id: RacialTrait.find_by!(description: 'Tieflings can use darkness once per day as a spell-like ability. The caster level for this ability equals the tiefling’s class level.').id, spell_id: sp222.id)


sp223 = Spell.create!(name: "Ray of Frost", description: "A ray of freezing air and ice projects from your pointing finger. You must succeed on a ranged touch attack with the ray to deal damage to a target. The ray deals 1d3 points of cold damage.", target: "ray", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp223.id, subschool_id: cold.id)
  SpellComponent.create!(spell_id: sp223.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp223.id, component_id: somatic.id, item: nil)
  ray_of_frost_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp223.id, spell_level: 0)
  ray_of_frost_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp223.id, spell_level: 0)

sp224 = Spell.create!(name: "Ghost Sound", description: "Ghost sound allows you to create a volume of sound that rises, recedes, approaches, or remains at a fixed place. You choose what type of sound ghost sound creates when casting it and cannot thereafter change the sound’s basic character.

The volume of sound created depends on your level. You can produce as much noise as four normal humans per caster level (maximum 40 humans). Thus, talking, singing, shouting, walking, marching, or running sounds can be created. The noise a ghost sound spell produces can be virtually any type of sound within the volume limit. A horde of rats running and squeaking is about the same volume as eight humans running and shouting. A roaring lion is equal to the noise from 16 humans, while a roaring dragon is equal to the noise from 32 humans. Anyone who hears a ghost sound receives a Will save to disbelieve.

Ghost sound can enhance the effectiveness of a silent image spell.

Ghost sound can be made permanent with a permanency spell.", target: "illusory sounds", saving_throw: "Will", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: illusion.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp224.id, subschool_id: figment.id)
  SpellComponent.create!(spell_id: sp224.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp224.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp224.id, component_id: material.id, item: "a bit of wool or a small lump of wax")
  ghost_sound_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp224.id, spell_level: 0)
  ghost_sound_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp224.id, spell_level: 0)
  # ghost_sound_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: sp224.id, spell_level: 0)
  ghost_sound_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp224.id, spell_level: 0)

sp225 = Spell.create!(name: "Disrupt Undead", description: "You direct a ray of positive energy. You must make a ranged touch attack to hit, and if the ray hits an undead creature, it deals 1d6 points of damage to it.", target: "ray", saving_throw: "none", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: necromancy.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp225.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp225.id, component_id: somatic.id, item: nil)
  # disrupt_undead_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: sp225.id, spell_level: 0)
  disrupt_undead_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp225.id, spell_level: 0)
  disrupt_undead_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp225.id, spell_level: 0)

sp226 = Spell.create!(name: "Grease", description: "A grease spell covers a solid surface with a layer of slippery grease. Any creature in the area when the spell is cast must make a successful Reflex save or fall. A creature can walk within or through the area of grease at half normal speed with a DC 10 Acrobatics check. Failure means it can’t move that round (and must then make a Reflex save or fall), while failure by 5 or more means it falls (see the Acrobatics skill for details). Creatures that do not move on their turn do not need to make this check and are not considered flat-footed.

The spell can also be used to create a greasy coating on an item. Material objects not in use are always affected by this spell, while an object wielded or employed by a creature requires its bearer to make a Reflex saving throw to avoid the effect. If the initial saving throw fails, the creature immediately drops the item. A saving throw must be made in each round that the creature attempts to pick up or use the greased item. A creature wearing greased armor or clothing gains a +10 circumstance bonus on Escape Artist checks and combat maneuver checks made to escape a grapple, and to their CMD to avoid being grappled.", target: "one object of 10-ft. square", saving_throw: "Reflex", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp226.id, subschool_id: creation.id)
  SpellComponent.create!(spell_id: sp226.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp226.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp226.id, component_id: material.id, item: "butter")
  grease_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp226.id, spell_level: 1)
  grease_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp226.id, spell_level: 1)
  grease_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp226.id, spell_level: 1)
  # grease_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: sp226.id, spell_level: 1)

sp227 = Spell.create!(name: "Frostbite", description: "Your melee touch attack deals 1d6 points of nonlethal cold damage + 1 point per level, and the target is fatigued. The fatigued condition ends when the target recovers from the nonlethal damage. This spell cannot make a creature exhausted even if it is already fatigued. You can use this melee touch attack up to one time per level.", target: "creature touched", saving_throw: "none", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp227.id, subschool_id: cold.id)
  SpellComponent.create!(spell_id: sp227.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp227.id, component_id: somatic.id, item: nil)
  # frostbite_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager_spell_list.id, spell_id: sp227.id, spell_level: 1)
  # frostbite_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp227.id, spell_level: 1)
  frostbite_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp227.id, spell_level: 1)
  # frostbite_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp227.id, spell_level: 1)
  frostbite_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp227.id, spell_level: 1)

sp228 = Spell.create!(name: "Shocking Grasp", description: "Your successful melee touch attack deals 1d6 points of electricity damage per caster level (maximum 5d6). When delivering the jolt, you gain a +3 bonus on attack rolls if the opponent is wearing metal armor (or is carrying a metal weapon or is made of metal).", target: "creature or object touched", saving_throw: "none", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp228.id, subschool_id: electricity.id)
  SpellComponent.create!(spell_id: sp228.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp228.id, component_id: somatic.id, item: nil)
  # shocking_grasp_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager_spell_list.id, spell_id: sp228.id, spell_level: 1)
  shocking_grasp_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp228.id, spell_level: 1)
  shocking_grasp_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp228.id, spell_level: 1)

sp229 = Spell.create!(name: "Blend", description: "You draw upon your elven link to the wilderness to change the coloration of yourself and your equipment to match that of your surroundings. This grants you a +4 circumstance bonus on Stealth checks and allows you to make Stealth checks without cover or concealment, but only while you move no more than half your base speed or less. If you move more than half your base speed on your turn, you gain no benefit from this spell until the start of your next turn. If you make an attack, this spell ends (as invisibility).", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: illusion.id, duration: "10 minutes/level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp229.id, subschool_id: glamer.id)
  SpellComponent.create!(spell_id: sp229.id, component_id: somatic.id, item: nil)
  blend_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: sp229.id, spell_level: 1)
  # blend_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp229.id, spell_level: 1)
  blend_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp229.id, spell_level: 1)
  # blend_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: sp229.id, spell_level: 1)
  blend_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: sp229.id, spell_level: 1)
  # blend_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp229.id, spell_level: 1)
  blend_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp229.id, spell_level: 1)
  blend_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp229.id, spell_level: 1)

sp230 = Spell.create!(name: "Cause Fear", description: "The affected creature becomes frightened. If the subject succeeds on a Will save, it is shaken for 1 round. Creatures with 6 or more HD are immune to this effect. Cause fear counters and dispels remove fear.", target: "one living creature with 5 or fewer HD", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: necromancy.id, duration: "1d4 rounds or 1 round", time: 1, unit_of_time: "round", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp230.id, subschool_id: emotion.id)
  SpellSubschool.create!(spell_id: sp230.id, subschool_id: fear.id)
  SpellSubschool.create!(spell_id: sp230.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp230.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp230.id, component_id: somatic.id, item: nil)
  # cause_fear_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin_spell_list.id, spell_id: sp230.id, spell_level: 1)
  cause_fear_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp230.id, spell_level: 1)
  # cause_fear_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager_spell_list.id, spell_id: sp230.id, spell_level: 1)
  cause_fear_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp230.id, spell_level: 1)
  # cause_fear_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: sp230.id, spell_level: 1)
  # cause_fear_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: sp230.id, spell_level: 1)
  # cause_fear_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: sp230.id, spell_level: 1)
  cause_fear_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp230.id, spell_level: 1)
  cause_fear_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp230.id, spell_level: 1)

  print "230 Spells Created \r"


sp231 = Spell.create!(name: "Command", description: "You give the subject a single command, which it obeys to the best of its ability at its earliest opportunity. You may select from the following options.

Approach: On its turn, the subject moves toward you as quickly and directly as possible for 1 round. The creature may do nothing but move during its turn, and it provokes attacks of opportunity for this movement as normal.

Drop: On its turn, the subject drops whatever it is holding. It can’t pick up any dropped item until its next turn.

Fall: On its turn, the subject falls to the ground and remains prone for 1 round. It may act normally while prone but takes any appropriate penalties.

Flee: On its turn, the subject moves away from you as quickly as possible for 1 round. It may do nothing but move during its turn, and it provokes attacks of opportunity for this movement as normal.

Halt: The subject stands in place for 1 round. It may not take any actions but is not considered helpless.

If the subject can’t carry out your command on its next turn, the spell automatically fails.", target: "one living creature", saving_throw: "Will", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: enchantment.id, duration: "1 round", time: 1, unit_of_time: "round", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp231.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: sp231.id, subschool_id: language_dependent.id)
  SpellSubschool.create!(spell_id: sp231.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp231.id, component_id: verbal.id, item: nil)
  # command_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin_spell_list.id, spell_id: sp231.id, spell_level: 1)
  command_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp231.id, spell_level: 1)
  # command_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: sp231.id, spell_level: 1)
  # command_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: sp231.id, spell_level: 1)
  command_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp231.id, spell_level: 1)

sp232 = Spell.create!(name: "Mudball", description: "When you cast this spell, you conjure a single ball of sticky mud and launch it at an enemy’s face as a ranged touch attack. If the mudball hits, the target is blinded. Each round at the beginning of its turn, a creature blinded by this spell can attempt a Reflex saving throw to shake off the mud, ending the effect. The mudball can also be wiped off by the creature affected by it or by a creature adjacent to the creature affected by it as a standard action.", target: "single fist-sized blog of sticky mud", saving_throw: "Reflex", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp232.id, subschool_id: creation.id)
  SpellSubschool.create!(spell_id: sp232.id, subschool_id: earth.id)
  SpellComponent.create!(spell_id: sp232.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp232.id, component_id: somatic.id, item: nil)
  # mudball_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager_spell_list.id, spell_id: sp232.id, spell_level: 1)
  # mudball_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp232.id, spell_level: 1)
  mudball_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp232.id, spell_level: 1)
  mudball_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp232.id, spell_level: 1)
  mudball_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: sp232.id, spell_level: 1)

sp233 = Spell.create!(name: "Color Spray", description: "A vivid cone of clashing colors springs forth from your hand, causing creatures to become stunned, perhaps also blinded, and possibly knocking them unconscious. Each creature within the cone is affected according to its HD.

2 HD or less: The creature is unconscious, blinded, and stunned for 2d4 rounds, then blinded and stunned for 1d4 rounds, and then stunned for 1 round. (Only living creatures are knocked unconscious.)

3 or 4 HD: The creature is blinded and stunned for 1d4 rounds, then stunned for 1 round.

5 or more HD: The creature is stunned for 1 round.

Sightless creatures are not affected by color spray.", target: "cone-shaped burst", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: fifteen_feet.id, magic_school_id: illusion.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp233.id, subschool_id: pattern.id)
  SpellSubschool.create!(spell_id: sp233.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp233.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp233.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp233.id, component_id: material.id, item: "red, yellow, and blue powder or colored sand")
  # color_spray_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager_spell_list.id, spell_id: sp233.id, spell_level: 1)
  color_spray_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp233.id, spell_level: 1)
  # color_spray_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: sp233.id, spell_level: 1)
  color_spray_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp233.id, spell_level: 1)

sp234 = Spell.create!(name: "Burning Disarm", description: "This spell causes a metal object to instantly become red hot. A creature holding the item may attempt a Reflex save to drop it and take no damage (even if it is not their turn), otherwise the hot metal deals 1d4 points of fire damage per caster level (maximum 5d4). Circumstances that prevent the creature from dropping the item (such as a locked gauntlet) mean the creature gets no saving throw. The heat does not harm the item, and it does not get hot enough or last long enough to ignite flammable objects. The item cools to its previous temperature almost instantly. If cast underwater, burning disarm deals half damage and boils the surrounding water.", target: "Held metal item of one creature or 15 lbs. of unattended metal", saving_throw: "Reflex", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp234.id, subschool_id: fire.id)
  SpellComponent.create!(spell_id: sp234.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp234.id, component_id: somatic.id, item: nil)
  burning_disarm_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp234.id, spell_level: 1)
  # burning_disarm_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: sp234.id, spell_level: 1)
  burning_disarm_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: sp234.id, spell_level: 1)

sp235 = Spell.create!(name: "Deivon's Parry", description: "Originally designed by an Aldori magus who had long admired swashbucklers for their ability to deflect blows, Deivon’s parry has swiftly gained popularity among bards and magi alike. Your reflexes snap into action, allowing you to deflect a blow. This spell can be cast only when an opponent makes a melee attack against you, and only before the attack roll has been made. Make a parry attempt with a light or one-handed weapon you’re wielding, as if using the swashbuckler’s opportune parry and riposte deed (except that this does not require panache). You cannot riposte as part of this spell’s effect.", target: "you", saving_throw: "none", spell_resistance: false, action_id: immediate.id, spell_range_id: personal.id, magic_school_id: transmutation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp235.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp235.id, component_id: somatic.id, item: nil)
  deivons_parry_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp235.id, spell_level: 1)
  deivons_parry_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp235.id, spell_level: 1)

sp236 = Spell.create!(name: "Fallback Strategy", description: "While this spell is active, you may reroll one attack roll, combat maneuver check, or skill check before the result of the roll or check is known. You must take the result of the reroll, even if it’s worse than the original roll. Once the reroll is used, the spell ends. You can have no more than one fallback strategy active on you at the same time.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: abjuration.id, duration: "1 minute/level or until discharged", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp236.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp236.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp236.id, component_id: divine_focus.id, item: nil)
  fallback_strategy_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp236.id, spell_level: 1)
  # fallback_strategy_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: sp236.id, spell_level: 1)
  # fallback_strategy_paladin = SpellListSpell.create!(spell_list_id: paladin_spell_list.id, spell_id: sp236.id, spell_level: 1)
  fallback_strategy_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp236.id, spell_level: 1)

sp237 = Spell.create!(name: "Weaponwand", description: "When you cast this spell on a weapon, you cause a portion of the weapon to open like the skin of a partially peeled apple, revealing a space large enough to insert a single wand within. As part of the spell’s casting, you can insert a single wand into the weapon, at which point the weapon returns to its original form with the wand held inside of it without negatively impacting the weapon’s integrity. For the spell’s duration, a character who wields the transmuted weapon is also considered to be wielding the wand as well. You can attack normally with the weapon or use the weapon as if it were the encased wand. If the effect created by the wand requires an attack roll to successfully strike a foe, you may make the attack roll as if you were making an attack with the weapon at its highest bonus (including any bonuses the weapon would normally receive) rather than just a normal attack with the wand—doing so does not allow you to add the weapon’s damage to the wand’s attack roll, but instead allows you to use your skill with the weapon to boost your chance of hitting with the spell.

At the end of the spell’s duration, the encased wand is ejected from the weapon. If you have a free hand, you may catch the weapon as a free action; otherwise, the wand drops to the ground. If the weapon housing the wand is broken or destroyed during the duration of weaponwand, the encased wand is similarly broken or destroyed.", target: "one weapon", saving_throw: "Will", spell_resistance: true, action_id: full_round.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 minute/level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp237.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp237.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp237.id, component_id: focus.id, item: "a magic wand")
  weaponwand_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: sp237.id, spell_level: 1)
  weaponwand_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sp237.id, spell_level: 1)
  # weaponwand_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: sp237.id, spell_level: 1)
  weaponwand_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: sp237.id, spell_level: 1)

create_water = Spell.create!(name: "Create Water", description: "This spell generates wholesome, drinkable water, just like clean rain water. Water can be created in an area as small as will actually contain the liquid, or in an area three times as large — possibly creating a downpour or filling many small receptacles. This water disappears after 1 day if not consumed.", target: "up to 2 gallons of water/level", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: create_water.id, subschool_id: creation.id)
  SpellSubschool.create!(spell_id: create_water.id, subschool_id: water.id)
  SpellComponent.create!(spell_id: create_water.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: create_water.id, component_id: somatic.id, item: nil)
  create_water_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: create_water.id, spell_level: 0)
  # create_water_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: create_water.id, spell_level: 0)
  # create_water_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: create_water.id, spell_level: 0)
  # create_water_paladin = SpellListSpell.create!(spell_list_id: paladin_spell_list.id, spell_id: create_water.id, spell_level: 1)
  # create_water_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: create_water.id, spell_level: 0)

purify_food_and_drink = Spell.create!(name: "Purify Food and Drink", description: "This spell makes spoiled, rotten, diseased, poisonous, or otherwise contaminated food and water pure and suitable for eating and drinking. This spell does not prevent subsequent natural decay or spoilage. Unholy water and similar food and drink of significance is spoiled by purify food and drink, but the spell has no effect on creatures of any type nor upon magic potions. Water weighs about 8 pounds per gallon. One cubic foot of water contains roughly 8 gallons and weighs about 60 pounds.", target: "1 cu. ft./level of contaminated food and water", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: ten_feet.id, magic_school_id: transmutation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: purify_food_and_drink.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: purify_food_and_drink.id, component_id: somatic.id, item: nil)
  purify_food_and_drink_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: purify_food_and_drink.id, spell_level: 0)
  # purify_food_and_drink_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: purify_food_and_drink.id, spell_level: 0)
  # purify_food_and_drink_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: purify_food_and_drink.id, spell_level: 0)

virtue = Spell.create!(name: "Virtue", description: "With a touch, you infuse a creature with a tiny surge of life, granting the subject 1 temporary hit point.", target: "creature touched", saving_throw: "none", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 min.", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: virtue.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: virtue.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: virtue.id, component_id: divine_focus.id, item: nil)
  virtue_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: virtue.id, spell_level: 0)
  # virtue_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: virtue.id, spell_level: 0)
  # virtue_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: virtue.id, spell_level: 0)
  # virtue_paladin = SpellListSpell.create!(spell_list_id: paladin_spell_list.id, spell_id: virtue.id, spell_level: 1)
  # virtue_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: virtue.id, spell_level: 0)
  # virtue_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: virtue.id, spell_level: 0)

  print "240 Spells Created \r"


bane = Spell.create!(name: "Bane", description: "Bane fills your enemies with fear and doubt. Each affected creature takes a -1 penalty on attack rolls and a -1 penalty on saving throws against fear effects. Bane counters and dispels bless.", target: "50-ft.-radius burst, centered on you", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: fifty_feet.id, magic_school_id: enchantment.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: bane.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: bane.id, subschool_id: emotion.id)
  SpellSubschool.create!(spell_id: bane.id, subschool_id: fear.id)
  SpellSubschool.create!(spell_id: bane.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: bane.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: bane.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: bane.id, component_id: divine_focus.id, item: nil)
  # bane_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin_spell_list.id, spell_id: bane.id, spell_level: 1)
  bane_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: bane.id, spell_level: 1)
  # bane_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: bane.id, spell_level: 1)
  # bane_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: bane.id, spell_level: 1)

bless = Spell.create!(name: "Bless", description: "Bless fills your allies with courage. Each ally gains a +1 morale bonus on attack rolls and on saving throws against fear effects. Bless counters and dispels bane.", target: "The caster and all allies within a 50-ft. burst, centered on the caster", saving_throw: "none", spell_resistance: true, action_id: standard.id, spell_range_id: fifty_feet.id, magic_school_id: enchantment.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: bless.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: bless.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: bless.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: bless.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: bless.id, component_id: divine_focus.id, item: nil)
  bless_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: bless.id, spell_level: 1)
  # bless_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: bless.id, spell_level: 1)
  # bless_paladin = SpellListSpell.create!(spell_list_id: paladin_spell_list.id, spell_id: bless.id, spell_level: 1)
  # bless_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: bless.id, spell_level: 1)

bless_water = Spell.create!(name: "Bless Water", description: "This transmutation imbues a flask (1 pint) of water with positive energy, turning it into holy water.", target: "flask of water touched", saving_throw: "Will", spell_resistance: true, action_id: one_minute.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: bless_water.id, subschool_id: good.id)
  SpellComponent.create!(spell_id: bless_water.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: bless_water.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: bless_water.id, component_id: material.id, item: "5 pounds of powdered silver worth 25 gp")
  bless_water_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: bless_water.id, spell_level: 1)
  # bless_water_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: bless_water.id, spell_level: 1)
  # bless_water_paladin = SpellListSpell.create!(spell_list_id: paladin_spell_list.id, spell_id: bless_water.id, spell_level: 1)

curse_water = Spell.create!(name: "Curse Water", description: "This spell imbues a flask (1 pint) of water with negative energy, turning it into unholy water. Unholy water damages good outsiders the way holy water damages undead and evil outsiders.", target: "flask of water touched", saving_throw: "Will", spell_resistance: true, action_id: one_minute.id, spell_range_id: touch.id, magic_school_id: necromancy.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: curse_water.id, subschool_id: evil.id)
  SpellComponent.create!(spell_id: curse_water.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: curse_water.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: curse_water.id, component_id: material.id, item: "5 pounds of powdered silver worth 25 gp")
  # curse_water_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin_spell_list.id, spell_id: curse_water.id, spell_level: 1)
  curse_water_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: curse_water.id, spell_level: 1)
  # curse_water_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: curse_water.id, spell_level: 1)

detect_chaos = Spell.create!(name: "Detect Chaos", description: "You can sense the presence of chaos. The amount of information revealed depends on how long you study a particular area or subject.

1st Round: Presence or absence of chaos.

2nd Round: Number of chaotic auras (creatures, objects, or spells) in the area and the power of the most potent chaos aura present.

If you are of lawful alignment, and the strongest chaos aura’s power is overwhelming (see below), and the HD or level of the aura’s source is at least twice your character level, you are stunned for 1 round and the spell ends.

3rd Round: The power and location of each aura. If an aura is outside your line of sight, then you discern its direction but not its exact location.


Aura Power
A chaos aura’s power depends on the type of chaos creature or object that you’re detecting and its HD, caster level, or (in the case of a cleric) class level; see the table below. If an aura falls into more than one strength category, the spell indicates the stronger of the two.

Creature/Object	Aura Power
None	Faint	Moderate	Strong	Overwhelming
Aligned creature(1) (HD)	4 or lower	5-10	11-25	26-50	51 or higher
Aligned Undead (HD)	—	2 or lower	3-8	9-20	21 or higher
Aligned Outsider (HD)	—	1 or lower	2-4	5-10	11 or higher
Cleric or paladin of an aligned deity(2) (class levels)	—	1	2-4	5-10	11 or higher
Aligned magic item or spell (caster level)	5 or lower	6-10	11-15	16-20	21 or higher
(1) Except for Undead and Outsider, which have their own entries on the table.

(2) Some characters who are not clerics may radiate an aura of equivalent power. The class description will indicate whether this applies.

Lingering Aura: A chaos aura lingers after its original source dissipates (in the case of a spell) or is destroyed (in the case of a creature or magic item). If detect chaos is cast and directed at such a location, the spell indicates an aura strength of dim (even weaker than a faint aura). How long the aura lingers at this dim level depends on its original power:

Original Strength	Duration of Lingering Aura
Faint	1d6 rounds
Moderate	1d6 minutes
Strong	1d6x10 minutes
Overwhelming	1d6 days
Animals, traps, poisons, and other potential perils are not chaotic, and as such this spell does not detect them. Creatures with actively chaotic intents count as chaotic creatures for the purpose of this spell.

Each round, you can turn to detect chaos in a new area. The spell can penetrate barriers, but 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt blocks it.", target: "cone-shaped emanation", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: sixty_feet.id, magic_school_id: divination.id, duration: "concentration, up to 10 min./ level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: true, concentration: true)
  SpellComponent.create!(spell_id: detect_chaos.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: detect_chaos.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: detect_chaos.id, component_id: divine_focus.id, item: nil)
  detect_evil_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: detect_chaos.id, spell_level: 1)
  # detect_evil_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: detect_chaos.id, spell_level: 1)
  # detect_evil_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: detect_chaos.id, spell_level: 1)

detect_good = Spell.create!(name: "Detect Good", description: "You can sense the presence of good. The amount of information revealed depends on how long you study a particular area or subject.

1st Round: Presence or absence of good.

2nd Round: Number of good auras (creatures, objects, or spells) in the area and the power of the most potent good aura present.

If you are of lawful alignment, and the strongest good aura’s power is overwhelming (see below), and the HD or level of the aura’s source is at least twice your character level, you are stunned for 1 round and the spell ends.

3rd Round: The power and location of each aura. If an aura is outside your line of sight, then you discern its direction but not its exact location.


Aura Power
A good aura’s power depends on the type of good creature or object that you’re detecting and its HD, caster level, or (in the case of a cleric) class level; see the table below. If an aura falls into more than one strength category, the spell indicates the stronger of the two.

Creature/Object	Aura Power
None	Faint	Moderate	Strong	Overwhelming
Aligned creature(1) (HD)	4 or lower	5-10	11-25	26-50	51 or higher
Aligned Undead (HD)	—	2 or lower	3-8	9-20	21 or higher
Aligned Outsider (HD)	—	1 or lower	2-4	5-10	11 or higher
Cleric or paladin of an aligned deity(2) (class levels)	—	1	2-4	5-10	11 or higher
Aligned magic item or spell (caster level)	5 or lower	6-10	11-15	16-20	21 or higher
(1) Except for Undead and Outsider, which have their own entries on the table.

(2) Some characters who are not clerics may radiate an aura of equivalent power. The class description will indicate whether this applies.

Lingering Aura: A good aura lingers after its original source dissipates (in the case of a spell) or is destroyed (in the case of a creature or magic item). If detect good is cast and directed at such a location, the spell indicates an aura strength of dim (even weaker than a faint aura). How long the aura lingers at this dim level depends on its original power:

Original Strength	Duration of Lingering Aura
Faint	1d6 rounds
Moderate	1d6 minutes
Strong	1d6x10 minutes
Overwhelming	1d6 days
Animals, traps, poisons, and other potential perils are not good, and as such this spell does not detect them. Creatures with actively good intents count as good creatures for the purpose of this spell.

Each round, you can turn to detect good in a new area. The spell can penetrate barriers, but 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt blocks it.", target: "cone-shaped emanation", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: sixty_feet.id, magic_school_id: divination.id, duration: "concentration, up to 10 min./ level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: true, concentration: true)
  SpellComponent.create!(spell_id: detect_good.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: detect_good.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: detect_good.id, component_id: divine_focus.id, item: nil)
  detect_evil_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: detect_good.id, spell_level: 1)
  # detect_evil_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: detect_good.id, spell_level: 1)
  # detect_evil_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: detect_good.id, spell_level: 1)

detect_law = Spell.create!(name: "Detect Law", description: "You can sense the presence of law. The amount of information revealed depends on how long you study a particular area or subject.

1st Round: Presence or absence of law.

2nd Round: Number of lawful auras (creatures, objects, or spells) in the area and the power of the most potent lawful aura present.

If you are of lawful alignment, and the strongest lawful aura’s power is overwhelming (see below), and the HD or level of the aura’s source is at least twice your character level, you are stunned for 1 round and the spell ends.

3rd Round: The power and location of each aura. If an aura is outside your line of sight, then you discern its direction but not its exact location.


Aura Power
A law aura’s power depends on the type of lawful creature or object that you’re detecting and its HD, caster level, or (in the case of a cleric) class level; see the table below. If an aura falls into more than one strength category, the spell indicates the stronger of the two.

Creature/Object	Aura Power
None	Faint	Moderate	Strong	Overwhelming
Aligned creature(1) (HD)	4 or lower	5-10	11-25	26-50	51 or higher
Aligned Undead (HD)	—	2 or lower	3-8	9-20	21 or higher
Aligned Outsider (HD)	—	1 or lower	2-4	5-10	11 or higher
Cleric or paladin of an aligned deity(2) (class levels)	—	1	2-4	5-10	11 or higher
Aligned magic item or spell (caster level)	5 or lower	6-10	11-15	16-20	21 or higher
(1) Except for Undead and Outsider, which have their own entries on the table.

(2) Some characters who are not clerics may radiate an aura of equivalent power. The class description will indicate whether this applies.

Lingering Aura: A law aura lingers after its original source dissipates (in the case of a spell) or is destroyed (in the case of a creature or magic item). If detect law is cast and directed at such a location, the spell indicates an aura strength of dim (even weaker than a faint aura). How long the aura lingers at this dim level depends on its original power:

Original Strength	Duration of Lingering Aura
Faint	1d6 rounds
Moderate	1d6 minutes
Strong	1d6x10 minutes
Overwhelming	1d6 days
Animals, traps, poisons, and other potential perils are not lawful, and as such this spell does not detect them. Creatures with actively lawful intents count as lawful creatures for the purpose of this spell.

Each round, you can turn to detect law in a new area. The spell can penetrate barriers, but 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt blocks it.", target: "cone-shaped emanation", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: sixty_feet.id, magic_school_id: divination.id, duration: "concentration, up to 10 min./ level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: true, concentration: true)
  SpellComponent.create!(spell_id: detect_law.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: detect_law.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: detect_law.id, component_id: divine_focus.id, item: nil)
  detect_evil_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: detect_law.id, spell_level: 1)
  # detect_evil_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor.id, spell_id: detect_law.id, spell_level: 1)
  # detect_evil_shaman = SpellListSpell.create!(spell_list_id: shaman.id, spell_id: detect_law.id, spell_level: 1)

detect_undead = Spell.create!(name: "Detect Undead", description: "You can detect the aura that surrounds undead creatures. The amount of information revealed depends on how long you study a particular area.

1st Round: Presence or absence of undead auras.

2nd Round: Number of undead auras in the area and the strength of the strongest undead aura present. If you are of good alignment, and the strongest undead aura’s strength is overwhelming (see below), and the creature has HD of at least twice your character level, you are stunned for 1 round and the spell ends.

3rd Round: The strength and location of each undead aura. If an aura is outside your line of sight, then you discern its direction but not its exact location.

Aura Strength: The strength of an undead aura is determined by the HD of the undead creature, as given on the table below.

Lingering Aura: An undead aura lingers after its original source is destroyed. If detect undead is cast and directed at such a location, the spell indicates an aura strength of dim (even weaker than a faint aura). How long the aura lingers at this dim level depends on its original power, as given on the table below.

HD	Strength	Lingering Aura Duration
1 or lower	Faint	1d6 rounds
2-4	Moderate	1d6 minutes
5-10	Strong	1d6 x 10 minutes
11 or higher	Overwhelming	1d6 days

Each round, you can turn to detect undead in a new area. The spell can penetrate barriers, but 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt blocks it.", target: "cone-shaped emanation", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: sixty_feet.id, magic_school_id: divination.id, duration: "concentration, up to 1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: true)
  SpellComponent.create!(spell_id: detect_undead.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: detect_undead.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: detect_undead.id, component_id: material.id, item: "earth from a grave")
  SpellComponent.create!(spell_id: detect_undead.id, component_id: divine_focus.id, item: nil)
  detect_undead_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: detect_undead.id, spell_level: 1)
  detect_undead_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: detect_undead.id, spell_level: 1)
  # detect_undead_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: detect_undead.id, spell_level: 1)
  # detect_undead_paladin = SpellListSpell.create!(spell_list_id: paladin_spell_list.id, spell_id: detect_undead.id, spell_level: 1)
  # detect_undead_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: detect_undead.id, spell_level: 1)
  # detect_undead_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: detect_undead.id, spell_level: 1)
  detect_undead_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: detect_undead.id, spell_level: 1)

divine_favor = Spell.create!(name: "Divine Favor", description: "Calling upon the strength and wisdom of a deity, you gain a +1 luck bonus on attack and weapon damage rolls for every three caster levels you have (at least +1, maximum +3). The bonus doesn’t apply to spell damage.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: evocation.id, duration: "1 minute", time: 1, unit_of_time: "minute", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: divine_favor.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: divine_favor.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: divine_favor.id, component_id: divine_focus.id, item: nil)
  divine_favor_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: divine_favor.id, spell_level: 1)
  # divine_favor_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: divine_favor.id, spell_level: 1)
  # divine_favor_paladin = SpellListSpell.create!(spell_list_id: paladin_spell_list.id, spell_id: divine_favor.id, spell_level: 1)

doom = Spell.create!(name: "Doom", description: "This spell fills a single subject with a feeling of horrible dread that causes it to become shaken.", target: "one living creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: medium.id, magic_school_id: necromancy.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: doom.id, subschool_id: emotion.id)
  SpellSubschool.create!(spell_id: doom.id, subschool_id: fear.id)
  SpellSubschool.create!(spell_id: doom.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: doom.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: doom.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: doom.id, component_id: divine_focus.id, item: nil)
  # doom_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin_spell_list.id, spell_id: doom.id, spell_level: 1)
  doom_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: doom.id, spell_level: 1)
  # doom_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: doom.id, spell_level: 1)
  # doom_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: doom.id, spell_level: 1)

  print "250 Spells Created \r"

entropic_shield = Spell.create!(name: "Entropic Shield", description: "A magical field appears around you, glowing with a chaotic blast of multicolored hues. This field deflects incoming arrows, rays, and other ranged attacks. Each ranged attack directed at you for which the attacker must make an attack roll has a 20% miss chance (similar to the effects of concealment). Other attacks that simply work at a distance are not affected.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: abjuration.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: entropic_shield.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: entropic_shield.id, component_id: somatic.id, item: nil)
  entropic_shield_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: entropic_shield.id, spell_level: 1)
  # entropic_shield_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: entropic_shield.id, spell_level: 1)

hide_from_undead = Spell.create!(name: "Hide from Undead", description: "Undead cannot see, hear, or smell creatures warded by this spell. Even extraordinary or supernatural sensory capabilities, such as blindsense, blindsight, scent, and tremorsense, cannot detect or locate warded creatures. Non-intelligent undead creatures (such as skeletons or zombies) are automatically affected and act as though the warded creatures are not there. An intelligent undead creature gets a single Will saving throw. If it fails, the subject can’t see any of the warded creatures. If it has reason to believe unseen opponents are present, however, it can attempt to find or strike them. If a warded creature attempts to channel positive energy, turn or command undead, touches an undead creature, or attacks any creature (even with a spell), the spell ends for all recipients.", target: "one touched creature/level", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: abjuration.id, duration: "10 min./level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: hide_from_undead.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: hide_from_undead.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: hide_from_undead.id, component_id: divine_focus.id, item: nil)
  hide_from_undead_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: hide_from_undead.id, spell_level: 1)
  # hide_from_undead_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: hide_from_undead.id, spell_level: 1)

magic_stone = Spell.create!(name: "Magic Stone", description: "You transmute as many as three pebbles, which can be no larger than sling bullets, so that they strike with great force when thrown or slung. If hurled, they have a range increment of 20 feet. If slung, treat them as sling bullets (range increment 50 feet). The spell gives them a +1 enhancement bonus on attack and damage rolls. The user of the stones makes a normal ranged attack. Each stone that hits deals 1d6+1 points of damage (including the spell’s enhancement bonus), or 2d6+2 points against undead.", target: "up to three pebbles touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "30 minutes or until discharged", time: 30, unit_of_time: "minute", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: magic_stone.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: magic_stone.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: magic_stone.id, component_id: divine_focus.id, item: nil)
  magic_stone_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: magic_stone.id, spell_level: 1)
  # magic_stone_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: magic_stone.id, spell_level: 1)
  # magic_stone_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: magic_stone.id, spell_level: 1)

magic_weapon = Spell.create!(name: "Magic Weapon", description: "Magic weapon gives a weapon a +1 enhancement bonus on attack and damage rolls. An enhancement bonus does not stack with a masterwork weapon’s +1 bonus on attack rolls.

You can’t cast this spell on a natural weapon, such as an unarmed strike (instead, see magic fang). A monk’s unarmed strike is considered a weapon, and thus it can be enhanced by this spell.", target: "weapon touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: magic_weapon.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: magic_weapon.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: magic_weapon.id, component_id: divine_focus.id, item: nil)
  # magic_weapon_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin_spell_list.id, spell_id: magic_weapon.id, spell_level: 1)
  # magic_weapon_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager_spell_list.id, spell_id: magic_weapon.id, spell_level: 1)
  magic_weapon_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: magic_weapon.id, spell_level: 1)
  # magic_weapon_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: magic_weapon.id, spell_level: 1)
  magic_weapon_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: magic_weapon.id, spell_level: 1)
  # magic_weapon_paladin = SpellListSpell.create!(spell_list_id: paladin_spell_list.id, spell_id: magic_weapon.id, spell_level: 1)
  # magic_weapon_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: magic_weapon.id, spell_level: 1)
  magic_weapon_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: magic_weapon.id, spell_level: 1)

remove_fear = Spell.create!(name: "Remove Fear", description: "You instill courage in the subject, granting it a +4 morale bonus against fear effects for 10 minutes. If the subject is under the influence of a fear effect when receiving the spell, that effect is suppressed for the duration of the spell.

Remove fear counters and dispels cause fear.", target: "one creature plus one additional creature per four levels, no two of which can be more than 30 ft. apart", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: abjuration.id, duration: "10 minutes", time: 10, unit_of_time: "minute", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: remove_fear.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: remove_fear.id, component_id: somatic.id, item: nil)
  remove_fear_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: remove_fear.id, spell_level: 1)
  remove_fear_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: remove_fear.id, spell_level: 1)
  # remove_fear_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: remove_fear.id, spell_level: 1)
  # remove_fear_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: remove_fear.id, spell_level: 1)
  # remove_fear_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: remove_fear.id, spell_level: 1)

sanctuary = Spell.create!(name: "Sanctuary", description: "Any opponent attempting to directly attack the warded creature, even with a targeted spell, must attempt a Will save. If the save succeeds, the opponent can attack normally and is unaffected by that casting of the spell. If the save fails, the opponent can’t follow through with the attack, that part of its action is lost, and it can’t directly attack the warded creature for the duration of the spell. Those not attempting to attack the subject remain unaffected. This spell does not prevent the warded creature from being attacked or affected by area of effect spells. The subject cannot attack without breaking the spell but may use non-attack spells or otherwise act.", target: "creature touched", saving_throw: "Will", spell_resistance: false, action_id: standard.id, spell_range_id: touch.id, magic_school_id: abjuration.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sanctuary.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sanctuary.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sanctuary.id, component_id: divine_focus.id, item: nil)
  sanctuary_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: sanctuary.id, spell_level: 1)
  # sanctuary_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: sanctuary.id, spell_level: 1)

shield_of_faith = Spell.create!(name: "Shield of Faith", description: "This spell creates a shimmering, magical field around the target that averts and deflects attacks. The spell grants the subject a +2 deflection bonus to AC, with an additional +1 to the bonus for every six levels you have (maximum +5 deflection bonus at 18th level).", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: abjuration.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: shield_of_faith.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: shield_of_faith.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: shield_of_faith.id, component_id: material.id, item: "parchment with a holy text written on it")
  shield_of_faith_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: shield_of_faith.id, spell_level: 1)
  # shield_of_faith_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: shield_of_faith.id, spell_level: 1)

eagles_splendor = Spell.create!(name: "Eagle's Splendor", description: "The transmuted creature becomes more poised, articulate, and personally forceful. The spell grants a +4 enhancement bonus to Charisma, adding the usual benefits to Charisma-based skill checks and other uses of the Charisma modifier. Bards, paladins, and sorcerers (and other spellcasters who rely on Charisma) affected by this spell do not gain any additional bonus spells for the increased Charisma, but the save DCs for spells they cast while under this spell’s effect do increase.", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: eagles_splendor.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: eagles_splendor.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: eagles_splendor.id, component_id: material.id, item: "feathers or droppings from an eagle")
  SpellComponent.create!(spell_id: eagles_splendor.id, component_id: divine_focus.id, item: nil)
  eagles_splendor_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: eagles_splendor.id, spell_level: 2)
  # eagles_splendor_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin_spell_list.id, spell_id: eagles_splendor.id, spell_level: 2)
  eagles_splendor_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: eagles_splendor.id, spell_level: 2)
  # eagles_splendor_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager_spell_list.id, spell_id: eagles_splendor.id, spell_level: 2)
  eagles_splendor_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: eagles_splendor.id, spell_level: 2)
  # eagles_splendor_paladin = SpellListSpell.create!(spell_list_id: paladin_spell_list.id, spell_id: eagles_splendor.id, spell_level: 2)
  # eagles_splendor_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: eagles_splendor.id, spell_level: 2)
  # eagles_splendor_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: eagles_splendor.id, spell_level: 2)
  eagles_splendor_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: eagles_splendor.id, spell_level: 2)
  # eagles_splendor_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: eagles_splendor.id, spell_level: 2)

bulls_strength = Spell.create!(name: "Bull's Strength", description: "The subject becomes stronger. The spell grants a +4 enhancement bonus to Strength, adding the usual benefits to melee attack rolls, melee damage rolls, and other uses of the Strength modifier.", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: bulls_strength.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: bulls_strength.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: bulls_strength.id, component_id: material.id, item: "a few hairs, or a pinch of dung, from a bull")
  SpellComponent.create!(spell_id: bulls_strength.id, component_id: divine_focus.id, item: nil)
  bulls_strength_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: bulls_strength.id, spell_level: 2)
  # bulls_strength_antipaladin = SpellListSpell.create!(spell_list_id: antipaladin_spell_list.id, spell_id: bulls_strength.id, spell_level: 2)
  # bulls_strength_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager_spell_list.id, spell_id: bulls_strength.id, spell_level: 2)
  bulls_strength_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: bulls_strength.id, spell_level: 2)
  # bulls_strength_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: bulls_strength.id, spell_level: 2)
  bulls_strength_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: bulls_strength.id, spell_level: 2)
  # bulls_strength_paladin = SpellListSpell.create!(spell_list_id: paladin_spell_list.id, spell_id: bulls_strength.id, spell_level: 2)
  # bulls_strength_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: bulls_strength.id, spell_level: 2)
  # bulls_strength_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: bulls_strength.id, spell_level: 2)
  bulls_strength_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: bulls_strength.id, spell_level: 2)
  # bulls_strength_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: bulls_strength.id, spell_level: 2)

bears_endurance = Spell.create!(name: "Bear's Endurance", description: "The affected creature gains greater vitality and stamina. The spell grants the subject a +4 enhancement bonus to Constitution, which adds the usual benefits to hit points, Fortitude saves, Constitution checks, and so forth. Hit points gained by a temporary increase in Constitution score are not temporary hit points. They go away when the subject’s Constitution drops back to normal. They are not lost first as temporary hit points are.", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: bears_endurance.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: bears_endurance.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: bears_endurance.id, component_id: material.id, item: "a few hairs, or a pinch of dung, from a bear")
  SpellComponent.create!(spell_id: bears_endurance.id, component_id: divine_focus.id, item: nil)
  bears_endurance_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: bears_endurance.id, spell_level: 2)
  # bears_endurance_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager_spell_list.id, spell_id: bears_endurance.id, spell_level: 2)
  bears_endurance_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: bears_endurance.id, spell_level: 2)
  # bears_endurance_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: bears_endurance.id, spell_level: 2)
  bears_endurance_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: bears_endurance.id, spell_level: 2)
  # bears_endurance_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: bears_endurance.id, spell_level: 2)
  bears_endurance_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: bears_endurance.id, spell_level: 2)
  # bears_endurance_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: bears_endurance.id, spell_level: 2)
  bears_endurance_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: bears_endurance.id, spell_level: 2)
  # bears_endurance_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: bears_endurance.id, spell_level: 2)

  print "260 Spells Created \r"


cats_grace = Spell.create!(name: "Cat's Grace", description: "The transmuted creature becomes more graceful, agile, and coordinated. The spell grants a +4 enhancement bonus to Dexterity, adding the usual benefits to AC, Reflex saves, and other uses of the Dexterity modifier.", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: cats_grace.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: cats_grace.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: cats_grace.id, component_id: material.id, item: "pinch of cat fur")
  SpellComponent.create!(spell_id: cats_grace.id, component_id: divine_focus.id, item: nil)
  cats_grace_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: cats_grace.id, spell_level: 2)
  cats_grace_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: cats_grace.id, spell_level: 2)
  # cats_grace_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager_spell_list.id, spell_id: cats_grace.id, spell_level: 2)
  # cats_grace_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: cats_grace.id, spell_level: 2)
  # cats_grace_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: cats_grace.id, spell_level: 2)
  cats_grace_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: cats_grace.id, spell_level: 2)
  cats_grace_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: cats_grace.id, spell_level: 2)
  cats_grace_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: cats_grace.id, spell_level: 2)
  # cats_grace_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: cats_grace.id, spell_level: 2)

foxs_cunning = Spell.create!(name: "Fox's Cunning", description: "The target becomes smarter. The spell grants a +4 enhancement bonus to Intelligence, adding the usual benefits to Intelligence-based skill checks and other uses of the Intelligence modifier. Wizards (and other spellcasters who rely on Intelligence) affected by this spell do not gain any additional bonus spells for the increased Intelligence, but the save DCs for spells they cast while under this spell’s effect do increase. This spell doesn’t grant extra skill ranks.", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: foxs_cunning.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: foxs_cunning.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: foxs_cunning.id, component_id: material.id, item: "hairs or dung from a fox")
  SpellComponent.create!(spell_id: foxs_cunning.id, component_id: divine_focus.id, item: nil)
  foxs_cunning_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: foxs_cunning.id, spell_level: 2)
  foxs_cunning_bard = SpellListSpell.create!(spell_list_id: bard_spell_list.id, spell_id: foxs_cunning.id, spell_level: 2)
  # foxs_cunning_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: foxs_cunning.id, spell_level: 2)
  foxs_cunning_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: foxs_cunning.id, spell_level: 2)
  # foxs_cunning_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: foxs_cunning.id, spell_level: 2)

owls_wisdom = Spell.create!(name: "Owl's Wisdom", description: "The transmuted creature becomes wiser. The spell grants a +4 enhancement bonus to Wisdom, adding the usual benefit to Wisdom-related skills. Clerics, druids, and rangers (and other Wisdom-based spellcasters) who receive owl’s wisdom do not gain any additional bonus spells for the increased Wisdom, but the save DCs for their spells increase.", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: owls_wisdom.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: owls_wisdom.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: owls_wisdom.id, component_id: material.id, item: "feathers or droppings from an owl")
  SpellComponent.create!(spell_id: owls_wisdom.id, component_id: divine_focus.id, item: nil)
  owls_wisdom_alchemist = SpellListSpell.create!(spell_list_id: alchemist_spell_list.id, spell_id: owls_wisdom.id, spell_level: 2)
  owls_wisdom_cleric = SpellListSpell.create!(spell_list_id: cleric_spell_list.id, spell_id: owls_wisdom.id, spell_level: 2)
  # owls_wisdom_druid = SpellListSpell.create!(spell_list_id: druid_spell_list.id, spell_id: owls_wisdom.id, spell_level: 2)
  # owls_wisdom_medium = SpellListSpell.create!(spell_list_id: medium_spell_list.id, spell_id: owls_wisdom.id, spell_level: 2)
  # owls_wisdom_paladin = SpellListSpell.create!(spell_list_id: paladin_spell_list.id, spell_id: owls_wisdom.id, spell_level: 2)
  # owls_wisdom_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: owls_wisdom.id, spell_level: 2)
  owls_wisdom_ranger = SpellListSpell.create!(spell_list_id: ranger_spell_list.id, spell_id: owls_wisdom.id, spell_level: 2)
  # owls_wisdom_shaman = SpellListSpell.create!(spell_list_id: shaman_spell_list.id, spell_id: owls_wisdom.id, spell_level: 2)
  owls_wisdom_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: owls_wisdom.id, spell_level: 2)
  # owls_wisdom_unchained_summoner = SpellListSpell.create!(spell_list_id: unchained_summoner_spell_list.id, spell_id: owls_wisdom.id, spell_level: 2)

peacebond = Spell.create!(name: "Peacebond", description: "You lock a weapon in place on its owner’s body, or within the weapon’s sheath or holster. Anyone who then tries to draw the weapon must spend a standard action and succeed at a Strength check (DC equal to the saving throw DC) to do so, provoking attacks of opportunity whether the attempt succeeds or fails.", target: "one sheathed or slung weapon", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: abjuration.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: peacebond.id, component_id: somatic.id, item: nil)
  # peacebond_inquisitor = SpellListSpell.create!(spell_list_id: inquisitor_spell_list.id, spell_id: peacebond.id, spell_level: 1)
  # peacebond_psychic = SpellListSpell.create!(spell_list_id: psychic_spell_list.id, spell_id: peacebond.id, spell_level: 1)
  peacebond_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: peacebond.id, spell_level: 1)
  peacebond_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: peacebond.id, spell_level: 1)

molten_orb = Spell.create!(name: "Molten Orb", description: "You create a fist-sized, red-hot ball of molten metal that you immediately hurl as a splash weapon. A direct hit deals 2d6 points of fire damage. Every creature within 5 feet of where the ball hits takes 1d6 points of fire damage from the splash (Reflex half). Each of these creatures takes an additional 1d6 points of fire damage on its turn for the next 1d3 rounds, unless it is cooled off (with water, snow, or any effect that deals 5 or more points of cold damage).", target: "ranged attack", saving_throw: "none", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: molten_orb.id, subschool_id: earth.id)
  SpellSubschool.create!(spell_id: molten_orb.id, subschool_id: fire.id)
  SpellComponent.create!(spell_id: molten_orb.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: molten_orb.id, component_id: somatic.id, item: nil)
  # molten_orb_bloodrager = SpellListSpell.create!(spell_list_id: bloodrager_spell_list.id, spell_id: molten_orb.id, spell_level: 2)
  molten_orb_magus = SpellListSpell.create!(spell_list_id: magus_spell_list.id, spell_id: molten_orb.id, spell_level: 2)
  molten_orb_wizard = SpellListSpell.create!(spell_list_id: wizard_spell_list.id, spell_id: molten_orb.id, spell_level: 2)
  molten_orb_witch = SpellListSpell.create!(spell_list_id: witch_spell_list.id, spell_id: molten_orb.id, spell_level: 2)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

  # print "270 Spells Created \r"


#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: standard.id, spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # IDENTIFIER_CLASS = SpellListSpell.create!(spell_list_id: CLASS_spell_list.id, spell_id: IDENTIFIER.id, spell_level: 0)

puts "Spells Created!"
