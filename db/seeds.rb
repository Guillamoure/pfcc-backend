# /////////////////////////////////////////
# <-*-*-----*-*-*- Actions-*-*-*-----*-*->
# /////////////////////////////////////////

standard = Action.create!(name: "Standard Action")
full_round = Action.create!(name: "Full-Round Action")
move = Action.create!(name: "Move Action")
swift = Action.create!(name: "Swift Action")
free = Action.create!(name: "Free Action")
immediate = Action.create!(name: "Immediate Action")
ten = Action.create!(name: "Ten Minutes")
one_minute = Action.create!(name: "One Minute")

# /////////////////////////////////////////
# <-*-*-----*-*-*- Races!-*-*-*-----*-*->
# /////////////////////////////////////////

aasimar = Race.create!(name: "Aasimar", speed: 30, size: "Medium", img_url: "https://vignette.wikia.nocookie.net/phaeselis/images/8/8e/Angel_Avatar.jpg", description: "Aasimars are humans with a significant amount of celestial or other good outsider blood in their ancestry. While not always benevolent, aasimars are more inclined toward acts of kindness rather than evil, and they gravitate toward faiths or organizations associated with celestials. Aasimar heritage can lie dormant for generations, only to appear suddenly in the child of two apparently human parents. Most societies interpret aasimar births as good omens, though it must be acknowledged that some aasimars take advantage of the reputation of their kind, brutally subverting the expectations of others with acts of terrifying cruelty or abject venality. “It’s always the one you least suspect” is the axiom these evil aasimars live by, and they often lead double lives as upstanding citizens or false heroes, keeping their corruption well hidden. Thankfully, these few are the exception and not the rule.

Physical Description: Aasimars look mostly human except for some minor physical trait that reveals their unusual heritage. Typical aasimar features include hair that shines like metal, jewel-toned eyes, lustrous skin color, or even glowing, golden halos.

Society: Aasimars cannot truly be said to have an independent society of their own. As an offshoot of humanity, they adopt the societal norms around them, though most find themselves drawn to those elements of society that work for the redress of injustice and the assuagement of suffering. This sometimes puts them on the wrong side of the law in more tyrannical societies, but aasimars can be careful and cunning when necessary, able to put on a dissembling guise to divert the attention of oppressors elsewhere. While corrupt aasimars may be loners or may establish secret societies to conceal their involvement in crime, righteous aasimars are often found congregating in numbers as part of good-aligned organizations, especially (though not always) churches and religious orders.

Relations: Aasimars are most common and most comfortable in human communities. This is especially true of those whose lineage is more distant and who bear only faint marks of their heavenly ancestry. It is unclear why the touch of the celestial is felt so much more strongly in humanity than other races, though it may be that humanity’s inherent adaptability and affinity for change is responsible for the evolution of aasimars as a distinct race. Perhaps the endemic racial traits of other races are too deeply bred, too strongly present, and too resistant to change. Whatever dalliances other races may have had with the denizens of the upper planes, the progeny of such couplings are vanishingly rare and have never bred true. However, even if they generally tend toward human societies, aasimars can become comfortable in virtually any environment. They have an easy social grace and are disarmingly personable. They get on well with half-elves, who share a similar not-quite-human marginal status, though their relations are often less cordial with half-orcs, who have no patience for aasimars’ overly pretty words and faces. Elven courtiers sometimes dismiss aasimars as unsophisticated, and criticize them for relying on natural charm to overcome faux pas. Perhaps of all the known races, gnomes find aasimars most fascinating, and have an intense appreciation for their varied appearances as well as the mystique surrounding their celestial heritage.

Alignment and Religion: Aasimars are most often of good alignment, though this isn’t necessarily universal, and aasimars that have turned their back on righteousness may fall into an unfathomable abyss of depravity. For the most part, however, aasimars favor deities of honor, valor, protection, healing, and refuge, or simple and prosaic faiths of home, community, and family. Some also follow the paths of art, music, and lore, finding truth and wisdom in beauty and learning.

Adventurers: Aasimars frequently become adventurers, as they often do not quite feel at home in human society and feel the pull of some greater destiny. Clerics, oracles, and paladins are most plentiful in their ranks, though bards, sorcerers, and summoners are not uncommon among those with a fondness for arcane magic. Aasimar barbarians are rare, but when born into such tribes they often rise to leadership and encourage their clans to embrace celestial totems.

Male Names: Aritian, Beltin, Cernan, Cronwier, Eran, Ilamin, Maudril, Okrin, Parant, Tural, Wyran, Zaigan.

Female Names: Arken, Arsinoe, Davina, Drinma, Imesah, Masozi, Nijena, Niramour, Ondrea, Rhialla, Valtyra.")

RaceAbilityScoreModifier.create!(race_id: aasimar.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: aasimar.id, ability_score: "Charisma", bonus: 2)

RacialTrait.create!(name: "Languages", race_id: aasimar.id, description: "Aasimars begin play speaking Common and Celestial. Aasimars with high Intelligence scores can choose from the following languages: Draconic, Dwarven, Elven, Gnome, Halfling, and Sylvan. See the Linguistics skill page for more information about these languages.")
RacialTrait.create!(name: "Celestial Resistance", race_id: aasimar.id, description: "Aasimars have acid resistance 5, cold resistance 5, and electricity resistance 5.")
RacialTrait.create!(name: "Skilled", race_id: aasimar.id, description: "Aasimar have a +2 racial bonus on Diplomacy and Perception checks.")
RacialTrait.create!(name: "Spell-like Ability", race_id: aasimar.id, description: "Aasimars can use daylight once per day as a spell-like ability (caster level equal to the aasimar’s class level).")
RacialTrait.create!(name: "Darkvision", race_id: aasimar.id, description: "Darkvision: Aasimar have darkvision 60 ft. (they can see perfectly in the dark up to 60 feet.)")
# RacialTrait.create!(name: "", race_id: , description: "")

kitsune = Race.create!(name: "Kitsune", speed: 30, size: "Medium", img_url: "https://db4sgowjqfwig.cloudfront.net/assets/254331/Kitsune.jpg", description: "Kitsune, or fox folk, are vulpine shapeshifters known for their love of both trickery and art. Kitsune possess two forms: that of an attractive human of slender build with salient eyes, and their true form of an anthropomorphic fox. Despite an irrepressible penchant for deception, kitsune prize loyalty and make true companions. They delight in the arts, particularly riddles and storytelling, and settle in ancestral clans, taking their wisdom from both the living and spirits.

Quick-witted and nimble, kitsune make excellent bards and rogues. It is not uncommon for one to pursue sorcery, while those few born with white fur and pale eyes usually become oracles.

Physical Description: A kitsune has two forms—a single human form and its true form, that of a humanoid fox. In their human forms, kitsune tend toward quickness and lithe beauty. In all forms they possess golden, amber, or brilliant blue eyes. In their true forms, they are covered with a downy coat of auburn fur, although more exotic coloration is possible.

Society: Kitsune society is enigmatic, as kitsune prize loyalty among their friends but delight in good-natured mischief and trickery. Kitsune take pleasure in the pursuit of creative arts and in all forms of competition, especially the telling of stories interwoven with tall tales and falsehoods.

Relations: Kitsune deal well with elves and samsarans, but their reputation as tricksters follows them when they interact with other races. Many kitsune, particularly those who dwell in mixed-race societies, choose to hide their true natures and pose as humans in public.

Alignment and Religion: Kitsune tend to be neutral, or of alignments with a neutral component. Most kitsune worship the goddess of craftsmanship.

Adventurers: Keenly interested in adding their own names to the myths and legends of explorers and heroes of old, Kitsune adventurers range across the world.

Female Names: Ayaki, Jiyoki, Kyomi, Miyaro, Shinyai, Yulai

Male Names: Chankotu, Imhakaru, Kyrsaku, Namkitu, Yanyeeku")

RaceAbilityScoreModifier.create!(race_id: kitsune.id, ability_score: "Dexterity", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: kitsune.id, ability_score: "Charisma", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: kitsune.id, ability_score: "Strength", bonus: -2)

RacialTrait.create!(name: "Languages", race_id: kitsune.id, description: "Kitsune begin play speaking Common and Sylvan. Kitsune with high Intelligence scores can choose from the following: any human language, Aklo, Celestial, Elven, Gnome, and Tengu. See the Linguistics skill page for more information about these languages.")
RacialTrait.create!(name: "Agile", race_id: kitsune.id, description: "Kitsune receive a +2 racial bonus on Acrobatics checks.")
RacialTrait.create!(name: "Change Shape", race_id: kitsune.id, description: "A kitsune can assume the appearance of a specific single human form of the same sex. The kitsune always takes this specific form when she uses this ability. A kitsune in human form cannot use her bite attack, but gains a +10 racial bonus on Disguise checks made to appear human. Changing shape is a standard action. This ability otherwise functions as alter self, except that the kitsune does not adjust her ability scores and can remain in this form indefinitely.")
RacialTrait.create!(name: "Kitsune Magic", race_id: kitsune.id, description: "Kitsune add +1 to the DC of any saving throws against enchantment spells that they cast. Kitsune with a Charisma score of 11 or higher gain the following spell-like ability: 3/day—dancing lights (caster level equals the kitsune’s level).")
RacialTrait.create!(name: "Natural Weapons", race_id: kitsune.id, description: "In her natural form, a kitsune has a bite attack that deals 1d4 points of damage.")
RacialTrait.create!(name: "Low-Light Vision", race_id: kitsune.id, description: "Kitsune can see twice as far as humans in conditions of dim light.")
# RacialTrait.create!(name: "", race_id: , description: "")

grippli = Race.create!(name: "Grippli", speed: 30, size: "Small", img_url: "https://i.pinimg.com/originals/d2/a7/e8/d2a7e8b34c06bf381e08f3eadfda781d.png", description: "Gripplis stand just over 2 feet tall and have mottled green-and-brown skin. Most gripplis are primitive hunter gatherers, living on large insects and fish found near their treetop homes, and are unconcerned about events outside their swamps. The rare grippli who leaves the safety of the swamp tends to be a ranger or alchemist seeking to trade for metals and gems.")

RaceAbilityScoreModifier.create!(race_id: grippli.id, ability_score: "Dexterity", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: grippli.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: grippli.id, ability_score: "Strength", bonus: -2)

RacialTrait.create!(name: "Climb Speed", race_id: grippli.id, description: "Gripplis have a climb speed of 20 feet")
RacialTrait.create!(name: "Languages", race_id: grippli.id, description: "Gripplis begin play speaking Common and Grippli. Gripplis with high Intelligence scores can choose from the following: Boggard, Draconic, Elven, Gnome, Goblin, and Sylvan. See the Linguistics skill page for more information about these languages.")
RacialTrait.create!(name: "Camouflage", race_id: grippli.id, description: "Gripplis receive a +4 racial bonus on Stealth checks in marshes and forested areas.")
RacialTrait.create!(name: "Swamp Stride", race_id: grippli.id, description: "A grippli can move through difficult terrain at its normal speed while within a swamp. Magically altered terrain affects a grippli normally.")
RacialTrait.create!(name: "Weapon Familiarity", race_id: grippli.id, description: "Gripplis are proficient with nets.")
RacialTrait.create!(name: "Darkvision", race_id: grippli.id, description: "Gripplis can see perfectly in the dark up to 60 feet.")
# RacialTrait.create!(name: "", race_id: , description: "")

orc = Race.create!(name: "Orc", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/55/3a/df/553adf14108659b44c5e67642ce9cf5b.jpg", description: "Orcs are aggressive, callous, and domineering. Bullies by nature, they respect strength and power as the highest virtues. On an almost instinctive level, orcs believe they are entitled to anything they want unless someone stronger can stop them from seizing it. They rarely exert themselves off the battlefield except when forced to do so; this attitude stems not just from laziness but also from an ingrained belief that work should trickle down through the pecking order until it falls upon the shoulders of the weak. They take slaves from other races, orc men brutalize orc women, and both abuse children and elders, on the grounds that anyone too feeble to fight back deserves little more than a life of suffering. Surrounded at all times by bitter enemies, orcs cultivate an attitude of indifference to pain, vicious tempers, and a fierce willingness to commit unspeakable acts of vengeance against anyone who dares to defy them.

Physical Description: Powerfully built, orcs typically stand just a few inches taller than most humans but have much greater muscle mass, their broad shoulders and thick, brawny hips often giving them a slightly lurching gait. They typically have dull green skin, coarse dark hair, beady red eyes, and protruding, tusk-like teeth. Orcs consider scars a mark of distinction and frequently use them as a form of body art.

Society: Orcs usually live amid squalor and constant mayhem, and intimidation and brutal violence are the glue that holds orc culture together. They settle disputes by making increasingly grisly threats until, when a rival fails to back down, the conflict escalates into actual bloodshed. Orcs who win these ferocious brawls not only feel free to take whatever they want from the loser, but also frequently indulge in humiliating physical violation, casual mutilation, and even outright murder. Orcs rarely spend much time improving their homes or belongings since doing so merely encourages a stronger orc to seize them. In fact, whenever possible, they prefer to occupy buildings and communities originally built by other races.

Relations: Orcs admire strength above all things. Even members of enemy races can sometimes win an orc’s grudging respect, or at least tolerance, if they break his nose enough times.

Orcs regard dwarves and elves with an odd mix of fierce hatred, sullen resentment, and a trace of wariness. They respect power, and, on some level, understand that these two races have kept them at bay for countless ages. Though they never miss a chance to torment a dwarf or elf who falls into their clutches, they tend to proceed cautiously unless certain of victory. Orcs dismiss halflings and gnomes as weaklings barely worth the trouble of enslaving. They often regard half-elves, who appear less threatening than full-blooded elves but have many elven features, as particularly appealing targets. Orcs view humans as race of sheep with a few wolves living in their midst. They freely kill or oppress humans too weak to fend them off but always keep one eye on the nearest exit in case they run into a formidable human.

Orcs look upon half-orcs with a strange mixture of contempt, envy, and pride. Though weaker than typical orcs, these half-breeds are also usually smarter, more cunning, and better leaders. Tribes led, or at least advised, by half-orcs are often more successful than those led by pure-blooded orcs. On a more fundamental level, orcs believe each half-orc also represents an orc exerting dominance over a weaker race.

Alignment and Religion: Orcs have few redeeming qualities. Most are violent, cruel, and selfish. Concepts such as honor or loyalty usually strike them as odd character flaws that tend to afflict members of the weaker races. Orcs are typically not just evil, but chaotic to boot, though those with greater self-control may gravitate toward lawful evil. Orcs pray to gods of fire, war, and blood, often creating tribal “pantheons” by combining these aspects into uniquely orc concepts.

Adventurers: Orcs usually leave their tribes only after losing out in a power struggle. Facing humiliation, slavery, or even death at the hands of their own kind, they opt instead to live and work with members of other races. Orcs who fail to rein in their tempers and the instinctive drive to dominate rarely last long once they strike out on their own. Though orcs who do manage to get by in other societies often enjoy the luxuries and comforts these societies can deliver, they still tend to dream of returning home, seizing power, and taking revenge.

Male Names: Arkus, Carrug, Felzak, Murdut, Prabur.

Female Names: Durra, Grillgiss, Ilyat, Krugga, Leffit, Olbin, Trisgrak.")

RaceAbilityScoreModifier.create!(race_id: orc.id, ability_score: "Strength", bonus: 4)
RaceAbilityScoreModifier.create!(race_id: orc.id, ability_score: "Intelligence", bonus: -2)
RaceAbilityScoreModifier.create!(race_id: orc.id, ability_score: "Wisdom", bonus: -2)
RaceAbilityScoreModifier.create!(race_id: orc.id, ability_score: "Charisma", bonus: -2)

RacialTrait.create!(name: "Languages", race_id: orc.id, description: "Orcs begin play speaking Common and Orc. Orcs with high Intelligence scores can chose from the following: Dwarven, Giant, Gnoll, Goblin, Undercommon. See the Linguistics skill page for more information about these languages.")
RacialTrait.create!(name: "Ferocity", race_id: orc.id, description: "Orcs possess the ferocity ability which allows them to remain conscious and continue fighting even if their hit point totals fall below 0. Orcs are still staggered at 0 hit points or lower and lose 1 hit point each round as normal.")
RacialTrait.create!(name: "Weapon Familiarity", race_id: orc.id, description: "Orcs are always proficient with greataxes and falchions, and treat any weapon with the word “orc” in its name as a martial weapon.")
RacialTrait.create!(name: "Darkvision", race_id: orc.id, description: "Orcs can see perfectly in the dark up to 60 feet.")
RacialTrait.create!(name: "Light Sensitivity", race_id: orc.id, description: "Orcs are dazzled in areas of bright sunlight or within the radius of a daylight spell.")
# RacialTrait.create!(name: "", race_id: , description: "")

changeling = Race.create!(name: "Changeling", speed: 30, size: "Medium", img_url: "https://pathfinderwiki.com/mediawiki/images/7/7d/Siova_Stormhilt.jpg", description: "Changelings are the offspring of hags and their lovers taken through magic or madness. Dropped off on doorsteps of prospective foster parents, changelings are raised by strangers. Typically tall, slender, dark haired, and attractive, changelings otherwise resemble their fathers’ race. They are always female, and their mismatched colored eyes and abnormally pale skin hint at their true heritage. At puberty, changelings receive “the call,” a hypnotic spiritual voice that beckons them to travel and discover their true origins. Changelings who ignore this call choose their own destiny; those who heed it discover their “mother” and may come into great power by transforming into hags themselves.")

RaceAbilityScoreModifier.create!(race_id: changeling.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: changeling.id, ability_score: "Charisma", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: changeling.id, ability_score: "Constitution", bonus: -2)

RacialTrait.create!(name: "Languages", race_id: changeling.id, description: "Changelings begin play speaking Common and the primary language of their host society. Changelings with high Intelligence scores can choose from the following: Aklo, Draconic, Dwarven, Elven, Giant, Gnoll, Goblin, and Orc.")
RacialTrait.create!(name: "Natural Armor", race_id: changeling.id, description: "Changelings have a +1 natural armor bonus.")
RacialTrait.create!(name: "Claws", race_id: changeling.id, description: "Changelings’ fingernails are hard and sharp, granting them two claw attacks (1d4 points of damage each).")
RacialTrait.create!(name: "Darkvision", race_id: changeling.id, description: "Changelings see perfectly in the dark up to 60 feet.")
RacialTrait.create!(name: "Green Widow", race_id: changeling.id, description: "(Green Hag): The changeling gains a +2 racial bonus on Bluff checks against creatures that are sexually attracted to her.")
RacialTrait.create!(name: "Hulking Changeling", race_id: changeling.id, description: "(Annis Hag): The changeling gains a +1 racial bonus on melee damage.")
RacialTrait.create!(name: "Sea Lungs", race_id: changeling.id, description: "(Sea Hag): The changeling may hold her breath for a number of rounds equal to three times her Constitution before she risks drowning.")
# RacialTrait.create!(name: "", race_id: , description: "")

samsaran = Race.create!(name: "Samsaran", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/9c/ed/eb/9cedeb9c454258b301f8912c0f229801.png", description: "Mysterious humanoids with pale blue flesh and transparent blood like the waters of a trickling brook, samsarans are ancient creatures even in their youth. A samsaran’s life is not a linear progression from birth to death, but rather a circle of birth to death to rebirth. Whenever a samsaran dies, it reincarnates anew as a young samsaran to live a new life. Her past memories remain vague and indistinct—and each new incarnation is as different a creature and personality as a child is to a parent. Samsarans appear similar to humans, with dark hair and solid white eyes with no pupils or irises. Skin tones are generally shades of light blue.

Capable of recalling the lessons and failings of their previous incarnations, the samsarans seek to live lives of balance and enlightenment in order to ensure they are reborn upon death to continue their trek through history.

Physical Description: Samsarans appear as humans with pale blue skin, solid white eyes with no pupil or iris, and dark hair. A samsaran’s blood is crystal clear, like the water of a pure mountain spring.

Society: Samsarans prefer to live simple lives of reflection, scholarship, and worship. They try to live their lives free of the ambitions and greed that mortality often imposes, since they view their lives as only the latest incarnation of many to come. Any accomplishments left undone in this current life can surely be achieved in the next, or the one after that. Samsarans’ memories of their past lives are not complete—they most often feel like half-remembered dreams. Samsarans can give birth, yet they do not give birth to samsarans—instead, they birth human children. Typically, samsarans give up their children not long after birth to be raised in human society, where the children grow and live their lives normally. Upon death, such offspring sometimes reincarnate as samsaran children, if they lived their lives in keeping with harmony. While most samsarans who die also reincarnate as samsaran children, this is not always the case. When a samsaran has utterly failed at maintaining harmony in her current life, or when she has succeeded perfectly at it, her soul instead travels to the Great Beyond to receive its final, long-delayed reward or doom. Samsarans do not keep family names, but often retain the names of their previous one or two incarnations, regardless of gender, as a sort of replacement for a family name to honor their previous lives’ accomplishments or to remind them of their past shames.

Relations: Humans and others often misunderstand samsarans’ nature. Many fear or even hate samsarans’ unusual association with death, thinking them to be strangely cursed souls at best or vengeful spirits made flesh at worst.

Alignment and Religion: Most samsarans are lawful good—but samsarans of any alignment are possible. Deeply religious, the majority of samsarans take patron deities even if they aren’t clerics.

Adventurers: Adventuring allows samsarans to see the world’s wonders, deepens their understanding of life, and lets them visit places half remembered from their previous lives.

Female Names: Chimi, Mindu, Nalita, Rema, Sonitri, Treeni, Yeshing

Male Names: Agyen, Bakji, Dakash, Henar, Puran, Sonan, Thukten")

RaceAbilityScoreModifier.create!(race_id: samsaran.id, ability_score: "Intelligence", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: samsaran.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: samsaran.id, ability_score: "Constitution", bonus: -2)

RacialTrait.create!(name: "Languages", race_id: samsaran.id, description: "Samsarans begin play speaking Common and Samsaran. Samsarans with high Intelligence scores can choose from the following: any human language, Abyssal, Aquan, Auran, Celestial, Draconic, Giant, Ignan, Infernal, Nagaji, Tengu, and Terran. See the Linguistics skill page for more information about these languages.")
RacialTrait.create!(name: "Lifebound", race_id: samsaran.id, description: "Samsarans gain a +2 racial bonus on all saving throws made to resist death effects, saving throws against negative energy effects, Fortitude saves made to remove negative levels, and Constitution checks made to stabilize if reduced to negative hit points.")
RacialTrait.create!(name: "Shards of the Past", race_id: samsaran.id, description: "A samsaran’s past lives grant her bonuses on two particular skills. A samsaran chooses two skills—she gains a +2 racial bonus on both of these skills, and they are treated as class skills regardless of what class she actually takes.")
RacialTrait.create!(name: "Low-Light Vision", race_id: samsaran.id, description: "Samsarans can see twice as far as humans in conditions of dim light.")
RacialTrait.create!(name: "Samsaran Magic", race_id: samsaran.id, description: "Samsarans with a Charisma score of 11 or higher gain the following spell-like abilities: 1/day—comprehend languages, deathwatch, and stabilize. The caster level for these effects is equal to the samsaran’s level.")
# RacialTrait.create!(name: "", race_id: , description: "")

half_elf = Race.create!(name: "Half-elf", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/9e/a7/89/9ea7895e06d5bfc3dfafbc857a658783.png", description: "Elves have long drawn the covetous gazes of other races. Their generous lifespans, magical affinity, and inherent grace each contribute to the admiration or bitter envy of their neighbors. Of all their traits, however, none so entrance their human associates as their beauty. Since the two races first came into contact with each other, humans have held up elves as models of physical perfection, seeing in these fair folk idealized versions of themselves. For their part, many elves find humans attractive despite their comparatively barbaric ways, and are drawn to the passion and impetuosity with which members of the younger race play out their brief lives.

Sometimes this mutual infatuation leads to romantic relationships. Though usually short-lived, even by human standards, such trysts may lead to the birth of half-elves, a race descended from two cultures yet inheritor of neither. Half-elves can breed with one another, but even these “pureblood” half-elves tend to be viewed as bastards by humans and elves alike. Caught between destiny and derision, half-elves often view themselves as the middle children of the world.

Physical Description: Half-elves stand taller than humans but shorter than elves. They inherit the lean build and comely features of their elven lineage, but their skin color is normally dictated by their human side. While half-elves retain the pointed ears of elves, theirs are more rounded and less pronounced. Their eyes tend to be human-like in shape, but feature an exotic range of colors from amber or violet to emerald green and deep blue. This pattern changes for half-elves of drow descent, however. Such elves are almost unfailingly marked with the white or silver hair of the drow parent, and more often than not have dusky gray skin that takes on a purplish or bluish tinge in the right light, while their eye color usually favors that of the human parent.

Society: Their lack of a unified homeland and culture forces half-elves to remain versatile, able to conform to nearly any environment. While often considered attractive to both races for the same reasons as their parents, half-elves rarely fit in with either humans or elves, as both races see too much evidence of the other in them. This lack of acceptance weighs heavily on many half-elves, yet others are bolstered by their unique status, seeing in their lack of a formalized culture the ultimate freedom. As a result, half-elves are incredibly adaptable, capable of adjusting their mind-sets and talents to whatever societies they find themselves in. Even half-elves welcomed by one side of their heritage often find themselves caught between cultures, as they are encouraged, cajoled, or even forced into taking on diplomatic responsibilities between human and elven kind. Many half-elves rise to the occasion of such service, seeing it as a chance to prove their worth to both races. Others, however, come to resent the pressures and presumptions foisted upon them by both races and turn any opportunity to broker power, make peace, or advance trade between humans and elves into an exercise in personal profit.

Relations: Half-elves understand loneliness, and know that character is often less a product of race than of life experience. As such, they are often open to friendships and alliances with other races, and less likely than most to rely on first impressions when forming opinions of new acquaintances. While many races join together to produce mixed offspring of notable power, such as half-orcs, half-dragons, and half-fiends, half-elves seem to have a unique position in the eyes of their progenitors and the rest of the world. Those humans who admire elvenkind see half-elves as a living link or bridge between the two races. But this attitude often foists unfair expectations and elevated standards upon half-elves, and quickly turns to derision when they do not live up to the grand destinies that others set for them. Additionally, those half-elves raised by or in the company of elves often have the human half of their parentage dubbed a mere obstacle, something to be overcome with proper immersion and schooling in the elven ways, and even the most well-meaning elven mentors often push their half-elven charges to reject a full half of themselves in order to “better” themselves. The exception is those few half-elves born of humans and drow. Not unlike most half-orcs, such unions are commonly born out of violence and savagery that leaves the child unwanted by its mother if not killed outright. Moreover, as the physical features of half-drow clearly mark their parentage, crafting a reputation founded on deeds and character instead of heritage is more challenging for them. Even the most empathetic of other half-elves balk at the sight of a half-drow. Among other races, half-elves form unique and often unexpected bonds. Dwarves, despite their traditional mistrust of elves, see a half-elf’s human parentage as something hopeful, and treat them as half-humans rather than half-elves. Additionally, while dwarves are long-lived, the lifespan of the stout folk is closer to a half-elf’s own than that of either of her parents. As a result, half-elves and dwarves often form lasting bonds, be they ones of friendship, business, or even competitive rivalry.

Gnomes and halflings often see half-elves as a curiosity. Those half-elves who have seen themselves pushed to the edges of society, truly without a home, typically find gnomes and halflings frivolous and worthy of disdain, but secretly envy their seemingly carefree ways. Clever and enterprising gnomes and halflings sometimes partner with a half-elf for adventures or even business ventures, using the half-elf’s participation to lend their own endeavors an air of legitimacy that they cannot acquire on their own.

Perhaps the most peculiar and dichotomous relations exist between half-elves and half-orcs. Those half-orcs and half-elves who were raised among their non-human kin normally see one another as hated and ancient foes. However, half-elves who have been marginalized by society feel a deep, almost instant kinship with half-orcs, knowing their burdens are often that much harder because of their appearance and somewhat brutish nature. Not all half-orcs are inclined or able to understand such empathy, but those who do often find themselves with a dedicated diplomat, liaison, and apologist. For their own part, half-orcs usually return the favor by acting as bodyguards or intimidators, and take on other roles uniquely suited to their brawny forms.

Alignment and Religion: Half-elves’ isolation strongly influences their characters and philosophies. Cruelty does not come naturally to them, nor does blending in or bending to societal convention—as a result, most half-elves are chaotic good. Half-elves’ lack of a unified culture makes them less likely to turn to religion, but those who do generally follow the common faiths of their homeland. Others come to religion and worship later in their lives, especially if they have been made to feel part of a community through faith or the work of clerical figures. Some half-elves feel the pull of the divine but live beyond the formal religious instruction of society. Such individuals often worship ideas and concepts like freedom, harmony, or balance, or the primal forces of the world. Still others gravitate toward long-forgotten gods, finding comfort and kinship in the idea that even deities can be overlooked.

Adventurers: Half-elves tend to be itinerants, wandering the lands in search of a place they might finally call home. The desire to prove themselves to the community and establish a personal identity—or even a legacy—drives many half-elf adventurers to lives of bravery. Some half-elves claim that despite their longevity, they perceive the passage of time more like humans than elves, and are driven to amass wealth, power, or fame early on in life so they may spend the rest of their years enjoying it.

Males Names: Calathes, Encinal, Iradli, Kyras, Narciso, Quinray, Seltyiel, Zirul.

Female Names: Cathran, Elsbeth, Iandoli, Kieyanna, Lialda, Maddela, Reda, Tamarie.")

RaceAbilityScoreModifier.create!(race_id: half_elf.id, ability_score: "Any", bonus: 2)

RacialTrait.create!(name: "Languages", race_id: half_elf.id, description: "Half-elves begin play speaking Common and Elven. Half-elves with high Intelligence scores can choose any languages they want (except secret languages, such as Druidic). See the Linguistics skill page for more information about these languages.")
RacialTrait.create!(name: "Elven Immunities", race_id: half_elf.id, description: "Half-elves are immune to magic sleep effects and gain a +2 racial saving throw bonus against enchantment spells and effects.")
RacialTrait.create!(name: "Adaptability", race_id: half_elf.id, description: "Half-elves receive Skill Focus as a bonus feat at 1st level.")
RacialTrait.create!(name: "Keen Senses", race_id: half_elf.id, description: "Half-elves receive a +2 racial bonus on Perception checks.")
RacialTrait.create!(name: "Low-Light Vision", race_id: half_elf.id, description: "Half-elves can see twice as far as humans in conditions of dim light.")
RacialTrait.create!(name: "Elf Blood", race_id: half_elf.id, description: "Half-elves count as both elves and humans for any effect related to race.")
RacialTrait.create!(name: "Multitalented", race_id: half_elf.id, description: "Half-elves choose two favored classes at first level and gain +1 hit point or +1 skill point whenever they take a level in either one of those classes.")
# RacialTrait.create!(name: "", race_id: , description: "")

vine_leshy = Race.create!(name: "Vine Leshy", speed: 20, size: "Small", img_url: "https://i.pinimg.com/originals/95/2f/4a/952f4a813b92fdde2da083dc934c36b3.png", description: "Vine leshys are born by ritual, called forth when a druid channels a nature spirit into a plant’s form. The nature spirit that answers the call for a vine leshy creation ritual is always one that has keenly felt the influence of mortal beings. Compared to other leshys, vine leshys have an easier time relating to non-plant creatures and a deeper sense of curiosity about the wonders of the natural world beyond those plants closely related to them, as well as a fascination with the societies of humans and other creatures.

Physical Description: A vine leshy’s body is made of masses of twisted vines and leaves, sometimes incorporating flowers and fruits as well. Their appearance is mostly determined by the species of vine used in their creation, but most have a large cluster of leaves that forms a face with round eyes, a small mouth, and no visible nose.

Society: Because of their ritual-based genesis, vine leshys do not have a traditional family structure. They form strong friendships with those who accompany them on explorations or who assist them in protecting a natural site. Unlike most leshys, vine leshys usually feel a strong desire to seek out the one who create!d them. They see their creators as friends and allies rather than as parents.

While most leshys devote themselves to protecting a particular ward for long stretches of time, vine leshys are far more likely to travel and explore, stopping to care for many different wards for short periods throughout their lifetime. Vine leshys love storytelling, but they place more importance on the meaning and message of the story than the details, both because they can’t always remember the details and because they find many details to be unnecessary. A story that has passed through several vine leshys is likely to undergo significant changes in characters and setting but usually retains its core message.

Relations: Vine leshys are interested in learning about the cultures of many other races. Their initial attitudes when they encounter new races are based on biases from the nature spirit’s past incarnations, but they evolve over time through the leshy’s experiences. In unfamiliar situations, vine leshys prefer to blend in with vegetation to observe before venturing out and introducing themselves.

Consistent with the plant species from which they derive their bodies, vine leshys recognize a spectrum of genders. Some vine leshys are exclusively female or male, while many vine leshys are both. The biological features of a leshy’s flowers do not necessarily indicate its gender, as the nature spirit that inhabits the leshy plays a strong role in determining the leshy’s identity.

Vine leshys have an unusual relationship with other leshys, for unlike standard leshys, vine leshys are not grown to be servants. They are free-willed and individualistic creatures. Whether or not an individual vine leshy views the servitude other leshys endure as akin to slavery or as something more like an honorable tradition of service to a powerful druid depends on the vine leshy’s opinion and alignment. While it’s unusual for a vine leshy to take on another leshy as a minion in the traditional way, it’s not unusual to see vine leshys take on sponsorship of a sort over other leshys, treating them almost as adopted children or wayward exiles in need of guidance and protection from those who would force their servitude.

Alignment and Religion: Vine leshys see themselves as part of the ancient cycle of nature. They care for their friends and any natural areas under their care, but rarely feel compelled toward either charity or malice. Most vine leshys are truly neutral, and they almost always have at least one neutral aspect to their alignments. Religion is not particularly important to vine leshys.

Adventurers: Like most leshys, vine leshys typically do not fear death. They know that if their bodies die, their spirits will return to the natural world and may someday find themselves in new bodies. This lack of fear combined with their curiosity leads them to take risks. However, they typically avoid excessively dangerous activities, as they would rather gather a story from their adventures to tell later. Vine leshys gravitate toward classes that let them use their connection to nature, such as druid and ranger.

Names: Vine leshys’ names change throughout their lives. A young vine leshy typically names herself after her physical characteristics or a natural feature that she particularly enjoys. As vine leshys age, they modify their names to better reflect their personality and experiences. A leshy may even have several names that she cycles among, such as one name for each season. Most vine leshys select names that are at least two words long. Example vine leshy names include Burbling Waterfall, Lovely Triple Leaves, Masterful Sun Drinker, Snowy Pine Branches, Verdant Taleweaver, and Vibrant Tree Climber.")

RaceAbilityScoreModifier.create!(race_id: vine_leshy.id, ability_score: "Constitution", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: vine_leshy.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: vine_leshy.id, ability_score: "Intelligence", bonus: -2)

RacialTrait.create!(name: "Type", race_id: vine_leshy.id, description: "Vine leshys are plants with the leshy subtype but lack the immunities to mind-affecting effects, paralysis, poison, polymorph, sleep, and stunning that the plant type usually grants, and they lack the immunity to electricity and sonic that the leshy subtype usually grants.")
RacialTrait.create!(name: "Languages", race_id: vine_leshy.id, description: "Vine leshys begin play speaking Common and Sylvan. Vine leshys with high Intelligence scores can choose from the following: Aquan, Auran, Aklo, Elven, Gnome, Goblin, Terran, or Undercommon.")
RacialTrait.create!(name: "Plantspeech", race_id: vine_leshy.id, description: "Vine leshys can speak with vines as if subject to a continual speak with plants spell.")
RacialTrait.create!(name: "Darkvision", race_id: vine_leshy.id, description: "Vine leshys can see in the dark up to 60 feet.")
RacialTrait.create!(name: "Low-Light Vision", race_id: vine_leshy.id, description: "Vine leshys can see twice as far as humans under conditions of dim light.")
RacialTrait.create!(name: "Pass without Trace", race_id: vine_leshy.id, description: "Vine leshys have pass without trace as a constant spell-like ability (caster level 2nd).")
RacialTrait.create!(name: "Change Shape", race_id: vine_leshy.id, description: "Vine leshys can transform into vines, with results similar to tree shape. In this form, the leshy appears as a particularly healthy Small vine. The leshy can assume plant form or revert to its true form as a swift action.")
RacialTrait.create!(name: "Verdant Burst", race_id: vine_leshy.id, description: "When slain, a vine leshy explodes in a burst of fertile energies. All plant creatures within 30 feet of the slain leshy regain hit 1d8 points, and vines quickly infest the area. If the terrain can support vines, the undergrowth is dense enough to make the region into difficult terrain for 24 hours, after which the plant life diminishes to a normal level; otherwise, this plant life has no significant effect on movement and withers and dies within an hour.")
RacialTrait.create!(name: "Unassuming Foliage", race_id: vine_leshy.id, description: "Vine leshys gain a +4 racial bonus on Stealth checks in forests.")
RacialTrait.create!(name: "Climber", race_id: vine_leshy.id, description: "Vine leshys gain a +2 racial bonus on Climb checks.")
# RacialTrait.create!(name: "", race_id: , description: "")

human = Race.create!(name: 'Human', speed: 30, size: 'Medium', img_url: 'https://i.pinimg.com/474x/d1/a3/7d/d1a37d1463e284fe516ccd48ba0d46af.jpg', description: 'Humans possess exceptional drive and a great capacity to endure and expand, and as such are currently the dominant race in the world. Their empires and nations are vast, sprawling things, and the citizens of these societies carve names for themselves with the strength of their sword arms and the power of their spells. Humanity is best characterized by its tumultuousness and diversity, and human cultures run the gamut from savage but honorable tribes to decadent, devil-worshiping noble families in the most cosmopolitan cities. Humans’ curiosity and ambition often triumph over their predilection for a sedentary lifestyle, and many leave their homes to explore the innumerable forgotten corners of the world or lead mighty armies to conquer their neighbors, simply because they can.

Human society is a strange amalgam of nostalgia and futurism, being enamored of past glories and wistfully remembered “golden ages,” yet at the same time quick to discard tradition and history and strike off into new ventures. Relics of the past are kept as prized antiques and museum pieces, as humans love to collect things—not only inanimate relics but also living creatures—to display for their amusement or to serve by their side. Other races suggest this behavior is due to a deep-rooted urge to dominate and assert power in the human psyche, an urge to take, till, or tame the wild things and places of the world. Those with a more charitable view believe humans are simply collectors of experiences, and the things they take and keep, whether living, dead, or never alive, are just tokens to remind themselves of the places they have gone, the things they have seen, and the deeds they have accomplished. Their present and future value is just a bonus; their real value is as an ongoing reminder of the inevitable progress of humanity.

Humans in many places are fascinated by older races and cultures, though at times they grow frustrated or even contemptuous of ancient and (to their mind) outmoded traditions. Their attitudes toward other races are thus a curious mix of exoticism and even fetishism, though usually with a very superficial level of understanding and appreciation of those cultures, alongside a deeply rooted arrogance that means most humans have a hard time regarding themselves as anything other than the default standard of society. Human scholars engaged in the study of other races—who might be assumed to be the most cosmopolitan and well versed in their nature and culture—have often proved no better than the less-learned members of their race when it comes to genuine closing of the social distance. Humans are gregarious, often friendly, and willing to mix and interact with others, but their sheer obliviousness to their off handed marginalization of others is what so chagrins other races when dealing with them.

Of course, well-meaning, blundering ignorance and numerical superiority are not the only things that make other races suspicious of humans. Entirely too many examples can be found throughout history wherein human xenophobia and intolerance has led to social isolationism, civil oppression, bloody purges, inquisitions, mob violence, and open war. Humans are not the only race to hate what is different among them, but they seem to have a susceptibility to fear-mongering and suspicion, whether about race, language, religion, class, gender, or another difference. More moderate human citizens often sit idly by while their more extreme compatriots dominate the political and cultural conversation, yet there are also many who stand in opposition to extremists and embody a spirit of unity across the bounds of difference, transcending barriers and forming alliances and relationships both large and small across every color, creed, country, or species.

Physical Description: The physical characteristics of humans are as varied as the world’s climes. From the dark-skinned tribesmen of the southern continents to the pale and barbaric raiders of the northern lands, humans possess a wide variety of skin colors, body types, and facial features. Generally speaking, humans’ skin color assumes a darker hue the closer to the equator they live. At the same time, bone structure, hair color and texture, eye color, and a host of facial and bodily phenotypic characteristics vary immensely from one locale to another. Cheekbones may be high or broad, noses aquiline or flat, and lips full or thin; eyes range wildly in hue, some deep set in their sockets, and others with full epicanthic folds. Appearance is hardly random, of course, and familial, tribal, or national commonalities often allow the knowledgeable to identify a human’s place of origin on sight, or at least to hazard a good guess. Humans’ origins are also indicated through their traditional styles of bodily decoration, not only in the clothing or jewelry worn, but also in elaborate hairstyles, piercing, tattooing, and even scarification.

Society: Human society comprises a multitude of governments, attitudes, and lifestyles. Though the oldest human cultures trace their histories thousands of years into the past, when compared to the societies of other races like elves and dwarves, human society seems to be in a state of constant flux as empires fragment and new kingdoms subsume the old. In general, humans are known for their flexibility, ingenuity, and ambition. Other races sometimes envy humans their seemingly limitless adaptability, not so much biologically speaking but in their willingness to step beyond the known and press on to whatever might await them. While many or even most humans as individuals are content to stay within their comfortable routine, there is a dauntless spirit of discovery endemic to humans as a species that drives them in striving toward possibilities beyond every horizon.

Relations: Humans are fecund, and their drive and numbers often spur them into contact with other races during bouts of territorial expansion and colonization. In many cases, this tendency leads to violence and war, yet humans are also swift to forgive and forge alliances with races who do not try to match or exceed them in violence. Proud, sometimes to the point of arrogance, humans might look upon dwarves as miserly drunkards, elves as flighty fops, halflings as craven thieves, gnomes as twisted maniacs, and half-elves and half-orcs as embarrassments—but the race’s diversity among its own members also makes many humans quite adept at accepting others for what they are. Humans may become so absorbed in their own affairs that they remain ignorant of the language and culture of others, and some take this ignorance to a hateful extreme of intolerance, oppression, and rarely even extermination of others they perceive as dangerous, strange, or “impure.” Thankfully, while such incidents and movements may taint all of humanity in the eyes of some, they are more often the exception than the rule.

Alignment and Religion: Humanity is perhaps the most diverse of all the common races, with a capacity for both great evil and boundless good. Some humans assemble into vast barbaric hordes, while others build sprawling cities that cover miles. Taken as a whole, most humans are neutral, yet they generally tend to congregate in nations and civilizations with specific alignments. Humans also have the widest range of gods and religions, lacking other races’ ties to tradition and eager to turn to anyone offering them glory or protection.

Adventurers: Ambition alone drives countless humans, and for many, adventuring serves as a means to an end, whether it be wealth, acclaim, social status, or arcane knowledge. A few pursue adventuring careers simply for the thrill of danger. Humans hail from myriad regions and backgrounds, and as such can fill any role within an adventuring party.

Female Names: Alerdene, Alinza, Aula, Bach Hien, Belka, Beshkee, Chammady, Chao, Do Quyen, Eshe, Eudomia, Gerda, Hiriko, Ilinica, Indah, Ingirt, Izora, Jalket, Jayazi, Kaede, Kalizama, Kamshi, Lestari, Leyli, Marisan, Me’amesa, Meilin, Mirelinda, Mpaandi, Nalmida, Nanya, Narantuyaa, Ntisi, Pasara, Pontia, Que Xuan, Revhi, Runa, Sahba, Shirin, Shivkah, Sinkitah, Surenchinua, Udara, Umie, Valki, Waajida, Xemne, Xue, Zalika, Zova.

Male Names: Aakif, Andrezi, Arasmes, Bahram, Baolo, Barid, Batsaikhan, Belor, Budi, Darvan, Dolok, Eilif, Garidan, Gellius, Hadzi, Hamengku, Harisko, Iacobus, Jaali, Jianguo, Kjell, Kousei, Kronug, Menas, Mitabu, Narsius, Nonek, Pateba, Pratavh, Qorchi, Ragnar, Rubani, Seckor, Shokamb, Shuo, Sunaki, Suryo, Tabansi, Teruawa, Thanh Liem, Toan Hao, Tomorbataar, Tuong Kinh, Ursion, Vachedi, Viorec, Yekskya, Zaiho, Zhen.')

RaceAbilityScoreModifier.create!(race_id: human.id, ability_score: "Any", bonus: 2)

RacialTrait.create!(name: "Languages", race_id: human.id, description: "Humans begin play speaking Common. Humans with high Intelligence scores can choose any languages they want (except secret languages, such as Druidic).")
RacialTrait.create!(name: "Bonus Feat", race_id: human.id, description: "Humans select one extra feat at 1st level.")
RacialTrait.create!(name: "Skilled", race_id: human.id, description: "Humans gain an additional skill rank at first level and one additional rank whenever they gain a level.")
# RacialTrait.create!(name: "", race_id: , description: "")



# /////////////////////////////////////////
# <-*-*-----*-*-*- Classes!-*-*-*-----*-*->
# /////////////////////////////////////////

oracle = Klass.create!(name: "Oracle", hit_die: 8, skill_ranks: 4, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: "https://i.pinimg.com/474x/31/c3/79/31c379bb4e8751a478360d8dfd22f7bc--female-wizard-pathfinder-rpg.jpg", description: "Although the gods work through many agents, perhaps none is more mysterious than the oracle. These divine vessels are granted power without their choice, selected by providence to wield powers that even they do not fully understand. Unlike a cleric, who draws her magic through devotion to a deity, oracles garner strength and power from many sources, namely those patron deities who support their ideals. Instead of worshiping a single source, oracles tend to venerate all of the gods that share their beliefs. While some see the powers of the oracle as a gift, others view them as a curse, changing the life of the chosen in unforeseen ways.

Role: Oracles do not usually associate with any one church or temple, instead preferring to strike out on their own, or with a small group of like-minded individuals. Oracles typically use their spells and revelations to further their understanding of their mystery, be it through fighting mighty battles or tending to the poor and sick.

Alignment: Any.")

swashbuckler = Klass.create!(name: "Swashbuckler", hit_die: 10, skill_ranks: 4, fortitude: 0.34, reflex: 0.5, will: 0.34, img_url: "https://vignette.wikia.nocookie.net/pathfinderkingmaker/images/8/84/Taswik_duelist.jpg", description: "Whereas many warriors brave battle encased in suits of armor and wielding large and powerful weapons, swashbucklers rely on speed, agility, and panache. Swashbucklers dart in and out of the fray, wearing down opponents with lunges and feints, all while foiling the powerful attacks against them with a flick of the wrist and a flash of the blade. Their deft parries and fatal ripostes are carnage elevated to an art form. Some may be arrogant and devil-may-care, but behind this veneer lie people deeply dedicated to their craft. Those of smaller races are particularly driven to prove that the right mix of discipline and daring is the perfect counter to size and strength, and enjoy nothing more than taking down lumbering brutes and bullies.

Role: Combining fancy footwork with quick and precise lunges, swashbucklers dart in and out of battle, harassing and thwarting their opponents. These fast and agile combatants serve as protectors for spellcasters and flank mates for rogues and slayers, while waiting for the opportunity to show panache and score the killing blow on some lumbering hulk. Swashbucklers often face death with wry humor, mocking it with jabbing wit.

Alignment: Any.

Hit Die: d10.

Parent Classes: Fighter and gunslinger.")

unchained_rogue = Klass.create!(name: "Rogue", hit_die: 8, skill_ranks: 8, fortitude: 0.34, reflex: 0.5, will: 0.34, img_url: "http://www.d20pfsrd.com/wp-content/uploads/sites/12/2017/01/rogue__comm_by_yamaorce-d88oizc-320-2.png", description: "Life is an endless adventure for those who live by their wits. Ever just one step ahead of danger, rogues bank on their cunning, skill, and charm to bend fate to their favor. Never knowing what to expect, they prepare for everything, becoming masters of a wide variety of skills, training themselves to be adept manipulators, agile acrobats, shadowy stalkers, or masters of any of dozens of other professions or talents. Thieves and gamblers, fast talkers and diplomats, bandits and bounty hunters, and explorers and investigators all might be considered rogues, as well as countless other professions that rely upon wits, prowess, or luck. Although many rogues favor cities and the innumerable opportunities of civilization, some embrace lives on the road, journeying far, meeting exotic people, and facing fantastic danger in pursuit of equally fantastic riches. In the end, any who desire to shape their fates and live life on their own terms might come to be called rogues.

Role: Rogues excel at moving about unseen and catching foes unaware, and tend to avoid head-to-head combat. Their varied skills and abilities allow them to be highly versatile, with great variations in expertise existing between different rogues. Most, however, excel in overcoming hindrances of all types, from unlocking doors and disarming traps to outwitting magical hazards and conning dull-witted opponents.

Alignment: Any

")

shifter = Klass.create!(name: "Shifter", hit_die: 10, skill_ranks: 4, fortitude: 0.5, reflex: 0.5, will: 0.34, img_url: "https://i.pinimg.com/736x/2f/2f/1a/2f2f1a0f43c353bced1595dffa7db32c.jpg", description: "Whether riding on the wind as a falcon or hiding in some fetid bog waiting to strike, the shifter is a true master of the wild. Both a devoted defender of druidic circles and a fierce predator, the shifter can take on the forms of nature and even fuse them together with devastating effect and unbridled savagery. By way of the druidic discipline of wild shape, they become living aspects of the wild. At first, they are able to assume only a minor aspect, but with time and practice they can fully transform into ever more powerful forms.

The shifter class offers players a way to experience a shapeshifting character that is more martially inclined than a spellcasting druid. With each new level, the shifter’s powers grow in new and surprising ways, creating a character that thrives in battle, exploration, and stealth.

Shifters are protectors of druidic circles and avengers of nature, yet a shifter’s magic is different from that of her druidic kin. Rather than invoking spells from the natural world or forging alliances with animals, shifters focus their supernatural powers inward to gain control over their own forms. Their ability to change their forms is as varied as the wonders of the wilds themselves but always remains at least partially rooted in the natural world. There are many paths to becoming a shifter; most are trained in that role by druidic circles and have their powers unlocked via rituals of initiation. Yet some stumble upon the gift naturally, as if their blood bore the secrets of shifter transformation.

For those leaning toward the causes of law and good, the path of the shifter is one of contemplation and understanding. They become one with nature through mental and physical mimicry and gain an ever deeper spiritual understanding of the ebb and flow of the natural world. Those leaning toward the chaotic and evil teachings of druidic philosophy find such enlightenment through more violent means. These are typically quicker transformations, both brutal and painful, imparting the dark lessons of nature through its most catastrophic forms. Shifters who lean toward true neutrality are the most diverse when it comes to their command of metamorphic secrets.

Role: The shifter is so attuned to nature and the wild beasts of the world that she can call upon those powers to mystically fortify her being. Fluid in form and function, she can shape herself to overcome hardships and support those she befriends or serves.

Alignment: Any neutral.")

unchained_barbarian = Klass.create!(name: "Barbarian", hit_die: 12, skill_ranks: 4, fortitude: 0.5, reflex: 0.34, will: 0.34, img_url: "https://i.pinimg.com/originals/1b/16/b9/1b16b9707ef85952b3cee0482cdbbd3c.jpg", description: "For some, there is only rage. In the ways of their people, in the fury of their passion, in the howl of battle, conflict is all these brutal souls know. Savages, hired muscle, masters of vicious martial techniques, they are not soldiers or professional warriors—they are the battle possessed, creatures of slaughter and spirits of war. Known as barbarians, these warmongers know little of training, preparation, or the rules of warfare; for them, only the moment exists, with the foes that stand before them and the knowledge that the next moment might hold their death. They possess a sixth sense in regard to danger and the endurance to weather all that might entail. These brutal warriors might rise from all walks of life, both civilized and savage, though whole societies embracing such philosophies roam the wild places of the world. Within barbarians storms the primal spirit of battle, and woe to those who face their rage.

Role: Barbarians excel in combat, possessing the martial prowess and fortitude to take on foes seemingly far superior to themselves. With rage granting them boldness and daring beyond that of most other warriors, barbarians charge furiously into battle and ruin all who would stand in their way.

Alignment: Any non-lawful")

witch = Klass.create!(name: "Witch", hit_die: 6, skill_ranks: 2, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: "https://paizo.com/image/content/PathfinderCampaignSetting/PZO9249-WinterWitch.jpg", description: "Some gain power through study, some through devotion, others through blood, but the witch gains power from her communion with the unknown. Generally feared and misunderstood, the witch draws her magic from a pact made with an otherworldly power. Communing with that source, using her familiar as a conduit, the witch gains not only a host of spells, but a number of strange abilities known as hexes. As a witch grows in power, she might learn about the source of her magic, but some remain blissfully unaware. Some are even afraid of that source, fearful of what it might be or where its true purposes lie.

Role: While many witches are recluses, living on the edge of civilization, some live within society, openly or in hiding. The blend of witches’ spells makes them adept at filling a number of different roles, from seer to healer, and their hexes grant them a number of abilities that are useful in a fight. Some witches travel about, seeking greater knowledge and better understanding of the mysterious powers that guide them.

Alignment: Any.")

vigilante = Klass.create!(name: "Vigilante", hit_die: 8, skill_ranks: 6, fortitude: 0.34, reflex: 0.5, will: 0.5, img_url: "https://i.pinimg.com/originals/a7/79/cf/a779cf8972496626f1074d9cc62f27a0.png", description: "Being a renowned hero can be dangerous to your health and prosperity. Fighting against corruption and the evil that lurks within society makes you a target and, even worse, puts your friends and family in danger. For those who must maintain a social persona, being a part of the greater community while secretly fighting against powerful forces within it requires leading a double life.

By day, the vigilante maneuvers through society, dealing with other nobles or influential individuals. By night, he dons a disguise and an utterly different set of goals, taking the fight to his foes and solving problems with a blade when words will not suffice.

Game Masters should consider carefully whether or not a vigilante will make for a good fit with their campaign. The class is one that requires a degree of social aptitude and roleplaying to make full use of its potential.

Campaigns that focus more on wilderness exploration, travel, or dungeon delving and that are lighter on politics, negotiation, and manipulation might require a vigilante player to put in additional effort to make full use of his class features. Alternatively, a vigilante is uniquely suited to make for a powerful villain, hidden by day behind a mask of civility and a terror at night, free to commit terrible acts without risking discovery.

For players, the vigilante offers a unique opportunity to take on the role of a character with a hidden side, and whose life is committed to a secret agenda that he must struggle to advance in a complex world. Not every problem can be solved with a dagger in the dark, and even the most stubborn foe might be become an ally with the proper bribe. For the vigilante, these tasks are both within reach as long as you learn to properly use your dual nature and hidden skills to your fullest advantage.

Life can be unfair. Think of the starving peasants forced to toil for the local baron or the common laborers tasked with building the king’s newest palace for a mere handful of copper pieces each week. There are those who see these injustices and do nothing. There are those who are willing to reap the rewards obtained through the suffering of others.

Then there are those who see inequality and find themselves driven to take action, outside the law if necessary. These vigilantes operate in plain sight, hiding behind respectable personas by day, but donning alternate guises by night to right the wrongs they see all around them.

Not all vigilantes are out to make the world a better place. Some criminals hide behind the pretense of being ordinary folk, only to become terrors in the shadows, stealing and killing to fulfill some dark agenda. In either case, the vigilante is a character of two natures—the face that everyone knows and the mask that inspires fear.

Role: A vigilante can take on many tasks within a group. Most are skilled at negotiating delicate social situations and courtly intrigue, but they can also serve as stealthy spies or even brutish warriors in dangerous environments.

Alignment: Any.")

arcanist = Klass.create!(name: "Arcanist", hit_die: 6, skill_ranks: 2, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: "https://i.pinimg.com/originals/59/af/7d/59af7defc23bcd2a6338ad3d67e52df8.png", description: "Some spellcasters seek the secrets of magic, pursuing the power to make the impossible possible. Others are born with magic in their blood, commanding unbelievable forces as effortlessly as they breathe. Yet still others seek to meld the science of arcane scholars with the natural might of innate casters. These arcanists seek to discover the mysterious laws of magic and through will and expertise bend those forces to their whims. Arcanists are the shapers and tinkers of the arcane world, and no magic can resist their control.

Role: Arcanists are scholars of all things magical. They constantly seek out new forms of magic to discover how they work, and in many cases, to collect the energy of such magic for their own uses. Many arcanists are seen as reckless, more concerned with the potency of magic than the ramifications of unleashing such power.

Alignment: Any.")

brawler = Klass.create!(name: "Brawler", hit_die: 10, skill_ranks: 4, fortitude: 0.5, reflex: 0.5, will: 0.34, img_url: "https://i.pinimg.com/originals/71/90/a8/7190a8fb193a883fda6f7fa5f1cc7bdd.jpg", description: "Deadly even with nothing in her hands, a brawler eschews using the fighter’s heavy armor and the monk’s mysticism, focusing instead on perfecting many styles of brutal unarmed combat. Versatile, agile, and able to adapt to most enemy attacks, a brawler’s body is a powerful weapon.

Role: Brawlers are maneuverable and well suited for creating flanking situations or dealing with lightly armored enemies, as well as quickly adapting to a rapidly changing battlefield.

Alignment: Any.")

bard = Klass.create!(name: "Bard", hit_die: 8, skill_ranks: 6, fortitude: 0.34, reflex: 0.5, will: 0.5, img_url: "https://i.pinimg.com/originals/09/4c/27/094c279e4763d248da26622fb9654054.png", description: "Untold wonders and secrets exist for those skillful enough to discover them. Through cleverness, talent, and magic, these cunning few unravel the wiles of the world, becoming adept in the arts of persuasion, manipulation, and inspiration. Typically masters of one or many forms of artistry, bards possess an uncanny ability to know more than they should and use what they learn to keep themselves and their allies ever one step ahead of danger. Bards are quick-witted and captivating, and their skills might lead them down many paths, be they gamblers or jacks-of-all-trades, scholars or performers, leaders or scoundrels, or even all of the above. For bards, every day brings its own opportunities, adventures, and challenges, and only by bucking the odds, knowing the most, and being the best might they claim the treasures of each.

Role: Bards capably confuse and confound their foes while inspiring their allies to ever-greater daring. While accomplished with both weapons and magic, the true strength of bards lies outside melee, where they can support their companions and undermine their foes without fear of interruptions to their performances.

Alignment: Any")

fate_weaver = Klass.create!(name: "Fate Weaver", hit_die: 6, skill_ranks: 6, fortitude: 0.34, reflex: 0.5, will: 0.34, img_url: "https://i.pinimg.com/originals/db/9f/cc/db9fcc1ded708f4ea2e90b515334b3b3.png", description: "The Fate Weaver has been touched by those who control destiny, allowing their chaotic nature to benefit them tremendously. Whether they are aware of their powers, or believe they are just lucky, the Fate Weaver seeks domination. With their granted gifts, their fortune is more real than anyone else's: they just have to take it.

Role: The Fate Weaver has a wide array of options, but they may not always be consistent, necessary, or beneficial. Be wary of the Fate Weaver’s power: it is awesome in the both the good and the bad sense. A clutch Fate Weaver can change the tide in an instant, and often has a card up their sleeve for the most unlikely situations.

Alignment: Any Chaotic")

wizard = Klass.create!(name: "Wizard", hit_die: 6, skill_ranks: 2, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: "https://i.pinimg.com/originals/e0/cc/47/e0cc47ea55051b8221c15cfc208f3a20.png", description: "Beyond the veil of the mundane hide the secrets of absolute power. The works of beings beyond mortals, the legends of realms where gods and spirits tread, the lore of creations both wondrous and terrible—such mysteries call to those with the ambition and the intellect to rise above the common folk to grasp true might. Such is the path of the wizard. These shrewd magic-users seek, collect, and covet esoteric knowledge, drawing on cultic arts to work wonders beyond the abilities of mere mortals. While some might choose a particular field of magical study and become masters of such powers, others embrace versatility, reveling in the unbounded wonders of all magic. In either case, wizards prove a cunning and potent lot, capable of smiting their foes, empowering their allies, and shaping the world to their every desire.

Role: While universalist wizards might study to prepare themselves for any manner of danger, specialist wizards research schools of magic that make them exceptionally skilled within a specific focus. Yet no matter their specialty, all wizards are masters of the impossible and can aid their allies in overcoming any danger.

Alignment: Any")

unchained_summoner = Klass.create!(name: 'Summoner', hit_die: 8, skill_ranks: 2, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: 'https://i.pinimg.com/originals/4f/9d/ac/4f9dac371934ff8f117751e94165c285.png', description: 'There are those who take a different path when pursuing the arcane arts, reaching across the boundaries of the world to the far-f lung planes to call forth all manner of creatures to do their bidding. Known as summoners, these arcane practitioners form close bonds with particular outsiders, known as eidolons, which increase in power along with their callers. In the end, summoners and their eidolons become linked, sharing shards of the same souls.

Role: Summoners spend much of their time exploring the arcane arts alongside their eidolons. While their power comes from within, they rely heavily on their eidolon companions in dangerous situations. While a summoner and his eidolon function as individuals, their true power lies in what they can accomplish together.

Unchained: Most of the summoner’s class features are the same as those of the class’s original design—the biggest change comes to the eidolon. The unchained summoner selects a subtype for his eidolon (such as angel, demon, or protean), which determines a number of its evolutions and helps to shape the eidolon’s general attitude and appearance. In addition, some of the evolutions are now tied to one or more subtypes and base forms, to make eidolons that better match the expected appearances and abilities of such creatures. Finally, the summoner spell list has been greatly revised, removing a number of imbalances.

Alignment: Any.')

cleric = Klass.create!(name: 'Cleric', hit_die: 8, skill_ranks: 2, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: 'https://i.pinimg.com/originals/11/64/74/116474aaa94e3c45029f6ec5c7c341ff.png', description: 'In faith and the miracles of the divine, many find a greater purpose. Called to serve powers beyond most mortal understanding, all priests preach wonders and provide for the spiritual needs of their people. Clerics are more than mere priests, though; these emissaries of the divine work the will of their deities through strength of arms and the magic of their gods. Devoted to the tenets of the religions and philosophies that inspire them, these ecclesiastics quest to spread the knowledge and influence of their faith. Yet while they might share similar abilities, clerics prove as different from one another as the divinities they serve, with some offering healing and redemption, others judging law and truth, and still others spreading conflict and corruption. The ways of the cleric are varied, yet all who tread these paths walk with the mightiest of allies and bear the arms of the gods themselves.
Role: More than capable of upholding the honor of their deities in battle, clerics often prove stalwart and capable combatants. Their true strength lies in their capability to draw upon the power of their deities, whether to increase their own and their allies’ prowess in battle, to vex their foes with divine magic, or to lend healing to companions in need. As their powers are influenced by their faith, all clerics must focus their worship upon a divine source. While the vast majority of clerics revere a specific deity, a small number dedicate themselves to a divine concept worthy of devotion—such as battle, death, justice, or knowledge—free of a deific abstraction. (Work with your GM if you prefer this path to selecting a specific deity.)

Alignment: A cleric’s alignment must be within one step of her deity’s, along either the law/chaos axis or the good/evil axis.')

# Klass.create!(name: "", hit_die: , skill_ranks: , fortitude: , reflex: , will: , img_url: "", description: "")
# Klass.create!(name: "", hit_die: , skill_ranks: , fortitude: , reflex: , will: , img_url: "", description: "")
# Klass.create!(name: "", hit_die: , skill_ranks: , fortitude: , reflex: , will: , img_url: "", description: "")

# /////////////////////////////////////////
# <-*-*-----*-*-*- Class Features!-*-*-*-----*-*->
# /////////////////////////////////////////

oracle1 = KlassFeature.create!(klass_id: oracle.id, name: "Weapon and Armor Proficiency", description: "Oracles are proficient with all simple weapons, light armor, medium armor, and shields (except tower shields). Some oracle revelations grant additional proficiencies.")

oracle2 = KlassFeature.create!(klass_id: oracle.id, name: "Spellcasting", description: "An oracle casts divine spells drawn from the cleric spell lists. She can cast any spell she knows without preparing it ahead of time. To learn or cast a spell, an oracle must have a Charisma score equal to at least 10 + the spell level. The Difficulty Class for a saving throw against an oracle’s spell is 10 + the spell’s level + the oracle’s Charisma modifier (see FAQ).

Like other spellcasters, an oracle can cast only a certain number of spells per day of each spell level. Her base daily spell allotment is given on Table: Oracle. In addition, she receives bonus spells per day if she has a high Charisma score (see Table: Ability Modifiers and Bonus Spells).

Unlike other divine spellcasters, an oracle’s selection of spells is extremely limited. An oracle begins play knowing four 0-level spells and two 1st-level spells of her choice. At each new oracle level, she gains one or more new spells, as indicated on Table: Oracle Spells Known. Unlike spells per day, the number of spells an oracle knows is not affected by her Charisma score; the numbers on Table: Oracle Spells Known are fixed.

In addition to the spells gained by oracles as they gain levels, each oracle also adds all of either the cure spells or the inflict spells to her list of spells known (cure spells include all spells with “cure” in the name, inflict spells include all spells with “inflict” in the name). These spells are added as soon as the oracle is capable of casting them. This choice is made when the oracle gains her first level and cannot be changed.

Upon reaching 4th level, and at every even-numbered oracle level after that (6th, 8th, and so on), an oracle can choose to learn a new spell in place of one she already knows. In effect, the oracle loses the old spell in exchange for the new one. The new spell’s level must be the same as that of the spell being exchanged. An oracle may swap only a single spell at any given level, and must choose whether or not to swap the spell at the same time that she gains new spells known for the level. She cannot swap any cure or inflict spells, nor can she swap any spells gained from her mystery. Unlike a cleric, an oracle need not prepare her spells in advance. She can cast any spell she knows at any time, assuming she has not yet used up her spells per day for that spell level. Oracles do not need to provide a divine focus to cast spells that list divine focus (DF) as part of the components.")

witch1 = KlassFeature.create!(klass_id: witch.id, name: "Weapon and Armor Proficiency", description: "Witches are proficient with all simple weapons. They are not proficient with any type of armor or shield. Armor interferes with a witch’s gestures, which can cause her spells with somatic components to fail.")
    FeatureLevel.create!(klass_feature_id: witch1.id, level: 1, table_description: "none")

witch2 = KlassFeature.create!(klass_id: witch.id, name: "Spells", description: "A witch casts arcane spells drawn from the witch spell list. A witch must choose and prepare her spells ahead of time.

  To learn or cast a spell, a witch must have an Intelligence score equal to at least 10 + the spell level. The Difficulty Class for a saving throw against a witch’s spell is 10 + the spell level + the witch’s Intelligence modifier.

  A witch can cast only a certain number of spells of each spell level per day. Her base daily spell allotment is given on Table: Witch. In addition, she receives bonus spells per day if she has a high Intelligence score (see Table: Ability Modifiers and Bonus Spells).

  A witch may know any number of spells. She must choose and prepare her spells ahead of time by getting 8 hours of sleep and spending 1 hour communing with her familiar. While communing, the witch decides which spells to prepare.

  Cantrips Witches can prepare a number of cantrips, or 0-level spells, each day, as noted on Table: Witch under “Spells per Day.” These spells are cast like any other spell, but they are not expended when cast and may be used again. Cantrips prepared using other spell slots, due to metamagic feats for example, are expended normally.")
    FeatureLevel.create!(klass_feature_id: witch2.id, level: 1, table_description: "none")


witch3 = KlassFeature.create!(klass_id: witch.id, name: "Hex", description: "Witches learn a number of magic tricks, called hexes, that grant them powers or weaken foes. At 1st level, a witch gains one hex of her choice. She gains an additional hex at 2nd level and for every 2 levels attained after 2nd level, as noted on Table: Witch. A witch cannot select an individual hex more than once.

  Unless otherwise noted, using a hex is a standard action that does not provoke an attack of opportunity. The save to resist a hex is equal to 10 + 1/2 the witch’s level + the witch’s Intelligence modifier.")
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 1, table_description: "Hex")
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 2, table_description: "Hex")
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 4, table_description: "Hex")
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 6, table_description: "Hex")
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 8, table_description: "Hex")
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 10, table_description: "Hex")
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 12, table_description: "Hex")
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 14, table_description: "Hex")
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 16, table_description: "Hex")
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 18, table_description: "Hex")
    FeatureLevel.create!(klass_feature_id: witch3.id, level: 20, table_description: "Hex")


  fate_weaver1 = KlassFeature.create!(klass_id: fate_weaver.id, name: "Chaotic Nature", description: "A Fate Weaver is initially a victim of chaos, but over time, she learns to become not only an agent, but a master of chaos. If she is damaged by a lawful creature’s unarmed attack, a lawfully aligned or axiomatic weapon, or a spell with a lawful descriptor, she takes additional damage equal to her Hit Dice.

  The Fate Weaver is more talented than she knows, even when pursuing other paths. She gains the Eschew Materials feat as a bonus feat, but only for spells cast through this class. If the Fate Weaver gains levels in other classes, but every 6th level gained in another class lets her roll once for an ability through her Chaotic Reveal class feature.")
    FeatureLevel.create!(klass_feature_id: fate_weaver1.id, level: 1, table_description: "Chaotic Nature")


  fate_weaver2 = KlassFeature.create!(klass_id: fate_weaver.id, name: "Chaotic Reveal", description: "A Fate Weaver is dominated by chance, and revels in the potential of chaos. At 1st level and every subsequent odd level, a Fate Weaver rolls a d100. Depending on the results, she gains an additional feature, power, stat increase, or ability, described in the Chaotic Reveal chart below. Unless otherwise mundane, the effect of these features are considered supernatural abilities.")
    FeatureLevel.create!(klass_feature_id: fate_weaver2.id, level: 1, table_description: "Chaotic Reveal")
    FeatureLevel.create!(klass_feature_id: fate_weaver2.id, level: 3, table_description: "Chaotic Reveal")
    FeatureLevel.create!(klass_feature_id: fate_weaver2.id, level: 5, table_description: "Chaotic Reveal")
    FeatureLevel.create!(klass_feature_id: fate_weaver2.id, level: 7, table_description: "Chaotic Reveal")
    FeatureLevel.create!(klass_feature_id: fate_weaver2.id, level: 9, table_description: "Chaotic Reveal")
    FeatureLevel.create!(klass_feature_id: fate_weaver2.id, level: 11, table_description: "Chaotic Reveal")
    FeatureLevel.create!(klass_feature_id: fate_weaver2.id, level: 13, table_description: "Chaotic Reveal")
    FeatureLevel.create!(klass_feature_id: fate_weaver2.id, level: 15, table_description: "Chaotic Reveal")
    FeatureLevel.create!(klass_feature_id: fate_weaver2.id, level: 17, table_description: "Chaotic Reveal")
    FeatureLevel.create!(klass_feature_id: fate_weaver2.id, level: 19, table_description: "Chaotic Reveal")
    chaotic1 = FeatureOption.create!(klass_feature_id: fate_weaver2.id, name: "Nightmare Forme", description: "Once a day, as an action lasts takes 1 minute, you can transform yourself into a Nightmare Form, a frightening and powerful being that augments your abilities. You size increases by one category, and your race alters into a different shape of your choice with additional changes: roll a 4d20 to decide what changes.

    1 - long and lithe, 2 - hulking and slouched, 3, glistening/flaking/wrinkled skin, 4 - a limb changes into a mechanical part/tentacle/claw, 5 - extra eyes on your head, 6 - shaggy hair, 7 - flaming/iced/rocky/translucent/metallic, 8 - ornamental wings, 9 - face goes into torso, 10 - hovering, 11 - body has holes like swiss cheese, 12 - sunken eyes and wide mouth, 13 - ornamental tail, 14 - proboscis, 15 - third arm, 16 - face on the back of you, 17 - spines/quills, 18 - impaled with weapon and bleeding, 19 - gaunt and withered, 20 - wispy, flowing clothing. You cannot apply the same result to your nightmare form.

    Select an ability score: it increases by +2 while in this form. Select a skill: increase your modifier for that skill by +5 while in this form. The duration of this form is 1 minute per day per hit die, and you can revert back to your normal form as a full-round action. This is a polymorph effect.

    For every 2 levels after gaining this Chaotic Reveal, you may increase the ability score by an additional +1, and increase one skill modifier by +3 (you can choose the same skill, or different skills).

    After 4 levels since gaining this Chaotic Reveal, you can change into your Nightmare Form as a full-round action, and you may choose a secondary ability score; it gains the same modifier as the original chosen ability score -2.", level_available: 1)
      FeatureOptionAction.create!(feature_option_id: chaotic1.id, action_id: one_minute.id, level: 1)

    chaotic2 = FeatureOption.create!(klass_feature_id: fate_weaver2.id, name: "Gravity Manipulation", description: "Add feather fall to your list of known spells. You can affect an area of a 20 ft radius in space with heavy or light gravity as a standard action (PA 58-59). You must be within 60 ft of the point of origin and maintain concentration each round, or else the affected area no longer has any change in gravity. You can affect an area for a number of rounds a day equal to 4 times your Fate Weaver level.

    For every 4 levels after gaining this Chaotic Reveal, increase the bonuses and penalties of the gravitational zones you created by 1, and the duration of the area continues for 1 additional round after you cease concentration (which is not deducted from your total amount of rounds for the day).

    After 3 levels since gaining this Chaotic Reveal, you gain the Heavy Gravity Acclimation and Light Gravity Acclimation as bonus feats, even if you don't fulfill the prerequisites. You can adjust the gravity of the zone you've affected to a different type as a move action.

    After 6 levels since gaining this Chaotic Reveal, you gain the Gravitational Vital Strike feat as a bonus feat, even if you don't fulfill the prerequisites. As a standard action, you can touch a creature, temporarily affecting it with either Heavy Gravity Acclimation or Light Gravity Acclimation for 10 minutes.

    After 10 levels since gaining this Chaotic Reveal, you learn the reverse gravity as a spell-like ability once a day. Additionally, the radius of this effect increases to 40 ft, and you only need to be within 100 ft of the point of origin to maintain concentration.", level_available: 1)
      FeatureOptionAction.create!(feature_option_id: chaotic2.id, action_id: standard.id, level: 1)

    chaotic3 = FeatureOption.create!(klass_feature_id: fate_weaver2.id, name: "Combat Prowess", description: "Once a day, you can make a combat maneuver in place of your attack of opportunity. Doing this does not threaten an attack of opportunity from the target, but it does threaten from adjacent creatures. If you have a relevant Improved feat for a combat maneuver, you can make that specific combat maneuver +2 times per day, in addition to the once per day for all combat maneuvers. If you have a relevant Greater feat, you gain an additional +2 times per day.

    For every 4 levels after gaining this Chaotic Reveal, you gain a +1 bonus to all combat maneuvers for which you have the relevant Improved feat, and an additional +1 bonus if you have the relevant Greater feat. This does not compound retroactively, if you get a feat after getting this bonus.

    After 3 levels since gaining this Chaotic Reveal, as a standard action, you may forgo one use of this ability to let an ally within 30 ft of you attempt this ability. The ally gains a bonus to this ability equal to the bonuses gained from this feature, if they are using a specific combat maneuver for which you have either the relevant Improved or Greater feat. They must use this ability within 1 minute of you \"teaching\" them, or the ability is lost.", level_available: 1)

    # FeatureOption.create!(klass_feature_id: , name: "", description: "", level_available: )
    # FeatureOption.create!(klass_feature_id: , name: "", description: "", level_available: )
    # FeatureOption.create!(klass_feature_id: , name: "", description: "", level_available: )
    # FeatureOption.create!(klass_feature_id: , name: "", description: "", level_available: )
    # FeatureOption.create!(klass_feature_id: , name: "", description: "", level_available: )

  fate_weaver3 = KlassFeature.create!(klass_id: fate_weaver.id, name: "Exasperations", description: "During times of fortune or misfortune, a Fate Weaver can attempt to alter fate by reaching into the energy of the cosmos, and tearing magic from it. By taking 3 points of nonlethal damage, as a swift action, she may declare a category of exasperation (Alter, Generate, Overwhelm), and roll a d100. For the chosen result, apply the listed effect. She is precisely aware of the result of the effect but not necessarily the target, and may react accordingly. The duration of these effects is written next to them. Consult the DM for random targets or other choices that she does not get to choose.

  A Fate Weaver may also use an Exasperation as an action that takes 10 minutes, and requires concentration. After the end of the 10 minutes, she may roll for an Exasperation without taking the above nonlethal damage (all nonlethal damage from other modifications are still dealt; see below). If she fails a concentration check, she loses the Exasperation as if the chosen result had no effect.

  She may also modify her Exasperation by taking additional nonlethal damage.

  At 1st level, she may take an additional 1 point of nonlethal damage to roll another d100. This effect can be used multiple times within the same Exasperation. She may also take an additional 2 points of nonlethal damage to select an additional category. This effect can be used multiple times within the same Exasperation. However, you may only select one Exasperation from all the available categories.

  At 4th level, she may take an additional 3 points of nonlethal damage to have an additional Exasperation trigger with the original Exasperation. This effect can be used multiple times within the same Exasperation. If she does not have access to multiple choices, she may have the same chosen Exasperation happen multiple times.

  At 8th level, she may take an additional 4 points of nonlethal damage to delay her chosen Exasperation or Exasperations. After choosing the results of the Exasperation, she can hold those effects from activating for a number of rounds equal to 5 + her Charisma modifier. She can trigger any number of these effects as a Free Action during the given rounds. Any inactivated Exasperations after the duration ends are lost.

  At 12th level, she may take an additional 5 points of nonlethal damage to roll for an Exasperation as an Immediate Action, rather than a Swift Action.

  At 16th level, she may take an additional 6 points of nonlethal damage to select up to 2 additional targets for all of your Exasperations that you choose, if they ask you to select one target. Additionally, the duration for all of your Exasperations are doubled.")
    FeatureLevel.create!(klass_feature_id: fate_weaver3.id, level: 1, table_description: "Exasperations")
    FeatureAction.create!(klass_feature_id: fate_weaver3.id, action_id: swift.id, level: 1)
    FeatureAction.create!(klass_feature_id: fate_weaver3.id, action_id: immediate.id, level: 12)

  fate_weaver4 = KlassFeature.create!(klass_id: fate_weaver.id, name: "Spells", description: "A Fate Weaver casts divine spells drawn from the Fate Weaver spell list (below). To cast a spell, a Fate Weaver must have a Charisma score equal to at least 10 + the spell level. The Difficulty Class for a saving throw against a Fate Weaver’s spell is 10 + the spell level + the Fate Weaver’s Charisma modifier.

  A Fate Weaver’s spell list is massive, drawn from the agents of fate themselves to embody and embolden your actions. The spell list is combination of bard, cleric, druid, wizard, alchemist, inquisitor, medium, and oracle spells, focusing on enchantment, conjuration, divination, and transmutation spells, with evocation spells that alter the environment.

  A Fate Weaver’s selection of spells known is extremely limited. At 2nd level, she learns 4 orisons, and 2 additional orisons at 3rd level. At 4th level, she learns 2 1st-level spells. At each new Fate Weaver level, she gains one or more new spells, as indicated on the table above.

  At 3rd level, and every level after that, a Fate Weaver can choose to learn a new spell in place of one she already knows. In effect, the Fate Weaver loses the old spell in exchange for the new one. The new spell's level must be the same as that of the spell being exchanged. A Fate Weaver may swap only a single spell at any given level, and must choose whether or not to swap the spell at the same time that she gains new spells known for the level. She cannot swap any spells that were granted by a Chaotic Reveal.

  Like a sorcerer, a Fate Weaver need not prepare her spells in advance. She can cast any spell she knows at any time, assuming she has not yet used up her Fate points for the day.

  Orisons: At 2nd level, a Fate Weaver can cast orisons, or 0-level spells, by spending 1/2 Fate Points. These spells are cast like any other spell, and do not need to be prepared in advance.")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 2, table_description: "Orisons +4")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 3, table_description: "Orisons +2")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 4, table_description: "1st-level +2")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 5, table_description: "1st-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 6, table_description: "1st-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 7, table_description: "1st-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 8, table_description: "2nd-level +2")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 9, table_description: "2nd-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 10, table_description: "2nd-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 11, table_description: "2nd-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 12, table_description: "3rd-level +2")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 13, table_description: "3rd-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 14, table_description: "3rd-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 15, table_description: "3rd-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 16, table_description: "4th-level +2")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 17, table_description: "4th-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 18, table_description: "4th-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 19, table_description: "4th-level +1")
    FeatureLevel.create!(klass_feature_id: fate_weaver4.id, level: 20, table_description: "5th-level +2")

  fate_weaver5 = KlassFeature.create!(klass_id: fate_weaver.id, name: "Fate Points", description: "A Fate Weaver’s doesn’t have a specific amount of spells cast per day, they have a Fate point pool from which they spend to cast spells. Each time a Fate Weaver wants to cast a spell, she must first deduct a number of points from her Fate point pool equal to the spell’s level, including if the spell level is modified by a metamagic feat (Orisons cost 1/2 point). If she does not have enough Fate points to spend, she cannot cast that spell. She restores her Fate points to their maximum after 8 hours of rest.

  A Fate Weaver's Fate Points begin at a random amount each day. At 2nd level, at the start of a new day, a Fate Weaver has a number of Fate Points equal to the dice rolled + her Charisma modifier. The dice the Fate Weaver uses to roll at the beginning of each day will change at subsequent levels.")
    FeatureLevel.create!(klass_feature_id: fate_weaver5.id, level: 2, table_description: "Fate Points 1d4")
    FeatureLevel.create!(klass_feature_id: fate_weaver5.id, level: 4, table_description: "Fate Points 1d6")
    FeatureLevel.create!(klass_feature_id: fate_weaver5.id, level: 7, table_description: "Fate Points 2d4")
    FeatureLevel.create!(klass_feature_id: fate_weaver5.id, level: 10, table_description: "Fate Points 2d6")
    FeatureLevel.create!(klass_feature_id: fate_weaver5.id, level: 13, table_description: "Fate Points 2d8")
    FeatureLevel.create!(klass_feature_id: fate_weaver5.id, level: 16, table_description: "Fate Points 2d10")
    FeatureLevel.create!(klass_feature_id: fate_weaver5.id, level: 19, table_description: "Fate Points 2d12")

  fate_weaver6 = KlassFeature.create!(klass_id: fate_weaver.id, name: "Destiny Maker", description: "At 5th level, instead of rolling a d100 on the Chaotic Reveal, a Fate Weaver may choose to select the result. If the result requires more dice to be rolled, she may also choose the result of those dice. At 11th level, and 17th level, she may choose another Chaotic Reveal instead of rolling.")
    FeatureLevel.create!(klass_feature_id: fate_weaver6.id, level: 5, table_description: "Destiny Maker")
    FeatureLevel.create!(klass_feature_id: fate_weaver6.id, level: 11, table_description: "Destiny Maker")
    FeatureLevel.create!(klass_feature_id: fate_weaver6.id, level: 17, table_description: "Destiny Maker")

bard1 = KlassFeature.create!(klass_id: bard.id, name: "Weapon and Armor Proficiency", description: "A bard is proficient with all simple weapons, plus the longsword, rapier, sap, shortsword, shortbow, and whip. Bards are also proficient with light armor and shields (except tower shields). A bard can cast bard spells while wearing light armor and using a shield without incurring the normal arcane spell failure chance. Like any other arcane spellcaster, a bard wearing medium or heavy armor incurs a chance of arcane spell failure if the spell in question has a somatic component. A multiclass bard still incurs the normal arcane spell failure chance for arcane spells received from other classes.")
  FeatureLevel.create!(klass_feature_id: bard1.id, level: 1, table_description: "none")

bard2 = KlassFeature.create!(klass_id: bard.id, name: "Spells", description: "A bard casts arcane spells drawn from the bard spell list. He can cast any spell he knows without preparing it ahead of time. Every bard spell has a verbal component (singing, reciting, or music). To learn or cast a spell, a bard must have a Charisma score equal to at least 10 + the spell level. The Difficulty Class (DC) for a saving throw against a bard’s spell is 10 + the spell level + the bard’s Charisma modifier.

Like other spellcasters, a bard can cast only a certain number of spells of each spell level per day. His base daily spell allotment is given on Table: bard. In addition, he receives bonus spells per day if he has a high Charisma score.

The bard’s selection of spells is extremely limited. A bard begins play knowing four 0-level spells and two 1st-level spells of the bard’s choice. At each new bard level, he gains one or more new spells, as indicated on Table: Bard Spells Known. (Unlike spells per day, the number of spells a bard knows is not affected by his Charisma score (See Table: Ability Modifiers and Bonus Spells).

Upon reaching 5th level, and at every third bard level after that (8th, 11th, and so on), a bard can choose to learn a new spell in place of one he already knows. In effect, the bard “loses” the old spell in exchange for the new one. The new spell’s level must be the same as that of the spell being exchanged, and it must be at least one level lower than the highest-level bard spell the bard can cast. A bard may swap only a single spell at any given level, and must choose whether or not to swap the spell at the same time that he gains new spells known for the level.

A bard need not prepare his spells in advance. He can cast any spell he knows at any time, assuming he has not yet used up his allotment of spells per day for the spell’s level.

Cantrips: Bard’s learn a number of cantrips, or 0-level spells, as noted on Table: Bard Spells Known under “Spells Known.” These spells are cast like any other spell, but they do not consume any slots and may be used again.")
  FeatureLevel.create!(klass_feature_id: bard2.id, level: 1, table_description: "none")

bard3 = KlassFeature.create!(klass_id: bard.id, name: "Bardic Knowledge", description: "A bard adds half his class level (minimum 1) to all Knowledge skill checks and may make all Knowledge skill checks untrained.")
  FeatureLevel.create!(klass_feature_id: bard3.id, level: 1, table_description: "Bardic Knowledge")

bard4 = KlassFeature.create!(klass_id: bard.id, name: "Bardic Performance", description: "A bard is trained to use the Perform skill to create magical effects on those around him, including himself if desired. He can use this ability for a number of rounds per day equal to 4 + his Charisma modifier. At each level after 1st a bard can use bardic performance for 2 additional rounds per day. Each round, the bard can produce any one of the types of bardic performance that he has mastered, as indicated by his level.

Starting a bardic performance is a standard action, but it can be maintained each round as a free action. Changing a bardic performance from one effect to another requires the bard to stop the previous performance and start a new one as a standard action. A bardic performance cannot be disrupted, but it ends immediately if the bard is killed, paralyzed, stunned, knocked unconscious, or otherwise prevented from taking a free action to maintain it each round. A bard cannot have more than one bardic performance in effect at one time.

At 7th level, a bard can start a bardic performance as a move action instead of a standard action. At 13th level, a bard can start a bardic performance as a swift action.

Each bardic performance has audible components, visual components, or both.

If a bardic performance has audible components, the targets must be able to hear the bard for the performance to have any effect, and many such performances are language dependent (as noted in the description). A deaf bard has a 20% chance to fail when attempting to use a bardic performance with an audible component. If he fails this check, the attempt still counts against his daily limit. Deaf creatures are immune to bardic performances with audible components.

If a bardic performance has a visual component, the targets must have line of sight to the bard for the performance to have any effect. A blind bard has a 50% chance to fail when attempting to use a bardic performance with a visual component. If he fails this check, the attempt still counts against his daily limit. Blind creatures are immune to bardic performances with visual components.")
  FeatureLevel.create!(klass_feature_id: bard4.id, level: 1, table_description: "Bardic Performance")

bard5 = KlassFeature.create!(klass_id: bard.id, name: "Countersong", description: "At 1st level, a bard learns to counter magic effects that depend on sound (but not spells that have verbal components.) Each round of the countersong he makes a Perform (keyboard, percussion, wind, string, or sing) skill check. Any creature within 30 feet of the bard (including the bard himself) that is affected by a sonic or language-dependent magical attack may use the bard’s Perform check result in place of its saving throw if, after the saving throw is rolled, the Perform check result proves to be higher. If a creature within range of the countersong is already under the effect of a non-instantaneous sonic or language-dependent magical attack, it gains another saving throw against the effect each round it hears the countersong, but it must use the bard’s Perform skill check result for the save. Countersong does not work on effects that don’t allow saves. Countersong relies on audible components.")
  FeatureLevel.create!(klass_feature_id: bard5.id, level: 1, table_description: "Countersong")

bard6 = KlassFeature.create!(klass_id: bard.id, name: "Distraction", description: "At 1st level, a bard can use his performance to counter magic effects that depend on sight. Each round of the Distraction, he makes a Perform (act, comedy, dance, or oratory) skill check. Any creature within 30 feet of the bard (including the bard himself) that is affected by an illusion (pattern) or illusion (figment) magical attack may use the bard’s Perform check result in place of its saving throw if, after the saving throw is rolled, the Perform check result proves to be higher. If a creature within range of the Distraction is already under the effect of a non-instantaneous illusion (pattern) or illusion (figment) magical attack, it gains another saving throw against the effect each round it sees the Distraction, but it must use the bard’s Perform check result for the save. Distraction does not work on effects that don’t allow saves. Distraction relies on visual components.")
  FeatureLevel.create!(klass_feature_id: bard6.id, level: 1, table_description: "Distraction")

bard7 = KlassFeature.create!(klass_id: bard.id, name: "Fascinate", description: "At 1st level, a bard can use his performance to cause one or more creatures to become fascinated with him. Each creature to be fascinated must be within 90 feet, able to see and hear the bard, and capable of paying attention to him. The bard must also be able to see the creatures affected. The Distraction of a nearby combat or other dangers prevents the ability from working. For every three levels a bard has attained beyond 1st, he can target one additional creature with this ability.

Each creature within range receives a Will save (DC 10 + 1/2 the bard’s level + the bard’s Cha modifier) to negate the effect. If a creature’s saving throw succeeds, the bard cannot attempt to fascinate that creature again for 24 hours. If its saving throw fails, the creature sits quietly and observes the performance for as long as the bard continues to maintain it. While fascinated, a target takes a –4 penalty on skill checks made as reactions, such as Perception checks. Any potential threat to the target allows the target to make a new saving throw against the effect. Any obvious threat, such as someone drawing a weapon, casting a spell, or aiming a weapon at the target, automatically breaks the effect.

Fascinate is an enchantment (compulsion), mind-affecting ability. Fascinate relies on audible and visual components in order to function.")
  FeatureLevel.create!(klass_feature_id: bard7.id, level: 1, table_description: "Fascinate")

bard8 = KlassFeature.create!(klass_id: bard.id, name: "Inspire Courage", description: "A 1st level bard can use his performance to inspire courage in his allies (including himself), bolstering them against fear and improving their combat abilities. To be affected, an ally must be able to perceive the bard’s performance. An affected ally receives a +1 morale bonus on saving throws against charm and fear effects and a +1 competence bonus on attack and weapon damage rolls. At 5th level, and every six bard levels thereafter, this bonus increases by +1, to a maximum of +4 at 17th level. Inspire courage is a mind-affecting ability. inspire courage can use audible or visual components. The bard must choose which component to use when starting his performance.")
  FeatureLevel.create!(klass_feature_id: bard8.id, level: 1, table_description: "Inspire Courage +1")
  FeatureLevel.create!(klass_feature_id: bard8.id, level: 5, table_description: "Inspire Courage +2")
  FeatureLevel.create!(klass_feature_id: bard8.id, level: 11, table_description: "Inspire Courage +3")
  FeatureLevel.create!(klass_feature_id: bard8.id, level: 17, table_description: "Inspire Courage +4")

bard9 = KlassFeature.create!(klass_id: bard.id, name: "Inspire Competence", description: "A bard of 3rd level or higher can use his performance to help an ally succeed at a task. The ally must be within 30 feet and able to see and hear the bard. The ally gets a +2 competence bonus on skill checks with a particular skill as long as she continues to hear the bard’s performance. This bonus increases by +1 for every four levels the bard has attained beyond 3rd (+3 at 7th, +4 at 11th, +5 at 15th, and +6 at 19th).

Certain uses of this ability are infeasible, such as Stealth, and may be disallowed at the GM’s discretion. A bard can’t inspire competence in himself. inspire competence relies on audible components.")
  FeatureLevel.create!(klass_feature_id: bard9.id, level: 3, table_description: "Inspire Competence +2")
  FeatureLevel.create!(klass_feature_id: bard9.id, level: 7, table_description: "Inspire Competence +3")
  FeatureLevel.create!(klass_feature_id: bard9.id, level: 11, table_description: "Inspire Competence +4")
  FeatureLevel.create!(klass_feature_id: bard9.id, level: 15, table_description: "Inspire Competence +5")
  FeatureLevel.create!(klass_feature_id: bard9.id, level: 19, table_description: "Inspire Competence +6")

bard10 = KlassFeature.create!(klass_id: bard.id, name: "Suggestion", description: "A bard of 6th level or higher can use his performance to make a suggestion (as per the spell) to a creature that he has already fascinated (see above). Using this ability does not disrupt the fascinate effect, but it does require a standard action to activate (in addition to the free action to continue the fascinate effect). A bard can use this ability more than once against an individual creature during an individual performance.

A Will saving throw (DC 10 + 1/2 bard’s level + bard’s Cha modifier) negates the effect. This ability affects only a single creature (but see mass suggestion, below). Suggestion is an enchantment (compulsion), mind-affecting, language-dependent ability and relies on audible components.")
  FeatureLevel.create!(klass_feature_id: bard10.id, level: 6, table_description: "Suggestion")

bard11 = KlassFeature.create!(klass_id: bard.id, name: "Dirge of Doom", description: "A bard of 8th level or higher can use his performance to foster a sense of growing dread in his enemies, causing them to take become shaken. To be affected, an enemy must be within 30 feet and able to see and hear the bard’s performance. The effect persists for as long as the enemy is within 30 feet and the bard continues the performance. The performance cannot cause a creature to become frightened or panicked, even if the targets are already shaken from another effect. Dirge of doom is a mind-affecting fear effect, and it relies on audible and visual components.")
  FeatureLevel.create!(klass_feature_id: bard11.id, level: 8, table_description: "Dirge of Doom")

bard12 = KlassFeature.create!(klass_id: bard.id, name: "Inspire Greatness", description: "A bard of 9th level or higher can use his performance to inspire greatness in himself or a single willing ally within 30 feet, granting extra fighting capability. For every three levels a bard attains beyond 9th, he can target one additional ally while using this performance (up to a maximum of four at 18th level). To inspire greatness, all of the targets must be able to see and hear the bard. A creature inspired with greatness gains 2 bonus Hit Dice (d10s), the commensurate number of temporary hit points (apply the target’s Constitution modifier, if any, to these bonus Hit Dice), a +2 competence bonus on attack rolls, and a +1 competence bonus on Fortitude saves. The bonus Hit Dice count as regular Hit Dice for determining the effect of spells that are Hit Dice dependent. Inspire greatness is a mind-affecting ability and it relies on audible and visual components.")
  FeatureLevel.create!(klass_feature_id: bard12.id, level: 9, table_description: "Inspire Greatness")

bard13 = KlassFeature.create!(klass_id: bard.id, name: "Soothing Performance", description: "A bard of 12th level or higher can use his performance to create an effect equivalent to the mass cure serious wounds, using the bard’s level as the caster level. In addition, this performance removes the fatigued, sickened, and shaken condition from all those affected. Using this ability requires 4 rounds of continuous performance, and the targets must be able to see and hear the bard throughout the performance. Soothing performance relies on audible and visual components.")
  FeatureLevel.create!(klass_feature_id: bard13.id, level: 12, table_description: "Soothing Performance")

bard14 = KlassFeature.create!(klass_id: bard.id, name: "Frightening Tune", description: "A bard of 14th level or higher can use his performance to cause fear in his enemies. To be affected, an enemy must be able to hear the bard perform and be within 30 feet. Each enemy within range receives a Will save (DC 10 + 1/2 the bard’s level + the bard’s Cha modifier) to negate the effect. If the save succeeds, the creature is immune to this ability for 24 hours. If the save fails, the target becomes frightened and flees for as long as the target can hear the bard’s performance. Frightening tune relies on audible components.")
  FeatureLevel.create!(klass_feature_id: bard14.id, level: 14, table_description: "Frightening Tune")

bard15 = KlassFeature.create!(klass_id: bard.id, name: "Inspire Heroics", description: "A bard of 15th level or higher can inspire tremendous heroism in himself or a single ally within 30 feet. For every three bard levels the character attains beyond 15th, he can inspire heroics in one additional creature. To inspire heroics, all of the targets must be able to see and hear the bard. Inspired creatures gain a +4 morale bonus on saving throws and a +4 dodge bonus to AC. The effect lasts for as long as the targets are able to witness the performance. Inspire heroics is a mind-affecting ability that relies on audible and visual components.")
  FeatureLevel.create!(klass_feature_id: bard15.id, level: 15, table_description: "Inspire Heroics")

bard16 = KlassFeature.create!(klass_id: bard.id, name: "Mass Suggestion", description: "This ability functions just like suggestion, but allows a bard of 18th level or higher to make a suggestion simultaneously to any number of creatures that he has already fascinated. Mass suggestion is an enchantment (compulsion), mind-affecting, language dependent ability that relies on audible components.")
  FeatureLevel.create!(klass_feature_id: bard16.id, level: 18, table_description: "Mass Suggestion")

bard17 = KlassFeature.create!(klass_id: bard.id, name: "Deadly Performance", description: "A bard of 20th level or higher can use his performance to cause one enemy to die from joy or sorrow. To be affected, the target must be able to see and hear the bard perform for 1 full round and be within 30 feet. The target receives a Will save (DC 10 + 1/2 the bard’s level + the bard’s Cha modifier) to negate the effect. If a creature’s saving throw succeeds, the target is staggered for 1d4 rounds, and the bard cannot use deadly performance on that creature again for 24 hours. If a creature’s saving throw fails, it dies. Deadly performance is a mind-effecting death effect that relies on audible and visual components.")
  FeatureLevel.create!(klass_feature_id: bard17.id, level: 20, table_description: "Deadly Performance")

bard18 = KlassFeature.create!(klass_id: bard.id, name: "Versatile Performance", description: "At 2nd level, a bard can choose one type of Perform skill. He can use his bonus in that skill in place of his bonus in associated skills. When substituting in this way, the bard uses his total Perform skill bonus, including class skill bonus, in place of its associated skill’s bonus, whether or not he has ranks in that skill or if it is a class skill. At 6th level, and every 4 levels thereafter, the bard can select an additional type of Perform to substitute.

The types of Perform and their associated skills are: Act (Bluff, Disguise), Comedy (Bluff, Intimidate), Dance (Acrobatics, Fly), Keyboard Instruments (Diplomacy, Intimidate), Oratory (Diplomacy, Sense Motive), Percussion (Handle Animal, Intimidate), Sing (Bluff, Sense Motive), String (Bluff, Diplomacy), and Wind (Diplomacy, Handle Animal).")
  FeatureLevel.create!(klass_feature_id: bard18.id, level: 2, table_description: "Versatile Performance")
  FeatureLevel.create!(klass_feature_id: bard18.id, level: 6, table_description: "Versatile Performance")
  FeatureLevel.create!(klass_feature_id: bard18.id, level: 10, table_description: "Versatile Performance")
  FeatureLevel.create!(klass_feature_id: bard18.id, level: 14, table_description: "Versatile Performance")
  FeatureLevel.create!(klass_feature_id: bard18.id, level: 18, table_description: "Versatile Performance")

bard19 = KlassFeature.create!(klass_id: bard.id, name: "Well-Versed", description: "At 2nd level, the bard becomes resistant to the bardic performance of others, and to sonic effects in general. The bard gains a +4 bonus on saving throws made against bardic performance, sonic, and language-dependent effects.")
  FeatureLevel.create!(klass_feature_id: bard19.id, level: 2, table_description: "Well-Versed")

bard20 = KlassFeature.create!(klass_id: bard.id, name: "Lore Master", description: "At 5th level, the bard becomes a master of lore and can take 10 on any Knowledge skill check that he has ranks in. A bard can choose not to take 10 and can instead roll normally. In addition, once per day, the bard can take 20 on any Knowledge skill check as a standard action. He can use this ability one additional time per day for every six levels he possesses beyond 5th, to a maximum of three times per day at 17th level.")
  FeatureLevel.create!(klass_feature_id: bard20.id, level: 5, table_description: "Lore Master 1/day")
  FeatureLevel.create!(klass_feature_id: bard20.id, level: 11, table_description: "Lore Master 2/day")
  FeatureLevel.create!(klass_feature_id: bard20.id, level: 17, table_description: "Lore Master 3/day")

bard21 = KlassFeature.create!(klass_id: bard.id, name: "Jack-of-all-trades", description: "At 10th level, the bard can use any skill, even if the skill normally requires him to be trained. At 16th level, the bard considers all skills to be class skills. At 19th level, the bard can take 10 on any skill check, even if it is not normally allowed.")
  FeatureLevel.create!(klass_feature_id: bard21.id, level: 10, table_description: "Jack-of-all-trades")

arcanist1 = KlassFeature.create!(klass_id: arcanist.id, name: "Weapon and Armor Proficiencies", description: "Arcanists are proficient with all simple weapons. They are not proficient with any type of armor or shield. Armor interferes with an arcanist’s gestures, which can cause her spells with somatic components to fail (see Arcane Spells and Armor).")
  FeatureLevel.create!(klass_feature_id: arcanist1.id, level: 1, table_description: "none")


arcanist2 = KlassFeature.create!(klass_id: arcanist.id, name: "Spells", description: "An arcanist casts arcane spells drawn from the sorcerer/wizard spell list. An arcanist must prepare her spells ahead of time, but unlike a wizard, her spells are not expended when they’re cast. Instead, she can cast any spell that she has prepared consuming a spell slot of the appropriate level, assuming she hasn’t yet used up her spell slots per day for that level.

To learn, prepare, or cast a spell, the arcanist must have an Intelligence score equal to at least 10 + the spell’s level. The saving throw DC against an arcanist’s spell is 10 + the spell’s level + the arcanist’s Intelligence modifier.

An arcanist can only cast a certain number of spells of each spell level per day. Her base daily spell allotment is given on Table: Arcanist under “Spells per Day.” In addition, she receives bonus spells per day if she has a high Intelligence score.

An arcanist may know any number of spells, but the number she can prepare each day is limited. At 1st level, she can prepare four 0-level spells and two 1st-level spells each day. At each new arcanist level, the number of spells she can prepare each day increases, adding new spell levels as indicated on Table: Arcanist Spells Prepared. Unlike the number of spells she can cast per day, the number of spells an arcanist can prepare each day is not affected by her Intelligence score. Feats and other effects that modify the number of spells known by a spellcaster instead affect the number of spells an arcanist can prepare.

An arcanist must choose and prepare her spells ahead of time by getting 8 hours of sleep and spending 1 hour studying her spellbook. While studying, the arcanist decides what spells to prepare and refreshes her available spell slots for the day.

Like a sorcerer, an arcanist can choose to apply any metamagic feats she knows to a prepared spell as she casts it, with the same increase in casting time (see Spontaneous Casting and Metamagic Feats). However, she may also prepare a spell with any metamagic feats she knows and cast it without increasing casting time like a wizard. She cannot combine these options—a spell prepared with metamagic feats cannot be further modified with another metamagic feat at the time of casting (unless she has the metamixing arcanist exploit, detailed below).

Spellbooks: An arcanist must study her spellbook each day to prepare her spells. She can’t prepare any spell not recorded in her spellbook, except for read magic (which all arcanists can prepare from memory).

An arcanist begins play with a spellbook containing all 0-level wizard/sorcerer spells plus three 1st-level spells of her choice. The arcanist also selects a number of additional 1st-level spells equal to her Intelligence modifier to add to the spellbook. At each new arcanist level, she gains two new spells of any spell level or levels that she can cast (based on her new arcanist level) for her spellbook. At any time, an arcanist can also add spells found in wizards‘ or other arcanists’ spellbooks to her own.

Cantrips: Arcanists can prepare a number of cantrips, or 0-level spells, each day as noted on Table: Arcanist Spells Prepared. These spells are cast like any other spell, but they do not consume spell slots. As with her other spells, these spells are not expended when cast.")
  FeatureLevel.create!(klass_feature_id: arcanist2.id, level: 1, table_description: "none")

arcanist3 = KlassFeature.create!(klass_id: arcanist.id, name: 'Arcane Reservoir', description: 'An arcanist has an innate pool of magical energy that she can draw upon to fuel her arcanist exploits and enhance her spells. The arcanist’s arcane reservoir can hold a maximum amount of magical energy equal to 3 + the arcanist’s level. Each day, when the arcanist prepares spells, the arcanist’s arcane reservoir fills with raw magical energy, gaining a number of points equal to 3 + 1/2 her arcanist level. Any points she had from the previous day are lost. She can also regain these points through the consume spells class feature and some arcanist exploits. The arcane reservoir can never hold more points than the maximum amount noted above; points gained in excess of this total are lost.

Points from the arcane reservoir are used to fuel many of the arcanist’s powers. In addition, the arcanist can expend 1 point from her arcane reservoir as a free action whenever she casts an arcanist spell. If she does, she can choose to increase the caster level by 1 or increase the spell’s DC by 1. She can expend no more than 1 point from her reservoir on a given spell in this way.')
  FeatureLevel.create!(klass_feature_id: arcanist3.id, level: 1, table_description: 'Arcane Reservoir')

arcanist4 = KlassFeature.create!(klass_id: arcanist.id, name: 'Arcanist Exploit', description: 'By bending and sometimes even breaking the rules of magic, the arcanist learns to exploit gaps and exceptions in the laws of magic. Some of these exploits allow her to break down various forms of magic, adding their essence to her arcane reservoir. At 1st level and every 2 levels thereafter, the arcanist learns a new arcane exploit selected from the following list. An arcanist exploit cannot be selected more than once. Once an arcanist exploit has been selected, it cannot be changed. Most arcanist exploits require the arcanist to expend points from her arcane reservoir to function. Unless otherwise noted, the saving throw DC of an arcanist exploit is equal to 10 + 1/2 the arcanist’s level + the arcanist’s Charisma modifier.')
  FeatureLevel.create!(klass_feature_id: arcanist4.id, level: 1, table_description: 'Arcanist Exploit')
  FeatureLevel.create!(klass_feature_id: arcanist4.id, level: 3, table_description: 'Arcanist Exploit')
  FeatureLevel.create!(klass_feature_id: arcanist4.id, level: 5, table_description: 'Arcanist Exploit')
  FeatureLevel.create!(klass_feature_id: arcanist4.id, level: 7, table_description: 'Arcanist Exploit')
  FeatureLevel.create!(klass_feature_id: arcanist4.id, level: 9, table_description: 'Arcanist Exploit')
  FeatureLevel.create!(klass_feature_id: arcanist4.id, level: 11, table_description: 'Arcanist Exploit')
  FeatureLevel.create!(klass_feature_id: arcanist4.id, level: 13, table_description: 'Arcanist Exploit')
  FeatureLevel.create!(klass_feature_id: arcanist4.id, level: 15, table_description: 'Arcanist Exploit')
  FeatureLevel.create!(klass_feature_id: arcanist4.id, level: 17, table_description: 'Arcanist Exploit')
  FeatureLevel.create!(klass_feature_id: arcanist4.id, level: 19, table_description: 'Arcanist Exploit')

arcanist5 = KlassFeature.create!(klass_id: arcanist.id, name: 'Consume Spells', description: 'At 1st level, an arcanist can expend an available arcanist spell slot as a move action, making it unavailable for the rest of the day, just as if she had used it to cast a spell. She can use this ability a number of times per day equal to her Charisma modifier (minimum 1). Doing this adds a number of points to her arcane reservoir equal to the level of the spell slot consumed. She cannot consume cantrips (0 level spells) in this way. Points gained in excess of the reservoir’s maximum are lost.')
  FeatureLevel.create!(klass_feature_id: arcanist5.id, level: 1, table_description: 'Consume Spells')

arcanist6 = KlassFeature.create!(klass_id: arcanist.id, name: 'Greater Exploits', description: 'At 11th level and every 2 levels thereafter, an arcanist can choose one of the following greater exploits in place of an arcanist exploit.')
  FeatureLevel.create!(klass_feature_id: arcanist6.id, level: 11, table_description: 'Greater Exploits')

arcanist7 = KlassFeature.create!(klass_id: arcanist.id, name: 'Magical Supremacy', description: 'At 20th level, the arcanist learns how to convert her arcane reservoir into spells and back again. She can cast any spell she has prepared by expending a number of points from her arcane reservoir equal to 1 + the level of the spell to be cast instead of expending a spell slot. When she casts a spell in this fashion, she treats her caster level as 2 higher than normal, and the DCs of any saving throws associated with the spell increase by 2. She cannot further expend points from her arcane reservoir to enhance a spell cast in this way.')
  FeatureLevel.create!(klass_feature_id: arcanist7.id, level: 20, table_description: 'Magical Supremacy')


vigilante1 = KlassFeature.create!(klass_id: vigilante.id, name: "Weapon and Armor Proficiency", description: "Vigilantes are proficient with all simple and martial weapons, light armor, medium armor, and shields (except tower shields).")
  FeatureLevel.create!(klass_feature_id: vigilante1.id, level: 1, table_description: "none")

vigilante2 = KlassFeature.create!(klass_id: vigilante.id, name: "Dual Identity", description: "A vigilante hides his true identity, allowing him to move about social circles and nobility without carrying the stigma of his ruthless actions. In effect, the vigilante has two identities: one is a polite member of society while the other is a skilled and cunning warrior. To keep up this charade, the vigilante usually has two names: his true name, used in polite company, and his vigilante name, used to strike fear in the hearts of those who oppose him. Knowledge checks about one do not reveal information about the other, unless the vigilante’s true identity revealed to the world at large.

The vigilante can start each day in either of his identities, referred to simply as social or vigilante. Changing from one identity to another takes 1 minute and must be done out of sight from other creatures to preserve the vigilante’s secret.

Changing identities is more than just changing outfits and clothing (although that is certainly a part of it); the process often also involves applying make-up, altering his hair, and adjusting other personal effects. Furthermore, the change is as much a state of mind as of body, so items such as a hat of disguise and similar spells and effects that change the user’s appearance do not reduce the time required to change identities. Most social talents require the vigilante to be in his social identity, but a vigilante who uses vigilante talents in his social identity risks exposing his secret.

Despite being a single person, a vigilante’s dual nature allows him to have two alignments, one for each of his identities. When in an identity, he is treated as having that identity’s alignment for all spells, magic items, and abilities that rely on alignment. For the purpose of meeting a qualification for a feat, class, or any ability, he is only eligible if both of his alignments meet the requirements.

A vigilante’s two alignments cannot be more than one step from each other on a single alignment axis. For example, a vigilante with a lawful neutral social identity could have a vigilante identity that is lawful good, lawful neutral, lawful evil, neutral, neutral good, or neutral evil. If a vigilante is the target of an effect that would change his alignment, it changes both of his alignments to the new alignment.

Any attempts to scry or otherwise locate the vigilante work only if the vigilante is currently in the identity the creature is attempting to locate (or if the creature knows that the two identities are the same individual). Otherwise, the spell or effect has no effect, revealing nothing but darkness, as if the target were invalid or did not exist.")
  FeatureLevel.create!(klass_feature_id: vigilante2.id, level: 1, table_description: "Dual Identity")

vigilante3 = KlassFeature.create!(klass_id: vigilante.id, name: "Seamless Guise", description: "A vigilante knows how to behave in a way that appears perfectly proper and normal for his current identity. Should anyone suspect him of being anything other than what he appears to be while either in his social or vigilante identity, he can attempt a Disguise check with a +20 circumstance bonus to appear as his current identity, and not as his other identity.")
  FeatureLevel.create!(klass_feature_id: vigilante3.id, level: 1, table_description: "Seamless Guise")

vigilante4 = KlassFeature.create!(klass_id: vigilante.id, name: "Social Talent", description: "Starting at 1st level, and every 2 levels thereafter, a vigilante gains a social talent. Unless otherwise noted, a talent can be selected only once. Some talents require the vigilante to meet other prerequisites before they can be chosen, such as having another social talent or attaining a minimum vigilante level. Once a talent has been chosen, it cannot be changed.")
  FeatureLevel.create!(klass_feature_id: vigilante4.id, level: 1, table_description: "Social Talent")
  FeatureLevel.create!(klass_feature_id: vigilante4.id, level: 3, table_description: "Social Talent")
  FeatureLevel.create!(klass_feature_id: vigilante4.id, level: 5, table_description: "Social Talent")
  FeatureLevel.create!(klass_feature_id: vigilante4.id, level: 7, table_description: "Social Talent")
  FeatureLevel.create!(klass_feature_id: vigilante4.id, level: 9, table_description: "Social Talent")
  FeatureLevel.create!(klass_feature_id: vigilante4.id, level: 11, table_description: "Social Talent")
  FeatureLevel.create!(klass_feature_id: vigilante4.id, level: 13, table_description: "Social Talent")
  FeatureLevel.create!(klass_feature_id: vigilante4.id, level: 15, table_description: "Social Talent")
  FeatureLevel.create!(klass_feature_id: vigilante4.id, level: 17, table_description: "Social Talent")
  FeatureLevel.create!(klass_feature_id: vigilante4.id, level: 19, table_description: "Social Talent")

vigilante5  = KlassFeature.create!(klass_id: vigilante.id, name: "Vigilante Specialization", description: "At 1st level, a vigilante must choose to be either an avenger or a stalker.

An avenger gains a base attack bonus equal to his vigilante level instead of using those listed on Table: The Vigilante. He adds this value to any other base attack bonus gained from other classes or racial Hit Dice as normal.

A stalker gains an ability called hidden strike, which allows him to deal an extra 1d8 points of precision damage on melee attacks (or ranged attacks from within 30 feet) against foes who are unaware of his presence, who consider him an ally, or who are made flat-footed by startling appearance. This extra damage increases by 1d8 at 3rd level and every 2 vigilante levels thereafter. A stalker vigilante can also deal hidden strike damage to a target that he is flanking or that is denied its Dexterity bonus to AC, but in these cases, the damage dice are reduced to d4s. A stalker can deal hidden strike damage against targets with concealment (but not total concealment).

Once this choice is made, it can’t be changed. While many vigilante talents are usable by both specializations, some are unique to each specialization. A stalker vigilante can apply only one talent marked with an asterisk (*) to a given hidden strike, and only when that hidden strike is dealt against a foe that is unaware of the stalker vigilante’s presence (or who considers him an ally), unless otherwise noted.")
  FeatureLevel.create!(klass_feature_id: vigilante5.id, level: 1, table_description: "Vigilante Specialization")

vigilante6 = KlassFeature.create!(klass_id: vigilante.id, name: "Vigilante Talent", description: "Starting at 2nd level and every 2 levels thereafter, a vigilante gains a vigilante talent. Unless otherwise noted, a talent can be selected only once. Some talents require the vigilante to meet prerequisites before they can be chosen, such as possessing another vigilante talent, possessing a particular specialization, or attaining a minimum level. Once a talent has been selected, it can’t be changed.

If the vigilante uses any of these talents while in his social identity, he must succeed at a Disguise check against the Perception checks of all onlookers (without the +20 circumstance bonus from seamless guise) or the onlookers will realize that he is more than his social identity appears to be and perhaps discover the social and vigilante identities are one and the same. If a talent calls for a saving throw, the DC for that save is equal to 10 + 1/2 the vigilante’s level + the vigilante’s Charisma modifier, unless stated otherwise.")
  FeatureLevel.create!(klass_feature_id: vigilante6.id, level: 2, table_description: "Vigilante Talent")
  FeatureLevel.create!(klass_feature_id: vigilante6.id, level: 4, table_description: "Vigilante Talent")
  FeatureLevel.create!(klass_feature_id: vigilante6.id, level: 6, table_description: "Vigilante Talent")
  FeatureLevel.create!(klass_feature_id: vigilante6.id, level: 8, table_description: "Vigilante Talent")
  FeatureLevel.create!(klass_feature_id: vigilante6.id, level: 10, table_description: "Vigilante Talent")
  FeatureLevel.create!(klass_feature_id: vigilante6.id, level: 12, table_description: "Vigilante Talent")
  FeatureLevel.create!(klass_feature_id: vigilante6.id, level: 14, table_description: "Vigilante Talent")
  FeatureLevel.create!(klass_feature_id: vigilante6.id, level: 16, table_description: "Vigilante Talent")
  FeatureLevel.create!(klass_feature_id: vigilante6.id, level: 18, table_description: "Vigilante Talent")
  FeatureLevel.create!(klass_feature_id: vigilante6.id, level: 20, table_description: "Vigilante Talent")

vigilante7 = KlassFeature.create!(klass_id: vigilante.id, name: "Unshakable", description: "Starting at 3rd level, a vigilante adds his class level to the DC of any attempts to Intimidate him.")
  FeatureLevel.create!(klass_feature_id: vigilante7.id, level: 3, table_description: "Unshakable")

vigilante8 = KlassFeature.create!(klass_id: vigilante.id, name: "Startling Appearance", description: "At 5th level, a vigilante learns to use the element of surprise to his advantage, startling foes that are unaware of his presence. Whenever a vigilante with this ability attempts an attack against a foe that is completely unaware of the vigilante’s presence (usually due to Stealth or invisibility), the foe is treated as flat-footed for the rest of the vigilante’s turn (uncanny dodge or a similar ability prevents this effect unless the vigilante is at least 4 levels higher than the foe with uncanny dodge).

The foe also takes a –4 penalty on attacks made against the vigilante until the start of the vigilante’s next turn.")
  FeatureLevel.create!(klass_feature_id: vigilante8.id, level: 5, table_description: "Startling Appearance")

vigilante9 = KlassFeature.create!(klass_id: vigilante.id, name: "Frightening Appearance", description: "At 11th level, whenever a vigilante with this ability makes an attack against a foe that is unaware of the vigilante’s presence (see startling appearance above), the vigilante can, as a free action, attempt an Intimidate check to demoralize the target of his attack and any enemies within 10 feet who can see the attack. This check is attempted before the attack roll against the foe is made and resolved. The vigilante rolls only one Intimidate check and applies the result to all the targets. If the check succeeds against the target of the vigilante’s attack, that foe is also frightened for 1 round, in addition to being shaken as normal, unless the foe succeeds at a Will save (DC = 10 + 1/2 the vigilante’s class level + his Charisma modifier).

Once a creature has been the target of this ability (either as the target of the attack or as a nearby creature, regardless of whether or not it was successful), it is immune to that vigilante’s frightening appearance for 24 hours. This effect is in addition to the bonuses gained from the startling appearance ability. This is a mind-affecting fear effect.")
  FeatureLevel.create!(klass_feature_id: vigilante9.id, level: 11, table_description: "Frightening Appearance")

vigilante10 = KlassFeature.create!(klass_id: vigilante.id, name: "Stunning Appearance", description: "At 17th level, a vigilante can leave his foes unable to respond when he appears. Whenever a vigilante with this ability makes a successful attack against a foe that is unaware of the vigilante’s presence (see startling appearance), the foe must make a successful Will save (DC = 10 + 1/2 the vigilante’s class level + his Charisma modifier) or be stunned until the end of the vigilante’s next turn. If the creature has more HD than the vigilante’s class level, it receives a +4 circumstance bonus on this save.

This ability is in addition to the effects of startling appearance and frightening appearance. Once a creature has been the target of this ability (regardless of whether or not the saving throw is successful), it is immune to that vigilante’s stunning appearance for 24 hours. This is a mind-affecting fear effect.")
  FeatureLevel.create!(klass_feature_id: vigilante10.id, level: 17, table_description: "Stunning Appearance")

vigilante11 = KlassFeature.create!(klass_id: vigilante.id, name: "Vengeance Strike", description: "At 20th level, a vigilante can study a target to strike more viciously. He can spend up to 5 standard actions, which all must be in consecutive rounds. On the following round, he can make a vengeance strike against the studied creature. The target must remain unaware of the vigilante’s presence (or not see him as a threat) until the attack. For each round spent studying the target, the vigilante grants himself one of the following benefits on his vengeance strike: gain a +4 circumstance bonus on the attack roll, deal an additional 3d6 points of precision damage if he hits, or treat the attack roll as if it were 2 higher for the purposes of determining whether the attack hit or threatens a critical hit (to maximum effective roll of 20). Each round of study can be spent in a different way or the same way (they stack with each other), but each round of study must be allocated before the attack roll is made. If the vigilante is an avenger, he automatically confirms any critical hits threatened by his vengeance strike. If the vigilante is a stalker and would normally be able to add a special effect from a vigilante talent with an asterisk (*) to this attack, he can instead add two special effects to his vengeance strike.")
  FeatureLevel.create!(klass_feature_id: vigilante11.id, level: 20, table_description: "Vengeance Strike")

shifter1 = KlassFeature.create!(klass_id: shifter.id, name: "Weapon and Armor Proficiency", description: "A Chimera Weapon Shifter is not proficient with Simple Weapons or Martial Weapons. She is proficient with the natural attacks (claw, bite, and so forth) from the shifter claws class feature and forms she assumes with Shifter Aspect and Major Form.

Chimera Weapon Shifters are not proficient with any light, medium, or heavy armor, except for wooden armor. Chimera Weapon Shifters are not proficient with any shields.

A Chimera Weapon Shifter who wears metal armor or uses a metal shield is unable to use her Shifter Aspect, Shifter Claws, Major Form, and other shifter supernatural or spell-like abilities while doing so and for 24 hours thereafter.
")
  FeatureLevel.create!(klass_feature_id: shifter1.id, level: 1, table_description: "none")

shifter2 = KlassFeature.create!(klass_id: shifter.id, name: "Bonus Languages", description: "A shifter’s bonus language options include Sylvan, the language of woodland creatures, and Aklo, the tongue spoken by certain sinister fey or otherworldly denizens of reaches of the wild rarely explored by humanity. These choices are in addition to the bonus languages available to the character because of her race.
A shifter speaks Druidic, a secret language known only to druids and shifters, which she learns upon becoming a 1st-level shifter. Druidic is a free language for a shifter; that is, she knows it in addition to her regular allotment of languages, and it doesn’t take up a language slot. Shifters are forbidden to teach this language to non-druids or non-shifters.
")
  FeatureLevel.create!(klass_feature_id: shifter2.id, level: 1, table_description: "none")

shifter3 = KlassFeature.create!(klass_id: shifter.id, name: "Shifter Aspect", description: "At 1st level, a Chimera Weapon Shifter gains two aspects – a category of animal to which her body and soul have become supernaturally attuned. When a Chimera Weapon Shifter spends Chimera Points to gain Combat and Minor Forms, she maintains those forms for a number of rounds (for Combat Form) or a number of minutes (for Minor Form) equal to half her Shifter level (min. 1). An aspect’s Combat Form allows you to maintain your natural form while gaining specific combat advantages from that aspect, and are generally very powerful. An aspect’s Minor Form allows you to maintain your natural form while gaining natural ability advantages from this aspect, and act more passively. She must spend 1 Chimera point to shift into either Form (see Chimera Points below). Shifting into a Combat Form or a Minor Form is a swift action, while ending the effect is a free action that can be taken only on the shifter’s turn. Until a shifter reaches 9th level and gains the Dual Form class feature, she can assume only 1 Combat Form and 1 Minor Form at a time. Shifting to a new aspect or form ends replaces one aspect or form currently manifested, and costs 1 Chimera Point. The Minor Forms of aspects are not polymorph effects, and the shifter does not lose the benefits of a Combat Form or a Minor Form while affect by polymorph effects.

As the Chimera Weapon Shifter gains levels, she gains more aspects, she gains one additional aspect at 2nd level and every even level after that. Aspects are detailed in their own section below.

If you able to cast any spells with your Combat Form, or your Minor Form, you are to cast them as if you had the Eschew Materials feat.")
  FeatureLevel.create!(klass_feature_id: shifter3.id, level: 1, table_description: "Shifter Aspect +2")
  FeatureLevel.create!(klass_feature_id: shifter3.id, level: 2, table_description: "Shifter Aspect +1")
  FeatureLevel.create!(klass_feature_id: shifter3.id, level: 4, table_description: "Shifter Aspect +1")
  FeatureLevel.create!(klass_feature_id: shifter3.id, level: 6, table_description: "Shifter Aspect +1")
  FeatureLevel.create!(klass_feature_id: shifter3.id, level: 8, table_description: "Shifter Aspect +1")
  FeatureLevel.create!(klass_feature_id: shifter3.id, level: 10, table_description: "Shifter Aspect +1")
  FeatureLevel.create!(klass_feature_id: shifter3.id, level: 12, table_description: "Shifter Aspect +1")
  FeatureLevel.create!(klass_feature_id: shifter3.id, level: 14, table_description: "Shifter Aspect +1")
  FeatureLevel.create!(klass_feature_id: shifter3.id, level: 18, table_description: "Shifter Aspect +1")

shifter4 = KlassFeature.create!(klass_id: shifter.id, name: "Chimera Points", description: "A Chimera Weapon Shifter’s ability to shift into different forms of her aspects is fueled by her natural magic, emulated by the chimera. At the start of each day, a Chimera Weapon Shifter gains a number of Chimera points equal to her Wisdom bonus (min. 0) + half her Shifter level, rounded up (min. 1) A Chimera Weapon Shifter spends Chimera points to shift into her aspect’s forms. She cannot regain Chimera points naturally, except at the start of each day, but feats and magic items can affect her maximum or ability to regain points.
")
  FeatureLevel.create!(klass_feature_id: shifter4.id, level: 1, table_description: "Chimera Points")

shifter5 = KlassFeature.create!(klass_id: shifter.id, name: "Shifter Claws", description: "At will, a Chimera Weapon Shifter in her natural form can extend her claws as a swift action to use a weapon. The claws on each hand can be used as a primary natural attack, dealing 1d8 points of piercing and slashing damage (1d6 if she is Small). If she uses one of her claw attacks in concert with a weapon held in the other hand, the claw acts a secondary natural attack instead.

As the Chimera Weapon Shifter gains levels the power of her claws increases. At 3rd level, her claws ignore DR/cold iron and DR/silver. At 7th level, her claw damage increases to 1d10 (1d8 if Small). At 11th level, her claw damage increases to 2d6 (1d10 if Small), and the critical multiplier becomes x3. At 15th level, her claw damage increases to 2d8 (2d6 if Small). At 19th level, her claw damage increases to d10 (2d8 if Small), and the claws ignore DR/adamantine and DR/--.

While a shifter uses an aspect’s Major Form, her natural attacks gain the same benefits granted by her shifter claws ability. If the form she takes has claw attacks, she can use either the base damage of her shifter claws or the damage of the form’s claws, whichever is greater. If the form does not have claw attacks, she can choose up to two natural attacks that would deal less damage than her shifter claw damage and have those attacks instead deal the same damage as her shifter claws.")
  FeatureLevel.create!(klass_feature_id: shifter5.id, level: 1, table_description: "Shifter Claws")
  FeatureLevel.create!(klass_feature_id: shifter5.id, level: 3, table_description: "Shifter Claws incrase")
  FeatureLevel.create!(klass_feature_id: shifter5.id, level: 7, table_description: "Shifter Claws incrase")
  FeatureLevel.create!(klass_feature_id: shifter5.id, level: 11, table_description: "Shifter Claws incrase")
  FeatureLevel.create!(klass_feature_id: shifter5.id, level: 15, table_description: "Shifter Claws incrase")
  FeatureLevel.create!(klass_feature_id: shifter5.id, level: 19, table_description: "Shifter Claws incrase")

shifter6 = KlassFeature.create!(klass_id: shifter.id, name: "Defensive Instinct", description: "At 2nd level, when unarmored, not using a shield, unencumbered, and conscious, the shifter adds her Wisdom bonus (if any) to her AC and CMD. If she is wearing nonmetal armor or using a nonmetal shield, she instead adds half her Wisdom bonus to her AC (minimum 0). In addition, the shifter gains a +1 bonus to her AC and CMD at 5th level. This bonus increases by 1 for every 5 shifter levels thereafter (up to a maximum of +4 at 20th level).

These bonuses to AC apply even against touch attacks and when the shifter is flat-footed. She loses these bonuses when she is immobilized or helpless. These bonuses do not stack with the monk AC bonus class feature. This ability grants bonuses to AC even when she is in a Major Form.
")
  FeatureLevel.create!(klass_feature_id: shifter6.id, level: 2, table_description: "Defensive Instinct")
  FeatureLevel.create!(klass_feature_id: shifter6.id, level: 5, table_description: "Defensive Instinct +1")
  FeatureLevel.create!(klass_feature_id: shifter6.id, level: 10, table_description: "Defensive Instinct +2")
  FeatureLevel.create!(klass_feature_id: shifter6.id, level: 15, table_description: "Defensive Instinct +3")
  FeatureLevel.create!(klass_feature_id: shifter6.id, level: 20, table_description: "Defensive Instinct +4")

shifter7 = KlassFeature.create!(klass_id: shifter.id, name: "Major Form", description: "At 4th level, a Chimera Weapon Shifter gains the ability to turn herself into the major form of one of her aspects by spending 2 Chimera Points. This ability functions as beast shape II, except as noted here. The shifter can only turn into the Major Form of only one of her aspects at a time. When a Chimera Weapon Shifter spends points to gain a Major Form, she can maintain that form for a number of hours equal half her Shifter level (min. 1). Changing into the Major Form of an aspect or back is a standard action that doesn’t provoke attacks of opportunity. Often a particular aspect’s Major Form grants abilities beyond the normal effect of beast shape II. Each major form details the abilities the shifter gains with that major form and at what level; she gains these instead of the form abilities from beast shape II, but she still gains beast shape II abilities that are size dependent. The benefits of beast shape II will be listed by each Major Form.

A Chimera Weapon Shifter loses her ability to speak while in animal form because she is limited to the sounds that a norm, untrained animal of the form can make, but she can communicate with other animals of the same general grouping as her form. She can also communicate in nonverbal ways with allies.

For this purposes of the prerequisites for Feats, Class Features, and Magical Items, this class feature is treated as Wild Shape.
")
  FeatureLevel.create!(klass_feature_id: shifter7.id, level: 4, table_description: "Major Form")

shifter8 = KlassFeature.create!(klass_id: shifter.id, name: "Bonus Feats", description: "At 5th level, and every fifth level thereafter, a Chimera Weapon Shifter gains a bonus feat in addition to those gained from normal advancement. These bonus feats must be selected from those listed as combat feats.")
  FeatureLevel.create!(klass_feature_id: shifter8.id, level: 5, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: shifter8.id, level: 10, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: shifter8.id, level: 15, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: shifter8.id, level: 20, table_description: "Bonus Feat")

shifter9 = KlassFeature.create!(klass_id: shifter.id, name: "Dual Form", description: "At 9th level, when a Chimera Weapon Shifter uses her shifter aspect ability to take on a Combat or Minor Form, she can spend 2 Chimera points to shift into any combination of two Combat or Minor Forms.")
  FeatureLevel.create!(klass_feature_id: shifter9.id, level: 9, table_description: "Dual Form")

shifter10 = KlassFeature.create!(klass_id: shifter.id, name: "Greater Form", description: "At 13th level, when a Chimera Weapon Shifter uses her shifter aspect ability or Major Form to take on a Combat, Minor, or Major Form, she can spend 3 Chimera points to shift into any combination of three Combat or Minor Forms as a swift action, or any combination of two Combat or Minor Forms and one Major Form as a Move Action.")
  FeatureLevel.create!(klass_feature_id: shifter10.id, level: 13, table_description: "Greater Form")

shifter11 = KlassFeature.create!(klass_id: shifter.id, name: "Mythological Aspect", description: "At 16th level, a Chimera Weapon Shifter can choose an aspect from the Mythological Aspects list, rather than from the Aspects list. At 20th level, she can choose an additional Mythological aspect instead of a standard aspect.")
  FeatureLevel.create!(klass_feature_id: shifter11.id, level: 16, table_description: "Mythological Aspect +1")
  FeatureLevel.create!(klass_feature_id: shifter11.id, level: 20, table_description: "Mythological Aspect +1")

shifter12 = KlassFeature.create!(klass_id: shifter.id, name: "Multi Form", description: "At 17th level, when a Chimera Weapon Shifter uses her shifter aspect ability or Major Form to take on a Combat, Minor, or Major Form, she can spend 4 Chimera points to shift into any combination of four Combat or Minor Forms as a swift action, or any combination of three Combat or Minor Forms and one Major Form as a Full-Round Action.

Additionally, by spending 1 Chimera Point, as an immediate action, she can shift one of her Combat or Minor Forms to a different Combat or Minor Form. She may also spend 2 Chimera points, as an immediate action, to shift her Major Form to a different Major Form. However, this Major Form shift can only be done once between her turn. In order to use either of these abilities, you must already have a Combat, Minor, or Major Form.
")
  FeatureLevel.create!(klass_feature_id: shifter12.id, level: 17, table_description: "Multi Form")

swashbuckler1 = KlassFeature.create!(klass_id: swashbuckler.id, name: "Weapon and Armor Proficiency", description: "Swashbucklers are proficient with all simple and martial weapons, as well as light armor and bucklers.")
  FeatureLevel.create!(klass_feature_id: swashbuckler1.id, level: 1, table_description: "none")

swashbuckler2 = KlassFeature.create!(klass_id: swashbuckler.id, name: "Panache", description: "More than just a lightly armored warrior,
a swashbuckler is a daring combatant. She fights with panache: a fluctuating measure of a swashbuckler’s ability to perform amazing actions in combat. At the start of each day, a swashbuckler gains a number of panache points equal to her Charisma modifier (minimum 1). Her panache goes up or down throughout the day, but usually can’t exceed her Charisma modifier (minimum 1), though feats and magic items can affect this maximum. A swashbuckler spends panache points to accomplish deeds")
  FeatureLevel.create!(klass_feature_id: swashbuckler2.id, level: 1, table_description: "Panache")

swashbuckler3 = KlassFeature.create!(klass_id: swashbuckler.id, name: "Deeds", description: "Swashbucklers spend panache points to accomplish deeds. Most deeds grant the swashbuckler a momentary bonus or effect, but some provide longer- lasting effects. Some deeds remain in effect while the swashbuckler has at least 1 panache point, but do not require the expenditure of panache points to be maintained. A swashbuckler can perform deeds only of her level or lower. Unless otherwise noted, a deed can be performed multiple successive times, as long as the swashbuckler has or spends the required number of panache points to perform the deed.")
  FeatureLevel.create!(klass_feature_id: swashbuckler3.id, level: 1, table_description: "Deeds")
  FeatureLevel.create!(klass_feature_id: swashbuckler3.id, level: 3, table_description: "Deeds")
  FeatureLevel.create!(klass_feature_id: swashbuckler3.id, level: 7, table_description: "Deeds")
  FeatureLevel.create!(klass_feature_id: swashbuckler3.id, level: 15, table_description: "Deeds")
  FeatureLevel.create!(klass_feature_id: swashbuckler3.id, level: 19, table_description: "Deeds")

swashbuckler4 = KlassFeature.create!(klass_id: swashbuckler.id, name: "Swashbuckler Finesse", description: "At 1st level, a swashbuckler gains the benefits of the Weapon Finesse feat with light or one-handed piercing melee weapons, and she can use her Charisma score in place of Intelligence as a prerequisite for combat feats. This ability counts as having the Weapon Finesse feat for purposes of meeting feat prerequisites.")
  FeatureLevel.create!(klass_feature_id: swashbuckler4.id, level: 1, table_description: "Swashbuckler Finesse")

swashbuckler5 = KlassFeature.create!(klass_id: swashbuckler.id, name: "Charmed Life", description: "At 2nd level, the swashbuckler gains a knack for getting out of trouble. Three times per day as an immediate action before attempting a saving throw, she can add her Charisma modifier to the result of the save. She must choose to do this before the roll is made. At 6th level and every 4 levels thereafter, the number of times she can do this per day increases by one (to a maximum of 7 times per day at 18th level).")
  FeatureLevel.create!(klass_feature_id: swashbuckler5.id, level: 2, table_description: "Charmed Life 3/day")
  FeatureLevel.create!(klass_feature_id: swashbuckler5.id, level: 6, table_description: "Charmed Life 4/day")
  FeatureLevel.create!(klass_feature_id: swashbuckler5.id, level: 10, table_description: "Charmed Life 5/day")
  FeatureLevel.create!(klass_feature_id: swashbuckler5.id, level: 14, table_description: "Charmed Life 6/day")
  FeatureLevel.create!(klass_feature_id: swashbuckler5.id, level: 18, table_description: "Charmed Life 7/day")

swashbuckler6 = KlassFeature.create!(klass_id: swashbuckler.id, name: "Nimble", description: "At 3rd level, a swashbuckler gains a +1 dodge bonus to AC while wearing light or no armor. Anything that causes the swashbuckler to lose her Dexterity bonus to AC also causes her to lose this dodge bonus. This bonus increases by 1 for every 4 levels beyond 3rd (to a maximum of +5 at 19th level).")
  FeatureLevel.create!(klass_feature_id: swashbuckler6.id, level: 3, table_description: "Nimble +1")
  FeatureLevel.create!(klass_feature_id: swashbuckler6.id, level: 7, table_description: "Nimble +2")
  FeatureLevel.create!(klass_feature_id: swashbuckler6.id, level: 11, table_description: "Nimble +3")
  FeatureLevel.create!(klass_feature_id: swashbuckler6.id, level: 15, table_description: "Nimble +4")
  FeatureLevel.create!(klass_feature_id: swashbuckler6.id, level: 19, table_description: "Nimble +5")

swashbuckler7 = KlassFeature.create!(klass_id: swashbuckler.id, name: "Bonus Feat", description: "At 4th level and every 4 levels thereafter, a swashbuckler gains a bonus feat in addition to those gained from normal advancement. These bonus feats must be selected from those listed as combat feats. Swashbuckler levels are considered fighter levels for the purpose of meeting combat feat prerequisites.

In addition, upon reaching 4th level and every 4 levels thereafter, a swashbuckler can choose to learn a new bonus feat in place of a bonus feat she has already learned. In effect, the swashbuckler loses the bonus feat in exchange for the new one. The old feat cannot be one that was used as a prerequisite for another feat, prestige class, or other ability. A swashbuckler can only change one feat at any given level, and must choose whether or not to swap the feat at the time she gains a new bonus feat for the level.")
  FeatureLevel.create!(klass_feature_id: swashbuckler7.id, level: 4, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: swashbuckler7.id, level: 8, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: swashbuckler7.id, level: 12, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: swashbuckler7.id, level: 16, table_description: "Bonus Feat")
  FeatureLevel.create!(klass_feature_id: swashbuckler7.id, level: 20, table_description: "Bonus Feat")

swashbuckler7 = KlassFeature.create!(klass_id: swashbuckler.id, name: "Swashbuckler Weapon Training", description: "At 5th level, a swashbuckler gains a +1 bonus on attack and damage rolls with one-handed or light piercing melee weapons. While wielding such a weapon, she gains the benefit of the Improved Critical feat. These attack and damage bonuses increase by 1 for every 4 levels beyond 5th level (to a maximum of +4 at 17th level).")
  FeatureLevel.create!(klass_feature_id: swashbuckler7.id, level: 5, table_description: "Swashbuckler Weapon Training +1")
  FeatureLevel.create!(klass_feature_id: swashbuckler7.id, level: 9, table_description: "Swashbuckler Weapon Training +2")
  FeatureLevel.create!(klass_feature_id: swashbuckler7.id, level: 13, table_description: "Swashbuckler Weapon Training +3")
  FeatureLevel.create!(klass_feature_id: swashbuckler7.id, level: 17, table_description: "Swashbuckler Weapon Training +4")

swashbuckler8 = KlassFeature.create!(klass_id: swashbuckler.id, name: "Swashbuckler Weapon Mastery", description: "At 20th level, when a swashbuckler threatens a critical hit with a light or one-handed piercing melee weapon, that critical is automatically confirmed. Furthermore, the critical modifiers of such weapons increase by 1 (×2 becomes ×3, and so on).")
  FeatureLevel.create!(klass_feature_id: swashbuckler8.id, level: 20, table_description: "Swashbuckler Weapon Mastery")

unchained_rogue1 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Weapon and Armor Proficiency", description: "Rogues are proficient with all simple weapons, plus the hand crossbow, rapier, sap, short sword, and shortbow. They are proficient with light armor, but not with shields.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue1.id, level: 1, table_description: "none")

unchained_rogue2 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Sneak Attack", description: "If a rogue can catch an opponent when he is unable to defend himself effectively from her attack, she can strike a vital spot for extra damage.

The rogue’s attack deals extra damage anytime her target would be denied a Dexterity bonus to AC (whether the target actually has a Dexterity bonus or not), or when the rogue flanks her target. This extra damage is 1d6 at 1st level, and increases by 1d6 every 2 rogue levels thereafter. Ranged attacks can count as sneak attacks only if the target is within 30 feet. This additional damage is precision damage and is not multiplied on a critical hit.

With a weapon that deals nonlethal damage (such as a sap, unarmed strike, or whip), a rogue can make a sneak attack that deals nonlethal damage instead of lethal damage. She cannot use a weapon that deals lethal damage to deal nonlethal damage in a sneak attack—not even with the usual –4 penalty.

The rogue must be able to see the target well enough to pick out a vital spot and must be able to reach such a spot. A rogue cannot sneak attack while striking a creature with total concealment.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue2.id, level: 1, table_description: "Sneak Attack +1d6")
  FeatureLevel.create!(klass_feature_id: unchained_rogue2.id, level: 3, table_description: "Sneak Attack +2d6")
  FeatureLevel.create!(klass_feature_id: unchained_rogue2.id, level: 5, table_description: "Sneak Attack +3d6")
  FeatureLevel.create!(klass_feature_id: unchained_rogue2.id, level: 7, table_description: "Sneak Attack +4d6")
  FeatureLevel.create!(klass_feature_id: unchained_rogue2.id, level: 9, table_description: "Sneak Attack +5d6")
  FeatureLevel.create!(klass_feature_id: unchained_rogue2.id, level: 11, table_description: "Sneak Attack +6d6")
  FeatureLevel.create!(klass_feature_id: unchained_rogue2.id, level: 13, table_description: "Sneak Attack +7d6")
  FeatureLevel.create!(klass_feature_id: unchained_rogue2.id, level: 15, table_description: "Sneak Attack +8d6")
  FeatureLevel.create!(klass_feature_id: unchained_rogue2.id, level: 17, table_description: "Sneak Attack +9d6")
  FeatureLevel.create!(klass_feature_id: unchained_rogue2.id, level: 19, table_description: "Sneak Attack +10d6")

unchained_rogue3 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Trapfinding", description: "A rogue adds 1/2 her level on Perception checks to locate traps and on Disable Device checks (minimum +1). A rogue can use Disable Device to disarm magic traps.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue3.id, level: 1, table_description: "Trapfinding")

unchained_rogue4 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Finesse Training", description: "At 1st level, a rogue gains Weapon Finesse as a bonus feat. In addition, starting at 3rd level, she can select any one type of weapon that can be used with Weapon Finesse (such as rapiers or daggers). Once this choice is made, it cannot be changed. Whenever she makes a successful melee attack with the selected weapon, she adds her Dexterity modifier instead of her Strength modifier to the damage roll. If any effect would prevent the rogue from adding her Strength modifier to the damage roll, she does not add her Dexterity modifier. The rogue can select a second weapon at 11th level and a third at 19th level.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue4.id, level: 1, table_description: "Finesse Training")
  FeatureLevel.create!(klass_feature_id: unchained_rogue4.id, level: 3, table_description: "Finesse Training")
  FeatureLevel.create!(klass_feature_id: unchained_rogue4.id, level: 11, table_description: "Finesse Training")
  FeatureLevel.create!(klass_feature_id: unchained_rogue4.id, level: 19, table_description: "Finesse Training")

unchained_rogue5 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Evasion", description: "At 2nd level, a rogue can avoid even magical and unusual attacks with great agility. If she succeeds at a Reflex saving throw against an attack that normally deals half damage on a successful save, she instead takes no damage. Evasion can be used only if the rogue is wearing light armor or no armor. A helpless rogue does not gain the benefit of evasion.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue5.id, level: 2, table_description: "Evasion")

unchained_rogue6 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Rogue Talent", description: "As a rogue gains experience, she learns a number of talents that aid her and confound her foes. Starting at 2nd level, a rogue gains one rogue talent. She gains an additional rogue talent for every 2 levels of rogue attained after 2nd level. A rogue cannot select an individual talent more than once.

Talents marked with an asterisk add effects to a rogue’s sneak attack. Only one of these talents can be applied to an individual attack, and the decision must be made before the attack roll is made.

A rogue cannot choose a ninja trick with the same name as a rogue talent.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue6.id, level: 2, table_description: "Rogue Talent")
  FeatureLevel.create!(klass_feature_id: unchained_rogue6.id, level: 4, table_description: "Rogue Talent")
  FeatureLevel.create!(klass_feature_id: unchained_rogue6.id, level: 6, table_description: "Rogue Talent")
  FeatureLevel.create!(klass_feature_id: unchained_rogue6.id, level: 8, table_description: "Rogue Talent")
  FeatureLevel.create!(klass_feature_id: unchained_rogue6.id, level: 10, table_description: "Rogue Talent")
  FeatureLevel.create!(klass_feature_id: unchained_rogue6.id, level: 12, table_description: "Rogue Talent")
  FeatureLevel.create!(klass_feature_id: unchained_rogue6.id, level: 14, table_description: "Rogue Talent")
  FeatureLevel.create!(klass_feature_id: unchained_rogue6.id, level: 16, table_description: "Rogue Talent")
  FeatureLevel.create!(klass_feature_id: unchained_rogue6.id, level: 18, table_description: "Rogue Talent")
  FeatureLevel.create!(klass_feature_id: unchained_rogue6.id, level: 20, table_description: "Rogue Talent")

unchained_rogue7 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Danger Sense", description: "At 3rd level, a rogue gains a +1 bonus on Reflex saves to avoid traps and a +1 dodge bonus to AC against attacks made by traps. In addition, she gains a +1 bonus on Perception checks to avoid being surprised by a foe. These bonuses increase by 1 every 3 rogue levels thereafter (to a maximum of +6 at 18th level). This ability counts as trap sense for the purpose of any feat or class prerequisite, and can be replaced by any archetype class feature that replaces trap sense. The bonuses gained from this ability stack with those gained from trap sense (from another class).")
  FeatureLevel.create!(klass_feature_id: unchained_rogue7.id, level: 3, table_description: "Danger Sense +1")
  FeatureLevel.create!(klass_feature_id: unchained_rogue7.id, level: 6, table_description: "Danger Sense +2")
  FeatureLevel.create!(klass_feature_id: unchained_rogue7.id, level: 9, table_description: "Danger Sense +3")
  FeatureLevel.create!(klass_feature_id: unchained_rogue7.id, level: 12, table_description: "Danger Sense +4")
  FeatureLevel.create!(klass_feature_id: unchained_rogue7.id, level: 15, table_description: "Danger Sense +5")
  FeatureLevel.create!(klass_feature_id: unchained_rogue7.id, level: 18, table_description: "Danger Sense +6")

unchained_rogue8 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Debilitating Injury", description: "At 4th level, whenever a rogue deals sneak attack damage to a foe, she can also debilitate the target of her attack, causing it to take a penalty for 1 round (this is in addition to any penalty caused by a rogue talent or other special ability). The rogue can choose to apply any one of the following penalties when the damage is dealt.

Bewildered: The target becomes bewildered, taking a –2 penalty to AC. The target takes an additional –2 penalty to AC against all attacks made by the rogue. At 10th level and 16th level, the penalty to AC against attacks made by the rogue increases by –2 (to a total maximum of –8).

Disoriented: The target takes a –2 penalty on attack rolls. In addition, the target takes an additional –2 penalty on all attack rolls it makes against the rogue. At 10th level and 16th level, the penalty on attack rolls made against the rogue increases by –2 (to a total maximum of –8).

Hampered: All of the target’s speeds are reduced by half (to a minimum of 5 feet). In addition, the target cannot take a 5-foot step.

These penalties do not stack with themselves, but additional attacks that deal sneak attack damage extend the duration by 1 round. A creature cannot suffer from more than one penalty from this ability at a time. If a new penalty is applied, the old penalty immediately ends. Any form of healing applied to a target suffering from one of these penalties also removes the penalty.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue8.id, level: 4, table_description: "Debilitating Injury")

unchained_rogue9 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Uncanny Dodge", description: "At 4th level, a rogue can react to danger before her senses would normally allow her to do so. She cannot be caught flat-footed, nor does she lose her Dexterity bonus to AC if the attacker is invisible. She still loses her Dexterity bonus to AC if immobilized. A rogue with this ability can still lose her Dexterity bonus to AC if an opponent successfully uses the feint action against her.

If a rogue already has uncanny dodge from a different class, she automatically gains improved uncanny dodge (see below) instead.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue9.id, level: 4, table_description: "Uncanny Dodge")

unchained_rogue10 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Rogue's Edge", description: "At 5th level, a rogue has mastered a single skill beyond that skill’s normal boundaries, gaining results that others can only dream about. She gains the skill unlock powers for that skill as appropriate for her number of ranks in that skill. At 10th, 15th, and 20th levels, she chooses an additional skill and gains skill unlock powers for that skill as well.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue10.id, level: 5, table_description: "Rogue's Edge")
  FeatureLevel.create!(klass_feature_id: unchained_rogue10.id, level: 10, table_description: "Rogue's Edge")
  FeatureLevel.create!(klass_feature_id: unchained_rogue10.id, level: 15, table_description: "Rogue's Edge")
  FeatureLevel.create!(klass_feature_id: unchained_rogue10.id, level: 20, table_description: "Rogue's Edge")

unchained_rogue11 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Improved Uncanny Dodge", description: "At 8th level, a rogue can no longer be flanked.

This defense denies another rogue the ability to sneak attack the character by flanking her, unless the attacker has at least four more rogue levels than the target does.

If a character already has uncanny dodge from another class, the levels from the classes that grant uncanny dodge stack to determine the minimum rogue level required to flank the character.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue11.id, level: 8, table_description: "Improved Uncanny Dodge")

unchained_rogue12 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Advanced Talents", description: "At 10th level and every 2 levels thereafter, a rogue can choose one of the following advanced talents in place of a rogue talent.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue12.id, level: 10, table_description: "Advanced Talents")

unchained_rogue13 = KlassFeature.create!(klass_id: unchained_rogue.id, name: "Master Strike", description: "At 20th level, an rogue becomes incredibly deadly when dealing sneak attack damage. Each time the rogue deals sneak attack damage, she can choose one of the following three effects: the target can be put to sleep for 1d4 hours, paralyzed for 2d6 rounds, or slain. Regardless of the effect chosen, the target can attempt a Fortitude save to negate the additional effect. The DC of this save is equal to 10 + 1/2 the rogue’s level + the rogue’s Dexterity modifier. Once a creature has been the target of a master strike, regardless of whether or not the save is successful, that creature is immune to that rogue’s master strike for 24 hours. Creatures that are immune to sneak attack damage are also immune to this ability.")
  FeatureLevel.create!(klass_feature_id: unchained_rogue13.id, level: 20, table_description: "Master Strike")

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")


# /////////////////////////////////////////
# <-*-*-----*-*-*- Class Feature Details!-*-*-*-----*-*->
# /////////////////////////////////////////

Spellcasting.create!(klass_feature_id: oracle2.id, ability_score: "Charisma", prepared: false, limited: true, expendable: false, infinite_zero_level: true, bonus_spells: false, klass_spell_list_id: cleric.id)

Spellcasting.create!(klass_feature_id: witch2.id, ability_score: "Intelligence", prepared: true, limited: true, expendable: true, infinite_zero_level: false, bonus_spells: true, klass_spell_list_id: witch.id)

Spellcasting.create!(klass_feature_id: fate_weaver4.id, ability_score: "Charisma", prepared: false, limited: true, expendable: false, infinite_zero_level: false, bonus_spells: false, klass_spell_list_id: fate_weaver.id)

Spellcasting.create!(klass_feature_id: bard2.id, ability_score: "Charisma", prepared: false, limited: true, expendable: false, infinite_zero_level: true, bonus_spells: true, klass_spell_list_id: bard.id)

Spellcasting.create!(klass_feature_id: arcanist2.id, ability_score: "Intelligence", prepared: true, limited: true, expendable: false, infinite_zero_level: true, bonus_spells: true, klass_spell_list_id: wizard.id)

# /////////////////////////////////////////
# <-*-*-----*-*-*- Spells Per Day!-*-*-*-----*-*->
# /////////////////////////////////////////

SpellsPerDay.create!(spell_level: 0, klass_level: 1, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 0, klass_level: 2, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 0, klass_level: 3, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 0, klass_level: 4, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 0, klass_level: 5, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 0, klass_level: 6, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 0, klass_level: 7, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 0, klass_level: 8, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 0, klass_level: 9, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 0, klass_level: 10, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 0, klass_level: 11, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 0, klass_level: 12, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 0, klass_level: 13, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 0, klass_level: 14, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 0, klass_level: 15, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 0, klass_level: 16, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 0, klass_level: 17, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 0, klass_level: 18, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 0, klass_level: 19, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 0, klass_level: 20, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 1, spells: 1, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 2, spells: 2, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 3, spells: 2, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 4, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 5, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 6, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 7, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 8, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 9, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 10, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 11, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 12, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 13, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 14, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 15, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 16, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 17, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 18, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 19, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 20, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 3, spells: 1, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 4, spells: 2, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 5, spells: 2, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 6, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 7, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 8, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 9, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 10, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 11, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 12, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 13, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 14, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 15, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 16, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 17, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 18, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 19, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 20, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 5, spells: 1, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 6, spells: 2, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 7, spells: 2, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 8, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 9, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 10, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 11, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 12, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 13, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 14, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 15, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 16, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 17, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 18, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 19, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 20, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 7, spells: 1, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 8, spells: 2, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 9, spells: 2, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 10, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 11, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 12, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 13, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 14, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 15, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 16, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 17, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 18, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 19, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 20, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 9, spells: 1, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 10, spells: 2, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 11, spells: 2, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 12, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 13, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 14, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 15, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 16, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 17, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 18, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 19, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 20, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 11, spells: 1, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 12, spells: 2, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 13, spells: 2, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 14, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 15, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 16, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 17, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 18, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 19, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 20, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 7, klass_level: 13, spells: 1, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 7, klass_level: 14, spells: 2, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 7, klass_level: 15, spells: 2, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 7, klass_level: 16, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 7, klass_level: 17, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 7, klass_level: 18, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 7, klass_level: 19, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 7, klass_level: 20, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 8, klass_level: 15, spells: 1, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 8, klass_level: 16, spells: 2, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 8, klass_level: 17, spells: 2, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 8, klass_level: 18, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 8, klass_level: 19, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 8, klass_level: 20, spells: 4, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 9, klass_level: 17, spells: 1, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 9, klass_level: 18, spells: 2, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 9, klass_level: 19, spells: 3, klass_id: witch.id)
SpellsPerDay.create!(spell_level: 9, klass_level: 20, spells: 4, klass_id: witch.id)


SpellsPerDay.create!(spell_level: 1, klass_level: 1, spells: 1, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 2, spells: 2, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 3, spells: 3, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 4, spells: 3, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 5, spells: 4, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 6, spells: 4, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 7, spells: 4, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 8, spells: 4, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 9, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 10, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 11, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 12, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 13, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 14, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 15, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 16, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 17, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 18, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 19, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 20, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 4, spells: 1, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 5, spells: 2, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 6, spells: 3, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 7, spells: 3, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 8, spells: 4, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 9, spells: 4, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 10, spells: 4, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 11, spells: 4, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 12, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 13, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 14, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 15, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 16, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 17, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 18, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 19, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 20, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 7, spells: 1, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 8, spells: 2, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 9, spells: 3, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 10, spells: 3, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 11, spells: 4, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 12, spells: 4, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 13, spells: 4, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 14, spells: 4, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 15, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 16, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 17, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 18, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 19, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 20, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 10, spells: 1, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 11, spells: 2, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 12, spells: 3, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 13, spells: 3, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 14, spells: 4, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 15, spells: 4, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 16, spells: 4, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 17, spells: 4, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 18, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 19, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 20, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 13, spells: 1, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 14, spells: 2, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 15, spells: 3, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 16, spells: 3, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 17, spells: 4, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 18, spells: 4, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 19, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 20, spells: 5, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 16, spells: 1, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 17, spells: 2, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 18, spells: 3, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 19, spells: 4, klass_id: bard.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 20, spells: 5, klass_id: bard.id)

SpellsPerDay.create!(spell_level: 1, klass_level: 1, spells: 2, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 2, spells: 3, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 3, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 4, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 5, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 6, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 7, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 8, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 9, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 10, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 11, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 12, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 13, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 14, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 15, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 16, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 17, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 18, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 19, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 1, klass_level: 20, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 4, spells: 2, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 5, spells: 3, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 6, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 7, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 8, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 9, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 10, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 11, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 12, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 13, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 14, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 15, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 16, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 17, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 18, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 19, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 2, klass_level: 20, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 6, spells: 2, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 7, spells: 3, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 8, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 9, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 10, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 11, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 12, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 13, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 14, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 15, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 16, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 17, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 18, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 19, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 3, klass_level: 20, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 8, spells: 2, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 9, spells: 3, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 10, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 11, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 12, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 13, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 14, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 15, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 16, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 17, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 18, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 19, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 4, klass_level: 20, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 10, spells: 2, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 11, spells: 3, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 12, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 13, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 14, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 15, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 16, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 17, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 18, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 19, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 5, klass_level: 20, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 12, spells: 2, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 13, spells: 3, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 14, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 15, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 16, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 17, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 18, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 19, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 6, klass_level: 20, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 7, klass_level: 14, spells: 2, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 7, klass_level: 15, spells: 3, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 7, klass_level: 16, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 7, klass_level: 17, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 7, klass_level: 18, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 7, klass_level: 19, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 7, klass_level: 20, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 8, klass_level: 16, spells: 2, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 8, klass_level: 17, spells: 3, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 8, klass_level: 18, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 8, klass_level: 19, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 8, klass_level: 20, spells: 4, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 9, klass_level: 18, spells: 2, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 9, klass_level: 19, spells: 3, klass_id: arcanist.id)
SpellsPerDay.create!(spell_level: 9, klass_level: 20, spells: 4, klass_id: arcanist.id)

# SpellsPerDay.create!(spell_level: , klass_level: , spells: , klass_id: )
# SpellsPerDay.create!(spell_level: , klass_level: , spells: , klass_id: )
# SpellsPerDay.create!(spell_level: , klass_level: , spells: , klass_id: )
# SpellsPerDay.create!(spell_level: , klass_level: , spells: , klass_id: )
# SpellsPerDay.create!(spell_level: , klass_level: , spells: , klass_id: )
# SpellsPerDay.create!(spell_level: , klass_level: , spells: , klass_id: )
# SpellsPerDay.create!(spell_level: , klass_level: , spells: , klass_id: )
# SpellsPerDay.create!(spell_level: , klass_level: , spells: , klass_id: )

# /////////////////////////////////////////
# <-*-*-----*-*-*- Skillsets!-*-*-*-----*-*->
# /////////////////////////////////////////
cr = Skillset.create!(name: "Core Rulebook")
dmc = Skillset.create!(name: "DMCustom")


# /////////////////////////////////////////
# <-*-*-----*-*-*- Skills!-*-*-*-----*-*->
# /////////////////////////////////////////

acro = Skill.create!(name: "Acrobatics", ability_score: "Dexterity", untrained: true, description: "")
appr = Skill.create!(name: "Appraise", ability_score: "Intelligence", untrained: true, description: "")
bluf = Skill.create!(name: "Bluff", ability_score: "Charisma", untrained: true, description: "")
clim = Skill.create!(name: "Climb", ability_score: "Strength", untrained: true, description: "")
craf = Skill.create!(name: "Craft", ability_score: "Intelligence", untrained: true, description: "")
dipl = Skill.create!(name: "Diplomacy", ability_score: "Charisma", untrained: true, description: "")
disa = Skill.create!(name: "Disable Device", ability_score: "Dexterity", untrained: false, description: "")
disg = Skill.create!(name: "Disguise", ability_score: "Charisma", untrained: true, description: "")
esca = Skill.create!(name: "Escape Artist", ability_score: "Dexterity", untrained: true, description: "")
fly = Skill.create!(name: "Fly", ability_score: "Dexterity", untrained: true, description: "")
hand = Skill.create!(name: "Handle Animal", ability_score: "Charisma", untrained: false, description: "")
heal = Skill.create!(name: "Heal", ability_score: "Wisdom", untrained: true, description: "")
inti = Skill.create!(name: "Intimidate", ability_score: "Charisma", untrained: true, description: "")
arca = Skill.create!(name: "Knowledge (arcana)", ability_score: "Intelligence", untrained: false, description: "")
dung = Skill.create!(name: "Knowledge (dungeoneering)", ability_score: "Intelligence", untrained: false, description: "")
engi = Skill.create!(name: "Knowledge (engineering)", ability_score: "Intelligence", untrained: false, description: "")
geog = Skill.create!(name: "Knowledge (geography)", ability_score: "Intelligence", untrained: false, description: "")
hist = Skill.create!(name: "Knowledge (history)", ability_score: "Intelligence", untrained: false, description: "")
loca = Skill.create!(name: "Knowledge (local)", ability_score: "Intelligence", untrained: false, description: "")
natu = Skill.create!(name: "Knowledge (nature)", ability_score: "Intelligence", untrained: false, description: "")
nobi = Skill.create!(name: "Knowledge (nobility)", ability_score: "Intelligence", untrained: false, description: "")
plan = Skill.create!(name: "Knowledge (planes)", ability_score: "Intelligence", untrained: false, description: "")
reli = Skill.create!(name: "Knowledge (religion)", ability_score: "Intelligence", untrained: false, description: "")
ling = Skill.create!(name: "Linguistics", ability_score: "Intelligence", untrained: false, description: "")
perc = Skill.create!(name: "Perception", ability_score: "Wisdom", untrained: true, description: "")
perf = Skill.create!(name: "Perform", ability_score: "Charisma", untrained: true, description: "")
prof = Skill.create!(name: "Profession", ability_score: "Wisdom", untrained: false, description: "")
ride = Skill.create!(name: "Ride", ability_score: "Dexterity", untrained: true, description: "")
sens = Skill.create!(name: "Sense Motive", ability_score: "Wisdom", untrained: true, description: "")
slei = Skill.create!(name: "Sleight of Hand", ability_score: "Dexterity", untrained: false, description: "")
spel = Skill.create!(name: "Spellcraft", ability_score: "Intelligence", untrained: false, description: "")
stea = Skill.create!(name: "Stealth", ability_score: "Dexterity", untrained: true, description: "")
surv = Skill.create!(name: "Survival", ability_score: "Wisdom", untrained: true, description: "")
swim = Skill.create!(name: "Swim", ability_score: "Strength", untrained: true, description: "")
usem = Skill.create!(name: "Use Magic Device", ability_score: "Charisma", untrained: false, description: "")
# rand = Skill.create!(name: "", ability_score: "", untrained: true, description: "")

unc_fine = Skill.create!(name: "Finesse", ability_score: "Dexterity", untrained: true, description: "")
unc_natu = Skill.create!(name: "Nature", ability_score: "Intelligence", untrained: true, description: "")
inve = Skill.create!(name: "Investigation", ability_score: "Intelligence", untrained: true, description: "")
unc_reli = Skill.create!(name: "Religion", ability_score: "Intelligence", untrained: true, description: "")
unc_soci = Skill.create!(name: "Society", ability_score: "Intelligence", untrained: true, description: "")
unc_spel = Skill.create!(name: "Spellcraft", ability_score: "Intelligence", untrained: true, description: "")
# rand = Skill.create!(name: "", ability_score: "", untrained: true, description: "")

# /////////////////////////////////////////////////
# <-*-*-----*-*-*- Skillset Skills!-*-*-*-----*-*->
# /////////////////////////////////////////////////

SkillsetSkill.create!(skillset_id: cr.id, skill_id: acro.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: appr.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: bluf.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: clim.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: craf.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: dipl.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: disa.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: disg.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: esca.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: fly.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: hand.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: inti.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: arca.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: dung.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: engi.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: geog.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: hist.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: loca.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: natu.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: nobi.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: plan.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: reli.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: ling.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: perc.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: perf.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: prof.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: ride.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: sens.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: slei.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: spel.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: stea.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: surv.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: swim.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: usem.id)


SkillsetSkill.create!(skillset_id: dmc.id, skill_id: acro.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: bluf.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: clim.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: craf.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: dipl.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: disg.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: unc_fine.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: hand.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: heal.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: inti.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: inve.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: ling.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: unc_natu.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: perc.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: perf.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: prof.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: unc_reli.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: sens.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: unc_soci.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: unc_spel.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: stea.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: surv.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: swim.id)


# /////////////////////////////////////////
# <-*-*-----*-*-*- Users!-*-*-*-----*-*->
# /////////////////////////////////////////

admin = User.create!(username: "jack", password: "ey", admin: true, skillset_id: dmc.id)
cole = User.create!(username: "cole", password: "ey", admin: false, skillset_id: dmc.id)



# /////////////////////////////////////////
# <-*-*-----*-*-*- Class Skillset Skills!-*-*-*-----*-*->
# /////////////////////////////////////////
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: acro.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: clim.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: craf.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: hand.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: inti.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: unc_natu.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: perc.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: prof.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: surv.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: swim.id)

ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: acro.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: bluf.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: clim.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: craf.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: dipl.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: disg.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: unc_fine.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: inti.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: inve.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: ling.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: perc.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: perf.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: prof.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: unc_reli.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: sens.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: unc_soci.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: unc_spel.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: stea.id)

ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: acro.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: bluf.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: clim.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: craf.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: dipl.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: disg.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: unc_fine.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: inti.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: inve.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: ling.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: perc.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: perf.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: prof.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: sens.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: unc_soci.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: stea.id)
ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: swim.id)

ClassSkillsetSkill.create!(klass_id: oracle.id, skillset_id: dmc.id, skill_id: craf.id)
ClassSkillsetSkill.create!(klass_id: oracle.id, skillset_id: dmc.id, skill_id: dipl.id)
ClassSkillsetSkill.create!(klass_id: oracle.id, skillset_id: dmc.id, skill_id: heal.id)
ClassSkillsetSkill.create!(klass_id: oracle.id, skillset_id: dmc.id, skill_id: prof.id)
ClassSkillsetSkill.create!(klass_id: oracle.id, skillset_id: dmc.id, skill_id: unc_reli.id)
ClassSkillsetSkill.create!(klass_id: oracle.id, skillset_id: dmc.id, skill_id: sens.id)
ClassSkillsetSkill.create!(klass_id: oracle.id, skillset_id: dmc.id, skill_id: unc_spel.id)

ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: acro.id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: craf.id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: heal.id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: inti.id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: unc_natu.id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: prof.id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: unc_reli.id)
ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: unc_spel.id)

ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: acro.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: clim.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: craf.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: hand.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: unc_natu.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: perc.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: prof.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: stea.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: surv.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: swim.id)

ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: craf.id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: ling.id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: unc_natu.id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: prof.id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: unc_reli.id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: unc_soci.id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: unc_spel.id)

ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: acro.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: clim.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: craf.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: hand.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: inti.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: perc.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: prof.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: sens.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: unc_soci.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: swim.id)

ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: acro.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: bluf.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: clim.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: craf.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: dipl.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: unc_fine.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: inti.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: perc.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: perf.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: prof.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: sens.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: unc_soci.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: swim.id)

ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: acro.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: bluf.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: clim.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: craf.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: dipl.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: disg.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: unc_fine.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: inti.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: inve.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: perc.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: perf.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: prof.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: sens.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: unc_soci.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: stea.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: surv.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: swim.id)

ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: bluf.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: dipl.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: unc_fine.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: hand.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: heal.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: inti.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: ling.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: perf.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: perc.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: sens.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: surv.id)

ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: dmc.id, skill_id: craf.id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: dmc.id, skill_id: ling.id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: dmc.id, skill_id: unc_natu.id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: dmc.id, skill_id: prof.id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: dmc.id, skill_id: unc_reli.id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: dmc.id, skill_id: unc_soci.id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: dmc.id, skill_id: unc_spel.id)

ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: craf.id)
ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: hand.id)
ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: ling.id)
ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: unc_natu.id)
ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: prof.id)
ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: unc_reli.id)
ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: unc_soci.id)
ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: unc_spel.id)


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
sixty_feet = SpellRange.create!(name: "60 ft", feet: 60, increase_per_level: 0, description: "60 ft")
ten_feet = SpellRange.create!(name: "10 ft", feet: 10, increase_per_level: 0, description: "10 ft")
one_hundred_twenty_feet = SpellRange.create!(name: "120 ft", feet: 120, increase_per_level: 0, description: "120 ft")
zero_feet = SpellRange.create!(name: "0 ft", feet: 0, increase_per_level: 0, description: "0 ft")
twenty_feet = SpellRange.create!(name: "20 ft", feet: 20, increase_per_level: 0, description: "20 ft")
five_feet = SpellRange.create!(name: "5 ft", feet: 5, increase_per_level: 0, description: "5 ft")


# /////////////////////////////////////////
# <-*-*-----*-*-*- Subschools!-*-*-*-----*-*->
# /////////////////////////////////////////

charm = Subschool.create!(name: "Charm", description: "A charm spell changes how the subject views you, typically making it see you as a good friend.")
mind_affecting = Subschool.create!(name: "Mind-Affecting", description: "Mindless creatures (those with an Intelligence score of “—”) and undead are immune to mind-affecting effects.")
language_dependent = Subschool.create!(name: "Language-Dependent", description: "A language-dependent spell uses intelligible language as a medium for communication. If the target cannot understand or hear what the caster of a language-dependent spell says, the spell has no effect, even if the target fails its saving throw.")
light = Subschool.create!(name: "Light", description: "Spells that create significant amounts of light or attack darkness effects should have the light descriptor. Giving a spell the light descriptor indicates whether a spell like darkness is high enough level counter or dispel it.")
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

# /////////////////////////////////////////
# <-*-*-----*-*-*- Spells!-*-*-*-----*-*->
# /////////////////////////////////////////


sp1 = Spell.create!(name: "Charm Person", description: "This charm makes a humanoid creature regard you as its trusted friend and ally (treat the target’s attitude as friendly). If the creature is currently being threatened or attacked by you or your allies, however, it receives a +5 bonus on its saving throw.

The spell does not enable you to control the charmed person as if it were an automaton, but it perceives your words and actions in the most favorable way. You can try to give the subject orders, but you must win an opposed Charisma check to convince it to do anything it wouldn’t ordinarily do. (Retries are not allowed.) An affected creature never obeys suicidal or obviously harmful orders, but it might be convinced that something very dangerous is worth doing. Any act by you or your apparent allies that threatens the charmed person breaks the spell. You must speak the person’s language to communicate your commands, or else be good at pantomiming.", target: "one humanoid creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: enchantment.id, duration: "1 hour/lvl", time: 1, unit_of_time: "hour", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp1.id, subschool_id: charm.id)
  SpellSubschool.create!(spell_id: sp1.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp1.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp1.id, component_id: somatic.id)
  charm_person_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp1.id, spell_level: 1)
  charm_person_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp1.id, spell_level: 1)
  charm_person_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp1.id, spell_level: 1)

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
  detect_magic_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp2.id, spell_level: 0)
  detect_magic_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp2.id, spell_level: 0)
  detect_magic_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp2.id, spell_level: 0)
  detect_magic_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp2.id, spell_level: 0)
  detect_magic_cleric = KlassSpell.create!(klass_id: cleric.id, spell_id: sp2.id, spell_level: 0)

sp3 = Spell.create!(name: "Mending", description: "This spell repairs damaged objects, restoring 1d4 hit points to the object. If the object has the broken condition, this condition is removed if the object is restored to at least half its original hit points. All of the pieces of an object must be present for this spell to function. Magic items can be repaired by this spell, but you must have a caster level equal to or higher than that of the object. Magic items that are destroyed (at 0 hit points or less) can be repaired with this spell, but this spell does not restore their magic abilities. This spell does not affect creatures (including constructs). This spell has no effect on objects that have been warped or otherwise transmuted, but it can still repair damage done to such items.", target: "one object of up to 1 lb./level", saving_throw: "Will", spell_resistance: true, action_id: ten.id, spell_range_id: ten_feet.id, magic_school_id: transmutation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp3.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp3.id, component_id: somatic.id)
  mending_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp3.id, spell_level: 0)
  mending_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp3.id, spell_level: 0)
  mending_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp3.id, spell_level: 0)
  mending_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp3.id, spell_level: 0)

