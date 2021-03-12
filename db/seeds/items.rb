backpack_common = Item.create!(name: "Common Backpack", category: "adventuring gear", description: "This leather knapsack has one large pocket that closes with a buckled strap and holds about 2 cubic feet of material. Some may have one or more smaller pockets on the sides.", weight: 2, price_in_gp: 2)

backpack_masterwork = Item.create!(name: "Masterwork Backpack", category: "adventuring gear", description: "This backpack has numerous pockets for storing items that might be needed while adventuring. Hooks are included for attaching items such as canteens, pouches, or even a rolled-up blanket. It has padded bands that strap across the chest and the waist to distribute its weight more evenly. Like a common backpack, it can hold about 2 cubic feet of material in its main container. When wearing a masterwork backpack, treat your Strength score as +1 higher than normal when calculating your carrying capacity.", weight: 4, price_in_gp: 50)

cup = Item.create!(name: "Cup", category: "mundane gear", description: "A common cup, carved of wood.", weight: 0, price_in_gp: 0.01)

spoon = Item.create!(name: "Spoon", category: "mundane gear", description: "A simple wooden spoon.", weight: 0, price_in_gp: 0.01)

fork = Item.create!(name: "Fork", category: "mundane gear", description: "A simple wooden fork.", weight: 0, price_in_gp: 0.01)

knife = Item.create!(name: "Knife", category: "mundane gear", description: "A simple metal knife with no sharp edge.", weight: 0, price_in_gp: 0.01)

plate = Item.create!(name: "Plate", category: "mundane gear", description: "A carved wooden plate.", weight: 0, price_in_gp: 0.1)

bowl = Item.create!(name: "Bowl", category: "mundane gear", description: "A cheap ceramic bowl.", weight: 0, price_in_gp: 0.1)

garbage_mat = Item.create!(name: "Garbage Mat", category: "mundane gear", description: "A placemat made of refuse.", weight: 0, price_in_gp: 0)

olive_oil = Item.create!(name: "Olive Oil", category: "food and drink", description: "Tall, narrow, ceramic container of olive oil.", weight: 1, price_in_gp: 5)

pot_common = Item.create!(name: "Common Pot", category: "adventuring gear", description: "This 8-inch diameter iron pot is sturdy and has feet, a lid, and a rounded handle. It can hold enough stew to feed one hungry human for one meal.", weight: 4, price_in_gp: 0.8)

pot_mithril = Item.create!(name: "Mithril Pot", category: "adventuring gear", description: "This 8-inch diameter mithril pot is sturdy and has feet, a lid, and a rounded handle. It can hold enough stew to feed one hungry human for one meal. A mithril pot is lighter than an iron pot and food rarely sticks to it.", weight: 2, price_in_gp: 2001)

harrow_deck = Item.create!(name: "Harrow Deck", category: "adventuring gear", description: "This is a traditional fortune-telling deck of cards used by soothsayers and seers. Some harrow decks are elaborately illustrated, but most are parchment or paper cards with hand-painted images. Harrow decks are often handed down through generations and treated with utmost care by their users as a result.", weight: 0, price_in_gp: 100)

thieves_tools_common = Item.create!(name: "Common Thieves' Tools", category: "tool and skill kit", description: "This kit contains lockpicks and other tools you need to use the Disable Device skill. Without these tools, you must use improvised tools, and you take a -2 circumstance penalty on Disable Device checks.", weight: 1, price_in_gp: 30)

thieves_tools_masterwork = Item.create!(name: "Masterwork Thieves' Tools", category: "tool and skill kit", description: "This kit contains lockpicks and other tools you need to use the Disable Device skill. Without these tools, you must use improvised tools, and you take a -2 circumstance penalty on Disable Device checks. This kit contains extra tools and tools of better make, which grant a +2 circumstance bonus on Disable Device checks.", weight: 2, price_in_gp: 100)

