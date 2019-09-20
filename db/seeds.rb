# /////////////////////////////////////////
# <-*-*-----*-*-*- Races!-*-*-*-----*-*->
# /////////////////////////////////////////

aas = Race.create!(name: "Aasimar", speed: 30, size: "Medium", img_url: "https://vignette.wikia.nocookie.net/phaeselis/images/8/8e/Angel_Avatar.jpg", description: "Aasimars are humans with a significant amount of celestial or other good outsider blood in their ancestry. While not always benevolent, aasimars are more inclined toward acts of kindness rather than evil, and they gravitate toward faiths or organizations associated with celestials. Aasimar heritage can lie dormant for generations, only to appear suddenly in the child of two apparently human parents. Most societies interpret aasimar births as good omens, though it must be acknowledged that some aasimars take advantage of the reputation of their kind, brutally subverting the expectations of others with acts of terrifying cruelty or abject venality. “It’s always the one you least suspect” is the axiom these evil aasimars live by, and they often lead double lives as upstanding citizens or false heroes, keeping their corruption well hidden. Thankfully, these few are the exception and not the rule.

Physical Description: Aasimars look mostly human except for some minor physical trait that reveals their unusual heritage. Typical aasimar features include hair that shines like metal, jewel-toned eyes, lustrous skin color, or even glowing, golden halos.

Society: Aasimars cannot truly be said to have an independent society of their own. As an offshoot of humanity, they adopt the societal norms around them, though most find themselves drawn to those elements of society that work for the redress of injustice and the assuagement of suffering. This sometimes puts them on the wrong side of the law in more tyrannical societies, but aasimars can be careful and cunning when necessary, able to put on a dissembling guise to divert the attention of oppressors elsewhere. While corrupt aasimars may be loners or may establish secret societies to conceal their involvement in crime, righteous aasimars are often found congregating in numbers as part of good-aligned organizations, especially (though not always) churches and religious orders.

Relations: Aasimars are most common and most comfortable in human communities. This is especially true of those whose lineage is more distant and who bear only faint marks of their heavenly ancestry. It is unclear why the touch of the celestial is felt so much more strongly in humanity than other races, though it may be that humanity’s inherent adaptability and affinity for change is responsible for the evolution of aasimars as a distinct race. Perhaps the endemic racial traits of other races are too deeply bred, too strongly present, and too resistant to change. Whatever dalliances other races may have had with the denizens of the upper planes, the progeny of such couplings are vanishingly rare and have never bred true. However, even if they generally tend toward human societies, aasimars can become comfortable in virtually any environment. They have an easy social grace and are disarmingly personable. They get on well with half-elves, who share a similar not-quite-human marginal status, though their relations are often less cordial with half-orcs, who have no patience for aasimars’ overly pretty words and faces. Elven courtiers sometimes dismiss aasimars as unsophisticated, and criticize them for relying on natural charm to overcome faux pas. Perhaps of all the known races, gnomes find aasimars most fascinating, and have an intense appreciation for their varied appearances as well as the mystique surrounding their celestial heritage.

Alignment and Religion: Aasimars are most often of good alignment, though this isn’t necessarily universal, and aasimars that have turned their back on righteousness may fall into an unfathomable abyss of depravity. For the most part, however, aasimars favor deities of honor, valor, protection, healing, and refuge, or simple and prosaic faiths of home, community, and family. Some also follow the paths of art, music, and lore, finding truth and wisdom in beauty and learning.

Adventurers: Aasimars frequently become adventurers, as they often do not quite feel at home in human society and feel the pull of some greater destiny. Clerics, oracles, and paladins are most plentiful in their ranks, though bards, sorcerers, and summoners are not uncommon among those with a fondness for arcane magic. Aasimar barbarians are rare, but when born into such tribes they often rise to leadership and encourage their clans to embrace celestial totems.

Male Names: Aritian, Beltin, Cernan, Cronwier, Eran, Ilamin, Maudril, Okrin, Parant, Tural, Wyran, Zaigan.

Female Names: Arken, Arsinoe, Davina, Drinma, Imesah, Masozi, Nijena, Niramour, Ondrea, Rhialla, Valtyra.")

RaceAbilityScoreModifier.create!(race_id: aas.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: aas.id, ability_score: "Charisma", bonus: 2)

RacialTrait.create!(name: "Languages", race_id: aas.id, description: "Aasimars begin play speaking Common and Celestial. Aasimars with high Intelligence scores can choose from the following languages: Draconic, Dwarven, Elven, Gnome, Halfling, and Sylvan. See the Linguistics skill page for more information about these languages.")
RacialTrait.create!(name: "Celestial Resistance", race_id: aas.id, description: "Aasimars have acid resistance 5, cold resistance 5, and electricity resistance 5.")
RacialTrait.create!(name: "Skilled", race_id: aas.id, description: "Aasimar have a +2 racial bonus on Diplomacy and Perception checks.")
RacialTrait.create!(name: "Spell-like Ability", race_id: aas.id, description: "Aasimars can use daylight once per day as a spell-like ability (caster level equal to the aasimar’s class level).")
RacialTrait.create!(name: "Darkvision", race_id: aas.id, description: "Darkvision: Aasimar have darkvision 60 ft. (they can see perfectly in the dark up to 60 feet.)")
# RacialTrait.create!(name: "", race_id: , description: "")

kit = Race.create!(name: "Kitsune", speed: 30, size: "Medium", img_url: "https://db4sgowjqfwig.cloudfront.net/assets/254331/Kitsune.jpg", description: "Kitsune, or fox folk, are vulpine shapeshifters known for their love of both trickery and art. Kitsune possess two forms: that of an attractive human of slender build with salient eyes, and their true form of an anthropomorphic fox. Despite an irrepressible penchant for deception, kitsune prize loyalty and make true companions. They delight in the arts, particularly riddles and storytelling, and settle in ancestral clans, taking their wisdom from both the living and spirits.

Quick-witted and nimble, kitsune make excellent bards and rogues. It is not uncommon for one to pursue sorcery, while those few born with white fur and pale eyes usually become oracles.

Physical Description: A kitsune has two forms—a single human form and its true form, that of a humanoid fox. In their human forms, kitsune tend toward quickness and lithe beauty. In all forms they possess golden, amber, or brilliant blue eyes. In their true forms, they are covered with a downy coat of auburn fur, although more exotic coloration is possible.

Society: Kitsune society is enigmatic, as kitsune prize loyalty among their friends but delight in good-natured mischief and trickery. Kitsune take pleasure in the pursuit of creative arts and in all forms of competition, especially the telling of stories interwoven with tall tales and falsehoods.

Relations: Kitsune deal well with elves and samsarans, but their reputation as tricksters follows them when they interact with other races. Many kitsune, particularly those who dwell in mixed-race societies, choose to hide their true natures and pose as humans in public.

Alignment and Religion: Kitsune tend to be neutral, or of alignments with a neutral component. Most kitsune worship the goddess of craftsmanship.

Adventurers: Keenly interested in adding their own names to the myths and legends of explorers and heroes of old, Kitsune adventurers range across the world.

Female Names: Ayaki, Jiyoki, Kyomi, Miyaro, Shinyai, Yulai

Male Names: Chankotu, Imhakaru, Kyrsaku, Namkitu, Yanyeeku")

RaceAbilityScoreModifier.create!(race_id: kit.id, ability_score: "Dexterity", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: kit.id, ability_score: "Charisma", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: kit.id, ability_score: "Strength", bonus: -2)

RacialTrait.create!(name: "Languages", race_id: kit.id, description: "Kitsune begin play speaking Common and Sylvan. Kitsune with high Intelligence scores can choose from the following: any human language, Aklo, Celestial, Elven, Gnome, and Tengu. See the Linguistics skill page for more information about these languages.")
RacialTrait.create!(name: "Agile", race_id: kit.id, description: "Kitsune receive a +2 racial bonus on Acrobatics checks.")
RacialTrait.create!(name: "Change Shape", race_id: kit.id, description: "A kitsune can assume the appearance of a specific single human form of the same sex. The kitsune always takes this specific form when she uses this ability. A kitsune in human form cannot use her bite attack, but gains a +10 racial bonus on Disguise checks made to appear human. Changing shape is a standard action. This ability otherwise functions as alter self, except that the kitsune does not adjust her ability scores and can remain in this form indefinitely.")
RacialTrait.create!(name: "Kitsune Magic", race_id: kit.id, description: "Kitsune add +1 to the DC of any saving throws against enchantment spells that they cast. Kitsune with a Charisma score of 11 or higher gain the following spell-like ability: 3/day—dancing lights (caster level equals the kitsune’s level).")
RacialTrait.create!(name: "Natural Weapons", race_id: kit.id, description: "In her natural form, a kitsune has a bite attack that deals 1d4 points of damage.")
RacialTrait.create!(name: "Low-Light Vision", race_id: kit.id, description: "Kitsune can see twice as far as humans in conditions of dim light.")
# RacialTrait.create!(name: "", race_id: , description: "")

grip = Race.create!(name: "Grippli", speed: 30, size: "Small", img_url: "https://i.pinimg.com/originals/d2/a7/e8/d2a7e8b34c06bf381e08f3eadfda781d.png", description: "Gripplis stand just over 2 feet tall and have mottled green-and-brown skin. Most gripplis are primitive hunter gatherers, living on large insects and fish found near their treetop homes, and are unconcerned about events outside their swamps. The rare grippli who leaves the safety of the swamp tends to be a ranger or alchemist seeking to trade for metals and gems.")

RaceAbilityScoreModifier.create!(race_id: grip.id, ability_score: "Dexterity", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: grip.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: grip.id, ability_score: "Strength", bonus: -2)

RacialTrait.create!(name: "Climb Speed", race_id: grip.id, description: "Gripplis have a climb speed of 20 feet")
RacialTrait.create!(name: "Languages", race_id: grip.id, description: "Gripplis begin play speaking Common and Grippli. Gripplis with high Intelligence scores can choose from the following: Boggard, Draconic, Elven, Gnome, Goblin, and Sylvan. See the Linguistics skill page for more information about these languages.")
RacialTrait.create!(name: "Camouflage", race_id: grip.id, description: "Gripplis receive a +4 racial bonus on Stealth checks in marshes and forested areas.")
RacialTrait.create!(name: "Swamp Stride", race_id: grip.id, description: "A grippli can move through difficult terrain at its normal speed while within a swamp. Magically altered terrain affects a grippli normally.")
RacialTrait.create!(name: "Weapon Familiarity", race_id: grip.id, description: "Gripplis are proficient with nets.")
RacialTrait.create!(name: "Darkvision", race_id: grip.id, description: "Gripplis can see perfectly in the dark up to 60 feet.")
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

cha = Race.create!(name: "Changeling", speed: 30, size: "Medium", img_url: "https://pathfinderwiki.com/mediawiki/images/7/7d/Siova_Stormhilt.jpg", description: "Changelings are the offspring of hags and their lovers taken through magic or madness. Dropped off on doorsteps of prospective foster parents, changelings are raised by strangers. Typically tall, slender, dark haired, and attractive, changelings otherwise resemble their fathers’ race. They are always female, and their mismatched colored eyes and abnormally pale skin hint at their true heritage. At puberty, changelings receive “the call,” a hypnotic spiritual voice that beckons them to travel and discover their true origins. Changelings who ignore this call choose their own destiny; those who heed it discover their “mother” and may come into great power by transforming into hags themselves.")

RaceAbilityScoreModifier.create!(race_id: cha.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: cha.id, ability_score: "Charisma", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: cha.id, ability_score: "Constitution", bonus: -2)

RacialTrait.create!(name: "Languages", race_id: cha.id, description: "Changelings begin play speaking Common and the primary language of their host society. Changelings with high Intelligence scores can choose from the following: Aklo, Draconic, Dwarven, Elven, Giant, Gnoll, Goblin, and Orc.")
RacialTrait.create!(name: "Natural Armor", race_id: cha.id, description: "Changelings have a +1 natural armor bonus.")
RacialTrait.create!(name: "Claws", race_id: cha.id, description: "Changelings’ fingernails are hard and sharp, granting them two claw attacks (1d4 points of damage each).")
RacialTrait.create!(name: "Darkvision", race_id: cha.id, description: "Changelings see perfectly in the dark up to 60 feet.")
RacialTrait.create!(name: "Green Widow", race_id: cha.id, description: "(Green Hag): The changeling gains a +2 racial bonus on Bluff checks against creatures that are sexually attracted to her.")
RacialTrait.create!(name: "Hulking Changeling", race_id: cha.id, description: "(Annis Hag): The changeling gains a +1 racial bonus on melee damage.")
RacialTrait.create!(name: "Sea Lungs", race_id: cha.id, description: "(Sea Hag): The changeling may hold her breath for a number of rounds equal to three times her Constitution before she risks drowning.")
# RacialTrait.create!(name: "", race_id: , description: "")

sam = Race.create!(name: "Samsaran", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/9c/ed/eb/9cedeb9c454258b301f8912c0f229801.png", description: "Mysterious humanoids with pale blue flesh and transparent blood like the waters of a trickling brook, samsarans are ancient creatures even in their youth. A samsaran’s life is not a linear progression from birth to death, but rather a circle of birth to death to rebirth. Whenever a samsaran dies, it reincarnates anew as a young samsaran to live a new life. Her past memories remain vague and indistinct—and each new incarnation is as different a creature and personality as a child is to a parent. Samsarans appear similar to humans, with dark hair and solid white eyes with no pupils or irises. Skin tones are generally shades of light blue.

Capable of recalling the lessons and failings of their previous incarnations, the samsarans seek to live lives of balance and enlightenment in order to ensure they are reborn upon death to continue their trek through history.

Physical Description: Samsarans appear as humans with pale blue skin, solid white eyes with no pupil or iris, and dark hair. A samsaran’s blood is crystal clear, like the water of a pure mountain spring.

Society: Samsarans prefer to live simple lives of reflection, scholarship, and worship. They try to live their lives free of the ambitions and greed that mortality often imposes, since they view their lives as only the latest incarnation of many to come. Any accomplishments left undone in this current life can surely be achieved in the next, or the one after that. Samsarans’ memories of their past lives are not complete—they most often feel like half-remembered dreams. Samsarans can give birth, yet they do not give birth to samsarans—instead, they birth human children. Typically, samsarans give up their children not long after birth to be raised in human society, where the children grow and live their lives normally. Upon death, such offspring sometimes reincarnate as samsaran children, if they lived their lives in keeping with harmony. While most samsarans who die also reincarnate as samsaran children, this is not always the case. When a samsaran has utterly failed at maintaining harmony in her current life, or when she has succeeded perfectly at it, her soul instead travels to the Great Beyond to receive its final, long-delayed reward or doom. Samsarans do not keep family names, but often retain the names of their previous one or two incarnations, regardless of gender, as a sort of replacement for a family name to honor their previous lives’ accomplishments or to remind them of their past shames.

Relations: Humans and others often misunderstand samsarans’ nature. Many fear or even hate samsarans’ unusual association with death, thinking them to be strangely cursed souls at best or vengeful spirits made flesh at worst.

Alignment and Religion: Most samsarans are lawful good—but samsarans of any alignment are possible. Deeply religious, the majority of samsarans take patron deities even if they aren’t clerics.

Adventurers: Adventuring allows samsarans to see the world’s wonders, deepens their understanding of life, and lets them visit places half remembered from their previous lives.

Female Names: Chimi, Mindu, Nalita, Rema, Sonitri, Treeni, Yeshing

Male Names: Agyen, Bakji, Dakash, Henar, Puran, Sonan, Thukten")

RaceAbilityScoreModifier.create!(race_id: sam.id, ability_score: "Intelligence", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: sam.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: sam.id, ability_score: "Constitution", bonus: -2)

RacialTrait.create!(name: "Languages", race_id: sam.id, description: "Samsarans begin play speaking Common and Samsaran. Samsarans with high Intelligence scores can choose from the following: any human language, Abyssal, Aquan, Auran, Celestial, Draconic, Giant, Ignan, Infernal, Nagaji, Tengu, and Terran. See the Linguistics skill page for more information about these languages.")
RacialTrait.create!(name: "Lifebound", race_id: sam.id, description: "Samsarans gain a +2 racial bonus on all saving throws made to resist death effects, saving throws against negative energy effects, Fortitude saves made to remove negative levels, and Constitution checks made to stabilize if reduced to negative hit points.")
RacialTrait.create!(name: "Shards of the Past", race_id: sam.id, description: "A samsaran’s past lives grant her bonuses on two particular skills. A samsaran chooses two skills—she gains a +2 racial bonus on both of these skills, and they are treated as class skills regardless of what class she actually takes.")
RacialTrait.create!(name: "Low-Light Vision", race_id: sam.id, description: "Samsarans can see twice as far as humans in conditions of dim light.")
RacialTrait.create!(name: "Samsaran Magic", race_id: sam.id, description: "Samsarans with a Charisma score of 11 or higher gain the following spell-like abilities: 1/day—comprehend languages, deathwatch, and stabilize. The caster level for these effects is equal to the samsaran’s level.")
# RacialTrait.create!(name: "", race_id: , description: "")

helf = Race.create!(name: "Half-elf", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/9e/a7/89/9ea7895e06d5bfc3dfafbc857a658783.png", description: "Elves have long drawn the covetous gazes of other races. Their generous lifespans, magical affinity, and inherent grace each contribute to the admiration or bitter envy of their neighbors. Of all their traits, however, none so entrance their human associates as their beauty. Since the two races first came into contact with each other, humans have held up elves as models of physical perfection, seeing in these fair folk idealized versions of themselves. For their part, many elves find humans attractive despite their comparatively barbaric ways, and are drawn to the passion and impetuosity with which members of the younger race play out their brief lives.

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

RaceAbilityScoreModifier.create!(race_id: helf.id, ability_score: "Any", bonus: 2)

RacialTrait.create!(name: "Languages", race_id: helf.id, description: "Half-elves begin play speaking Common and Elven. Half-elves with high Intelligence scores can choose any languages they want (except secret languages, such as Druidic). See the Linguistics skill page for more information about these languages.")
RacialTrait.create!(name: "Elven Immunities", race_id: helf.id, description: "Half-elves are immune to magic sleep effects and gain a +2 racial saving throw bonus against enchantment spells and effects.")
RacialTrait.create!(name: "Adaptability", race_id: helf.id, description: "Half-elves receive Skill Focus as a bonus feat at 1st level.")
RacialTrait.create!(name: "Keen Senses", race_id: helf.id, description: "Half-elves receive a +2 racial bonus on Perception checks.")
RacialTrait.create!(name: "Low-Light Vision", race_id: helf.id, description: "Half-elves can see twice as far as humans in conditions of dim light.")
RacialTrait.create!(name: "Elf Blood", race_id: helf.id, description: "Half-elves count as both elves and humans for any effect related to race.")
RacialTrait.create!(name: "Multitalented", race_id: helf.id, description: "Half-elves choose two favored classes at first level and gain +1 hit point or +1 skill point whenever they take a level in either one of those classes.")
# RacialTrait.create!(name: "", race_id: , description: "")

vine = Race.create!(name: "Vine Leshy", speed: 20, size: "Small", img_url: "https://i.pinimg.com/originals/95/2f/4a/952f4a813b92fdde2da083dc934c36b3.png", description: "Vine leshys are born by ritual, called forth when a druid channels a nature spirit into a plant’s form. The nature spirit that answers the call for a vine leshy creation ritual is always one that has keenly felt the influence of mortal beings. Compared to other leshys, vine leshys have an easier time relating to non-plant creatures and a deeper sense of curiosity about the wonders of the natural world beyond those plants closely related to them, as well as a fascination with the societies of humans and other creatures.

Physical Description: A vine leshy’s body is made of masses of twisted vines and leaves, sometimes incorporating flowers and fruits as well. Their appearance is mostly determined by the species of vine used in their creation, but most have a large cluster of leaves that forms a face with round eyes, a small mouth, and no visible nose.

Society: Because of their ritual-based genesis, vine leshys do not have a traditional family structure. They form strong friendships with those who accompany them on explorations or who assist them in protecting a natural site. Unlike most leshys, vine leshys usually feel a strong desire to seek out the one who create!d them. They see their creators as friends and allies rather than as parents.

While most leshys devote themselves to protecting a particular ward for long stretches of time, vine leshys are far more likely to travel and explore, stopping to care for many different wards for short periods throughout their lifetime. Vine leshys love storytelling, but they place more importance on the meaning and message of the story than the details, both because they can’t always remember the details and because they find many details to be unnecessary. A story that has passed through several vine leshys is likely to undergo significant changes in characters and setting but usually retains its core message.

Relations: Vine leshys are interested in learning about the cultures of many other races. Their initial attitudes when they encounter new races are based on biases from the nature spirit’s past incarnations, but they evolve over time through the leshy’s experiences. In unfamiliar situations, vine leshys prefer to blend in with vegetation to observe before venturing out and introducing themselves.

Consistent with the plant species from which they derive their bodies, vine leshys recognize a spectrum of genders. Some vine leshys are exclusively female or male, while many vine leshys are both. The biological features of a leshy’s flowers do not necessarily indicate its gender, as the nature spirit that inhabits the leshy plays a strong role in determining the leshy’s identity.

Vine leshys have an unusual relationship with other leshys, for unlike standard leshys, vine leshys are not grown to be servants. They are free-willed and individualistic creatures. Whether or not an individual vine leshy views the servitude other leshys endure as akin to slavery or as something more like an honorable tradition of service to a powerful druid depends on the vine leshy’s opinion and alignment. While it’s unusual for a vine leshy to take on another leshy as a minion in the traditional way, it’s not unusual to see vine leshys take on sponsorship of a sort over other leshys, treating them almost as adopted children or wayward exiles in need of guidance and protection from those who would force their servitude.

Alignment and Religion: Vine leshys see themselves as part of the ancient cycle of nature. They care for their friends and any natural areas under their care, but rarely feel compelled toward either charity or malice. Most vine leshys are truly neutral, and they almost always have at least one neutral aspect to their alignments. Religion is not particularly important to vine leshys.

Adventurers: Like most leshys, vine leshys typically do not fear death. They know that if their bodies die, their spirits will return to the natural world and may someday find themselves in new bodies. This lack of fear combined with their curiosity leads them to take risks. However, they typically avoid excessively dangerous activities, as they would rather gather a story from their adventures to tell later. Vine leshys gravitate toward classes that let them use their connection to nature, such as druid and ranger.

Names: Vine leshys’ names change throughout their lives. A young vine leshy typically names herself after her physical characteristics or a natural feature that she particularly enjoys. As vine leshys age, they modify their names to better reflect their personality and experiences. A leshy may even have several names that she cycles among, such as one name for each season. Most vine leshys select names that are at least two words long. Example vine leshy names include Burbling Waterfall, Lovely Triple Leaves, Masterful Sun Drinker, Snowy Pine Branches, Verdant Taleweaver, and Vibrant Tree Climber.")

RaceAbilityScoreModifier.create!(race_id: vine.id, ability_score: "Constitution", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: vine.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: vine.id, ability_score: "Intelligence", bonus: -2)

RacialTrait.create!(name: "Type", race_id: vine.id, description: "Vine leshys are plants with the leshy subtype but lack the immunities to mind-affecting effects, paralysis, poison, polymorph, sleep, and stunning that the plant type usually grants, and they lack the immunity to electricity and sonic that the leshy subtype usually grants.")
RacialTrait.create!(name: "Languages", race_id: vine.id, description: "Vine leshys begin play speaking Common and Sylvan. Vine leshys with high Intelligence scores can choose from the following: Aquan, Auran, Aklo, Elven, Gnome, Goblin, Terran, or Undercommon.")
RacialTrait.create!(name: "Plantspeech", race_id: vine.id, description: "Vine leshys can speak with vines as if subject to a continual speak with plants spell.")
RacialTrait.create!(name: "Darkvision", race_id: vine.id, description: "Vine leshys can see in the dark up to 60 feet.")
RacialTrait.create!(name: "Low-Light Vision", race_id: vine.id, description: "Vine leshys can see twice as far as humans under conditions of dim light.")
RacialTrait.create!(name: "Pass without Trace", race_id: vine.id, description: "Vine leshys have pass without trace as a constant spell-like ability (caster level 2nd).")
RacialTrait.create!(name: "Change Shape", race_id: vine.id, description: "Vine leshys can transform into vines, with results similar to tree shape. In this form, the leshy appears as a particularly healthy Small vine. The leshy can assume plant form or revert to its true form as a swift action.")
RacialTrait.create!(name: "Verdant Burst", race_id: vine.id, description: "When slain, a vine leshy explodes in a burst of fertile energies. All plant creatures within 30 feet of the slain leshy regain hit 1d8 points, and vines quickly infest the area. If the terrain can support vines, the undergrowth is dense enough to make the region into difficult terrain for 24 hours, after which the plant life diminishes to a normal level; otherwise, this plant life has no significant effect on movement and withers and dies within an hour.")
RacialTrait.create!(name: "Unassuming Foliage", race_id: vine.id, description: "Vine leshys gain a +4 racial bonus on Stealth checks in forests.")
RacialTrait.create!(name: "Climber", race_id: vine.id, description: "Vine leshys gain a +2 racial bonus on Climb checks.")
# RacialTrait.create!(name: "", race_id: , description: "")

# /////////////////////////////////////////
# <-*-*-----*-*-*- Classes!-*-*-*-----*-*->
# /////////////////////////////////////////

oracle = Klass.create!(name: "Oracle", hit_die: 8, skill_ranks: 4, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: "https://i.pinimg.com/474x/31/c3/79/31c379bb4e8751a478360d8dfd22f7bc--female-wizard-pathfinder-rpg.jpg", description: "Although the gods work through many agents, perhaps none is more mysterious than the oracle. These divine vessels are granted power without their choice, selected by providence to wield powers that even they do not fully understand. Unlike a cleric, who draws her magic through devotion to a deity, oracles garner strength and power from many sources, namely those patron deities who support their ideals. Instead of worshiping a single source, oracles tend to venerate all of the gods that share their beliefs. While some see the powers of the oracle as a gift, others view them as a curse, changing the life of the chosen in unforeseen ways.

Role: Oracles do not usually associate with any one church or temple, instead preferring to strike out on their own, or with a small group of like-minded individuals. Oracles typically use their spells and revelations to further their understanding of their mystery, be it through fighting mighty battles or tending to the poor and sick.

Alignment: Any.")

swash = Klass.create!(name: "Swashbuckler", hit_die: 10, skill_ranks: 4, fortitude: 0.34, reflex: 0.5, will: 0.34, img_url: "https://vignette.wikia.nocookie.net/pathfinderkingmaker/images/8/84/Taswik_duelist.jpg", description: "Whereas many warriors brave battle encased in suits of armor and wielding large and powerful weapons, swashbucklers rely on speed, agility, and panache. Swashbucklers dart in and out of the fray, wearing down opponents with lunges and feints, all while foiling the powerful attacks against them with a flick of the wrist and a flash of the blade. Their deft parries and fatal ripostes are carnage elevated to an art form. Some may be arrogant and devil-may-care, but behind this veneer lie people deeply dedicated to their craft. Those of smaller races are particularly driven to prove that the right mix of discipline and daring is the perfect counter to size and strength, and enjoy nothing more than taking down lumbering brutes and bullies.

Role: Combining fancy footwork with quick and precise lunges, swashbucklers dart in and out of battle, harassing and thwarting their opponents. These fast and agile combatants serve as protectors for spellcasters and flank mates for rogues and slayers, while waiting for the opportunity to show panache and score the killing blow on some lumbering hulk. Swashbucklers often face death with wry humor, mocking it with jabbing wit.

Alignment: Any.

Hit Die: d10.

Parent Classes: Fighter and gunslinger.")

u_rogue = Klass.create!(name: "Rogue", hit_die: 8, skill_ranks: 8, fortitude: 0.34, reflex: 0.5, will: 0.34, img_url: "http://www.d20pfsrd.com/wp-content/uploads/sites/12/2017/01/rogue__comm_by_yamaorce-d88oizc-320-2.png", description: "Life is an endless adventure for those who live by their wits. Ever just one step ahead of danger, rogues bank on their cunning, skill, and charm to bend fate to their favor. Never knowing what to expect, they prepare for everything, becoming masters of a wide variety of skills, training themselves to be adept manipulators, agile acrobats, shadowy stalkers, or masters of any of dozens of other professions or talents. Thieves and gamblers, fast talkers and diplomats, bandits and bounty hunters, and explorers and investigators all might be considered rogues, as well as countless other professions that rely upon wits, prowess, or luck. Although many rogues favor cities and the innumerable opportunities of civilization, some embrace lives on the road, journeying far, meeting exotic people, and facing fantastic danger in pursuit of equally fantastic riches. In the end, any who desire to shape their fates and live life on their own terms might come to be called rogues.

Role: Rogues excel at moving about unseen and catching foes unaware, and tend to avoid head-to-head combat. Their varied skills and abilities allow them to be highly versatile, with great variations in expertise existing between different rogues. Most, however, excel in overcoming hindrances of all types, from unlocking doors and disarming traps to outwitting magical hazards and conning dull-witted opponents.

Alignment: Any

")

shifter = Klass.create!(name: "Shifter", hit_die: 10, skill_ranks: 4, fortitude: 0.5, reflex: 0.5, will: 0.34, img_url: "https://i.pinimg.com/736x/2f/2f/1a/2f2f1a0f43c353bced1595dffa7db32c.jpg", description: "Whether riding on the wind as a falcon or hiding in some fetid bog waiting to strike, the shifter is a true master of the wild. Both a devoted defender of druidic circles and a fierce predator, the shifter can take on the forms of nature and even fuse them together with devastating effect and unbridled savagery. By way of the druidic discipline of wild shape, they become living aspects of the wild. At first, they are able to assume only a minor aspect, but with time and practice they can fully transform into ever more powerful forms.

The shifter class offers players a way to experience a shapeshifting character that is more martially inclined than a spellcasting druid. With each new level, the shifter’s powers grow in new and surprising ways, creating a character that thrives in battle, exploration, and stealth.

Shifters are protectors of druidic circles and avengers of nature, yet a shifter’s magic is different from that of her druidic kin. Rather than invoking spells from the natural world or forging alliances with animals, shifters focus their supernatural powers inward to gain control over their own forms. Their ability to change their forms is as varied as the wonders of the wilds themselves but always remains at least partially rooted in the natural world. There are many paths to becoming a shifter; most are trained in that role by druidic circles and have their powers unlocked via rituals of initiation. Yet some stumble upon the gift naturally, as if their blood bore the secrets of shifter transformation.

For those leaning toward the causes of law and good, the path of the shifter is one of contemplation and understanding. They become one with nature through mental and physical mimicry and gain an ever deeper spiritual understanding of the ebb and flow of the natural world. Those leaning toward the chaotic and evil teachings of druidic philosophy find such enlightenment through more violent means. These are typically quicker transformations, both brutal and painful, imparting the dark lessons of nature through its most catastrophic forms. Shifters who lean toward true neutrality are the most diverse when it comes to their command of metamorphic secrets.

Role: The shifter is so attuned to nature and the wild beasts of the world that she can call upon those powers to mystically fortify her being. Fluid in form and function, she can shape herself to overcome hardships and support those she befriends or serves.

Alignment: Any neutral.")

u_bar = Klass.create!(name: "Barbarian", hit_die: 12, skill_ranks: 4, fortitude: 0.5, reflex: 0.34, will: 0.34, img_url: "https://i.pinimg.com/originals/1b/16/b9/1b16b9707ef85952b3cee0482cdbbd3c.jpg", description: "For some, there is only rage. In the ways of their people, in the fury of their passion, in the howl of battle, conflict is all these brutal souls know. Savages, hired muscle, masters of vicious martial techniques, they are not soldiers or professional warriors—they are the battle possessed, creatures of slaughter and spirits of war. Known as barbarians, these warmongers know little of training, preparation, or the rules of warfare; for them, only the moment exists, with the foes that stand before them and the knowledge that the next moment might hold their death. They possess a sixth sense in regard to danger and the endurance to weather all that might entail. These brutal warriors might rise from all walks of life, both civilized and savage, though whole societies embracing such philosophies roam the wild places of the world. Within barbarians storms the primal spirit of battle, and woe to those who face their rage.

Role: Barbarians excel in combat, possessing the martial prowess and fortitude to take on foes seemingly far superior to themselves. With rage granting them boldness and daring beyond that of most other warriors, barbarians charge furiously into battle and ruin all who would stand in their way.

Alignment: Any non-lawful")

witch = Klass.create!(name: "Witch", hit_die: 6, skill_ranks: 2, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: "https://paizo.com/image/content/PathfinderCampaignSetting/PZO9249-WinterWitch.jpg", description: "Some gain power through study, some through devotion, others through blood, but the witch gains power from her communion with the unknown. Generally feared and misunderstood, the witch draws her magic from a pact made with an otherworldly power. Communing with that source, using her familiar as a conduit, the witch gains not only a host of spells, but a number of strange abilities known as hexes. As a witch grows in power, she might learn about the source of her magic, but some remain blissfully unaware. Some are even afraid of that source, fearful of what it might be or where its true purposes lie.

Role: While many witches are recluses, living on the edge of civilization, some live within society, openly or in hiding. The blend of witches’ spells makes them adept at filling a number of different roles, from seer to healer, and their hexes grant them a number of abilities that are useful in a fight. Some witches travel about, seeking greater knowledge and better understanding of the mysterious powers that guide them.

Alignment: Any.")

vig = Klass.create!(name: "Vigilante", hit_die: 8, skill_ranks: 6, fortitude: 0.34, reflex: 0.5, will: 0.5, img_url: "https://i.pinimg.com/originals/a7/79/cf/a779cf8972496626f1074d9cc62f27a0.png", description: "Being a renowned hero can be dangerous to your health and prosperity. Fighting against corruption and the evil that lurks within society makes you a target and, even worse, puts your friends and family in danger. For those who must maintain a social persona, being a part of the greater community while secretly fighting against powerful forces within it requires leading a double life.

By day, the vigilante maneuvers through society, dealing with other nobles or influential individuals. By night, he dons a disguise and an utterly different set of goals, taking the fight to his foes and solving problems with a blade when words will not suffice.

Game Masters should consider carefully whether or not a vigilante will make for a good fit with their campaign. The class is one that requires a degree of social aptitude and roleplaying to make full use of its potential.

Campaigns that focus more on wilderness exploration, travel, or dungeon delving and that are lighter on politics, negotiation, and manipulation might require a vigilante player to put in additional effort to make full use of his class features. Alternatively, a vigilante is uniquely suited to make for a powerful villain, hidden by day behind a mask of civility and a terror at night, free to commit terrible acts without risking discovery.

For players, the vigilante offers a unique opportunity to take on the role of a character with a hidden side, and whose life is committed to a secret agenda that he must struggle to advance in a complex world. Not every problem can be solved with a dagger in the dark, and even the most stubborn foe might be become an ally with the proper bribe. For the vigilante, these tasks are both within reach as long as you learn to properly use your dual nature and hidden skills to your fullest advantage.

Life can be unfair. Think of the starving peasants forced to toil for the local baron or the common laborers tasked with building the king’s newest palace for a mere handful of copper pieces each week. There are those who see these injustices and do nothing. There are those who are willing to reap the rewards obtained through the suffering of others.

Then there are those who see inequality and find themselves driven to take action, outside the law if necessary. These vigilantes operate in plain sight, hiding behind respectable personas by day, but donning alternate guises by night to right the wrongs they see all around them.

Not all vigilantes are out to make the world a better place. Some criminals hide behind the pretense of being ordinary folk, only to become terrors in the shadows, stealing and killing to fulfill some dark agenda. In either case, the vigilante is a character of two natures—the face that everyone knows and the mask that inspires fear.

Role: A vigilante can take on many tasks within a group. Most are skilled at negotiating delicate social situations and courtly intrigue, but they can also serve as stealthy spies or even brutish warriors in dangerous environments.

Alignment: Any.")

arc = Klass.create!(name: "Arcanist", hit_die: 6, skill_ranks: 2, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: "https://i.pinimg.com/originals/59/af/7d/59af7defc23bcd2a6338ad3d67e52df8.png", description: "Some spellcasters seek the secrets of magic, pursuing the power to make the impossible possible. Others are born with magic in their blood, commanding unbelievable forces as effortlessly as they breathe. Yet still others seek to meld the science of arcane scholars with the natural might of innate casters. These arcanists seek to discover the mysterious laws of magic and through will and expertise bend those forces to their whims. Arcanists are the shapers and tinkers of the arcane world, and no magic can resist their control.

Role: Arcanists are scholars of all things magical. They constantly seek out new forms of magic to discover how they work, and in many cases, to collect the energy of such magic for their own uses. Many arcanists are seen as reckless, more concerned with the potency of magic than the ramifications of unleashing such power.

Alignment: Any.")

braw = Klass.create!(name: "Brawler", hit_die: 10, skill_ranks: 4, fortitude: 0.5, reflex: 0.5, will: 0.34, img_url: "https://i3.wp.com/img00.deviantart.net/5ffd/i/2016/229/6/d/female_wood_elf_brawler_by_nikolaiostertag-dae85qt.jpg", description: "Deadly even with nothing in her hands, a brawler eschews using the fighter’s heavy armor and the monk’s mysticism, focusing instead on perfecting many styles of brutal unarmed combat. Versatile, agile, and able to adapt to most enemy attacks, a brawler’s body is a powerful weapon.

Role: Brawlers are maneuverable and well suited for creating flanking situations or dealing with lightly armored enemies, as well as quickly adapting to a rapidly changing battlefield.

Alignment: Any.")

bard = Klass.create!(name: "Bard", hit_die: 8, skill_ranks: 6, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: "https://i.pinimg.com/originals/09/4c/27/094c279e4763d248da26622fb9654054.png", description: "Untold wonders and secrets exist for those skillful enough to discover them. Through cleverness, talent, and magic, these cunning few unravel the wiles of the world, becoming adept in the arts of persuasion, manipulation, and inspiration. Typically masters of one or many forms of artistry, bards possess an uncanny ability to know more than they should and use what they learn to keep themselves and their allies ever one step ahead of danger. Bards are quick-witted and captivating, and their skills might lead them down many paths, be they gamblers or jacks-of-all-trades, scholars or performers, leaders or scoundrels, or even all of the above. For bards, every day brings its own opportunities, adventures, and challenges, and only by bucking the odds, knowing the most, and being the best might they claim the treasures of each.

Role: Bards capably confuse and confound their foes while inspiring their allies to ever-greater daring. While accomplished with both weapons and magic, the true strength of bards lies outside melee, where they can support their companions and undermine their foes without fear of interruptions to their performances.

Alignment: Any")

# /////////////////////////////////////////
# <-*-*-----*-*-*- Class Features!-*-*-*-----*-*->
# /////////////////////////////////////////

oracle1 = KlassFeature.create!(klass_id: oracle.id, name: "Weapon and Armor Proficiency", level_learned: 1, description: "Oracles are proficient with all simple weapons, light armor, medium armor, and shields (except tower shields). Some oracle revelations grant additional proficiencies.")

oracle2 = KlassFeature.create!(klass_id: oracle.id, name: "Spellcasting", level_learned: 1, description: "An oracle casts divine spells drawn from the cleric spell lists. She can cast any spell she knows without preparing it ahead of time. To learn or cast a spell, an oracle must have a Charisma score equal to at least 10 + the spell level. The Difficulty Class for a saving throw against an oracle’s spell is 10 + the spell’s level + the oracle’s Charisma modifier (see FAQ).

Like other spellcasters, an oracle can cast only a certain number of spells per day of each spell level. Her base daily spell allotment is given on Table: Oracle. In addition, she receives bonus spells per day if she has a high Charisma score (see Table: Ability Modifiers and Bonus Spells).

Unlike other divine spellcasters, an oracle’s selection of spells is extremely limited. An oracle begins play knowing four 0-level spells and two 1st-level spells of her choice. At each new oracle level, she gains one or more new spells, as indicated on Table: Oracle Spells Known. Unlike spells per day, the number of spells an oracle knows is not affected by her Charisma score; the numbers on Table: Oracle Spells Known are fixed.

In addition to the spells gained by oracles as they gain levels, each oracle also adds all of either the cure spells or the inflict spells to her list of spells known (cure spells include all spells with “cure” in the name, inflict spells include all spells with “inflict” in the name). These spells are added as soon as the oracle is capable of casting them. This choice is made when the oracle gains her first level and cannot be changed.

Upon reaching 4th level, and at every even-numbered oracle level after that (6th, 8th, and so on), an oracle can choose to learn a new spell in place of one she already knows. In effect, the oracle loses the old spell in exchange for the new one. The new spell’s level must be the same as that of the spell being exchanged. An oracle may swap only a single spell at any given level, and must choose whether or not to swap the spell at the same time that she gains new spells known for the level. She cannot swap any cure or inflict spells, nor can she swap any spells gained from her mystery. Unlike a cleric, an oracle need not prepare her spells in advance. She can cast any spell she knows at any time, assuming she has not yet used up her spells per day for that spell level. Oracles do not need to provide a divine focus to cast spells that list divine focus (DF) as part of the components.")

  witch1 = KlassFeature.create!(klass_id: witch.id, name: "Weapon and Armor Proficiency", level_learned: 1, description: "Witches are proficient with all simple weapons. They are not proficient with any type of armor or shield. Armor interferes with a witch’s gestures, which can cause her spells with somatic components to fail.")

  witch2 = KlassFeature.create!(klass_id: witch.id, name: "Spells", level_learned: 1, description: "A witch casts arcane spells drawn from the witch spell list. A witch must choose and prepare her spells ahead of time.

  To learn or cast a spell, a witch must have an Intelligence score equal to at least 10 + the spell level. The Difficulty Class for a saving throw against a witch’s spell is 10 + the spell level + the witch’s Intelligence modifier.

  A witch can cast only a certain number of spells of each spell level per day. Her base daily spell allotment is given on Table: Witch. In addition, she receives bonus spells per day if she has a high Intelligence score (see Table: Ability Modifiers and Bonus Spells).

  A witch may know any number of spells. She must choose and prepare her spells ahead of time by getting 8 hours of sleep and spending 1 hour communing with her familiar. While communing, the witch decides which spells to prepare.

  Cantrips Witches can prepare a number of cantrips, or 0-level spells, each day, as noted on Table: Witch under “Spells per Day.” These spells are cast like any other spell, but they are not expended when cast and may be used again. Cantrips prepared using other spell slots, due to metamagic feats for example, are expended normally.")

  witch3 = KlassFeature.create!(klass_id: witch.id, name: "Hex", level_learned: 1, description: "Witches learn a number of magic tricks, called hexes, that grant them powers or weaken foes. At 1st level, a witch gains one hex of her choice. She gains an additional hex at 2nd level and for every 2 levels attained after 2nd level, as noted on Table: Witch. A witch cannot select an individual hex more than once.

  Unless otherwise noted, using a hex is a standard action that does not provoke an attack of opportunity. The save to resist a hex is equal to 10 + 1/2 the witch’s level + the witch’s Intelligence modifier.")

# /////////////////////////////////////////
# <-*-*-----*-*-*- Class Feature Details!-*-*-*-----*-*->
# /////////////////////////////////////////

Spellcasting.create!(klass_feature_id: oracle2.id, ability_score: "Charisma", prepared: false, limited: true)

Spellcasting.create!(klass_feature_id: witch2.id, ability_score: "Intelligence", prepared: true, limited: true)


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



# /////////////////////////////////////////
# <-*-*-----*-*-*- Class Skillset Skills!-*-*-*-----*-*->
# /////////////////////////////////////////
ClassSkillsetSkill.create!(klass_id: u_bar.id, skillset_id: dmc.id, skill_id: acro.id)
ClassSkillsetSkill.create!(klass_id: u_bar.id, skillset_id: dmc.id, skill_id: clim.id)
ClassSkillsetSkill.create!(klass_id: u_bar.id, skillset_id: dmc.id, skill_id: craf.id)
ClassSkillsetSkill.create!(klass_id: u_bar.id, skillset_id: dmc.id, skill_id: hand.id)
ClassSkillsetSkill.create!(klass_id: u_bar.id, skillset_id: dmc.id, skill_id: inti.id)
ClassSkillsetSkill.create!(klass_id: u_bar.id, skillset_id: dmc.id, skill_id: unc_natu.id)
ClassSkillsetSkill.create!(klass_id: u_bar.id, skillset_id: dmc.id, skill_id: perc.id)
ClassSkillsetSkill.create!(klass_id: u_bar.id, skillset_id: dmc.id, skill_id: prof.id)
ClassSkillsetSkill.create!(klass_id: u_bar.id, skillset_id: dmc.id, skill_id: surv.id)
ClassSkillsetSkill.create!(klass_id: u_bar.id, skillset_id: dmc.id, skill_id: swim.id)

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

ClassSkillsetSkill.create!(klass_id: u_rogue.id, skillset_id: dmc.id, skill_id: acro.id)
ClassSkillsetSkill.create!(klass_id: u_rogue.id, skillset_id: dmc.id, skill_id: bluf.id)
ClassSkillsetSkill.create!(klass_id: u_rogue.id, skillset_id: dmc.id, skill_id: clim.id)
ClassSkillsetSkill.create!(klass_id: u_rogue.id, skillset_id: dmc.id, skill_id: craf.id)
ClassSkillsetSkill.create!(klass_id: u_rogue.id, skillset_id: dmc.id, skill_id: dipl.id)
ClassSkillsetSkill.create!(klass_id: u_rogue.id, skillset_id: dmc.id, skill_id: disg.id)
ClassSkillsetSkill.create!(klass_id: u_rogue.id, skillset_id: dmc.id, skill_id: unc_fine.id)
ClassSkillsetSkill.create!(klass_id: u_rogue.id, skillset_id: dmc.id, skill_id: inti.id)
ClassSkillsetSkill.create!(klass_id: u_rogue.id, skillset_id: dmc.id, skill_id: inve.id)
ClassSkillsetSkill.create!(klass_id: u_rogue.id, skillset_id: dmc.id, skill_id: ling.id)
ClassSkillsetSkill.create!(klass_id: u_rogue.id, skillset_id: dmc.id, skill_id: perc.id)
ClassSkillsetSkill.create!(klass_id: u_rogue.id, skillset_id: dmc.id, skill_id: perf.id)
ClassSkillsetSkill.create!(klass_id: u_rogue.id, skillset_id: dmc.id, skill_id: prof.id)
ClassSkillsetSkill.create!(klass_id: u_rogue.id, skillset_id: dmc.id, skill_id: sens.id)
ClassSkillsetSkill.create!(klass_id: u_rogue.id, skillset_id: dmc.id, skill_id: unc_soci.id)
ClassSkillsetSkill.create!(klass_id: u_rogue.id, skillset_id: dmc.id, skill_id: stea.id)
ClassSkillsetSkill.create!(klass_id: u_rogue.id, skillset_id: dmc.id, skill_id: swim.id)

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

ClassSkillsetSkill.create!(klass_id: arc.id, skillset_id: dmc.id, skill_id: craf.id)
ClassSkillsetSkill.create!(klass_id: arc.id, skillset_id: dmc.id, skill_id: ling.id)
ClassSkillsetSkill.create!(klass_id: arc.id, skillset_id: dmc.id, skill_id: unc_natu.id)
ClassSkillsetSkill.create!(klass_id: arc.id, skillset_id: dmc.id, skill_id: prof.id)
ClassSkillsetSkill.create!(klass_id: arc.id, skillset_id: dmc.id, skill_id: unc_reli.id)
ClassSkillsetSkill.create!(klass_id: arc.id, skillset_id: dmc.id, skill_id: unc_soci.id)
ClassSkillsetSkill.create!(klass_id: arc.id, skillset_id: dmc.id, skill_id: unc_spel.id)

ClassSkillsetSkill.create!(klass_id: braw.id, skillset_id: dmc.id, skill_id: acro.id)
ClassSkillsetSkill.create!(klass_id: braw.id, skillset_id: dmc.id, skill_id: clim.id)
ClassSkillsetSkill.create!(klass_id: braw.id, skillset_id: dmc.id, skill_id: craf.id)
ClassSkillsetSkill.create!(klass_id: braw.id, skillset_id: dmc.id, skill_id: hand.id)
ClassSkillsetSkill.create!(klass_id: braw.id, skillset_id: dmc.id, skill_id: inti.id)
ClassSkillsetSkill.create!(klass_id: braw.id, skillset_id: dmc.id, skill_id: perc.id)
ClassSkillsetSkill.create!(klass_id: braw.id, skillset_id: dmc.id, skill_id: prof.id)
ClassSkillsetSkill.create!(klass_id: braw.id, skillset_id: dmc.id, skill_id: sens.id)
ClassSkillsetSkill.create!(klass_id: braw.id, skillset_id: dmc.id, skill_id: unc_soci.id)
ClassSkillsetSkill.create!(klass_id: braw.id, skillset_id: dmc.id, skill_id: swim.id)

ClassSkillsetSkill.create!(klass_id: swash.id, skillset_id: dmc.id, skill_id: acro.id)
ClassSkillsetSkill.create!(klass_id: swash.id, skillset_id: dmc.id, skill_id: bluf.id)
ClassSkillsetSkill.create!(klass_id: swash.id, skillset_id: dmc.id, skill_id: clim.id)
ClassSkillsetSkill.create!(klass_id: swash.id, skillset_id: dmc.id, skill_id: craf.id)
ClassSkillsetSkill.create!(klass_id: swash.id, skillset_id: dmc.id, skill_id: dipl.id)
ClassSkillsetSkill.create!(klass_id: swash.id, skillset_id: dmc.id, skill_id: unc_fine.id)
ClassSkillsetSkill.create!(klass_id: swash.id, skillset_id: dmc.id, skill_id: inti.id)
ClassSkillsetSkill.create!(klass_id: swash.id, skillset_id: dmc.id, skill_id: perc.id)
ClassSkillsetSkill.create!(klass_id: swash.id, skillset_id: dmc.id, skill_id: perf.id)
ClassSkillsetSkill.create!(klass_id: swash.id, skillset_id: dmc.id, skill_id: prof.id)
ClassSkillsetSkill.create!(klass_id: swash.id, skillset_id: dmc.id, skill_id: sens.id)
ClassSkillsetSkill.create!(klass_id: swash.id, skillset_id: dmc.id, skill_id: unc_soci.id)
ClassSkillsetSkill.create!(klass_id: swash.id, skillset_id: dmc.id, skill_id: swim.id)

ClassSkillsetSkill.create!(klass_id: vig.id, skillset_id: dmc.id, skill_id: acro.id)
ClassSkillsetSkill.create!(klass_id: vig.id, skillset_id: dmc.id, skill_id: bluf.id)
ClassSkillsetSkill.create!(klass_id: vig.id, skillset_id: dmc.id, skill_id: clim.id)
ClassSkillsetSkill.create!(klass_id: vig.id, skillset_id: dmc.id, skill_id: craf.id)
ClassSkillsetSkill.create!(klass_id: vig.id, skillset_id: dmc.id, skill_id: dipl.id)
ClassSkillsetSkill.create!(klass_id: vig.id, skillset_id: dmc.id, skill_id: disg.id)
ClassSkillsetSkill.create!(klass_id: vig.id, skillset_id: dmc.id, skill_id: unc_fine.id)
ClassSkillsetSkill.create!(klass_id: vig.id, skillset_id: dmc.id, skill_id: inti.id)
ClassSkillsetSkill.create!(klass_id: vig.id, skillset_id: dmc.id, skill_id: inve.id)
ClassSkillsetSkill.create!(klass_id: vig.id, skillset_id: dmc.id, skill_id: perc.id)
ClassSkillsetSkill.create!(klass_id: vig.id, skillset_id: dmc.id, skill_id: perf.id)
ClassSkillsetSkill.create!(klass_id: vig.id, skillset_id: dmc.id, skill_id: prof.id)
ClassSkillsetSkill.create!(klass_id: vig.id, skillset_id: dmc.id, skill_id: sens.id)
ClassSkillsetSkill.create!(klass_id: vig.id, skillset_id: dmc.id, skill_id: unc_soci.id)
ClassSkillsetSkill.create!(klass_id: vig.id, skillset_id: dmc.id, skill_id: stea.id)
ClassSkillsetSkill.create!(klass_id: vig.id, skillset_id: dmc.id, skill_id: surv.id)
ClassSkillsetSkill.create!(klass_id: vig.id, skillset_id: dmc.id, skill_id: swim.id)


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

# /////////////////////////////////////////
# <-*-*-----*-*-*- Spell Components!-*-*-*-----*-*->
# /////////////////////////////////////////

verbal = Component.create!(name: "Verbal", description: "A verbal component is a spoken incantation. To provide a verbal component, you must be able to speak in a strong voice. A silence spell or a gag spoils the incantation (and thus the spell). a spellcaster who has been deafened has a 20% chance of spoiling any spell with a verbal component that he tries to cast.")
somatic = Component.create!(name: "Somatic", description: "A somatic component is a measured and precise movement of the hand. You must have at least one hand free to provide a somatic component.")
material = Component.create!(name: "Material", description: "A material component consists of one or more physical substances or objects that are annihilated by the spell energies in the casting process. Unless a cost is given for a material component, the cost is negligible. Don’t bother to keep track of material components with negligible cost. Assume you have all you need as long as you have your spell component pouch.")
focus = Component.create!(name: "Focus", description: "A focus component is a prop of some sort. Unlike a material component, a focus is not consumed when the spell is cast and can be reused. As with material components, the cost for a focus is negligible unless a price is given. Assume that focus components of negligible cost are in your spell component pouch.")
divine_focus = Component.create!(name: "Divine Focus", description: "A divine focus component is an item of spiritual significance. The divine focus for a cleric or a paladin is a holy symbol appropriate to the character’s faith. The divine focus for a druid or a ranger is a sprig of holly, or some other sacred plant.

If the Components line includes F/DF or M/DF, the arcane version of the spell has a focus component or a material component (the abbreviation before the slash) and the divine version has a divine focus component (the abbreviation after the slash).")

# /////////////////////////////////////////
# <-*-*-----*-*-*- Actions-*-*-*-----*-*->
# /////////////////////////////////////////

standard = Action.create!(name: "Standard Action")
full_round = Action.create!(name: "Full-Round Action")
move = Action.create!(name: "Move Action")
swift = Action.create!(name: "Swift Action")
free = Action.create!(name: "Free Action")
immediate = Action.create!(name: "Immediate Action")

# /////////////////////////////////////////
# <-*-*-----*-*-*- Spell Ranges-*-*-*-----*-*->
# /////////////////////////////////////////

personal = SpellRange.create!(name: "Personal", feet: 0, increase_per_level: 0, description: "The spell affects only you.")
touch = SpellRange.create!(name: "Touch", feet: 0, increase_per_level: 0, description: "You must touch a creature or object to affect it. A touch spell that deals damage can score a critical hit just as a weapon can. A touch spell threatens a critical hit on a natural roll of 20 and deals double damage on a successful critical hit. Some touch spells allow you to touch multiple targets. You can touch up to 6 willing targets as part of the casting, but all targets of the spell must be touched in the same round that you finish casting the spell. If the spell allows you to touch targets over multiple rounds, touching 6 creatures is a full-round action.")
close = SpellRange.create!(name: "Close", feet: 25, increase_per_level: 2.5, description: "The spell reaches as far as 25 feet away from you. The maximum range increases by 5 feet for every two full caster levels.")
medium = SpellRange.create!(name: "Medium", feet: 100, increase_per_level: 10, description: "The spell reaches as far as 100 feet + 10 feet per caster level.")
long = SpellRange.create!(name: "Long", feet: 400, increase_per_level: 40, description: "The spell reaches as far as 400 feet + 40 feet per caster level.")
unlimited = SpellRange.create!(name: "Unlimited", feet: 1000000, increase_per_level: 0, description: "The spell reaches anywhere on the same plane of existence.")


# /////////////////////////////////////////
# <-*-*-----*-*-*- Subschools!-*-*-*-----*-*->
# /////////////////////////////////////////

charm = Subschool.create!(name: "Charm", description: "A charm spell changes how the subject views you, typically making it see you as a good friend.")
mind_affecting = Subschool.create!(name: "Mind-Affecting", description: "Mindless creatures (those with an Intelligence score of “—”) and undead are immune to mind-affecting effects.")

# /////////////////////////////////////////
# <-*-*-----*-*-*- Spells!-*-*-*-----*-*->
# /////////////////////////////////////////


sp1 = Spell.create!(name: "Charm Person", description: "This charm makes a humanoid creature regard you as its trusted friend and ally (treat the target’s attitude as friendly). If the creature is currently being threatened or attacked by you or your allies, however, it receives a +5 bonus on its saving throw.

The spell does not enable you to control the charmed person as if it were an automaton, but it perceives your words and actions in the most favorable way. You can try to give the subject orders, but you must win an opposed Charisma check to convince it to do anything it wouldn’t ordinarily do. (Retries are not allowed.) An affected creature never obeys suicidal or obviously harmful orders, but it might be convinced that something very dangerous is worth doing. Any act by you or your apparent allies that threatens the charmed person breaks the spell. You must speak the person’s language to communicate your commands, or else be good at pantomiming.", target: "one humanoid creature", saving_throw: "Will", spell_resistance: true, action_id: standard.id, spell_range_id: close.id, magic_school_id: enchantment.id, duration: "1 hour/lvl", time: 1, unit_of_time: "hour", increase_per_level: 1, dismissible: false, concentration: false)

SpellSubschool.create!(spell_id: sp1.id, subschool_id: charm.id)
SpellSubschool.create!(spell_id: sp1.id, subschool_id: mind_affecting.id)
SpellComponent.create!(spell_id: sp1.id, component_id: verbal.id)
SpellComponent.create!(spell_id: sp1.id, component_id: somatic.id)
ks1 = KlassSpell.create!(klass_id: witch.id, spell_id: sp1.id, spell_level: 1)
# Spell.create!(name: "", description: "", target: "", savingt_throw: "", spell_resistance: false, action_id: , range_id: , magic_school_id:, duration: "", time: , unit_of_time: "", increase_per_level: dismissible: false, concentration: false)
# Spell.create!(name: "", description: "", target: "", savingt_throw: "", spell_resistance: false, action_id: , range_id: , magic_school_id:, duration: "", time: , unit_of_time: "", increase_per_level: dismissible: false, concentration: false)
# # Spell.create!(name: "", description: "", target: "", savingt_throw: "", spell_resistance: false, action_id: , range_id: , magic_school_id:, duration: "", time: , unit_of_time: "", increase_per_level: dismissible: false, concentration: false)
# Spell.create!(name: "", description: "", target: "", savingt_throw: "", spell_resistance: false, action_id: , range_id: , magic_school_id:, duration: "", time: , unit_of_time: "", increase_per_level: dismissible: false, concentration: false)

# /////////////////////////////////////////
# <-*-*-----*-*-*- Character!-*-*-*-----*-*->
# /////////////////////////////////////////

character = Character.create!(user_id: admin.id, name: "Persephone", strength: 5, dexterity: 12, constitution: 11, intelligence: 16, wisdom: 10, charisma: 13, race_id: cha.id, skillset_id: dmc.id)

CharacterKlass.create!(character_id: character.id, klass_id: witch.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 1)
CharacterKlass.create!(character_id: character.id, klass_id: witch.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 2)
CharacterKlass.create!(character_id: character.id, klass_id: witch.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 3)
CharacterKlass.create!(character_id: character.id, klass_id: witch.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 4)
CharacterKlass.create!(character_id: character.id, klass_id: witch.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 5)

# /////////////////////////////////////////
# <-*-*-----*-*-*- Prepared Spells!-*-*-*-----*-*->
# /////////////////////////////////////////

PreparedSpell.create!(klass_spell_id: ks1.id, character_id: character.id, spell_level: 1)