sp4 = Spell.create!(name: "Message", description: "You can whisper messages and receive whispered replies. Those nearby can hear these messages with a DC 25 Perception check. You point your finger at each creature you want to receive the message. When you whisper, the whispered message is audible to all targeted creatures within range. Magical silence, 1 foot of stone, 1 inch of common metal (or a thin sheet of lead), or 3 feet of wood or dirt blocks the spell. The message does not have to travel in a straight line. It can circumvent a barrier if there is an open path between you and the subject, and the path’s entire length lies within the spell’s range. The creatures that receive the message can whisper a reply that you hear. The spell transmits sound, not meaning; it doesn’t transcend language barriers. To speak a message, you must mouth the words and whisper.", target: "one creature/level", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: medium.id, magic_school_id: transmutation.id, duration: "10 min./level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp4.id, subschool_id: language_dependent.id)
  SpellComponent.create!(spell_id: sp4.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp4.id, component_id: somatic.id)
  SpellComponent.create!(spell_id: sp4.id, component_id: focus.id, item: "a piece of copper wire")
  message_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp4.id, spell_level: 0)
  message_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp4.id, spell_level: 0)
  message_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp4.id, spell_level: 0)
  message_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp4.id, spell_level: 0)


sp5 = Spell.create!(name: "Light", description: "This spell causes a touched object to glow like a torch, shedding normal light in a 20-foot radius from the point touched, and increasing the light level for an additional 20 feet by one step, up to normal light (darkness becomes dim light, and dim light becomes normal light). In an area of normal or bright light, this spell has no effect. The effect is immobile, but it can be cast on a movable object.

You can only have one light spell active at any one time. If you cast this spell while another casting is still in effect, the previous casting is dispelled. If you make this spell permanent (through permanency or a similar effect), it does not count against this limit. Light can be used to counter or dispel any darkness spell of equal or lower spell level.", target: "object touched", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: touch.id, magic_school_id: evocation.id, duration: "10 min./level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp5.id, subschool_id: light.id)
  SpellComponent.create!(spell_id: sp5.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp5.id, component_id: material.id, item: "a firefly")
  SpellComponent.create!(spell_id: sp5.id, component_id: divine_focus.id, item: "a firefly")
  light_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp5.id, spell_level: 0)
  light_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp5.id, spell_level: 0)
  light_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp5.id, spell_level: 0)
  light_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp5.id, spell_level: 0)
  light_cleric = KlassSpell.create!(klass_id: cleric.id, spell_id: sp5.id, spell_level: 0)