alchemists_lab = Item.create!(name: "Alchemist's Lab", category: "tool and skill kit", description: "This lab is used for making alchemical items, and provides a +2 circumstance bonus on Craft (alchemy) checks. It has no bearing on the costs related to the Craft (alchemy) skill. Without this lab, a character with the Craft (alchemy) skill is assumed to have enough tools to use the skill but not enough to get the +2 bonus that the lab provides.", weight: 40, price_in_gp: 200)

blacksmith_anvil = Item.create!(name: "Blacksmith Anvil", category: "tool and skill kit", description: "While anvil sizes vary depending on the type of smithing for which they are used, all anvils have the same basic shape and construction. Blacksmith anvils are much heavier and larger (100 pounds) than farrier anvils (50 pounds), which in turn are much bigger than silver- or goldsmith anvils (10 pounds). Many metalworking tasks are impossible without the proper anvil.", weight: 100, price_in_gp: 5)

silk_rope = Item.create!(name: "Silk Rope", category: "adventuring gear", description: "This 50-foot length of silk rope has 4 hit points and can be broken with a DC 24 Strength check. The DC to escape silk rope bonds is equal to 20 + the CMB of the creature that tied the bonds. Ropes do not need to make a check every round to maintain the pin. If the DC to escape is higher than 20 + the tying creatures CMB, the tied up creature cannot escape from the bonds, even with a natural 20 on the check.", weight: 10, price_in_gp: 5)