sp6 = Spell.create!(name: "Discern Next of Kin", description: "You can scan the thoughts of one individual and learn the names and locations of the target’s living relatives, as well as the attitude of the target toward those relatives (and vice versa). You learn about one relative per round you concentrate on the target. For example, you might learn the target’s father’s name, that the father lives on a nearby farm, and that the target and his father don’t get along. Since this spell reads the target’s mind, you can learn only what the target knows or believes.", target: "one creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: sixty_feet.id, magic_school_id: divination.id, duration: "concentration, up to 1 minute/level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: true)
  SpellSubschool.create!(spell_id: sp6.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp6.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp6.id, component_id: somatic.id)
  SpellComponent.create!(spell_id: sp6.id, component_id: focus.id, item: "a copper piece")
  discern_next_of_kin_arcanist = KlassSpell.create!(klass_id: arcanist.id, spell_id: sp6.id, spell_level: 1)
  discern_next_of_kin_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp6.id, spell_level: 1)
  discern_next_of_kin_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp6.id, spell_level: 1)
  discern_next_of_kin_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp6.id, spell_level: 1)
  discern_next_of_kin_fate_weaver = KlassSpell.create!(klass_id: fate_weaver.id, spell_id: sp6.id, spell_level: 0)


sp7 = Spell.create!(name: "Lightning Bolt", description: "You release a powerful stroke of electrical energy that deals 1d6 points of electricity damage per caster level (maximum 10d6) to each creature within its area. The bolt begins at your fingertips.

The lightning bolt sets fire to combustibles and damages objects in its path. It can melt metals with a low melting point, such as lead, gold, copper, silver, or bronze. If the damage caused to an interposing barrier shatters or breaks through it, the bolt may continue beyond the barrier if the spell’s range permits; otherwise, it stops at the barrier just as any other spell effect does.", target: "120 ft", saving_throw: "Reflex", spell_resistance: true, action_id: standard.id, spell_range_id: one_hundred_twenty_feet.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp7.id, subschool_id: electricity.id)
  SpellComponent.create!(spell_id: sp7.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp7.id, component_id: somatic.id)
  SpellComponent.create!(spell_id: sp7.id, component_id: material.id, item: "fur and a glass rod")
  lightning_bolt_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp7.id, spell_level: 3)
  lightning_bolt_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp7.id, spell_level: 3)

sp8 = Spell.create!(name: "Open/Close", description: "You can open or close (your choice) a door, chest, box, window, bag, pouch, bottle, barrel, or other container. If anything resists this activity (such as a bar on a door or a lock on a chest), the spell fails. In addition, the spell can only open and close things weighing 30 pounds or less. Thus, doors, chests, and similar objects sized for enormous creatures may be beyond this spell’s ability to affect.", target: "object weighing up to 30 lbs. or portal that can be opened or closed", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp8.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp8.id, component_id: somatic.id)
  SpellComponent.create!(spell_id: sp8.id, component_id: focus.id, item: "a brass key")
  open_close_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp8.id, spell_level: 0)
  open_close_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp8.id, spell_level: 0)
  open_close_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp8.id, spell_level: 0)

sp9 = Spell.create!(name: "Haste", description: "The transmuted creatures move and act more quickly than normal. This extra speed has several effects.

When making a full attack action, a hasted creature may make one extra attack with one natural or manufactured weapon. The attack is made using the creature’s full base attack bonus, plus any modifiers appropriate to the situation. (This effect is not cumulative with similar effects, such as that provided by a speed weapon, nor does it actually grant an extra action, so you can’t use it to cast a second spell or otherwise take an extra action in the round.)

A hasted creature gains a +1 bonus on attack rolls and a +1 dodge bonus to AC and Reflex saves. Any condition that makes you lose your Dexterity bonus to Armor Class (if any) also makes you lose dodge bonuses.

All of the hasted creature’s modes of movement (including land movement, burrow, climb, fly, and swim) increase by 30 feet, to a maximum of twice the subject’s normal speed using that form of movement. This increase counts as an enhancement bonus, and it affects the creature’s jumping distance as normal for increased speed. Multiple haste effects don’t stack. Haste dispels and counters slow.", target: "one creature/level, no two of which can be more than 30 ft. apart", saving_throw: "Fortitude", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp9.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp9.id, component_id: somatic.id)
  SpellComponent.create!(spell_id: sp9.id, component_id: material.id, item: "a shaving of licorice root")
  haste_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp9.id, spell_level: 3)
  haste_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp9.id, spell_level: 3)
  haste_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp9.id, spell_level: 3)