caltrop = Item.create!(name: "Caltrop", category: "weapon and armor accessories", description: "TA caltrop is a four-pronged metal spike crafted so that one prong faces up no matter how the caltrop comes to rest. You scatter caltrops on the ground in the hope that your enemies step on them or are at least forced to slow down to avoid them. One 2-pound bag of caltrops covers an area 5 feet square.

Each time a creature moves into an area covered by caltrops (or spends a round fighting while standing in such an area), it runs the risk of stepping on one. Make an attack roll for the caltrops (base attack bonus +0) against the creature. For this attack, the creature’s shield, armor, and deflection bonuses do not count. If the creature is wearing shoes or other footwear, it gets a +2 armor bonus to AC. If the attack succeeds, the creature has stepped on a caltrop. The caltrop deals 1 point of damage, and the creature’s speed is reduced by half because its foot is wounded. This movement penalty lasts for 24 hours, until the creature is successfully treated with a DC 15 Heal check, or until it receives at least 1 point of magical healing. A charging or running creature must immediately stop if it steps on a caltrop. Any creature moving at half speed or slower can pick its way through a bed of caltrops with no trouble.

Caltrops may not work against unusual opponents.", weight: 2, price_in_gp: 1)

vicious_caltrop = Item.create!(name: "Vicious Caltrop", category: "weapon and armor accessories", description: "These specially modified caltrops have clusters of needle-sharp spines that are slightly longer and more brittle than those on normal caltrops. Like standard caltrops, a 2-pound bag of vicious caltrops covers a 5-foot-square area.

Each time a creature moves into an area covered by caltrops (or spends a round fighting while standing in such an area), it runs the risk of stepping on one. Make an attack roll for the caltrops (base attack bonus +4) against the creature. For this attack, the creature’s shield, armor, and deflection bonuses do not count. If the creature is wearing shoes or other footwear, it gets a +2 armor bonus to AC. If the attack succeeds, the creature has stepped on a caltrop. The caltrop deals 1d2 point of damage, and the creature’s speed is reduced by half because its foot is wounded. This movement penalty lasts for 24 hours, until the creature is successfully treated with a DC 20 Heal check, or until it receives at least 1 point of magical healing. A charging or running creature must immediately stop if it steps on a caltrop. Any creature moving at half speed or slower can pick its way through a bed of caltrops with no trouble.

Caltrops may not work against unusual opponents.", weight: 4, price_in_gp: 50)

flash_powder = Item.create!(name: "Flash Powder", category: "alchemical weapons", description: "This coarse gray powder ignites and burns almost instantly if exposed to flame, significant friction, or even simple force such as throwing it against a floor (a standard action). Creatures within a 10-foot-radius burst are blinded for 1 round (Fortitude DC 13 negates).", weight: 0, price_in_gp: 50, craft_skill: "alchemy", craft_dc: 20)

smoke_pellet = Item.create!(name: "Smoke Pellet", category: "alchemical creations", description: "This small clay sphere contains two alchemical substances separated by a thin barrier. When you break the sphere, the substances mingle and fill a 5-foot square with a cloud of foul but harmless yellow smoke. The smoke pellet acts as a smokestick, except the smoke only lasts for 1 round before dispersing. You may throw a smoke pellet as a ranged touch attack with a range increment of 10 feet.", weight: 0, price_in_gp: 25, craft_skill: "alchemy", craft_dc: 20)

marbles = Item.create!(name: "Marbles", category: "adventuring gear", description: "Like caltrops, marbles can be used to slow down opponents. One 2-pound bag of marbles covers an area 5 feet square. A creature entering a square with marbles scattered on it must make a DC 10 Reflex save or fall prone (the creature’s stability bonus to trip applies to this save). Any creature moving at half speed or slower can pick its way through a square of marbles with no trouble.", weight: 2, price_in_gp: 0.8)

ivory_domino = Item.create!(name: "Ivory Domino", category: "adventuring gear", description: "This wooden box contains 28 tiles with numbers or pips on each end. A common set is made of wood or bone, but more expensive ones may be made of ivory, stone, or metal.", weight: 0.1, price_in_gp: 1)

journal = Item.create!(name: "Journal", category: "mundane goods", description: "This is a blank, lightweight book with an oilskin cover. It has 50 paper pages.", weight: 1, price_in_gp: 10)

ink = Item.create!(name: "Ink", category: "mundane goods", description: "This vial contains 1 ounce of ink. Ink in colors other than black costs twice as much.", weight: 0, price_in_gp: 8)

inkpen = Item.create!(name: "Inkpen", category: "mundane goods", description: "This is a wooden stylus with a metal tip that retains a small amount of ink after you dip it in a vial of ink.", weight: 0, price_in_gp: 0.8)

chalk = Item.create!(name: "Chalk", category: "mundane goods", description: "This fat piece of white chalk easily marks wood, metal, or stone. You can write with it for about 24 hours before it is expended. Chalk also comes in other colors, but these are rarer and can be more expensive.", weight: 0, price_in_gp: 0.01)

charcoal = Item.create!(name: "Charcoal", category: "mundane goods", description: "Sticks of charcoal are useful for marking floors and walls, writing on paper or parchment, and making rubbings of engravings or other markings. In a pinch, they can even be burned to stay warm. A good quality rubbing generally takes 1 minute per sheet of paper.", weight: 0, price_in_gp: 0.05)

cards = Item.create!(name: "Cards", category: "mundane goods", description: "Playing cards range from block-printed symbols on thick paper to elaborate, hand-painted works of art on waxed vellum, ivory, wood, or even metal. Standard, cheap playing cards.", weight: 1, price_in_gp: 0.1)

signet_ring = Item.create!(name: "Signet Ring", category: "clothing, outfits, accessories", description: "This ring has an embossed design, typically a family crest or official icon. You press a signet ring into softened wax to leave an impression of this symbol.", weight: 0, price_in_gp: 5)

entertainers_outfit = Item.create!(name: "Entertainer's Outfit", category: "clothing, outfits, accessories", description: "This set of flashy—perhaps even gaudy—clothes is for entertaining. While the outfit looks whimsical, its practical design lets you tumble, dance, walk a tightrope, or just run (if the audience turns ugly).", weight: 4, price_in_gp: 3)

belt_pouch = Item.create!(name: "Belt Pouch", category: "clothing, outfits, accessories", description: "A belt pouch is crafted of soft cloth or leather. They typically hold up to 10 lb. or 1/5 cubic ft. of items.", weight: 0.5, price_in_gp: 1)

spell_components_pouch = Item.create!(name: "Spell Components Pouch", category: "clothing, outfits, accessories", description: "A spellcaster with a spell component pouch is assumed to have all the material components and focuses needed for spellcasting, except for those components that have a specific cost, divine focuses, and focuses that wouldn’t fit in a pouch.", weight: 2, price_in_gp: 5)

flask = Item.create!(name: "Flask", category: "adventuring gear", description: "A flask holds 1 pint of liquid and weighs 1 lb. when full.", weight: 1.5, price_in_gp: 0.03)

peasants_outfit = Item.create!(name: "Peasant's Outfit", category: "clothing, outfits, accessories", description: "This set of clothes consists of a loose shirt and baggy breeches, or a loose shirt and skirt or overdress. Cloth wrappings are used for shoes.", weight: 2, price_in_gp: 0.1)

lamp_oil = Item.create!(name: "Lamp Oil", category: "alchemical creations", description: "A pint of lamp oil burns for 6 hours in a common lantern or lamp. You can also use a flask of lamp oil as a splash weapon. Use the rules for alchemist’s fire, except that it takes a full-round action to prepare a flask with a fuse. Once it is thrown, there is a 50% chance of the flask igniting successfully.

You can pour a pint of oil on the ground to cover an area 5 feet square, provided that the surface is smooth. If lit, the oil burns for 2 rounds and deals 1d3 points of fire damage to each creature in the area.", weight: 1, price_in_gp: 0.1)

whiskey_bottle = Item.create!(name: "Whiskey Bottle", category: "food and drink", description: "This single-malt smooth rye whiskey is a favorite of old soldiers everywhere.", weight: 1, price_in_gp: 0.5)

pack_of_cloves = Item.create!(name: "Pack of Cloves", category: "food and drink", description: "", weight: 0.1, price_in_gp: 1)

tindertwig = Item.create!(name: "Tindertwig", category: "alchemical creations", description: "The alchemical substance on the end of this small, wooden stick ignites when struck against a rough surface. Creating a flame with a tindertwig is much faster than creating a flame with flint and steel (or a magnifying glass) and tinder. Lighting a torch with a tindertwig is a standard action (rather than a full-round action), and lighting any other fire with one is at least a standard action.", weight: 0, price_in_gp: 1, craft_skill: "alchemy", craft_dc: 20)

iron_holy_symbol = Item.create!(name: "Iron Holy Symbol", category: "religious items", description: "A holy symbol focuses positive energy and is used by good clerics and paladins (or by neutral clerics who want to cast good spells or channel positive energy). Each religion has its own holy symbol. The material used to make the holy symbol has no effect on its powers, though a religion may place special significance on a particular material.", weight: 1, price_in_gp: 5)

magnet = Item.create!(name: "Magnet", category: "adventuring gear", description: "Handheld magnets are relatively weak and are mainly used to detect or pull iron, mithral, or adamantine at a short range. They are not powerful enough to tug metal over significant distances or aid in disarming creatures wielding metal weapons. This hand-sized horseshoe magnet can lift up to a 3-pound iron weight.", weight: 0.5, price_in_gp: 0.5)

bedroll = Item.create!(name: "Bedroll", category: "adventuring gear", description: "This consists of two woolen sheets sewn together along the bottom and one side to create a bag for sleeping in. Some have cloth straps along the open side so the bedroll can be tied closed while you are sleeping. It can be rolled and tied into a tight coil for storage or transport. Most people use a blanket with the bedroll to stay warm or provide a ground cushion.", weight: 5, price_in_gp: 0.1)

blanket = Item.create!(name: "Blanket", category: "adventuring gear", description: "This warm, woven blanket has straps so it can be rolled up and tied. Blankets are often used in conjunction with bedrolls to provide additional warmth or a ground cushion.", weight: 3, price_in_gp: 0.5)

flint_and_steel = Item.create!(name: "Flint and Steel", category: "adventuring gear", description: "Lighting a torch with a flint and steel is a full-round action. Lighting any other fire with them takes at least that long.", weight: 0, price_in_gp: 1)

harrow_carrying_case = Item.create!(name: "Harrow Carrying Case", category: "adventure gear", description: "This small darkwood case contains a recessed area to hold a harrow deck and harrow mat, as well as a compartment for incense. Nonmagical harrow cards are protected against rips, tears, water damages, bending, and flames so long as they are stored in a harrow carrying case.", weight: 2, price_in_gp: 10)

monks_outfit = Item.create!(name: "Monk's Outfit", category: "clothing, outfits, accessories", description: "This simple outfit includes sandals, loose breeches, and a loose shirt, and is bound together with sashes. The outfit is designed to give you maximum mobility, and it’s made of high-quality fabric. You can conceal small weapons in pockets hidden in the folds, and the sashes are strong enough to serve as short ropes.", weight: 2, price_in_gp: 5)


Item.create!(name: "Azorius Insignia Charm", category: "clothing, outfits, accessories", description: "A Charm with the Azorius Insignia. Proof of your membership to the Azorius Senate", weight: 0, price_in_gp: 10)
Item.create!(name: "Boros Insignia Charm", category: "clothing, outfits, accessories", description: "A Charm with the Boros Insignia. Proof of your membership to the Boros Legion", weight: 0, price_in_gp: 10)
Item.create!(name: "Dimir Insignia Charm", category: "clothing, outfits, accessories", description: "A Charm with the Dimir Insignia. Proof of your membership to House Dimir", weight: 0, price_in_gp: 10)
Item.create!(name: "Golgari Insignia Charm", category: "clothing, outfits, accessories", description: "A Charm with the Golgari Insignia. Proof of your membership to the Golgari Swarm", weight: 0, price_in_gp: 10)
Item.create!(name: "Gruul Insignia Charm", category: "clothing, outfits, accessories", description: "A Charm with the Gruul Insignia. Proof of your membership to a Gruul Clan", weight: 0, price_in_gp: 10)
Item.create!(name: "Izzet Insignia Charm", category: "clothing, outfits, accessories", description: "A Charm with the Izzet Insignia. Proof of your membership to the Izzet League", weight: 0, price_in_gp: 10)
Item.create!(name: "Orzhov Insignia Charm", category: "clothing, outfits, accessories", description: "A Charm with the Orzhov Insignia. Proof of your membership to the Orzhov Syndicate", weight: 0, price_in_gp: 10)
Item.create!(name: "Rakdos Insignia Charm", category: "clothing, outfits, accessories", description: "A Charm with the Rakdos Insignia. Proof of your membership to the Cult of Rakdos", weight: 0, price_in_gp: 10)
Item.create!(name: "Selesnya Insignia Charm", category: "clothing, outfits, accessories", description: "A Charm with the Selesnya Insignia. Proof of your membership to the Selesnya Conclave", weight: 0, price_in_gp: 10)
Item.create!(name: "Simic Insignia Charm", category: "clothing, outfits, accessories", description: "A Charm with the Simic Insignia. Proof of your membership to the Simic Combine", weight: 0, price_in_gp: 10)

# IDENTIFIER = Item.create!(name: "", category: "", description: "", weight: 0, price_in_gp: 0)

# IDENTIFIER = Item.create!(name: "", category: "", description: "", weight: 0, price_in_gp: 0)

Poison.create!(name: "Arsenic", affliction_type: "ingested", fortitude_dc: 13, onset: "10 min", frequency: "1/min for 4 mins", effect: "1d2 Con damage", cure: "1 save", price_in_gp: 120)
Poison.create!(name: "Drow Poison", affliction_type: "injury", fortitude_dc: 13, onset: "-", frequency: "1/min for 2 mins", effect: "Initial Effect: Unconscious for 1 minute/Secondary Effect: Unconscious for 2d4 hours", cure: "1 save", price_in_gp: 75)
# Poison.create!(name: "", affliction_type: "", fortitude_dc: 10, onset: "", frequency: "", effect: "", save: "", price_in_gp: 0)
# Poison.create!(name: "", affliction_type: "", fortitude_dc: 10, onset: "", frequency: "", effect: "", save: "", price_in_gp: 0)
# Poison.create!(name: "", affliction_type: "", fortitude_dc: 10, onset: "", frequency: "", effect: "", save: "", price_in_gp: 0)