sp10 = Spell.create!(name: "Mage Hand", description: "You point your finger at an object and can lift it and move it at will from a distance. As a move action, you can propel the object as far as 15 feet in any direction, though the spell ends if the distance between you and the object ever exceeds the spell’s range.", target: "one non-magical, unattended object weighing up to 5 lbs.", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "concentration", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: true)
  SpellComponent.create!(spell_id: sp10.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp10.id, component_id: somatic.id)
  mage_hand_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp10.id, spell_level: 0)
  mage_hand_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp10.id, spell_level: 0)
  mage_hand_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp10.id, spell_level: 0)

sp11 = Spell.create!(name: "Suggestion", description: "You influence the actions of the target creature by suggesting a course of activity (limited to a sentence or two). The suggestion must be worded in such a manner as to make the activity sound reasonable. Asking the creature to do some obviously harmful act automatically negates the effect of the spell.

The suggested course of activity can continue for the entire duration. If the suggested activity can be completed in a shorter time, the spell ends when the subject finishes what it was asked to do. You can instead specify conditions that will trigger a special activity during the duration. If the condition is not met before the spell duration expires, the activity is not performed.

A very reasonable suggestion causes the save to be made with a penalty (such as -1 or -2).", target: "one living creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: enchantment.id, duration: "1 hour/level or until completed", time: 1, unit_of_time: "hour", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp11.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: sp11.id, subschool_id: mind_affecting.id)
  SpellSubschool.create!(spell_id: sp11.id, subschool_id: language_dependent.id)
  SpellComponent.create!(spell_id: sp11.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp11.id, component_id: material.id, item: "a snake’s tongue and a honeycomb")
  suggestion_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp11.id, spell_level: 3)
  suggestion_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp11.id, spell_level: 3)
  suggestion_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp11.id, spell_level: 2)

sp12 = Spell.create!(name: "Decrepit Disguise", description: "You make an object seem like a worthless version of itself. A masterwork or magic sword could seem to be a useless, rusting, discarded blade, and a luxurious throne could appear to be a decrepit wooden chair. If used against an attended object, the wielder can immediately attempt a Will save to disbelieve the effect. Decrepit disguise counters and dispels quintessence.

Decrepit disguise can be made permanent with a permanency spell by a caster of 9th level or higher for the cost of 500 gp.", target: "one object of no more than 10 cu. ft./level", saving_throw: "Will", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: illusion.id, duration: "1 day/level", time: 1, unit_of_time: "day", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp12.id, subschool_id: glamer.id)
  SpellComponent.create!(spell_id: sp12.id, component_id: verbal.id)
  suggestion_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp12.id, spell_level: 1)
  suggestion_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp12.id, spell_level: 1)

sp13 = Spell.create!(name: "Prestidigitation", description: "Prestidigitations are minor tricks that novice spellcasters use for practice. Once cast, a prestidigitation spell enables you to perform simple magical effects for 1 hour. The effects are minor and have severe limitations. A prestidigitation can slowly lift 1 pound of material. It can color, clean, or soil items in a 1-foot cube each round. It can chill, warm, or flavor 1 pound of nonliving material. It cannot deal damage or affect the concentration of spellcasters. Prestidigitation can create small objects, but they look crude and artificial. The materials created by a prestidigitation spell are extremely fragile, and they cannot be used as tools, weapons, or spell components. Finally, prestidigitation lacks the power to duplicate any other spell effects. Any actual change to an object (beyond just moving, cleaning, or soiling it) persists only 1 hour.", target: "see text", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: ten_feet.id, magic_school_id: universal.id, duration: "1 hour", time: 1, unit_of_time: "hour", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp13.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp13.id, component_id: somatic.id)
  prestidigitation_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp13.id, spell_level: 0)
  prestidigitation_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp13.id, spell_level: 0)

sp14 = Spell.create!(name: "Identify", description: "This spell functions as detect magic, except that it gives you a +10 enhancement bonus on Spellcraft checks made to identify the properties and command words of magic items in your possession. This spell does not allow you to identify artifacts.", target: "cone-shaped emanation", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: sixty_feet.id, magic_school_id: divination.id, duration: "3 rounds/level", time: 3, unit_of_time: "round", increase_per_level: 3, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp14.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp14.id, component_id: somatic.id)
  SpellComponent.create!(spell_id: sp14.id, component_id: material.id, item: "wine stirred with an owl’s feather")
  identify_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp14.id, spell_level: 1)
  identify_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp14.id, spell_level: 1)
  identify_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp14.id, spell_level: 1)
  identify_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp14.id, spell_level: 1)

sp15 = Spell.create!(name: "Vanish", description: "This spell functions like invisibility, except the effect only lasts for 1 round per caster level (maximum of 5 rounds). Like invisibility, the spell immediately ends if the subject attacks any creature.", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: illusion.id, duration: "1 round/level (up to 5 rounds)", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp15.id, subschool_id: glamer.id)
  SpellComponent.create!(spell_id: sp15.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp15.id, component_id: somatic.id)
  vanish_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp15.id, spell_level: 1)
  vanish_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp15.id, spell_level: 1)

sp16 = Spell.create!(name: "Invisibility", description: "The creature or object touched becomes invisible. If the recipient is a creature carrying gear, that vanishes, too. If you cast the spell on someone else, neither you nor your allies can see the subject, unless you can normally see invisible things or you employ magic to do so.

Items dropped or put down by an invisible creature become visible; items picked up disappear if tucked into the clothing or pouches worn by the creature. Light, however, never becomes invisible, although a source of light can become so (thus, the effect is that of a light with no visible source). Any part of an item that the subject carries but that extends more than 10 feet from it becomes visible.

Of course, the subject is not magically silenced, and certain other conditions can render the recipient detectable (such as swimming in water or stepping in a puddle). If a check is required, a stationary invisible creature has a +40 bonus on its Stealth checks. This bonus is reduced to +20 if the creature is moving. The spell ends if the subject attacks any creature. For purposes of this spell, an attack includes any spell targeting a foe or whose area or effect includes a foe. Exactly who is a foe depends on the invisible character’s perceptions. Actions directed at unattended objects do not break the spell. Causing harm indirectly is not an attack. Thus, an invisible being can open doors, talk, eat, climb stairs, summon monsters and have them attack, cut the ropes holding a rope bridge while enemies are on the bridge, remotely trigger traps, open a portcullis to release attack dogs, and so forth. If the subject attacks directly, however, it immediately becomes visible along with all its gear. Spells such as bless that specifically affect allies but not foes are not attacks for this purpose, even when they include foes in their area.

Invisibility can be made permanent (on objects only) with a permanency spell.", target: "you or a creature or object weighing no more than 100 lbs./level", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: illusion.id, duration: "1 min./level ", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp16.id, subschool_id: glamer.id)
  SpellComponent.create!(spell_id: sp16.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp16.id, component_id: somatic.id)
  SpellComponent.create!(spell_id: sp16.id, component_id: material.id, item: "an eyelash encased in gum arabic")
  SpellComponent.create!(spell_id: sp16.id, component_id: divine_focus.id, item: "an eyelash encased in gum arabic")
  invisiblilty_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp16.id, spell_level: 2)
  invisiblilty_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp16.id, spell_level: 2)
  invisiblilty_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp16.id, spell_level: 2)


sp17 = Spell.create!(name: "Cure Light Wounds", description: "When laying your hand upon a living creature, you channel positive energy that cures 1d8 points of damage +1 point per caster level (maximum +5). Since undead are powered by negative energy, this spell deals damage to them instead of curing their wounds. An undead creature can apply Spell Resistance, and can attempt a Will save to take half damage.", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp17.id, subschool_id: healing.id)
  SpellComponent.create!(spell_id: sp17.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp17.id, component_id: somatic.id)
  cure_light_wounds_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp17.id, spell_level: 1)
  cure_light_wounds_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp17.id, spell_level: 1)
  cure_light_wounds_cleric = KlassSpell.create!(klass_id: cleric.id, spell_id: sp17.id, spell_level: 1)


sp18 = Spell.create!(name: "Feather Fall", description: "The affected creatures or objects fall slowly. Feather fall instantly changes the rate at which the targets fall to a mere 60 feet per round (equivalent to the end of a fall from a few feet), and the subjects take no damage upon landing while the spell is in effect. When the spell duration expires, a normal rate of falling resumes.

The spell affects one or more Medium or smaller creatures (including gear and carried objects up to each creature’s maximum load) or objects, or the equivalent in larger creatures: a Large creature or object counts as two Medium creatures or objects, a Huge creature or object counts as four Medium creatures or objects, and so forth.

This spell has no special effect on ranged weapons unless they are falling quite a distance. If the spell is cast on a falling item, the object does half normal damage based on its weight, with no bonus for the height of the drop.

Feather fall works only upon free-falling objects. It does not affect a sword blow or a charging or flying creature.", target: "one Medium or smaller free-falling object or creature/level, no two of which may be more than 20 ft. apart", saving_throw: "Will", spell_resistance: true, action_id: immediate.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "until landing or 1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp18.id, component_id: verbal.id)
  feather_fall_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp18.id, spell_level: 1)
  feather_fall_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp18.id, spell_level: 1)
  feather_fall_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp18.id, spell_level: 1)


sp19 = Spell.create!(name: "Shield", description: "Shield creates an invisible shield of force that hovers in front of you. It negates magic missile attacks directed at you. The disk also provides a +4 shield bonus to AC. This bonus applies against incorporeal touch attacks, since it is a force effect. The shield has no armor check penalty or arcane spell failure chance.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: abjuration.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp19.id, subschool_id: force.id)
  SpellComponent.create!(spell_id: sp19.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp19.id, component_id: somatic.id)
  shield_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp19.id, spell_level: 1)
  shield_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp19.id, spell_level: 1)


sp20 = Spell.create!(name: "Dancing Lights", description: "Depending on the version selected, you create up to four lights that resemble lanterns or torches (and cast that amount of light), or up to four glowing spheres of light (which look like will-o’-wisps), or one faintly glowing, vaguely humanoid shape. The dancing lights must stay within a 10-foot-radius area in relation to each other but otherwise move as you desire (no concentration required): forward or back, up or down, straight or turning corners, or the like. The lights can move up to 100 feet per round. A light winks out if the distance between you and it exceeds the spell’s range.

You can only have one dancing lights spell active at any one time. If you cast this spell while another casting is still in effect, the previous casting is dispelled. If you make this spell permanent, it does not count against this limit.

Dancing lights can be made permanent with a permanency spell.", target: "Up to four lights, all within a 10-ft.-radius area", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: medium.id, magic_school_id: evocation.id, duration: "1 minute", time: 1, unit_of_time: "minute", increase_per_level: 0, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp20.id, subschool_id: light.id)
  SpellComponent.create!(spell_id: sp20.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp20.id, component_id: somatic.id)
  dancing_lights_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp20.id, spell_level: 0)
  dancing_lights_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp20.id, spell_level: 0)
  dancing_lights_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp20.id, spell_level: 0)


sp21 = Spell.create!(name: "Resistance", description: "You imbue the subject with magical energy that protects it from harm, granting it a +1 resistance bonus on saves.

Resistance can be made permanent with a permanency spell.", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: abjuration.id, duration: "1 minute", time: 1, unit_of_time: "minute", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp21.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp21.id, component_id: somatic.id)
  SpellComponent.create!(spell_id: sp21.id, component_id: material.id, item: "a miniature cloak")
  SpellComponent.create!(spell_id: sp21.id, component_id: divine_focus.id, item: "a miniature cloak")
  resistance_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp21.id, spell_level: 0)
  resistance_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp21.id, spell_level: 0)
  resistance_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp21.id, spell_level: 0)
  resistance_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp21.id, spell_level: 0)
  resistance_cleric = KlassSpell.create!(klass_id: cleric.id, spell_id: sp21.id, spell_level: 0)

sp22 = Spell.create!(name: "Summon Instrument", description: "This spell summons one handheld musical instrument of your choice. This instrument appears in your hands or at your feet (your choice). The instrument is typical for its type. Only one instrument appears per casting, and it will play only for you. You can’t summon an instrument too large to be held in two hands. The summoned instrument disappears at the end of this spell.", target: "one summoned handheld musical instrument", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: zero_feet.id, magic_school_id: conjuration.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp22.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp22.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp22.id, component_id: somatic.id, item: nil)
  summon_instrument_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp22.id, spell_level: 0)

sp23 = Spell.create!(name: "Read Magic", description: "You can decipher magical inscriptions on objects – books, scrolls, weapons, and the like – that would otherwise be unintelligible. This deciphering does not normally invoke the magic contained in the writing, although it may do so in the case of a cursed or trapped scroll. Furthermore, once the spell is cast and you have read the magical inscription, you are thereafter able to read that particular writing without recourse to the use of read magic. You can read at the rate of one page (250 words) per minute. The spell allows you to identify a glyph of warding with a DC 13 Spellcraft check, a greater glyph of warding with a DC 16 Spellcraft check, or any symbol spell with a Spellcraft check (DC 10 + spell level).

Read magic can be made permanent with a permanency spell.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: divination.id, duration: "10 min./level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp23.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp23.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp23.id, component_id: focus.id, item: "a clear crystal or mineral prism")
  read_magic_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp23.id, spell_level: 0)
  read_magic_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp23.id, spell_level: 0)
  read_magic_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp23.id, spell_level: 0)
  read_magic_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp23.id, spell_level: 0)
  read_magic_cleric = KlassSpell.create!(klass_id: cleric.id, spell_id: sp23.id, spell_level: 0)

sp24 = Spell.create!(name: "Haunted Fey Aspect", description: "You surround yourself with disturbing illusions, making you look and sound like a bizarre, insane fey creature. You gain DR 1/cold iron against a single opponent until the end of the spell, or until you take damage.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: illusion.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp24.id, subschool_id: glamer.id)
  SpellComponent.create!(spell_id: sp24.id, component_id: somatic.id, item: nil)
  haunted_fey_aspect_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp24.id, spell_level: 0)
  haunted_fey_aspect_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp24.id, spell_level: 0)

sp25 = Spell.create!(name: "Jitterbugs", description: "You cause the target to perceive itself as being covered in creeping, crawling, stinging bugs. This causes the target to become jittery and unable to stay still, forcing it to constantly move and twitch. The target takes a –4 penalty on all Dexterity checks and Dexterity-based skill checks, and cannot take the delay, ready, or total defense actions.", target: "one creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: illusion.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp25.id, subschool_id: figment.id)
  SpellSubschool.create!(spell_id: sp25.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp25.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp25.id, component_id: somatic.id, item: nil)
  jitterbugs_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp25.id, spell_level: 1)
  jitterbugs_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp25.id, spell_level: 2)

sp26 = Spell.create!(name: "Silent Image", description: "This spell creates the visual illusion of an object, creature, or force, as visualized by you. The illusion does not create sound, smell, texture, or temperature. You can move the image within the limits of the size of the effect.", target: "visual figment that cannot extend beyond four 10-ft. cubes + one 10-ft. cube/level (S)", saving_throw: "Will", spell_resistance: false, action_id: standard.id, spell_range_id: long.id, magic_school_id: illusion.id, duration: "concentration", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: true)
  SpellSubschool.create!(spell_id: sp26.id, subschool_id: figment.id)
  SpellComponent.create!(spell_id: sp26.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp26.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp26.id, component_id: focus.id, item: 'a bit of fleece')
  silent_image_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp26.id, spell_level: 1)
  silent_image_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp26.id, spell_level: 1)

sp27 = Spell.create!(name: "Slow", description: "An affected creature moves and attacks at a drastically slowed rate. Creatures affected by this spell are staggered and can take only a single move action or standard action each turn, but not both (nor may it take full-round actions). Additionally, it takes a -1 penalty on attack rolls, AC, and Reflex saves. A slowed creature moves at half its normal speed (round down to the next 5-foot increment), which affects the creature’s jumping distance as normal for decreased speed.

Multiple slow effects don’t stack. Slow counters and dispels haste.", target: "one creature/level, no two of which can be more than 30 ft. apart", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp27.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp27.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp27.id, component_id: material.id, item: "a drop of molasses")
  slow_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp27.id, spell_level: 3)
  slow_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp27.id, spell_level: 3)
  slow_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp27.id, spell_level: 3)

sp28 = Spell.create!(name: "Bleed for your Master", description: "When you would be hit by an attack that requires an attack roll, or when you are within an area of effect that allows you to attempt a Reflex saving throw, with a single touch you compel the target to throw itself in front of the blow or shield you from the effect.

If an attack roll triggered this spell’s casting, the target takes the damage instead of you, even if the attack roll would not normally hit the target’s Armor Class.

If an area of effect that allows you to attempt a Reflex save triggered this spell’s casting, the target instead grants you cover against the effect (+2 bonus on Reflex saves) if it is your size or smaller, or improved cover (+4 bonus on Reflex saves and improved evasion against the effect) if it is larger than you. the target automatically fails its Reflex save against the effect but can still benefit from improved evasion and similar mitigating effects.

After taking damage, the target is shaken for 1 minute. If the target was already shaken, it becomes frightened instead.", target: "your animal companion, familiar, or fiendish servant", saving_throw: "none", spell_resistance: false, action_id: immediate.id, spell_range_id: touch.id, magic_school_id: enchantment.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp28.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: sp28.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp28.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp28.id, component_id: somatic.id, item: nil)
  bleed_for_your_master_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp28.id, spell_level: 3)
  bleed_for_your_master_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp28.id, spell_level: 3)

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
  dominate_person_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp29.id, spell_level: 4)
  dominate_person_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp29.id, spell_level: 5)
  dominate_person_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp29.id, spell_level: 5)

sp30 = Spell.create!(name: "Shadow Trap", description: "You pin the target’s shadow to its current location, causing the target to become entangled and preventing it from moving farther than 5 feet from its original position, as if its shadow were anchored to the terrain. Each round on its turn, the target can attempt a new saving throw to end the effect as a full-round action. A flying creature can only hover in place or fall while entangled in this manner. This spell automatically fails when cast on a creature that doesn’t throw a shadow, and it ends if the creature is entirely in an area with no illumination.", target: "one creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: illusion.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp30.id, subschool_id: shadow.id)
  SpellComponent.create!(spell_id: sp30.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp30.id, component_id: somatic.id, item: nil)
  shadow_trap_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp30.id, spell_level: 1)
  shadow_trap_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp30.id, spell_level: 1)
  shadow_trap_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp30.id, spell_level: 1)
  shadow_trap_cleric = KlassSpell.create!(klass_id: cleric.id, spell_id: sp30.id, spell_level: 1)

sp31 = Spell.create!(name: "Arcane Disruption", description: "This spell makes it difficult for the subject to cast arcane spells, use spell-like abilities, and use some abilities granted by arcane spellcasting classes. The subject must succeed at a concentration check (DC = 10 + 1/2 its caster level) in order to cast an arcane spell, use any spell-like ability (even those that come from a divine source), use arcane spell completion or spell trigger magic items, or use any of the following class features that come from an arcane spellcasting class: arcane school powers, arcanist exploits, bardic performances, magus arcana, or witch hexes. Spells, spell-like abilities, or class features that take a free, swift, or immediate action aren’t affected by this spell, nor are mythic spells or mythic powers.

While under the effect of this spell, if the subject must attempt a concentration check to cast an arcane spell or use an arcane spell-like ability for any reason other than the effect of this spell (such as casting defensively, being injured while casting, and so on), it takes a penalty on that check equal to 1/2 its caster level.", target: "one creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: enchantment.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp31.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: sp31.id, subschool_id: curse.id)
  SpellSubschool.create!(spell_id: sp31.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp31.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp31.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp31.id, component_id: material.id, item: 'a pinch of pepper')
  arcane_disruption_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp31.id, spell_level: 2)
  arcane_disruption_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp31.id, spell_level: 2)
  arcane_disruption_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp31.id, spell_level: 2)

sp32 = Spell.create!(name: "Summon Monster II", description: "This spell functions like summon monster I, except that you can summon one creature from the 2nd-level list or 1d3 creatures of the same kind from the 1st-level list.", target: "one summoned creature", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp32.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp32.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp32.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp32.id, component_id: focus.id, item: 'a tiny bag and a small candle')
  SpellComponent.create!(spell_id: sp32.id, component_id: divine_focus.id, item: 'a tiny bag and a small candle')
  summon_monster_II_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp32.id, spell_level: 2)
  summon_monster_II_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp32.id, spell_level: 2)
  summon_monster_II_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp32.id, spell_level: 2)
  summon_monster_II_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp32.id, spell_level: 2)
  summon_monster_II_cleric = KlassSpell.create!(klass_id: cleric.id, spell_id: sp32.id, spell_level: 2)

sp33 = Spell.create!(name: "Summon Monster I", description: "This spell summons an extraplanar creature (typically an outsider, elemental, or magical beast native to another plane). It appears where you designate and acts immediately, on your turn. It attacks your opponents to the best of its ability. If you can communicate with the creature, you can direct it not to attack, to attack particular enemies, or to perform other actions. The spell conjures one of the creatures from the 1st Level list on Table: Summon Monster. You choose which kind of creature to summon, and you can choose a different one each time you cast the spell.

A summoned monster cannot summon or otherwise conjure another creature, nor can it use any teleportation or planar travel abilities. Creatures cannot be summoned into an environment that cannot support them. Creatures summoned using this spell cannot use spells or spell-like abilities that duplicate spells with expensive material components (such as wish).

When you use a summoning spell to summon a creature with an alignment or elemental subtype, it is a spell of that type. Creatures on Table: Summon Monster marked with an “*” are summoned with the celestial template, if you are good, and the fiendish template, if you are evil. If you are neutral, you may choose which template to apply to the creature. Creatures marked with an “*” always have an alignment that matches yours, regardless of their usual alignment. Summoning these creatures makes the summoning spell’s type match your alignment.

The summon monster spells have numerous entries representing creatures that are summoned from the Outer Planes, and thus have the celestial or fiendish template or can be summoned with the entropic or resolute template (Pathfinder RPG Bestiary 2, pages 292 and 293, respectively).", target: "one summoned creature", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp33.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp33.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp33.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp33.id, component_id: focus.id, item: 'a tiny bag and a small candle')
  SpellComponent.create!(spell_id: sp33.id, component_id: divine_focus.id, item: 'a tiny bag and a small candle')
  summon_monster_I_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp33.id, spell_level: 1)
  summon_monster_I_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp33.id, spell_level: 1)
  summon_monster_I_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp33.id, spell_level: 1)
  summon_monster_I_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp33.id, spell_level: 1)
  summon_monster_I_cleric = KlassSpell.create!(klass_id: cleric.id, spell_id: sp33.id, spell_level: 1)

sp34 = Spell.create!(name: "Tiny Hut", description: "You create an unmoving, opaque sphere of force of any color you desire around yourself. Half the sphere projects above the ground, and the lower hemisphere passes through the ground. As many as nine other Medium creatures can fit into the field with you; they can freely pass into and out of the hut without harming it. However, if you remove yourself from the hut, the spell ends.

The temperature inside the hut is 70° F if the exterior temperature is between 0° and 100° F. An exterior temperature below 0° or above 100° lowers or raises the interior temperature on a 1-degree-for-1 basis. The hut also provides protection against the elements, such as rain, dust, and sandstorms. The hut withstands any wind of less than hurricane force, but a hurricane (75+ mph wind speed) or greater force destroys it.

The interior of the hut is a hemisphere. You can illuminate it dimly upon command or extinguish the light as desired. Although the force field is opaque from the outside, it is transparent from within. Missiles, weapons, and most spell effects can pass through the hut without affecting it, although the occupants cannot be seen from outside the hut (they have total concealment).", target: "20-ft.-radius sphere centered on your location", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: twenty_feet.id, magic_school_id: evocation.id, duration: "2 hours/level", time: 2, unit_of_time: "hour", increase_per_level: 2, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp34.id, subschool_id: force.id)
  SpellComponent.create!(spell_id: sp34.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp34.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp34.id, component_id: material.id, item: 'a small crystal bead')
  tiny_hut_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp34.id, spell_level: 3)
  tiny_hut_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp34.id, spell_level: 3)

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
  dispel_magic_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp35.id, spell_level: 3)
  dispel_magic_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp35.id, spell_level: 3)
  dispel_magic_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp35.id, spell_level: 3)
  dispel_magic_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp35.id, spell_level: 3)
  dispel_magic_cleric = KlassSpell.create!(klass_id: cleric.id, spell_id: sp35.id, spell_level: 3)

sp36 = Spell.create!(name: "Whip of Spiders", description: "You summon hundreds of Diminutive spiders, which cling together in the form of a whip made for a creature of your size. You can wield this object as if it were an actual whip, except you make a melee touch attack with it instead of a regular attack. Any creature you strike with the whip takes swarm damage as if it were attacked by a spider swarm (1d6 points of damage plus poison and distraction). The swarm whip is able to damage creatures with armor or natural armor, even if a normal whip could not. It cannot be used to make bull rush, grapple, or trip attacks, and (unlike a swarm) is subject to a miss chance for concealment and cover.

The whip is immune to all weapon damage, is never staggered or reduced to a dying state by damage, and is immune to any spell or effect that targets a specific number of creatures (including single-target spells such as disintegrate). The whip takes half again as much damage from spells or effects that affect an area, but since it is considered part of your gear, it takes damage only if you fail a saving throw on a 1 or if it is specifically targeted by an opponent. The whip does not have a swarm’s susceptibility to high winds.

As a standard action, you can transform the whip into a spider swarm (all squares of the swarm must be within 15 feet of you); thereafter it functions as summon swarm. The spider swarm has 3 hit points and persists in that form for 2 rounds or until the end of this spell’s duration, whichever comes first.", target: "whiplike swarm", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: zero_feet.id, magic_school_id: conjuration.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp36.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp36.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp36.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp36.id, component_id: material.id, item: 'a square of red cloth')
  SpellComponent.create!(spell_id: sp36.id, component_id: divine_focus.id, item: 'a square of red cloth')
  whip_of_spiders_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp36.id, spell_level: 2)
  whip_of_spiders_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp36.id, spell_level: 2)
  whip_of_spiders_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp36.id, spell_level: 2)
  whip_of_spiders_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp36.id, spell_level: 2)

sp37 = Spell.create!(name: "Summon Swarm", description: "You summon a swarm of bats, rats, or spiders (your choice), which attacks all other creatures within its area. (You may summon the swarm so that it shares the area of other creatures.) If no living creatures are within its area, the swarm attacks or pursues the nearest creature as best it can. The caster has no control over its target or direction of travel.", target: "one swarm of bats, rats, or spiders", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "concentration + 2 rounds", time: 2, unit_of_time: "round", increase_per_level: 0, dismissible: false, concentration: true)
  SpellSubschool.create!(spell_id: sp37.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp37.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp37.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp37.id, component_id: material.id, item: 'a square of red cloth')
  SpellComponent.create!(spell_id: sp37.id, component_id: divine_focus.id, item: 'a square of red cloth')
  summon_swarm_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp37.id, spell_level: 2)
  summon_swarm_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp37.id, spell_level: 2)
  summon_swarm_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp37.id, spell_level: 2)
  summon_swarm_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp37.id, spell_level: 2)

sp38 = Spell.create!(name: "Pugwampi's Grace", description: "The gremlins known as pugwampis infect those around them with a malignant form of unluck—an effect that this spell emulates. If the target fails its Will save, it becomes infused with the so-called “grace of the pugwampi.” A creature affected by this spell must roll two d20s whenever a situation calls for a d20 roll (such as an attack roll, a skill check, or a saving throw) and must use the lower of the two results generated. As with the aura shed by actual pugwampies, this spell has no effect on animals, gremlins, or gnolls. The effects of this spell are negated as long as a target gains any sort of luck bonus to a d20 roll (such as those granted by a luckstone or divine favor), but the spell’s duration is not impacted by these effects. If the luck bonus goes away before the pugwampi’s grace effect ends, the unluck returns and remains until the spell’s normal duration runs out.", target: "one creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: enchantment.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp38.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: sp38.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp38.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp38.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp38.id, component_id: material.id, item: "a pugwampi's hair")
  pugwampis_grace_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp38.id, spell_level: 2)
  pugwampis_grace_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp38.id, spell_level: 3)
  pugwampis_grace_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp38.id, spell_level: 3)

sp39 = Spell.create!(name: "Mount", description: "You summon a light horse or a pony (your choice) to serve you as a mount. The steed serves willingly and well. The mount comes with a bit and bridle and a riding saddle.", target: "one mount", saving_throw: "none", spell_resistance: false, action_id: full_round.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "2 hours/level", time: 2, unit_of_time: "hour", increase_per_level: 2, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp39.id, subschool_id: summoning.id)
  SpellComponent.create!(spell_id: sp39.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp39.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp39.id, component_id: material.id, item: 'a bit of horse hair')
  mount_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp39.id, spell_level: 1)
  mount_arcanist = KlassSpell.create!(klass_id: arcanist.id, spell_id: sp39.id, spell_level: 1)
  mount_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp39.id, spell_level: 1)

sp40 = Spell.create!(name: "Trial of Fire and Acid", description: "The target creature is covered in burning acid that deals 1d6 points of acid damage and 1d6 points of fire damage each round.

The subject can attempt a Fortitude saving throw each round to reduce the damage by half. Dousing the target in water ends the effect (both the acid and the fire), but rolling on the ground does not extinguish the fire or affect the acid.", target: "creature touched", saving_throw: "Fortitude", spell_resistance: false, action_id: standard.id, spell_range_id: touch.id, magic_school_id: evocation.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp40.id, subschool_id: fire.id)
  SpellSubschool.create!(spell_id: sp40.id, subschool_id: acid.id)
  SpellComponent.create!(spell_id: sp40.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp40.id, component_id: somatic.id, item: nil)
  trial_of_fire_and_acid_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp40.id, spell_level: 3)
  trial_of_fire_and_acid_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp40.id, spell_level: 3)
  trial_of_fire_and_acid_cleric = KlassSpell.create!(klass_id: cleric.id, spell_id: sp40.id, spell_level: 3)

sp41 = Spell.create!(name: "Unerring Weapon", description: "This spell causes a weapon to veer closer to vital areas, improving the result of a critical threat. This transmutation grants a +2 bonus on attack rolls to confirm critical hits plus 1 additional bonus point per four caster levels (maximum total bonus +7). If the spell is cast on projectiles, the effect ends on a specific projectile whenever that projectile is used to make an attack, regardless of whether the attack hits. For this spell, shuriken are considered projectiles.", target: "one weapon or 20 projectiles, all of which must be together at the time of casting", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp41.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp41.id, component_id: somatic.id, item: nil)
  unerring_weapon_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp41.id, spell_level: 1)
  unerring_weapon_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp41.id, spell_level: 1)

sp42 = Spell.create!(name: "Create Pit", description: "You create a 10-foot-by-10-foot extra-dimensional hole with a depth of 10 feet per two caster levels (maximum 30 feet). You must create the pit on a horizontal surface of sufficient size. Since it extends into another dimension, the pit has no weight and does not otherwise displace the original underlying material. You can create the pit in the deck of a ship as easily as in a dungeon floor or the ground of a forest. Any creature standing in the area where you first conjured the pit must make a Reflex saving throw to jump to safety in the nearest open space. In addition, the edges of the pit are sloped, and any creature ending its turn on a square adjacent to the pit must make a Reflex saving throw with a +2 bonus to avoid falling into it. Creatures subjected to an effect intended to push them into the pit (such as bull rush) do not get a saving throw to avoid falling in if they are affected by the pushing effect.

Creatures who fall into the pit take falling damage as normal. The pit’s coarse stone walls have a Climb DC of 25. When the duration of the spell ends, creatures within the hole rise up with the bottom of the pit until they are standing on the surface over the course of a single round.", target: "10-ft.-by-10-ft. hole, 10 ft. deep/2 levels", saving_throw: "Reflex", spell_resistance: false, action_id: standard.id, spell_range_id: medium.id, magic_school_id: conjuration.id, duration: "1 round + 1 round/level", time: 2, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp42.id, subschool_id: creation.id)
  SpellComponent.create!(spell_id: sp42.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp42.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp42.id, component_id: focus.id, item: 'miniature shovel costing 10gp')
  create_pit_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp42.id, spell_level: 2)
  create_pit_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp42.id, spell_level: 2)

sp43 = Spell.create!(name: "Inflict Light Wounds", description: "When laying your hand upon a creature, you channel negative energy that deals 1d8 points of damage + 1 point per caster level (maximum +5).

Since undead are powered by negative energy, this spell cures such a creature of a like amount of damage, rather than harming it.", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: necromancy.id, duration: "instantaneous", time: 0, unit_of_time: "round", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp43.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp43.id, component_id: somatic.id, item: nil)
  inflict_light_wounds_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp43.id, spell_level: 1)
  inflict_light_wounds_cleric = KlassSpell.create!(klass_id: cleric.id, spell_id: sp43.id, spell_level: 1)

sp44 = Spell.create!(name: "Inflict Moderate Wounds", description: "This spell functions like inflict light wounds, except that you deal 2d8 points of damage + 1 point per caster level (maximum +10).", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: necromancy.id, duration: "instantaneous", time: 0, unit_of_time: "round", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp44.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp44.id, component_id: somatic.id, item: nil)
  inflict_moderate_wounds_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp44.id, spell_level: 2)
  inflict_moderate_wounds_cleric = KlassSpell.create!(klass_id: cleric.id, spell_id: sp44.id, spell_level: 2)

sp45 = Spell.create!(name: "Cure Moderate Wounds", description: "This spell functions like cure light wounds, except that it cures 2d8 points of damage + 1 point per caster level (maximum +10).", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp45.id, subschool_id: healing.id)
  SpellComponent.create!(spell_id: sp45.id, component_id: verbal.id)
  SpellComponent.create!(spell_id: sp45.id, component_id: somatic.id)
  cure_moderate_wounds_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp45.id, spell_level: 2)
  cure_moderate_wounds_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp45.id, spell_level: 2)
  cure_moderate_wounds_cleric = KlassSpell.create!(klass_id: cleric.id, spell_id: sp45.id, spell_level: 2)

sp46 = Spell.create!(name: "See Invisibility", description: "You can see any objects or beings that are invisible within your range of vision, as well as any that are ethereal, as if they were normally visible. Such creatures are visible to you as translucent shapes, allowing you easily to discern the difference between visible, invisible, and ethereal creatures.

The spell does not reveal the method used to obtain invisibility. It does not reveal illusions or enable you to see through opaque objects. It does not reveal creatures who are simply hiding, concealed, or otherwise hard to see.

See invisibility can be made permanent with a permanency spell.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: divination.id, duration: "10 min./level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp46.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp46.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp46.id, component_id: material.id, item: 'talc and powdered silver')
  see_invisibility_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp46.id, spell_level: 3)
  see_invisibility_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp46.id, spell_level: 2)
  see_invisibility_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp46.id, spell_level: 2)
  see_invisibility_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp46.id, spell_level: 2)

sp47 = Spell.create!(name: "Misdirection", description: "By means of this spell, you misdirect the information from divination spells that reveal auras (detect evil, detect magic, discern lies, and the like). On casting the spell, you choose another object within range. For the duration of the spell, the subject of misdirection is detected as if it were the other object. Neither the subject nor the other object gets a saving throw against this effect. Detection spells provide information based on the second object rather than on the actual target of the detection unless the caster of the detection succeeds on a Will save. For instance, you could make yourself detect as a tree if one were within range at casting: not evil, not lying, not magical, neutral in alignment, and so forth. This spell does not affect other types of divination magic (augury, detect thoughts, clairaudience/clairvoyance, and the like).", target: "one creature or object, up to a 10-ft. cube in size", saving_throw: "Will", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: illusion.id, duration: "1 hour/level", time: 1, unit_of_time: "hour", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp47.id, subschool_id: glamer.id)
  SpellComponent.create!(spell_id: sp47.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp47.id, component_id: somatic.id, item: nil)
  misdirection_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp47.id, spell_level: 2)
  misdirection_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp47.id, spell_level: 2)
  misdirection_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp47.id, spell_level: 2)

sp48 = Spell.create!(name: "Boneshaker", description: "By using a bone fetish like a marionette, you take control of a target creature’s skeleton. This has a variety of effects depending on whether the target is living or undead.

A living creature has its skeleton rattle within its flesh, causing it grievous harm. The target takes 3d6 points of damage, plus 1d6 additional points of damage per 2 caster levels you have.

In addition, you can move the target 5 feet. This movement doesn’t provoke attacks of opportunity. A successful saving throw halves the damage and negates the movement.

An undead creature takes no damage. Instead, you manipulate the undead, forcing it to take an immediate action to either move up to its speed (provoking attacks of opportunity as normal) or make a single attack against a creature of your choice in its reach. Either of these is the most basic version of the action the creature can take (it doesn’t activate any special abilities that it could apply to the movement or attack, such as grab). A successful saving throw negates this effect. A mindless undead creature doesn’t receive a save against this effect.", target: "one living creature or undead creature with a skeleton", saving_throw: "Fortitude", spell_resistance: true, action_id: standard.id, spell_range_id: medium.id, magic_school_id: necromancy.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp48.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp48.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp48.id, component_id: focus.id, item: 'human-shaped fetish made of bones')
  boneshaker_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp48.id, spell_level: 2)
  boneshaker_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp48.id, spell_level: 2)
  boneshaker_cleric = KlassSpell.create!(klass_id: cleric.id, spell_id: sp48.id, spell_level: 2)

sp49 = Spell.create!(name: "Beguiling Gift", description: "You offer an object to an adjacent creature, and entice it into using or consuming the proffered item. If the target fails its Will save, it immediately takes the offered object, dropping an already held object if necessary. On its next turn, it consumes or dons the object, as appropriate for the item in question. For example, an apple would be eaten, a potion consumed, a ring put on a finger, and a sword wielded in a free hand. If the target is physically unable to accept the object, the spell fails. The subject is under no obligation to continue consuming or using the item once the spell’s duration has expired, although it may find a cursed item difficult to be rid of.", target: "one creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: five_feet.id, magic_school_id: enchantment.id, duration: "1 round", time: 1, unit_of_time: "round", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp49.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: sp49.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp49.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp49.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp49.id, component_id: focus.id, item: 'the object to be offered')
  beguiling_gift_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp49.id, spell_level: 1)
  beguiling_gift_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp49.id, spell_level: 1)

sp50 = Spell.create!(name: "Ray of Enfeeblement", description: "A coruscating ray springs from your hand. You must succeed on a ranged touch attack to strike a target. The subject takes a penalty to Strength equal to 1d6+1 per two caster levels (maximum 1d6+5). The subject’s Strength score cannot drop below 1. A successful Fortitude save reduces this penalty by half. This penalty does not stack with itself. Apply the highest penalty instead.", target: "ray", saving_throw: "Fortitude", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: necromancy.id, duration: "1 round/level", time: 1, unit_of_time: "round", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp50.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp50.id, component_id: somatic.id, item: nil)
  ray_of_enfeeblement_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp50.id, spell_level: 1)
  ray_of_enfeeblement_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp50.id, spell_level: 1)

sp51 = Spell.create!(name: "Ear-Piercing Scream", description: "You unleash a powerful scream, inaudible to all but a single target. The target is dazed for 1 round and takes 1d6 points of sonic damage per two caster levels (maximum 5d6). A successful save negates the daze effect and halves the damage.", target: "one creature", saving_throw: "Fortitude", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp51.id, subschool_id: sonic.id)
  SpellComponent.create!(spell_id: sp51.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp51.id, component_id: somatic.id, item: nil)
  ear_piercing_scream_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp51.id, spell_level: 1)
  ear_piercing_scream_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp51.id, spell_level: 1)
  ear_piercing_scream_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp51.id, spell_level: 1)

sp52 = Spell.create!(name: "Expeditious Retreat", description: "This spell increases your base land speed by 30 feet. This adjustment is treated as an enhancement bonus. There is no effect on other modes of movement, such as burrow, climb, fly, or swim. As with any effect that increases your speed, this spell affects your jumping distance (see the Acrobatics skill).", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp52.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp52.id, component_id: somatic.id, item: nil)
  expeditious_retreat_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp52.id, spell_level: 1)
  expeditious_retreat_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp52.id, spell_level: 1)
  expeditious_retreat_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp52.id, spell_level: 1)
  expeditious_retreat_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp52.id, spell_level: 1)

sp53 = Spell.create!(name: "Glue Seal", description: "You cover a solid surface with a layer of sticky glue. Anyone in the area when the spell is cast must attempt a Reflex save. Those who fail become entangled, but can break free by succeeding at a combat maneuver check or an Escape Artist check as a standard action against the DC of this spell. The area of the spell is considered difficult terrain. A creature moving through the glue must succeed at a combat maneuver check or an Escape Artist check as part of its move action (DC = the spell’s DC). Creatures that fail lose their movement and become entangled in the first square they enter.

The spell can also be used to create a sticky coating on an item. A creature holding a targeted item can attempt a Reflex saving throw against the spell’s DC. If the initial saving throw succeeds, the item is unaffected. If it fails, the item is stuck in place. If an affected item is connected to another item (such as a sword in a sheath or a cork in a potion bottle), it cannot be separated from the other item unless the creature succeeds at a combat maneuver check or a Strength check as a move action to free it (DC = the spell’s DC). A creature must succeed at saving throw each time it attempts to use the sticky item; otherwise, the item becomes stuck to the creature. Sticky armor or clothing imposes a –10 circumstance penalty on Escape Artist checks and combat maneuver checks to escape a grapple attempted by the wearer, as well as to the wearer’s CMD to avoid being grappled.", target: "one object or one 5-ft. square", saving_throw: "Reflex", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 minute/level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp53.id, subschool_id: creation.id)
  SpellComponent.create!(spell_id: sp53.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp53.id, component_id: somatic.id, item: nil)
  glue_seal_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp53.id, spell_level: 1)
  glue_seal_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp53.id, spell_level: 1)
  glue_seal_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp53.id, spell_level: 1)

sp54 = Spell.create!(name: "Corrosive Touch", description: "Your successful melee touch attack deals 1d4 points of acid damage per caster level (maximum 5d4).", target: "creature or object touched", saving_throw: "none", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: conjuration.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp54.id, subschool_id: creation.id)
  SpellSubschool.create!(spell_id: sp54.id, subschool_id: acid.id)
  SpellComponent.create!(spell_id: sp54.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp54.id, component_id: somatic.id, item: nil)
  corrosive_touch_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp54.id, spell_level: 1)
  corrosive_touch_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp54.id, spell_level: 1)

sp55 = Spell.create!(name: "Disguise Self", description: "You make yourself – including clothing, armor, weapons, and equipment – look different. You can seem 1 foot shorter or taller, thin, fat, or in between. You cannot change your creature type (although you can appear as another subtype). Otherwise, the extent of the apparent change is up to you. You could add or obscure a minor feature or look like an entirely different person or gender.

The spell does not provide the abilities or mannerisms of the chosen form, nor does it alter the perceived tactile (touch) or audible (sound) properties of you or your equipment. If you use this spell to create a disguise, you get a +10 bonus on the Disguise check. A creature that interacts with the glamer gets a Will save to recognize it as an illusion.", target: "you", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: personal.id, magic_school_id: illusion.id, duration: "10 min./level", time: 10, unit_of_time: "minute", increase_per_level: 10, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp55.id, subschool_id: glamer.id)
  SpellComponent.create!(spell_id: sp55.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp55.id, component_id: somatic.id, item: nil)
  disguise_self_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp55.id, spell_level: 1)
  disguise_self_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp55.id, spell_level: 1)

sp56 =  Spell.create!(name: "Levitate", description: "Levitate allows you to move yourself, another creature, or an object up and down as you wish. A creature must be willing to be levitated, and an object must be unattended or possessed by a willing creature. You can mentally direct the recipient to move up or down as much as 20 feet each round; doing so is a move action. You cannot move the recipient horizontally, but the recipient could clamber along the face of a cliff, for example, or push against a ceiling to move laterally (generally at half its base land speed).

A levitating creature that attacks with a melee or ranged weapon finds itself increasingly unstable; the first attack has a -1 penalty on attack rolls, the second -2, and so on, to a maximum penalty of -5. A full round spent stabilizing allows the creature to begin again at -1.", target: "you or one willing creature or one object (total weight up to 100 lbs./level)", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp56.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp56.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp56.id, component_id: focus.id, item: 'a leather loop or golden wire bent into a cup shape')
  levitate_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp56.id, spell_level: 2)
  levitate_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp56.id, spell_level: 2)

sp57 =  Spell.create!(name: "Fly", description: "The subject can fly at a speed of 60 feet (or 40 feet if it wears medium or heavy armor, or if it carries a medium or heavy load). It can ascend at half speed and descend at double speed, and its maneuverability is good.

Using a fly spell requires only as much concentration as walking, so the subject can attack or cast spells normally. The subject of a fly spell can charge but not run, and it cannot carry aloft more weight than its maximum load, plus any armor it wears. The subject gains a bonus on Fly skill checks equal to 1/2 your caster level.

Should the spell duration expire while the subject is still aloft, the magic fails slowly. The subject floats downward 60 feet per round for 1d6 rounds. If it reaches the ground in that amount of time, it lands safely. If not, it falls the rest of the distance, taking 1d6 points of damage per 10 feet of fall. Since dispelling a spell effectively ends it, the subject also descends safely in this way if the fly spell is dispelled, but not if it is negated by an antimagic field.

See Falling Damage if something bad happens!", target: "creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp57.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp57.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp57.id, component_id: focus.id, item: 'a wing feather')
  fly_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp57.id, spell_level: 3)
  fly_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp57.id, spell_level: 3)
  fly_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp57.id, spell_level: 3)

sp58 =  Spell.create!(name: "Sleep", description: "A sleep spell causes a magical slumber to come upon 4 HD of creatures. Creatures with the fewest HD are affected first. Among creatures with equal HD, those who are closest to the spell’s point of origin are affected first. HD that are not sufficient to affect a creature are wasted. Sleeping creatures are helpless. Slapping or wounding awakens an affected creature, but normal noise does not. Awakening a creature is a standard action (an application of the aid another action). Sleep does not target unconscious creatures, constructs, or undead creatures.", target: "one or more living creatures within a 10-ft.-radius burst", saving_throw: "Will", spell_resistance: true, action_id: full_round.id, spell_range_id: medium.id, magic_school_id: enchantment.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp58.id, subschool_id: compulsion.id)
  SpellSubschool.create!(spell_id: sp58.id, subschool_id: mind_affecting.id)
  SpellComponent.create!(spell_id: sp58.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp58.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp58.id, component_id: material.id, item: 'fine sand, rose petals, or a live cricket')
  sleep_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp58.id, spell_level: 1)
  sleep_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp58.id, spell_level: 1)
  sleep_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp58.id, spell_level: 1)

sp59 = Spell.create!(name: "Force Punch", description: "This spell charges your hand with telekinetic force. Your successful melee touch attack deals 1d4 points of force damage per level (maximum 10d4) and causes the target to be pushed away from you in a straight line up to 5 feet per two caster levels. For every size category of the target above Medium, reduce the distance pushed by 5 feet (–5 feet for Large, –10 feet for Huge, –15 for Gargantuan, and –20 feet for Colossal) to a minimum of 0 feet. A successful Fortitude save negates the movement but not the damage.", target: "creature touched", saving_throw: "Fortitude", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp59.id, subschool_id: force.id)
  SpellComponent.create!(spell_id: sp59.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp59.id, component_id: somatic.id, item: nil)
  force_punch_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp59.id, spell_level: 3)

sp60 = Spell.create!(name: "Magic Fang", description: "Magic fang gives one natural weapon or unarmed strike of the subject a +1 enhancement bonus on attack and damage rolls. The spell can affect a slam attack, fist, bite, or other natural weapon. The spell does not change an unarmed strike’s damage from nonlethal damage to lethal damage.

Magic fang can be made permanent with a permanency spell.", target: "living creature touched", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp60.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp60.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp60.id, component_id: divine_focus.id, item: nil)
  magic_fang_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp60.id, spell_level: 1)

sp61 = Spell.create!(name: "Greater Magic Fang", description: "This spell functions like magic fang, except that the enhancement bonus on attack and damage rolls is +1 per four caster levels (maximum +5). This bonus does not allow a natural weapon or unarmed strike to bypass damage reduction aside from magic.

Alternatively, you may imbue all of the creature’s natural weapons with a +1 enhancement bonus (regardless of your caster level).

Greater magic fang can be made permanent with a permanency spell.", target: "one living creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "1 hour/level", time: 1, unit_of_time: "hour", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp61.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp61.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp61.id, component_id: divine_focus.id, item: nil)
  greater_magic_fang_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp61.id, spell_level: 3)

sp62 = Spell.create!(name: "Unseen Servant", description: "An unseen servant is an invisible, mindless, shapeless force that performs simple tasks at your command. It can run and fetch things, open unstuck doors, and hold chairs, as well as clean and mend. The servant can perform only one activity at a time, but it repeats the same activity over and over again if told to do so as long as you remain within range. It can open only normal doors, drawers, lids, and the like. It has an effective Strength score of 2 (so it can lift 20 pounds or drag 100 pounds). It can trigger traps and such, but it can exert only 20 pounds of force, which is not enough to activate certain pressure plates and other devices. It can’t perform any task that requires a skill check with a DC higher than 10 or that requires a check using a skill that can’t be used untrained. This servant cannot fly, climb, or even swim (though it can walk on water). Its base speed is 15 feet.

The servant cannot attack in any way; it is never allowed an attack roll. It cannot be killed, but it dissipates if it takes 6 points of damage from area attacks. (It gets no saves against attacks.) If you attempt to send it beyond the spell’s range (measured from your current position), the servant ceases to exist.", target: "one invisible, mindless, shapeless servant", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: close.id, magic_school_id: conjuration.id, duration: "1 hour/level", time: 1, unit_of_time: "hour", increase_per_level: 1, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp62.id, subschool_id: creation.id)
  SpellComponent.create!(spell_id: sp62.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp62.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp62.id, component_id: material.id, item: 'a piece of string and a bit of wood')
  unseen_servant_bard = KlassSpell.create!(klass_id: bard.id, spell_id: sp62.id, spell_level: 1)
  unseen_servant_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp62.id, spell_level: 1)
  unseen_servant_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp62.id, spell_level: 1)
  unseen_servant_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp62.id, spell_level: 1)

sp63 = Spell.create!(name: "Obscuring Mist", description: "A misty vapor arises around you. It is stationary. The vapor obscures all sight, including darkvision, beyond 5 feet. A creature 5 feet away has concealment (attacks have a 20% miss chance). Creatures farther away have total concealment (50% miss chance, and the attacker cannot use sight to locate the target).

A moderate wind (11+ mph), such as from a gust of wind spell, disperses the fog in 4 rounds. A strong wind (21+ mph) disperses the fog in 1 round. A fireball, flame strike, or similar spell burns away the fog in the explosive or fiery spell’s area. A wall of fire burns away the fog in the area into which it deals damage.

This spell does not function underwater.", target: "cloud spreads in 20-ft. radius from you, 20 ft. high", saving_throw: "none", spell_resistance: false, action_id: standard.id, spell_range_id: twenty_feet.id, magic_school_id: conjuration.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellSubschool.create!(spell_id: sp63.id, subschool_id: creation.id)
  SpellComponent.create!(spell_id: sp63.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp63.id, component_id: somatic.id, item: nil)
  obscuring_mist_cleric = KlassSpell.create!(klass_id: cleric.id, spell_id: sp63.id, spell_level: 1)
  obscuring_mist_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp63.id, spell_level: 1)
  obscuring_mist_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp63.id, spell_level: 1)
  obscuring_mist_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp63.id, spell_level: 1)
  # obscuring_mist_druid = KlassSpell.create!(klass_id: druid.id, spell_id: sp63.id, spell_level: 1)
  # obscuring_mist_magus = KlassSpell.create!(klass_id: magus.id, spell_id: sp63.id, spell_level: 1)
  # obscuring_mist_shaman = KlassSpell.create!(klass_id: shaman.id, spell_id: sp63.id, spell_level: 1)

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
  # enlarge_person_alchemist = KlassSpell.create!(klass_id: alchemist.id, spell_id: sp64.id, spell_level: 1)
  # enlarge_person_bloodrager = KlassSpell.create!(klass_id: bloodrager.id, spell_id: sp64.id, spell_level: 1)
  # enlarge_person_magus = KlassSpell.create!(klass_id: magus.id, spell_id: sp64.id, spell_level: 1)
  # enlarge_person_psychic = KlassSpell.create!(klass_id: psychic.id, spell_id: sp64.id, spell_level: 1)
  enlarge_person_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp64.id, spell_level: 1)
  enlarge_person_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp64.id, spell_level: 1)
  enlarge_person_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp64.id, spell_level: 1)

sp65 = Spell.create!(name: "Reduce Person", description: "This spell causes instant diminution of a humanoid creature, halving its height, length, and width and dividing its weight by 8. This decrease changes the creature’s size category to the next smaller one. The target gains a +2 size bonus to Dexterity, a -2 size penalty to Strength (to a minimum of 1), and a +1 bonus on attack rolls and AC due to its reduced size.

A Small humanoid creature whose size decreases to Tiny has a space of 2-1/2 feet and a natural reach of 0 feet (meaning that it must enter an opponent’s square to attack). A Large humanoid creature whose size decreases to Medium has a space of 5 feet and a natural reach of 5 feet. This spell doesn’t change the target’s speed.

All equipment worn or carried by a creature is similarly reduced by the spell.

Melee and projectile weapons deal less damage. Other magical properties are not affected by this spell. Any reduced item that leaves the reduced creature’s possession (including a projectile or thrown weapon) instantly returns to its normal size. This means that thrown weapons deal their normal damage (projectiles deal damage based on the size of the weapon that fired them).

Multiple magical effects that reduce size do not stack. Reduce person counters and dispels enlarge person.

Reduce person can be made permanent with a permanency spell.", target: "one humanoid creature", saving_throw: "Fortitude", spell_resistance: true, action_id: full_round.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp65.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp65.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp65.id, component_id: material.id, item: 'a pinch of powdered iron')
  # reduce_person_alchemist = KlassSpell.create!(klass_id: alchemist.id, spell_id: sp65.id, spell_level: 1)
  # reduce_person_bloodrager = KlassSpell.create!(klass_id: bloodrager.id, spell_id: sp65.id, spell_level: 1)
  # reduce_person_magus = KlassSpell.create!(klass_id: magus.id, spell_id: sp65.id, spell_level: 1)
  # reduce_person_psychic = KlassSpell.create!(klass_id: psychic.id, spell_id: sp65.id, spell_level: 1)
  reduce_person_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp65.id, spell_level: 1)
  reduce_person_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp65.id, spell_level: 1)
  reduce_person_witch = KlassSpell.create!(klass_id: witch.id, spell_id: sp65.id, spell_level: 1)

sp66 = Spell.create!(name: "Shrink Item", description: "You are able to shrink one nonmagical item (if it is within the size limit) to 1/16 of its normal size in each dimension (to about 1/4,000 the original volume and mass). This change effectively reduces the object’s size by four categories. Optionally, you can also change its now shrunken composition to a clothlike one. Objects changed by a shrink item spell can be returned to normal composition and size merely by tossing them onto any solid surface or by a word of command from the original caster. Even a burning fire and its fuel can be shrunk by this spell. Restoring the shrunken object to its normal size and composition ends the spell.

Shrink item can be made permanent with a permanency spell, in which case the affected object can be shrunk and expanded an indefinite number of times, but only by the original caster.", target: "one touched object of up to 2 cu. ft./level", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 day/level", time: 1, unit_of_time: "day", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp66.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp66.id, component_id: somatic.id, item: nil)
  shrink_item_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp66.id, spell_level: 3)


sp67 = Spell.create!(name: "Mass Enlarge Person", description: "This spell functions like enlarge person, except that it affects multiple creatures.", target: "one humanoid creature/level, no two of which can be more than 30 ft. apart", saving_throw: "Fortitude", spell_resistance: true, action_id: full_round.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp67.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp67.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp67.id, component_id: material.id, item: 'powdered iron')
  # enlarge_person_bloodrager = KlassSpell.create!(klass_id: bloodrager.id, spell_id: sp67.id, spell_level: 4)
  # enlarge_person_magus = KlassSpell.create!(klass_id: magus.id, spell_id: sp67.id, spell_level: 4)
  # enlarge_person_psychic = KlassSpell.create!(klass_id: psychic.id, spell_id: sp67.id, spell_level: 4)
  enlarge_person_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp67.id, spell_level: 4)
  enlarge_person_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp67.id, spell_level: 4)

sp68 = Spell.create!(name: "Mass Reduce Person", description: "This spell functions like reduce person, except that it affects multiple creatures.", target: "one humanoid creature/level, no two of which can be more than 30 ft. apart", saving_throw: "Fortitude", spell_resistance: true, action_id: full_round.id, spell_range_id: close.id, magic_school_id: transmutation.id, duration: "1 min./level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: true, concentration: false)
  SpellComponent.create!(spell_id: sp68.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp68.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp68.id, component_id: material.id, item: 'a pinch of powdered iron')
  # reduce_person_bloodrager = KlassSpell.create!(klass_id: bloodrager.id, spell_id: sp68.id, spell_level: 4)
  # reduce_person_magus = KlassSpell.create!(klass_id: magus.id, spell_id: sp68.id, spell_level: 4)
  # reduce_person_psychic = KlassSpell.create!(klass_id: psychic.id, spell_id: sp68.id, spell_level: 4)
  reduce_person_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp68.id, spell_level: 4)
  reduce_person_unchained_summoner = KlassSpell.create!(klass_id: unchained_summoner.id, spell_id: sp68.id, spell_level: 4)

sp69 = Spell.create!(name: "Fireball", description: "A fireball spell generates a searing explosion of flame that detonates with a low roar and deals 1d6 points of fire damage per caster level (maximum 10d6) to every creature within the area. Unattended objects also take this damage. The explosion creates almost no pressure.

You point your finger and determine the range (distance and height) at which the fireball is to burst. A glowing, pea-sized bead streaks from the pointing digit and, unless it impacts upon a material body or solid barrier prior to attaining the prescribed range, blossoms into the fireball at that point. An early impact results in an early detonation. If you attempt to send the bead through a narrow passage, such as through an arrow slit, you must “hit” the opening with a ranged touch attack, or else the bead strikes the barrier and detonates prematurely.

The fireball sets fire to combustibles and damages objects in the area. It can melt metals with low melting points, such as lead, gold, copper, silver, and bronze. If the damage caused to an interposing barrier shatters or breaks through it, the fireball may continue beyond the barrier if the area permits; otherwise it stops at the barrier just as any other spell effect does.", target: "20-ft.-radius spread", saving_throw: "Reflex", spell_resistance: true, action_id: standard.id, spell_range_id: long.id, magic_school_id: evocation.id, duration: "instantaneous", time: 0, unit_of_time: "second", increase_per_level: 0, dismissible: false, concentration: false)
  SpellSubschool.create!(spell_id: sp69.id, subschool_id: fire.id)
  SpellComponent.create!(spell_id: sp69.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp69.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp69.id, component_id: material.id, item: 'a ball of bat guano and sulfur')
  # fireball_bloodrager = KlassSpell.create!(klass_id: bloodrager.id, spell_id: sp69.id, spell_level: 3)
  # fireball_magus = KlassSpell.create!(klass_id: magus.id, spell_id: sp69.id, spell_level: 3)
  fireball_wizard = KlassSpell.create!(klass_id: wizard.id, spell_id: sp69.id, spell_level: 3)

sp70 = Spell.create!(name: "Touch of the Sea", description: "You cause webs to grow between the target’s fingers and its feet to transform into flippers, granting a swim speed of 30 feet along with the standard +8 bonus on Swim checks and the ability to take 10 even if distracted or endangered. You can also use the run action while swimming, provided you swim in a straight line. This transformation causes any boots or gloves the target is wearing to meld into its form (although magic items with a continuous effect continue to function). This spell does not grant the target any ability to breathe water.", target: "creature touched", saving_throw: "Fortitude", spell_resistance: true, action_id: standard.id, spell_range_id: touch.id, magic_school_id: transmutation.id, duration: "1 minute/level", time: 1, unit_of_time: "minute", increase_per_level: 1, dismissible: false, concentration: false)
  SpellComponent.create!(spell_id: sp70.id, component_id: verbal.id, item: nil)
  SpellComponent.create!(spell_id: sp70.id, component_id: somatic.id, item: nil)
  SpellComponent.create!(spell_id: sp70.id, component_id: material.id, item: 'a fish scale')
  # alchemist_touch_of_the_sea = KlassSpell.create!(klass_id: alchemist.id, spell_id: sp70.id, spell_level: 1)
  # bloodrager_touch_of_the_sea = KlassSpell.create!(klass_id: bloodrager.id, spell_id: sp70.id, spell_level: 1)
  # druid_touch_of_the_sea = KlassSpell.create!(klass_id: druid.id, spell_id: sp70.id, spell_level: 1)
  wizard_touch_of_the_sea = KlassSpell.create!(klass_id: wizard.id, spell_id: sp70.id, spell_level: 1)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: , spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # var = KlassSpell.create!(klass_id: , spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: , spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # var = KlassSpell.create!(klass_id: , spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: , spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # var = KlassSpell.create!(klass_id: , spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: , spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # var = KlassSpell.create!(klass_id: , spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: , spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # var = KlassSpell.create!(klass_id: , spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: , spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # var = KlassSpell.create!(klass_id: , spell_id: IDENTIFIER.id, spell_level: 0)

#IDENTIFIER = Spell.create!(name: "", description: "", target: "", saving_throw: "", spell_resistance: false, action_id: , spell_range_id: , magic_school_id: , duration: "", time: , unit_of_time: "", increase_per_level: , dismissible: false, concentration: false)
  # SpellSubschool.create!(spell_id: IDENTIFIER.id, subschool_id: )
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: verbal.id, item: nil)
  # SpellComponent.create!(spell_id: IDENTIFIER.id, component_id: somatic.id, item: nil)
  # var = KlassSpell.create!(klass_id: , spell_id: IDENTIFIER.id, spell_level: 0)

# ////////////////////////////////////////////////////
# <-*-*-----*-*-*- Favored Klass Bonus!-*-*-*-----*-*->
# ////////////////////////////////////////////////////

hp_up = FavoredKlassBonus.create!(description: '+1 hit point')
one_skill_point = FavoredKlassBonus.create!(description: '+1 skill point')
witch_changeling = FavoredKlassBonus.create!(klass_id: witch.id, race_id: changeling.id, description: '+1 spell to your familiar. Must be at least one level below the highest level spell you can cast')
fate_weaver_human = FavoredKlassBonus.create!(klass_id: fate_weaver.id, race_id: human.id, description: '+1/3 Fate Points each day when you roll')
# alchemist_vine_leshy = FavoredKlassBonus.create!(klass_id: alchemist.id, race_id: vine_leshy.id, description: "Add 1/4 to the alchemist's natural armor bonus when using their mutagen.")
bard_vine_leshy = FavoredKlassBonus.create!(klass_id: bard.id, race_id: vine_leshy.id, description: "Add a +1/3 bonus to Perform (oratory) checks, including checks using versatile performance, as long as the bard first spends at least 10 minutes telling a story.")
# druid_vine_leshy = FavoredKlassBonus.create!(klass_id: druid.id, race_id: vine_leshy.id, description: "Add a +1/2 bonus to the druid's wild empathy or plant empathy checks.")
# kineticist_vine_leshy = FavoredKlassBonus.create!(klass_id: kineticist.id, race_id: vine_leshy.id, description: "Gain 1/5 of the Extra Wild Talent feat. This feat must be spent on a wood-element talent.")
oracle_vine_leshy = FavoredKlassBonus.create!(klass_id: oracle.id, race_id: vine_leshy.id, description: "An oracle with the nature or wood mystery adds one spell from the druid's spell list that isn't on the cleric spell list to the oracle's spell list; they still must select this spell as one of their spells known in order to cast it. This spell must be at least 1 level lower than the highest spell level the oracle can cast.")
# ranger_vine_leshy = FavoredKlassBonus.create!(klass_id: ranger.id, race_id: vine_leshy.id, description: "Add a +1/2 bonus to Knowledge (nature) checks in the ranger's favored terrain.")
unchained_rogue_vine_leshy = FavoredKlassBonus.create!(klass_id: unchained_rogue.id, race_id: vine_leshy.id, description: "Add a +1/2 bonus to Climb checks and on Stealth checks in forests.")
# shaman_vine_leshy = FavoredKlassBonus.create!(klass_id: shaman.id, race_id: vine_leshy.id, description: "Shamans with the nature or wood spirit adds one spell from the druid's spell list that isn't on the shaman spell list to the shaman's spell list; they still must select this spell as one of their spells known in order to cast it. This spell must be at least 1 level lower than the highest spell level the shaman can cast.")

# /////////////////////////////////////////
# <-*-*-----*-*-*- Character!-*-*-*-----*-*->
# /////////////////////////////////////////

persephone = Character.create!(user_id: admin.id, name: "Persephone", strength: 5, dexterity: 15, constitution: 12, intelligence: 17, wisdom: 4, charisma: 15, race_id: changeling.id, skillset_id: dmc.id, alignment: 'chaotic neutral')
# +1 to Int from Tome of Clear Thought

CharacterKlass.create!(character_id: persephone.id, klass_id: witch.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: witch_changeling.id)
CharacterKlass.create!(character_id: persephone.id, klass_id: vigilante.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
CharacterKlass.create!(character_id: persephone.id, klass_id: witch.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: witch_changeling.id)
CharacterKlass.create!(character_id: persephone.id, klass_id: vigilante.id, hp: nil, feat_id: nil, ability_score_improvement: 'intelligence', level: 4, favored_klass_bonus_id: nil)
CharacterKlass.create!(character_id: persephone.id, klass_id: witch.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: witch_changeling.id)
CharacterKlass.create!(character_id: persephone.id, klass_id: witch.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: witch_changeling.id)
CharacterKlass.create!(character_id: persephone.id, klass_id: witch.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 7, favored_klass_bonus_id: witch_changeling.id)

sly = Character.create!(user_id: admin.id, name: "Sylvester", strength: 8, dexterity: 16, constitution: 16, intelligence: 8, wisdom: 13, charisma: 18, race_id: grippli.id, skillset_id: dmc.id)

sly1 = CharacterKlass.create!(character_id: sly.id, klass_id: fate_weaver.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: fate_weaver_human.id)
  CharacterKlassOption.create!(character_klass_id: sly1.id, feature_option_id: chaotic2.id)
sly2 = CharacterKlass.create!(character_id: sly.id, klass_id: fate_weaver.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: fate_weaver_human.id)
sly3 = CharacterKlass.create!(character_id: sly.id, klass_id: fate_weaver.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: fate_weaver_human.id)
 CharacterKlassOption.create!(character_klass_id: sly3.id, feature_option_id: chaotic3.id)
sly4 = CharacterKlass.create!(character_id: sly.id, klass_id: fate_weaver.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 4, favored_klass_bonus_id: fate_weaver_human.id)
sly5 = CharacterKlass.create!(character_id: sly.id, klass_id: fate_weaver.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: fate_weaver_human.id)
  CharacterKlassOption.create!(character_klass_id: sly5.id, feature_option_id: chaotic1.id)

nettie = Character.create!(user_id: admin.id, name: "Nettie", strength: 14, dexterity: 14, constitution: 13, intelligence: 18, wisdom: 14, charisma: 14, race_id: vine_leshy.id, skillset_id: dmc.id)

nettie1 = CharacterKlass.create!(character_id: nettie.id, klass_id: bard.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
nettie2 = CharacterKlass.create!(character_id: nettie.id, klass_id: bard.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
nettie3 = CharacterKlass.create!(character_id: nettie.id, klass_id: bard.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: nil)
nettie4 = CharacterKlass.create!(character_id: nettie.id, klass_id: bard.id, hp: nil, feat_id: nil, ability_score_improvement: "intelligence", level: 4, favored_klass_bonus_id: nil)
nettie5 = CharacterKlass.create!(character_id: nettie.id, klass_id: bard.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: nil)
nettie6 = CharacterKlass.create!(character_id: nettie.id, klass_id: bard.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: nil)
nettie7 = CharacterKlass.create!(character_id: nettie.id, klass_id: bard.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 7, favored_klass_bonus_id: nil)

CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: acro.id, ranks: 4)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: clim.id, ranks: 6)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: unc_fine.id, ranks: 4)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: hand.id, ranks: 2)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: heal.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: ling.id, ranks: 7)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: unc_natu.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: perc.id, ranks: 6)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: perf.id, ranks: 3)
# wind ^
# CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: perf.id, ranks: 2)
# percussion ^
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: unc_reli.id, ranks: 6)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: sens.id, ranks: 2)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: unc_soci.id, ranks: 5)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: unc_spel.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: stea.id, ranks: 6)

merg = Character.create!(user_id: admin.id, name: "Merg", strength: 15, dexterity: 14, constitution: 15, intelligence: 13, wisdom: 13, charisma: 13, race_id: orc.id, skillset_id: dmc.id)
# +1 to Dexterity, Manual of Quickness of Action

merg1 = CharacterKlass.create!(character_id: merg.id, klass_id: unchained_barbarian.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: one_skill_point.id)
merg2 = CharacterKlass.create!(character_id: merg.id, klass_id: unchained_barbarian.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: one_skill_point.id)
merg3 = CharacterKlass.create!(character_id: merg.id, klass_id: unchained_barbarian.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: one_skill_point.id)
merg4 = CharacterKlass.create!(character_id: merg.id, klass_id: unchained_barbarian.id, hp: nil, feat_id: nil, ability_score_improvement: 'dexterity', level: 4, favored_klass_bonus_id: one_skill_point.id)
merg5 = CharacterKlass.create!(character_id: merg.id, klass_id: unchained_barbarian.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: one_skill_point.id)
merg6 = CharacterKlass.create!(character_id: merg.id, klass_id: unchained_barbarian.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: one_skill_point.id)
merg7 = CharacterKlass.create!(character_id: merg.id, klass_id: unchained_barbarian.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 7, favored_klass_bonus_id: one_skill_point.id)

cedrick = Character.create!(user_id: admin.id, name: "Cedrick", strength: 17, dexterity: 14, constitution: 12, intelligence: 10, wisdom: 17, charisma: 10, race_id: grippli.id, skillset_id: dmc.id)

cedrick1 = CharacterKlass.create!(character_id: cedrick.id, klass_id: shifter.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: hp_up.id)
cedrick2 = CharacterKlass.create!(character_id: cedrick.id, klass_id: shifter.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: hp_up.id)
cedrick3 = CharacterKlass.create!(character_id: cedrick.id, klass_id: shifter.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: hp_up.id)
cedrick4 = CharacterKlass.create!(character_id: cedrick.id, klass_id: shifter.id, hp: nil, feat_id: nil, ability_score_improvement: 'strength', level: 4, favored_klass_bonus_id: one_skill_point.id)
cedrick5 = CharacterKlass.create!(character_id: cedrick.id, klass_id: shifter.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: one_skill_point.id)
cedrick6 = CharacterKlass.create!(character_id: cedrick.id, klass_id: shifter.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: nil)
cedrick7 = CharacterKlass.create!(character_id: cedrick.id, klass_id: shifter.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 7, favored_klass_bonus_id: nil)

maddox = Character.create!(user_id: admin.id, name: "Maddox", strength: 9, dexterity: 16, constitution: 14, intelligence: 18, wisdom: 11, charisma: 17, race_id: samsaran.id, skillset_id: dmc.id)
# +1 to Charisma, Tome of Leadership and Influence

maddox1 = CharacterKlass.create!(character_id: maddox.id, klass_id: arcanist.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
maddox2 = CharacterKlass.create!(character_id: maddox.id, klass_id: arcanist.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
maddox3 = CharacterKlass.create!(character_id: maddox.id, klass_id: arcanist.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: nil)
maddox4 = CharacterKlass.create!(character_id: maddox.id, klass_id: arcanist.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 4, favored_klass_bonus_id: nil)
maddox5 = CharacterKlass.create!(character_id: maddox.id, klass_id: arcanist.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: nil)
maddox6 = CharacterKlass.create!(character_id: maddox.id, klass_id: arcanist.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: nil)
maddox7 = CharacterKlass.create!(character_id: maddox.id, klass_id: arcanist.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 7, favored_klass_bonus_id: nil)

robby = Character.create!(user_id: admin.id, name: 'Robby', strength: 13, dexterity: 16, constitution: 10, intelligence: 9, wisdom: 13, charisma: 17, race_id: kitsune.id, skillset_id: dmc.id)
# +1 to Strength, Manual of Gainful Exercise

robby1 = CharacterKlass.create!(character_id: robby.id, klass_id: swashbuckler.id, hp: 10, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
robby2 = CharacterKlass.create!(character_id: robby.id, klass_id: swashbuckler.id, hp: 10, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
robby3 = CharacterKlass.create!(character_id: robby.id, klass_id: swashbuckler.id, hp: 10, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: nil)
robby4 = CharacterKlass.create!(character_id: robby.id, klass_id: unchained_rogue.id, hp: 10, feat_id: nil, ability_score_improvement: 'intelligence', level: 4, favored_klass_bonus_id: nil)
robby5 = CharacterKlass.create!(character_id: robby.id, klass_id: unchained_rogue.id, hp: 10, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: nil)
robby6 = CharacterKlass.create!(character_id: robby.id, klass_id: unchained_rogue.id, hp: 10, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: nil)
robby7 = CharacterKlass.create!(character_id: robby.id, klass_id: unchained_rogue.id, hp: 10, feat_id: nil, ability_score_improvement: nil, level: 7, favored_klass_bonus_id: nil)

# /////////////////////////////////////////
# <-*-*-----*-*-*- Known Spells!-*-*-*-----*-*->
# /////////////////////////////////////////

KnownSpell.create!(klass_spell_id: charm_person_witch.id, character_id: persephone.id, klass_id: witch.id)
KnownSpell.create!(klass_spell_id: detect_magic_witch.id, character_id: persephone.id, klass_id: witch.id)
KnownSpell.create!(klass_spell_id: mending_witch.id, character_id: persephone.id, klass_id: witch.id)
KnownSpell.create!(klass_spell_id: message_witch.id, character_id: persephone.id, klass_id: witch.id)
KnownSpell.create!(klass_spell_id: light_witch.id, character_id: persephone.id, klass_id: witch.id)
KnownSpell.create!(klass_spell_id: trial_of_fire_and_acid_witch.id, character_id: persephone.id, klass_id: witch.id)
KnownSpell.create!(klass_spell_id: mount_witch.id, character_id: persephone.id, klass_id: witch.id)
KnownSpell.create!(klass_spell_id: unerring_weapon_witch.id, character_id: persephone.id, klass_id: witch.id)

KnownSpell.create!(klass_spell_id: message_unchained_summoner.id, character_id: persephone.id, klass_id: vigilante.id)
KnownSpell.create!(klass_spell_id: summon_monster_I_unchained_summoner.id, character_id: persephone.id, klass_id: vigilante.id)

KnownSpell.create!(klass_spell_id: charm_person_bard.id, character_id: nettie.id, klass_id: bard.id)
KnownSpell.create!(klass_spell_id: message_bard.id, character_id: nettie.id, klass_id: bard.id)
KnownSpell.create!(klass_spell_id: identify_bard.id, character_id: nettie.id, klass_id: bard.id)

KnownSpell.create!(klass_spell_id: lightning_bolt_wizard.id, character_id: maddox.id, klass_id: arcanist.id)

# /////////////////////////////////////////
# <-*-*-----*-*-*- Prepared Spells!-*-*-*-----*-*->
# /////////////////////////////////////////

PreparedSpell.create!(klass_spell_id: charm_person_witch.id, character_id: persephone.id, spell_level: 1, cast: false, klass_id: witch.id)
PreparedSpell.create!(klass_spell_id: charm_person_witch.id, character_id: persephone.id, spell_level: 1, cast: false, klass_id: witch.id)
PreparedSpell.create!(klass_spell_id: detect_magic_witch.id, character_id: persephone.id, spell_level: 0, cast: false, klass_id: witch.id)
PreparedSpell.create!(klass_spell_id: mending_witch.id, character_id: persephone.id, spell_level: 0, cast: false, klass_id: witch.id)
PreparedSpell.create!(klass_spell_id: message_witch.id, character_id: persephone.id, spell_level: 0, cast: false, klass_id: witch.id)
PreparedSpell.create!(klass_spell_id: light_witch.id, character_id: persephone.id, spell_level: 0, cast: false, klass_id: witch.id)
