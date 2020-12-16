# /////////////////////////////////////////
# <-*-*-----*-*-*- Sources-*-*-*-----*-*->
# /////////////////////////////////////////

core_rulebook = Source.create!(title: "Core Rulebook", abbreviation: "CR", code: "PZO1110")
bestiary_1 = Source.create!(title: "Bestiary 1", abbreviation: "B1", code: "PZO1112")
advanced_players_guide = Source.create!(title: "Advanced Player's Guide", abbreviation: "APG", code: "PZO1115")
bestiary_2 = Source.create!(title: "Bestiary 2", abbreviation: "B2", code: "PZO1116")
ultimate_magic = Source.create!(title: "Ultimate Magic", abbreviation: "UM", code: "PZO1117")
ultimate_combat = Source.create!(title: "Ultimate Combat", abbreviation: "UC", code: "PZO1118")
bestiary_3 = Source.create!(title: "Bestiary 3", abbreviation: "B3", code: "PZO1120")
advanced_race_guide = Source.create!(title: "Advanced Race Guide", abbreviation: "ARG", code: "PZO1121")
bestiary_4 = Source.create!(title: "Bestiary 4", abbreviation: "B4", code: "PZO1127")
advanced_class_guide = Source.create!(title: "Advanced Class Guide", abbreviation: "ACG", code: "PZO1129")
occult_adventures = Source.create!(title: "Occult Adventures", abbreviation: "OA", code: "PZO1132")
bestiary_5 = Source.create!(title: "Bestiary 5", abbreviation: "B5", code: "PZO1133")
ultimate_intrigue = Source.create!(title: "Ultimate Intrigue", abbreviation: "UI", code: "PZO1134")
ultimate_wilderness = Source.create!(title: "Ultimate Wilderness", abbreviation: "UW", code: "PZO1140")
planar_adventures = Source.create!(title: "Planar Adventures", abbreviation: "PA", code: "PZO1141")
inner_sea_world_guide = Source.create!(title: "Pathfinder Campaign Setting: Inner Sea World Guide", abbreviation: "PCB: ISWG", code: "PZO9226")
inner_sea_bestiary = Source.create!(title: "Pathfinder Campaign Setting: Inner Sea Bestiary", abbreviation: "PCB: ISB", code: "PZO9251")
harrow_handbook = Source.create!(title: "Pathfinder Player Companion: The Harrow Handbook", abbreviation: "PPC: HH", code: "PZO9446")
blood_of_the_beast = Source.create!(title: "Pathfinder Player Companion: Blood of the Beast", abbreviation: "PPC: BotB", code: "PZO473")
custom = Source.create!(title: "Custom", abbreviation: "Custom", code: nil)

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
three_rounds = Action.create!(name: "Three Rounds")


# /////////////////////////////////////////
# <-*-*-----*-*-*- Skillsets!-*-*-*-----*-*->
# /////////////////////////////////////////
cr = Skillset.create!(name: "Core Rulebook")
dmc = Skillset.create!(name: "DMCustom")
ravnica_custom = Skillset.create!(name: "Ravnica Custom")


# /////////////////////////////////////////
# <-*-*-----*-*-*- Skills!-*-*-*-----*-*->
# /////////////////////////////////////////

acrobatics = Skill.create!(name: "Acrobatics", ability_score: "Dexterity", untrained: true, blurb: "You can keep your balance while traversing narrow or treacherous surfaces. You can also dive, flip, jump, and roll, avoiding attacks and confusing your opponents.", description: "You can use Acrobatics to move on narrow surfaces and uneven ground without falling. A successful check allows you to move at half speed across such surfaces—only one check is needed per round. Use the following table to determine the base DC, which is then modified by the Acrobatics skill modifiers noted below. While you are using Acrobatics in this way, you are considered flat-footed and lose your Dexterity bonus to your AC (if any). If you take damage while using Acrobatics, you must immediately make another Acrobatics check at the same DC to avoid falling or being knocked prone. *No Acrobatics check is needed to move across these surfaces unless the modifiers increase the DC to 10 or higher.

<table>
  <tr>
    <th>Surface Width</th>
    <th>Base Acrobatics DC</th>
  </tr>
  <tr>
    <td>Greater Than 3 Feet Wide</td>
    <td>0*</td>
  </tr>
  <tr>
    <td>1-3 Feet Wide</td>
    <td>5*</td>
  </tr>
  <tr>
    <td>7-11 Inches Wide</td>
    <td>10</td>
  </tr>
  <tr>
    <td>2-6 Inches Wide</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Less Than 2 Inches Wide</td>
    <td>20</td>
  </tr>
</table>

In addition, you can move through a threatened square without provoking an attack of opportunity from an enemy by using Acrobatics. When moving in this way, you move at half speed. You can move at full speed by increasing the DC of the check by 10. You cannot use Acrobatics to move past foes if your speed is reduced due to carrying a medium or heavy load or wearing medium or heavy armor. If an ability allows you to move at full speed under such conditions, you can use Acrobatics to move past foes. You can use Acrobatics in this way while prone, but doing so requires a full-round action to move 5 feet, and the DC is increased by 5. If you attempt to move through an enemy’s space and fail the check, you lose the move action and provoke an attack of opportunity. *This DC is used to avoid an attack of opportunity due to movement. This DC increases by 2 for each additional opponent avoided in 1 round.

<table>
  <tr>
    <th>Situation</th>
    <th>Base Acrobatics DC*</th>
  </tr>
  <tr>
    <td>Move Through a Threatened Area</td>
    <td>Opponent's Combat Maneuver Defense</td>
  </tr>
  <tr>
    <td>Move Through an Enemy's Space</td>
    <td>5 + Opponent's Combat Maneuver Defense</td>
  </tr>
</table>

Finally, you can use the Acrobatics skill to make jumps or to soften a fall. The base DC to make a jump is equal to the distance to be crossed (if horizontal) or four times the height to be reached (if vertical). These DCs double if you do not have at least 10 feet of space to get a running start. The only Acrobatics modifiers that apply are those concerning the surface you are jumping from. If you fail this check by 4 or less, you can attempt a DC 20 Reflex save to grab hold of the other side after having missed the jump. If you fail by 5 or more, you fail to make the jump and fall (or land prone, in the case of a vertical jump).

Creatures with a base land speed above 30 feet receive a +4 racial bonus on Acrobatics checks made to jump for every 10 feet of their speed above 30 feet. Creatures with a base land speed below 30 feet receive a –4 racial bonus on Acrobatics checks made to jump for every 10 feet of their speed below 30 feet. No jump can allow you to exceed your maximum movement for the round.

For a running jump, the result of your Acrobatics check indicates the distance traveled in the jump (and if the check fails, the distance at which you actually land and fall prone). Halve this result for a standing long jump to determine where you land.

When you deliberately fall any distance, even as a result of a missed jump, a DC 15 Acrobatics skill check allows you to ignore the first 10 feet fallen, although you still end up prone if you take damage from a fall.

<table>
  <tr>
    <th>Long Jump</th>
    <th>Acrobatics DC</th>
  </tr>
  <tr>
    <td>5 Feet</td>
    <td>5</td>
  </tr>
  <tr>
    <td>10 Feet</td>
    <td>10</td>
  </tr>
  <tr>
    <td>15 Feet</td>
    <td>15</td>
  </tr>
  <tr>
    <td>20 Feet</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Greater Than 20 Feet</td>
    <td>+5 per 5 Feet</td>
  </tr>
</table>

<table>
  <tr>
    <th>High Jump</th>
    <th>Acrobatics DC</th>
  </tr>
  <tr>
    <td>1 Foot</td>
    <td>4</td>
  </tr>
  <tr>
    <td>2 Feet</td>
    <td>8</td>
  </tr>
  <tr>
    <td>3 Feet</td>
    <td>12</td>
  </tr>
  <tr>
    <td>4 Feet</td>
    <td>16</td>
  </tr>
  <tr>
    <td>Greater Than 4 Feet</td>
    <td>+4 per Foot</td>
  </tr>
</table>

The following modifiers apply to all Acrobatics skill checks. The modifiers stack with one another, but only the most severe modifier for any given condition applies.

<table>
  <tr>
    <th>Acrobatics Modifiers</th>
    <th>DC Modifier</th>
  </tr>
  <tr>
    <td>Slightly Obstructed (Gravel, Sand)</td>
    <td>+2</td>
  </tr>
  <tr>
    <td>Severyly Obstructed (Cavern, Rubble)</td>
    <td>+5</td>
  </tr>
  <tr>
    <td>Slightly Slippery (Wet)</td>
    <td>+2</td>
  </tr>
  <tr>
    <td>Severly Slippery</td>
    <td>+5</td>
  </tr>
  <tr>
    <td>Slightly Sloped (<45 degrees)</td>
    <td>+2</td>
  </tr>
  <tr>
    <td>Severly Sloped (>45 degrees)</td>
    <td>+5</td>
  </tr>
  <tr>
    <td>Slightly Unsteady (Boat in Rough Water)</td>
    <td>+2</td>
  </tr>
  <tr>
    <td>Moderately Unsteady (Boat in a Storm)</td>
    <td>+5</td>
  </tr>
  <tr>
    <td>Move at Full Speed on Narrow or Uneven Surfaces</td>
    <td>+5 (not to Jumps)</td>
  </tr>
</table>", action: "None. An Acrobatics check is made as part of another action or as a reaction to a situation.", try_again: "", special: "If you have 3 or more ranks in Acrobatics, you gain a +3 dodge bonus to AC when fighting defensively instead of the usual +2, and a +6 dodge bonus to AC when taking the total defense action instead of the usual +4.", skill_unlock_5: "You can move at normal speed through a threatened square without provoking an attack of opportunity by increasing the DC of the check by 5 (instead of by 10). You aren’t denied your Dexterity bonus when attempting Acrobatics checks with DCs of 20 or lower.", skill_unlock_10: "You can attempt an Acrobatics check at a –10 penalty and use the result as your CMD against trip maneuvers. You can also attempt an Acrobatics check at a –10 penalty in place of a Reflex save to avoid falling. You must choose to use this ability before the trip attempt or Reflex save is rolled. With a successful DC 20 Acrobatics check, you treat an unintentional fall as 10 feet shorter plus 10 feet for every 10 by which you exceed the DC, and treat an intentional fall as 10 feet shorter for every 10 by which you exceed the DC.", skill_unlock_15: "You do not provoke attacks of opportunity when standing up from prone.", skill_unlock_20: "You double the result of any Acrobatics check when jumping and never fall prone at the end of a fall as long as you remain conscious.")

appraise = Skill.create!(name: "Appraise", ability_score: "Intelligence", untrained: true, blurb: "You can evaluate the monetary value of an object.", description: "A DC 20 Appraise check determines the value of a common item. If you succeed by 5 or more, you also determine if the item has magic properties, although this success does not grant knowledge of the magic item’s abilities. If you fail the check by less than 5, you determine the price of that item to within 20% of its actual value. If you fail this check by 5 or more, the price is wildly inaccurate, subject to GM discretion. Particularly rare or exotic items might increase the DC of this check by 5 or more.

You can also use this check to determine the most valuable item visible in a treasure hoard. The DC of this check is generally 20 but can increase to as high as 30 for a particularly large hoard.", action: "Appraising an item takes 1 standard action. Determining the most valuable object in a treasure hoard takes 1 full-round action.", try_again: "Additional attempts to Appraise an item reveal the same result.", special: "", skill_unlock_5: "A successful DC 20 Appraise check reveals whether an item is magical, and a second check (DC = 25 + the item’s caster level) unveils its properties. You can use Appraise to detect non-written forgeries and counterfeits.", skill_unlock_10: "You can determine the most expensive object a creature is wearing or wielding (or in a 5-foot cube) as a standard action by succeeding at a DC 20 check. You never make a wildly inaccurate appraisal of an item’s value.", skill_unlock_15: "Determining the most expensive object as above is a move action. You can substitute an Appraise check at a –10 penalty for a Will save to disbelieve a figment or glamer.", skill_unlock_20: "Determining the most expensive object as above is a move action, and if the check succeeds, you gain a +2 circumstance bonus on combat maneuver checks to steal that object or disarm a creature of that object for 1 minute.")

bluff = Skill.create!(name: "Bluff", ability_score: "Charisma", untrained: true, blurb: "You know how to tell a lie.", description: "Bluff is an opposed skill check against your opponent’s Sense Motive skill. If you use Bluff to fool someone, with a successful check you convince your opponent that what you are saying is true. Bluff checks are modified depending upon the believability of the lie. The following modifiers are applied to the roll of the creature attempting to tell the lie. Note that some lies are so improbable that it is impossible to convince anyone that they are true (subject to GM discretion).

<table>
  <tr>
    <th>Circumstances</th>
    <th>Bluff Modifier</th>
  </tr>
  <tr>
    <td>The Target Wants to Believe You</td>
    <td>+5</td>
  </tr>
  <tr>
    <td>The Lie is Believable</td>
    <td>+0</td>
  </tr>
  <tr>
    <td>The Lie is Unlikely</td>
    <td>-5</td>
  </tr>
  <tr>
    <td>The Lie is Far-fetched</td>
    <td>-10</td>
  </tr>
  <tr>
    <td>The Lie is Impossible</td>
    <td>-20</td>
  </tr>
  <tr>
    <td>The Target is Drunk or Impaired</td>
    <td>+5</td>
  </tr>
  <tr>
    <td>You Possess Convincing Proof</td>
    <td>Up to +10</td>
  </tr>
</table>

Fient: You can also use Bluff to feint in combat, causing your opponent to be denied his Dexterity bonus to his AC against your next attack. The DC of this check is equal to 10 + your opponent’s base attack bonus + your opponent’s Wisdom modifier. If your opponent is trained in Sense Motive, the DC is instead equal to 10 + your opponent’s Sense Motive bonus, if higher.

Secret Messages: You can use Bluff to pass hidden messages to another character without others understanding your true meaning. The DC of this check is 15 for simple messages and 20 for complex messages. If you are successful, the target automatically understands you, assuming you are speaking in a language that it understands. If your check fails by 5 or more, you deliver the wrong message. Other creatures that hear the message can decipher the message by succeeding at an opposed Sense Motive check against your Bluff result.", action: "Attempting to deceive someone takes at least 1 round, but can possibly take longer if the lie is elaborate (as determined by the GM on a case-by-case basis).

Feinting in combat is a standard action.

Using Bluff to deliver a secret message takes twice as long as the message would otherwise take to relay.", try_again: "If you fail to deceive someone, further attempts to deceive them are at a –10 penalty and may be impossible (GM discretion).

You can attempt to feint against someone again if you fail. Secret messages can be relayed again if the first attempt fails.", special: "", skill_unlock_5: "The penalty to Bluff a creature after a failed check is halved unless you failed by 5 or more.", skill_unlock_10: "You take no penalty to Bluff a creature after a failed check unless you failed by 5 or more.", skill_unlock_15: "Creatures magically attempting to read your thoughts, detect your alignment, or reveal when you are lying must attempt a caster level check (DC = 11 + your ranks in Bluff ) or the effect reveals nothing.", skill_unlock_20: "As a full-round action, you can make a suggestion (as the spell, maximum duration 1 hour) to a creature within 30 feet (Will negates, DC = 15 + your Charisma modifier). A creature that saves against your suggestion is immune to further uses of this effect for 24 hours, and whenever the suggested creature is specifically confronted with proof of your manipulation, it receives another saving throw. This is an extraordinary mind-affecting compulsion.")

climb = Skill.create!(name: "Climb", ability_score: "Strength", untrained: true, blurb: "You are skilled at scaling vertical surfaces, from smooth city walls to rocky cliffs.", description: "With a successful Climb check, you can advance up, down, or across a slope, wall, or other steep incline (or even across a ceiling, provided it has handholds) at one-quarter your normal speed. A slope is considered to be any incline at an angle measuring less than 60 degrees; a wall is any incline at an angle measuring 60 degrees or more. A Climb check that fails by 4 or less means that you make no progress, and one that fails by 5 or more means that you fall from whatever height you have already attained. The DC of the check depends on the conditions of the climb. Compare the task with those on the following table to determine an appropriate DC.

You need both hands free to climb, but you may cling to a wall with one hand while you cast a spell or take some other action that requires only one hand. While climbing, you can’t move to avoid a blow, so you lose your Dexterity bonus to AC (if any). You also can’t use a shield while climbing. Anytime you take damage while climbing, make a Climb check against the DC of the slope or wall. Failure means you fall from your current height and sustain the appropriate falling damage.

<table>
  <tr>
    <th>DC</th>
    <th>Example Surface or Activity</th>
  </tr>
  <tr>
    <td>0</td>
    <td>A slope too steep to walk up, or a knotted rope with a wall to brace against.</td>
  </tr>
  <tr>
    <td>5</td>
    <td>A rope with a wall to brace against, or a knotted rope, or a rope affected by the rope trick spell.</td>
  </tr>
  <tr>
    <td>10</td>
    <td>A surface with ledges to hold on to and stand on, such as a very rough wall or a ship’s rigging.</td>
  </tr>
  <tr>
    <td>15</td>
    <td>Any surface with adequate handholds and footholds (natural or artificial), such as a very rough natural rock surface or a tree, or an unknotted rope, or pulling yourself up when dangling by your hands.</td>
  </tr>
  <tr>
    <td>20</td>
    <td>An uneven surface with some narrow handholds and footholds, such as a typical wall in a dungeon.</td>
  </tr>
  <tr>
    <td>21</td>
    <td>A typical buildings upper-story wall</td>
  </tr>
  <tr>
    <td>25</td>
    <td>A rough surface, such as a natural rock wall or a brick wall; A typical buildings lower-story wall.</td>
  </tr>
  <tr>
    <td>-</td>
    <td>A perfectly smooth, flat, vertical (or inverted) surface cannot be climbed.</td>
  </tr>
</table>

<table>
  <tr>
    <th>Climb DC Modifier</th>
    <th>Example Surface or Activity</th>
  </tr>
  <tr>
    <td>-10</td>
    <td>Climbing a chimney (artificial or natural) or other location where you can brace against two opposite walls.</td>
  </tr>
  <tr>
    <td>-5</td>
    <td>Climbing a corner where you can brace against perpendicular walls.</td>
  </tr>
  <tr>
    <td>+5</td>
    <td>Surface is slippery.</td>
  </tr>
</table>

Accelerated Climbing: You try to climb more quickly than normal. By accepting a –5 penalty, you can move half your speed (instead of one-quarter your speed).

Make Your Own Handholds and Footholds: You can make your own handholds and footholds by pounding pitons into a wall. Doing so takes 1 minute per piton, and one piton is needed per 5 feet of distance. As with any surface that offers handholds and footholds, a wall with pitons inithasaDCof15.Inthesameway,aclimberwitha handaxe or similar implement can cut handholds in an ice wall.

Catch Yourself When Falling: It’s practically impossible to catch yourself on a wall while falling. Make a Climb check (DC = wall’s DC + 20) to do so. It’s much easier to catch yourself on a slope (DC = slope’s DC + 10).

Catch a Falling Character While Climbing: If someone climbing above you or adjacent to you falls, you can attempt to catch the falling character if he or she is within your reach. Doing so requires a successful melee touch attack against the falling character (though he or she can voluntarily forego any Dexterity bonus to AC if desired). If you hit, you must immediately attempt a Climb check (DC = wall’s DC + 10). Success indicates that you catch the falling character, but his total weight, including equipment, cannot exceed your heavy load limit or you automatically fall. If you fail your Climb check by 4 or less, you fail to stop the character’s fall but don’t lose your grip on the wall. If you fail by 5 or more, you fail to stop the character’s fall and begin falling as well.", action: "Climbing is part of movement, so it’s generally part of a move action (and may be combined with other types of movement in a move action). Each move action that includes any climbing requires a separate Climb check. Catching yourself or another falling character doesn’t take an action.", try_again: "", special: "You can use a rope to haul a character upward (or lower a character) through sheer strength. You can lift double your maximum load in this manner.

A creature with a climb speed has a +8 racial bonus on all Climb checks. The creature must make a Climb check to climb any wall or slope with a DC higher than 0, but it can always choose to take 10, even if rushed or threatened while climbing. If a creature with a climb speed chooses an accelerated climb (see above), it moves at double its climb speed (or at its land speed, whichever is slower) and makes a single Climb check at a –5 penalty. Such a creature retains its Dexterity bonus to Armor Class (if any) while climbing, and opponents get no special bonus to their attacks against it. It cannot, however, use the run action while climbing.

Any creature of Tiny or smaller size should use its Dex modifier instead of its Str modifier for Climb and Swim checks.", skill_unlock_5: "You are no longer denied your Dexterity bonus when climbing.", skill_unlock_10: "You gain a natural climb speed (but not the +8 racial bonus on Climb checks) of 10 feet, but only on surfaces with a Climb DC of 20 or lower.", skill_unlock_15: "You gain a natural climb speed (but not the +8 racial bonus on Climb checks) equal to your base speed on surfaces with a Climb DC of 20 or lower, and of 10 feet on all other surfaces.", skill_unlock_20: "You gain a natural climb speed equal to your base speed on all surfaces. If you have both hands free, you gain a +8 racial bonus on Climb checks.")

craft = Skill.create!(name: "Craft", ability_score: "Intelligence", untrained: true, blurb: "You are skilled in the creation of a specific group of items, such as armor or weapons. Like Knowledge, Perform, and Profession, Craft is actually a number of separate skills. You could have several Craft skills, each with its own ranks. The most common Craft skills are alchemy, armor, baskets, books, bows, calligraphy, carpentry, cloth, clothing, glass, jewelry, leather, locks, paintings, pottery, sculptures, ships, shoes, stonemasonry, traps, and weapons.

A Craft skill is specifically focused on creating something. If nothing is created by the endeavor, it probably falls under the heading of a Profession skill.", description: "You can practice your trade and make a decent living, earning half your check result in gold pieces per week of dedicated work. You know how to use the tools of your trade, how to perform the craft’s daily tasks, how to supervise untrained helpers, and how to handle common problems. (Untrained laborers and assistants earn an average of 1 silver piece per day.)

The basic function of the Craft skill, however, is to allow you to make an item of the appropriate type. The DC depends on the complexity of the item to be created. The DC, your check result, and the price of the item determine how long it takes to make a particular item. The item’s finished price also determines the cost of raw materials.

To determine how much time and money it takes to make an item, follow these steps.

1) Find the item’s price in silver pieces (1 gp = 10 sp).

2) Find the item’s DC from Table: Craft Skills.

3) Pay 1/3 of the item’s price for the raw material cost.

4) Make an appropriate Craft check representing one week’s worth of work. If the check succeeds, multiply your check result by the DC. If the result × the DC equals the price of the item in sp, then you have completed the item. (If the result × the DC equals double or triple the price of the item in silver pieces, then you’ve completed the task in one-half or one-third of the time. Other multiples of the DC reduce the time in the same manner.) If the result × the DC doesn’t equal the price, then it represents the progress you’ve made this week. Record the result and make a new Craft check for the next week. Each week, you make more progress until your total reaches the price of the item in silver pieces.

If you fail a check by 4 or less, you make no progress this week (or day, see below). If you miss by 5 or more, you ruin half the raw materials and have to pay half the original raw material cost again.

Tools: All crafts require artisan’s tools to give the best chance of success. If improvised tools are used, the check is made with a –2 penalty. On the other hand, masterwork artisan’s tools provide a +2 circumstance bonus on the check.

Fabricate Spell: In some cases, the fabricate spell can be used to achieve the results of a Craft check with no actual check involved. You must still make an appropriate Craft check when using the spell to make articles requiring a high degree of craftsmanship.

Ironwood Spell: A successful Craft check related to woodworking in conjunction with the casting of the ironwood spell enables you to make wooden items that have the strength of steel.

Minor Creation: When casting the spell minor creation, you must succeed on an appropriate Craft check to make a complex item.

Progress by the Day: You can make checks by the day instead of by the week. In this case your progress (check result × DC) should be divided by the number of days in a week.

Create Masterwork Items: You can make a masterwork item: a weapon, suit of armor, shield, or tool that conveys a bonus on its use through its exceptional craftsmanship. To create a masterwork item, you create the masterwork component as if it were a separate item in addition to the standard item. The masterwork component has its own price (300 gp for a weapon or 150 gp for a suit of armor or a shield, see Chapter 6 for the price of other masterwork tools) and a Craft DC of 20. Once both the standard component and the masterwork component are completed, the masterwork item is finished. The cost you pay for the masterwork component is one-third of the given amount, just as it is for the cost in raw materials.

Repair Items: You can repair an item by making checks against the same DC that it took to make the item in the first place. The cost of repairing an item is one-fifth of the item’s price.

*You must be trained in the listed skill to attempt this task.

<table>
  <tr>
    <th>Item/Task</th>
    <th>Craft Skill</th>
    <th>Craft DC</th>
  </tr>
  <tr>
    <td>Craft Acid</td>
    <td>Alchemy</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Determine the Items an Alchemist Makes with Substances from Their Lab*</td>
    <td>Alchemy</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Craft Alchemist's Fire, Smokestick, or Tindertwig</td>
    <td>Alchemy</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Craft Antitoxin, Sunrod, Tanglefoot Bag, or Thunderstone</td>
    <td>Alchemy</td>
    <td>25</td>
  </tr>
  <tr>
    <td>Craft Armor or Shield</td>
    <td>Armor</td>
    <td>10 + AC Bonus</td>
  </tr>
  <tr>
    <td>Etch Metal Armor Plates with Decorative Designs</td>
    <td>Armor or Paintings</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Identify a Suit of Masterwork Armor on Sight</td>
    <td>Armor</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Determine What Type of Environment a Basket's Material Came From</td>
    <td>Baskets</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Determine the Specific Region a Basket's Material Came From</td>
    <td>Baskets</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Smelt Ore and Refine the Metal</td>
    <td>Blacksmithing</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Create Armor Spikes or Shield Spikes Without Craft (Armor)*</td>
    <td>Blacksmithing</td>
    <td>+5</td>
  </tr>
  <tr>
    <td>Determine a Book's Approxiamte Age</td>
    <td>Books</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Identify a Composite Bow on Site</td>
    <td>Bows</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Craft Longbow, Shortbow, or Arrows</td>
    <td>Bows</td>
    <td>12</td>
  </tr>
  <tr>
    <td>Craft Composite Longbow or Composite Shortbow</td>
    <td>Bows</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Identify a Masterwork Bow on Sight</td>
    <td>Bows</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Craft Composite Longbow or Composite Shortbow With High Strength Rating</td>
    <td>Bows</td>
    <td>15 + (2 x Rating)</td>
  </tr>
  <tr>
    <td>Determine a Writer's Experience Level and Handedness*</td>
    <td>Calligraphy</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Write an Invitation That Matches Appropriate Social Conventions</td>
    <td>Calligraphy</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Make a Makeshift Barrel or Crate</td>
    <td>Carpentry</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Create a Rudiementary Raft from Found Materials</td>
    <td>Carpentry or Ships</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Carve Fine Woodworking</td>
    <td>Carpentry or Sculptures</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Craft Wooden Armor or a Wooden Shield Without Craft (Armor)</td>
    <td>Carpentry</td>
    <td>+5</td>
  </tr>
  <tr>
    <td>Correctly Dye a Garment or Bolt of Cloth</td>
    <td>Cloth</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Mend a Sail</td>
    <td>Cloth, Clothin, or Ships</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Tailor a Garment to Another Size or Body Shape</td>
    <td>Clothing</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Create Temporary Cold-Weather Gear (Grants a +2 Bonus)</td>
    <td>Clothing</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Create Padded Armor Without Craft (Armor)</td>
    <td>Clothing</td>
    <td>+5</td>
  </tr>
  <tr>
    <td>Craft One-Handed Firearm or Two-Handed Firearm</td>
    <td>Firearms</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Craft Seige Firearm, Heavy</td>
    <td>Firearms</td>
    <td>30</td>
  </tr>
  <tr>
    <td>Craft Seige Firearm, Light</td>
    <td>Firearms</td>
    <td>35</td>
  </tr>
  <tr>
    <td>Locate or Identify Naturally Formed Glass</td>
    <td>Glass</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Identify the Work of Famous Jewelers</td>
    <td>Jewelry</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Create a Fake Gemstone*</td>
    <td>Jewelry</td>
    <td>Opposed</td>
  </tr>
  <tr>
    <td>Identify the Sort of Creature From Which a Piece of Leather Came*</td>
    <td>Leather</td>
    <td>10+</td>
  </tr>
  <tr>
    <td>Skin an Animal and Tan the Hide</td>
    <td>Leather</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Create a High-Quality Item From the Hide of a Non-Standard Creature*</td>
    <td>Leather</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Create Leather, Studded Leather, or Hide Armor Without Craft (Armor)</td>
    <td>Leather</td>
    <td>+5</td>
  </tr>
  <tr>
    <td>Aid Another on a Skill Check to Open a Lock*</td>
    <td>Locks</td>
    <td>5</td>
  </tr>
  <tr>
    <td>Tune a Musical Instrument</td>
    <td>Musical Instruments</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Create Paint or Other Pigments from Scratch</td>
    <td>Paintings</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Re-create Someone's Likeness from Memory</td>
    <td>Paintings</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Re-create Someone's Likeness from an Eyewitness Account</td>
    <td>Paintings</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Create a Temporary or Makeshift Kiln</td>
    <td>Pottery</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Make a Mold of an Object or Part of a Body</td>
    <td>Sculptures</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Craft Ranged Seige Engine, Heavy</td>
    <td>Seige Engines</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Craft Ranged Seige Engine, Medium</td>
    <td>Seige Engines</td>
    <td>25</td>
  </tr>
  <tr>
    <td>Craft Ranged Seige Engine, Light</td>
    <td>Seige Engines</td>
    <td>30</td>
  </tr>
  <tr>
    <td>Alter Shoes to a Different Size or Foot Shape*</td>
    <td>Shoes</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Recognize a Famous Ship and Where it Likely Came From</td>
    <td>Ships</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Identify Whether a Stone Wall is Entirely Stone or a Veneer</td>
    <td>Stonemasonry</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Create a Temporary Stone Support or Small Rampart with Found Supplies</td>
    <td>Stonemasonry</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Craft Mechanical Traps</td>
    <td>Traps</td>
    <td>Varies</td>
  </tr>
  <tr>
    <td>Determine the Age of a Mechanical Trap</td>
    <td>Traps</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Identify a Masterwork Weapon on Sight</td>
    <td>Weapons</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Craft Crossbow or Bolts</td>
    <td>Weapons</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Craft Simple Melee or Thrown Weapon</td>
    <td>Weapons</td>
    <td>12</td>
  </tr>
  <tr>
    <td>Craft Martial Melee or Thrown Weapon</td>
    <td>Weapons</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Craft Exotic Melee or Thrown Weapon</td>
    <td>Weapons</td>
    <td>18</td>
  </tr>
  <tr>
    <td>Very Simple Item (Wooden Spoon)</td>
    <td>Varies</td>
    <td>5</td>
  </tr>
  <tr>
    <td>Craft Typical Item (Iron Pot)</td>
    <td>Varies</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Identify a Famous Maker's Mark</td>
    <td>Varies</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Craft High-Quality Item (Bell)</td>
    <td>Varies</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Detemine What Culture (e.g. Elves, Frost Giants) Made an Item</td>
    <td>Varies</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Craft Complex or Superior Item (Lock)</td>
    <td>Varies</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Identify an Obscure Maker's Mark*</td>
    <td>Varies</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Determine the Hardness and Hit Points of an Item*</td>
    <td>Varies</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Identify the Creator of an Item with No Mark*</td>
    <td>Varies</td>
    <td>30</td>
  </tr>
</table>

The table below lists which craft skills to use for certain prominent items and adventuring tools. This list omits obvious items - outfits are made with Craft (clothing), keelboats with Craft (ships),  and so on. More specific skills can also be used instead of the listed skill, such as using Craft (tattoos) instead of Craft (paintings) for a tattoo.

<table>
  <tr>
    <th>Item</th>
    <th>Craft Skill</th>
  </tr>
  <tr>
    <td>Alchemist's Lab</td>
    <td>Alchemy</td>
  </tr>
  <tr>
    <td>Artisan's Tools</td>
    <td>Blacksmithing or Carpentry</td>
  </tr>
  <tr>
    <td>Backpack</td>
    <td>Clothing or Leather</td>
  </tr>
  <tr>
    <td>Barding</td>
    <td>Armor</td>
  </tr>
  <tr>
    <td>Bedroll</td>
    <td>Cloth or Leather</td>
  </tr>
  <tr>
    <td>Caltrops</td>
    <td>Weapons</td>
  </tr>
  <tr>
    <td>Cart or Carriage</td>
    <td>Carpentry</td>
  </tr>
  <tr>
    <td>Chain</td>
    <td>Blacksmithing or Traps</td>
  </tr>
  <tr>
    <td>Chest</td>
    <td>Carpentry or Locks</td>
  </tr>
  <tr>
    <td>Climber's Kit</td>
    <td>Blacksmithing</td>
  </tr>
  <tr>
    <td>Disguise Kit</td>
    <td>Alchemy or Paintings</td>
  </tr>
  <tr>
    <td>Flint and Steel</td>
    <td>Blacksmithing or Stonemasonry</td>
  </tr>
  <tr>
    <td>Grappling Hook</td>
    <td>Blacksmithing or Weapons</td>
  </tr>
  <tr>
    <td>Gunslinger's Kit</td>
    <td>Alchemy or Blacksmithing</td>
  </tr>
  <tr>
    <td>Harrow Deck</td>
    <td>Paintings</td>
  </tr>
  <tr>
    <td>Healer's Kit</td>
    <td>Alchemy or Cloth</td>
  </tr>
  <tr>
    <td>Hemp Rope</td>
    <td>Baskets or Cloth</td>
  </tr>
  <tr>
    <td>Lamp</td>
    <td>Blacksmithing or Glass</td>
  </tr>
  <tr>
    <td>Manacles<td>
    <td>Blacksmithing or Locks</td>
  </tr>
  <tr>
    <td>Masterwork Tool</td>
    <td>Blacksmithing</td>
  </tr>
  <tr>
    <td>Musical Instrument</td>
    <td>Musical Instruments</td>
  </tr>
  <tr>
    <td>Saddle</td>
    <td>Leather</td>
  </tr>
  <tr>
    <td>Scroll Case</td>
    <td>Carpentry or Leather</td>
  </tr>
  <tr>
    <td>Signet Ring</td>
    <td>Jewelry</td>
  </tr>
  <tr>
    <td>Silk Rope</td>
    <td>Cloth</td>
  </tr>
  <tr>
    <td>Silver Holy Symbol</td>
    <td>Blacksmithing or Sculptures</td>
  </tr>
  <tr>
    <td>Skeleton Key</td>
    <td>Locks</td>
  </tr>
  <tr>
    <td>Spell Component Pouch/td>
    <td>Leather</td>
  </tr>
  <tr>
    <td>Spyglass</td>
    <td>Glass</td>
  </tr>
  <tr>
    <td>Tattoo</td>
    <td>Paintings</td>
  </tr>
  <tr>
    <td>Tent</td>
    <td>Cloth or Leather</td>
  </tr>
  <tr>
    <td>Thieves' Tools</td>
    <td>Blacksmithing or Locks</td>
  </tr>
  <tr>
    <td>Waterskin</td>
    <td>Leather</td>
  </tr>
  <tr>
    <td>Wood Holy Symbol</td>
    <td>Carpentry or Sculptures</td>
  </tr>
</table>

The following table indicates which Craft skills are typically used to create common worn items. While the normal system for creating magic items doesn't incorporate Craft skills, such skills could reasonably be used while creating a magic item to make it appear especially ornate.

<table>
  <tr>
    <th>Worn Item</th>
    <th>Craft Skill</th>
  </tr>
  <tr>
    <td>Amulet</td>
    <td>Jewelry</td>
  </tr>
  <tr>
    <td>Belt</td>
    <td>Leather or Clothing</td>
  </tr>
  <tr>
    <td>Bracelet</td>
    <td>Blacksmithing or Jewelry</td>
  </tr>
  <tr>
    <td>Bracer</td>
    <td>Armor or Leather</td>
  </tr>
  <tr>
    <td>Brooch</td>
    <td>Jewelry</td>
  </tr>
  <tr>
    <td>Cape or Cloak</td>
    <td>Cloth or Clothing</td>
  </tr>
  <tr>
    <td>Circlet</td>
    <td>Blacksmithing or Jewelry</td>
  </tr>
  <tr>
    <td>Crown</td>
    <td>Blacksmithing or Jewelry</td>
  </tr>
  <tr>
    <td>Gauntlet</td>
    <td>Armor</td>
  </tr>
  <tr>
    <td>Girdle</td>
    <td>Clothing or Leather</td>
  </tr>
  <tr>
    <td>Glasses or Goggles</td>
    <td>Glass</td>
  </tr>
  <tr>
    <td>Glove</td>
    <td>Clothing or Leather</td>
  </tr>
  <tr>
    <td>Hat</td>
    <td>Clothing or Leather</td>
  </tr>
  <tr>
    <td>Headband</td>
    <td>Cloth or Clothing</td>
  </tr>
  <tr>
    <td>Helm</td>
    <td>Armor</td>
  </tr>
  <tr>
    <td>Mask</td>
    <td>Clothing or Leather</td>
  </tr>
  <tr>
    <td>Necklace</td>
    <td>Blacksmithing or Jewelry</td>
  </tr>
  <tr>
    <td>Periapt</td>
    <td>Jewelry</td>
  </tr>
  <tr>
    <td>Phylactery</td>
    <td>Leather or Carpentry</td>
  </tr>
  <tr>
    <td>Ring</td>
    <td>Jewelry</td>
  </tr>
  <tr>
    <td>Robe</td>
    <td>Clothing</td>
  </tr>
  <tr>
    <td>Vestments</td>
    <td>Clothing</td>
  </tr>
</table>", action: "Does not apply. Craft checks are made by the day or week (see above).", try_again: "Yes, but each time you fail by 5 or more, you ruin half the raw materials and have to pay half the original raw material cost again.", special: "You may voluntarily add +10 to the indicated DC to craft an item. This allows you to create the item more quickly (since you’ll be multiplying this higher DC by your Craft check result to determine progress). You must decide whether to increase the DC before you make each weekly or daily check.

To make an item using Craft (alchemy), you must have alchemical equipment. If you are working in a city, you can buy what you need as part of the raw materials cost to make the item, but alchemical equipment is difficult or impossible to come by in some places. Purchasing and maintaining an alchemist’s lab grants a +2 circumstance bonus on Craft (alchemy) checks because you have the perfect tools for the job, but it does not affect the cost of any items made using the skill.

Those who wish to construct or repair technological items use Craft (mechanical) in conjunction with technological item crafting feats. Without the Technologist feat, Craft (mechanical) can still be used to craft less advanced forms of technology such as gears, hinges, and pulleys. NPCs with the means of crafting technological items are extremely rare, and it is not assumed that PCs have access to such resources. GMs are encouraged to discuss such considerations with their players before allowing technological crafting into the game.", skill_unlock_5: "When determining your weekly progress, double the result of your Craft check before multiplying the result by the item’s DC.", skill_unlock_10: "You do not ruin any of your raw materials unless you fail a check by 10 or more.", skill_unlock_15: "When you determine your progress, the result of your check is how much work you complete each day in silver pieces.", skill_unlock_20: "You can craft magic armor, magic weapons, magic rings, and wondrous items that fall under your category of Craft using the normal Craft rules.", customizable: true)

diplomacy = Skill.create!(name: "Diplomacy", ability_score: "Charisma", untrained: true, blurb: "You can use this skill to persuade others to agree with your arguments, to resolve differences, and to gather valuable information or rumors from people. This skill is also used to negotiate conflicts by using the proper etiquette and manners suitable to the problem.", description: "You can change the initial attitudes of nonplayer characters with a successful check. The DC of this check depends on the creature’s starting attitude toward you, adjusted by its Charisma modifier. If you succeed, the character’s attitude toward you is improved by one step. For every 5 by which your check result exceeds the DC, the character’s attitude toward you increases by one additional step. A creature’s attitude cannot be shifted more than two steps up in this way, although the GM can override this rule in some situations. If you fail the check by 4 or less, the character’s attitude toward you is unchanged. If you fail by 5 or more, the character’s attitude toward you is decreased by one step.

You cannot use Diplomacy against a creature that does not understand you or has an Intelligence of 3 or less. Diplomacy is generally ineffective in combat and against creatures that intend to harm you or your allies in the immediate future. Any attitude shift caused through Diplomacy generally lasts for 1d4 hours but can last much longer or shorter depending upon the situation (GM discretion).

<table>
  <tr>
    <th>Starting Attitude</th>
    <th>Diplomacy DC</th>
  </tr>
  <tr>
    <td>Hostile</td>
    <td>25 + Creature's Cha Modifier</td>
  </tr>
  <tr>
    <td>Unfriendly</td>
    <td>20 + Creature's Cha Modifier</td>
  </tr>
  <tr>
    <td>Indifferent</td>
    <td>15 + Creature's Cha Modifier</td>
  </tr>
  <tr>
    <td>Friendly</td>
    <td>10 + Creature's Cha Modifier</td>
  </tr>
  <tr>
    <td>Helpful</td>
    <td>0 + Creature's Cha Modifier</td>
  </tr>
</table>

If a creature’s attitude toward you is at least indifferent, you can make requests of the creature. This is an additional Diplomacy check, using the creature’s current attitude to determine the base DC, with one of the following modifiers. Once a creature’s attitude has shifted to helpful, the creature gives in to most requests without a check, unless the request is against its nature or puts it in serious peril. Some requests automatically fail if the request goes against the creature’s values or its nature, subject to GM discretion.

<table>
  <tr>
    <th>Request</th>
    <th>Diplomacy DC Modifier</th>
  </tr>
  <tr>
    <td>Give Simple Advice or Directions</td>
    <td>-5</td>
  </tr>
  <tr>
    <td>Give Detailed Advice</td>
    <td>+0</td>
  </tr>
  <tr>
    <td>Give Simple Aid</td>
    <td>+0</td>
  </tr>
  <tr>
    <td>Reveal an Unimportant Secret</td>
    <td>+5</td>
  </tr>
  <tr>
    <td>Give Lengthy or Complicated Aid</td>
    <td>+5</td>
  </tr>
  <tr>
    <td>Give Dangerous Aid</td>
    <td>+10</td>
  </tr>
  <tr>
    <td>Reveal an Important Secret</td>
    <td>+10 or More</td>
  </tr>
  <tr>
    <td>Give Aid That Could Result in Punishment</td>
    <td>+15 or More</td>
  </tr>
  <tr>
    <td>Additional Requests</td>
    <td>+5 per Request</td>
  </tr>
</table>

Gather Information: You can also use Diplomacy to gather information about a specific topic or individual. To do this, you must spend at least 1d4 hours canvassing people at local taverns, markets, and gathering places. The DC of this check depends on the obscurity of the information sought, but for most commonly known facts or rumors it is 10. For obscure or secret knowledge, the DC might increase to 20 or higher. The GM might rule that some topics are simply unknown to common folk.", action: "Using Diplomacy to influence a creature’s attitude takes 1 minute of continuous interaction. Making a request of a creature takes 1 or more rounds of interaction, depending upon the complexity of the request. Using Diplomacy to gather information takes 1d4 hours of work searching for rumors and informants.", try_again: "You cannot use Diplomacy to influence a given creature’s attitude more than once in a 24-hour period. If a request is refused, the result does not change with additional checks, although other requests might be made. You can retry Diplomacy checks made to gather information.", special: "", skill_unlock_5: "The time required to influence a creature’s attitude or gather information is halved.", skill_unlock_10: "You can attempt to adjust a creature’s attitude in 1 round by taking a –10 penalty. If you take 1 minute to adjust a creature’s attitude, add your Charisma bonus to the number of hours that attitude change persists.", skill_unlock_15: "You can attempt to adjust a creature’s attitude in 1 round with no penalty. If you take 1 minute to adjust a creature’s attitude, the duration of the resulting change is measured in days, not hours. You can gather information in 10 minutes by taking a –5 penalty.", skill_unlock_20: "You can attempt to adjust a creature’s attitude in 1 round with no penalty. If you take 1 minute to adjust a creature’s attitude, the duration of the resulting change is measured in weeks, not hours. You can gather information in 1d4 minutes with no penalty.")

disable_device = Skill.create!(name: "Disable Device", ability_score: "Dexterity", untrained: false, blurb: "You are skilled at disarming traps and opening locks. In addition, this skill lets you sabotage simple mechanical devices, such as catapults, wagon wheels, and doors.", description: "When disarming a trap or other device, the Disable Device check is made secretly, so that you don’t necessarily know whether you’ve succeeded.

The DC depends on how tricky the device is. If the check succeeds, you disable the device. If it fails by 4 or less, you have failed but can try again. If you fail by 5 or more, something goes wrong. If the device is a trap, you trigger it. If you’re attempting some sort of sabotage, you think the device is disabled, but it still works normally.

You also can rig simple devices such as saddles or wagon wheels to work normally for a while and then fail or fall off some time later (usually after 1d4 rounds or minutes of use).

*If you attempt to leave behind no trace of your tampering, add 5 to the DC.

<table>
  <tr>
    <th>Device</th>
    <th>Time</th>
    <th>Disable Device DC*</th>
    <th>Example</th>
  </tr>
  <tr>
    <td>Simple</td>
    <td>1 Round</td>
    <td>10</td>
    <td>Jam a Lock</td>
  </tr>
  <tr>
    <td>Tricky</td>
    <td>1d4 Rounds</td>
    <td>15</td>
    <td>Sabotage a Wagon Wheel</td>
  </tr>
  <tr>
    <td>Difficult</td>
    <td>2d4 Rounds</td>
    <td>20</td>
    <td>Disarm a Trap, Reset a Trap</td>
  </tr>
  <tr>
    <td>Extreme</td>
    <td>2d4 Rounds</td>
    <td>25</td>
    <td>Disarm a Complex Trap, Cleverly Sabotage a Clockwork Device</td>
  </tr>
</table>

Open Locks: The DC for opening a lock depends on its quality. If you do not have a set of thieves’ tools, these DCs increase by 10.

<table>
  <tr>
    <th>Lock Quality</th>
    <th>Disable Device DC</th>
  </tr>
  <tr>
    <td>Simple</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Average</td>
    <td>25</td>
  </tr>
  <tr>
    <td>Good</td>
    <td>30</td>
  </tr>
  <tr>
    <td>Superior</td>
    <td>40</td>
  </tr>
</table>", action: "The amount of time needed to make a Disable Device check depends on the task, as noted above. Disabling a simple device takes 1 round and is a full-round action. An intricate or complex device requires 1d4 or 2d4 rounds. Attempting to open a lock is a full-round action.", try_again: "Varies. You can retry checks made to disable traps if you miss the check by 4 or less. You can retry checks made to open locks.", special: "A rogue who beats a trap’s DC by 10 or more can study the trap, figure out how it works, and bypass it without disarming it. A rogue can rig a trap so her allies can bypass it as well.

Characters with the trapfinding ability (like rogues) can disarm magic traps. A magic trap generally has a DC of 25 + the level of the spell used to create it.

The spells fire trap, glyph of warding, symbol, and teleportation circle also create traps that a rogue can disarm with a successful Disable Device check. Spike growth and spike stones, however, create magic hazards against which Disable Device checks do not succeed. See the individual spell descriptions for details.", skill_unlock_5: "Reduce the time required to disarm a trap or open a lock by taking a –5 penalty on your Disable Device check for each step by which you reduce the time required: 2d4 rounds, 1d4 rounds, 1 round, a standard action, a move action, a swift action.", skill_unlock_10: "You can disarm magical traps at a –10 penalty even if you lack the trapfinding ability. If you possess the trapfinding ability, when attempting to disable magic traps, you never trigger them, even if you perform the trigger action (such as looking at a symbol). If you fail the check, you can still trigger the trap, and you can’t use this ability to bypass it.", skill_unlock_15: "When attacked by a trap, you can attempt a Disable Device check as an immediate action (adding your trap sense bonus, if any) opposed by the trap’s attack roll or its save DC. If you succeed, you take half damage (or no damage if you exceed the DC by at least 10).", skill_unlock_20: "You halve the penalties for performing a quick disarm as described in the 5 Ranks entry. If you possess the trapfinding ability and accept a –20 penalty while using the ability unlocked at 15 ranks, all nearby allies gain the benefit, and you disable the trap as an immediate action before it can trigger if you exceed the DC by at least 10.")

disguise = Skill.create!(name: "Disguise", ability_score: "Charisma", untrained: true, blurb: "You are skilled at changing your appearance.", description: "Your Disguise check result determines how good the disguise is, and it is opposed by others’ Perception check results. If you don’t draw any attention to yourself, others do not get to make Perception checks. If you come to the attention of people who are suspicious (such as a guard who is watching commoners walking through a city gate), it can be assumed that such observers are taking 10 on their Perception checks.

You get only one Disguise check per use of the skill, even if several people make Perception checks against it. The Disguise check is made secretly, so that you can’t be sure how good the result is.

The effectiveness of your disguise depends on how much you’re changing your appearance. Disguise can be used to make yourself appear like a creature that is one size category larger or smaller than your actual size. This does not change your actual size or reach, should you enter combat while wearing such a disguise.

*Per step of difference between your actual age category and your disguised age category. The steps are: young (younger than adulthood), adulthood, middle age, old, and venerable.

<table>
  <tr>
    <th>Disguise</th>
    <th>Disguise Check Modifier</th>
  </tr>
  <tr>
    <td>Minor Details Only</td>
    <td>+5</td>
  </tr>
  <tr>
    <td>Disguised as a Different Gender</td>
    <td>-2</td>
  </tr>
  <tr>
    <td>Disguised as a Different Ancestry</td>
    <td>-2</td>
  </tr>
  <tr>
    <td>Disguised as a Different Age Category</td>
    <td>-2*</td>
  </tr>
  <tr>
    <td>Disguised as a Different Size Category</td>
    <td>-10</td>
  </tr>
</table>

If you are impersonating a particular individual, those who know what that person looks like get a bonus on their Perception checks according to the table below. Furthermore, they are automatically considered to be suspicious of you, so opposed checks are always called for.

<table>
  <tr>
    <th>Familiarity</th>
    <th>Viewer's Perception Check Bonus</th>
  </tr>
  <tr>
    <td>Recognizes on Sight</td>
    <td>+4</td>
  </tr>
  <tr>
    <td>Friends or Associates</td>
    <td>+6</td>
  </tr>
  <tr>
    <td>Close Friends</td>
    <td>+8</td>
  </tr>
  <tr>
    <td>Intimate</td>
    <td>+10</td>
  </tr>
</table>

An individual makes a Perception check to see through your disguise immediately upon meeting you and again every hour thereafter. If you casually meet a large number of different creatures, each for a short time, check once per day or hour, using an average Perception modifier for the group.", action: "Creating a disguise requires 1d3 × 10 minutes of work. Using magic (such as the disguise self spell) reduces this action to the time required to cast the spell or trigger the effect.", try_again: "Yes. You may try to redo a failed disguise, but once others know that a disguise was attempted, they’ll be more suspicious.", special: "Magic that alters your form, such as alter self, disguise self, polymorph, or shapechange, grants you a +10 bonus on Disguise checks (see the individual spell descriptions). Divination magic that allows people to see through illusions (such as true seeing) does not penetrate a mundane disguise, but it can negate the magical component of a magically enhanced one.

You must make a Disguise check when you cast a simulacrum spell to determine how good the likeness is.", skill_unlock_5: "You can create a disguise in 1d3 minutes.", skill_unlock_10: "You can create a disguise in 1d3 rounds. If you take the full normal amount of time to create your disguise, you take no penalty for disguising your gender, race, or age category.", skill_unlock_15: "You can create a disguise as a full-round action.", skill_unlock_20: "You can create a disguise as a standard action, or as a full-round action combined with a Bluff check to create a diversion to hide.")

escape_artist = Skill.create!(name: "Escape Artist", ability_score: "Dexterity", untrained: true, blurb: "Your training allows you to slip out of bonds and escape from grapples.", description: "The table below gives the DCs needed to escape various forms of restraints.

Ropes: The DC of your Escape Artist check is equal to the binder’s Combat Maneuver Bonus +20.

Manacles and Masterwork Manacles: The DC for manacles is set by their construction (see the table below).

Tight Space: The DC noted is for getting through a space through which your head fits but your shoulders don’t. If the space is long, you may need to make multiple checks. You can’t squeeze through a space that your head does not fit through.

Grappler: You can make an Escape Artist check in place of a combat maneuver check to escape a grapple or a pin.

<table>
  <tr>
    <th>Restraint</th>
    <th>Escape Artist DC</th>
  </tr>
  <tr>
    <td>Rope/Bindings</td>
    <td>Binder's CMB+20</td>
  </tr>
  <tr>
    <td>Net, animate rope, command plants, control plants, or entangle</td>
    <td>20</td>
  </tr>
  <tr>
    <td>snare Spell</td>
    <td>23</td>
  </tr>
  <tr>
    <td>Manacles</td>
    <td>30</td>
  </tr>
  <tr>
    <td>Tight Space</td>
    <td>30</td>
  </tr>
  <tr>
    <td>Masterwork Manacles</td>
    <td>35</td>
  </tr>
  <tr>
    <td>Grapple</td>
    <td>Grappler's CMD</td>
  </tr>
</table>", action: "Making an Escape Artist check to escape from rope bindings, manacles, or other restraints (except a grappler) requires 1 minute of work. Escaping from a net or an animate rope, command plants, control plants, or entangle spell is a full-round action. Escaping from a grapple or pin is a standard action. Squeezing through a tight space takes at least 1 minute, maybe longer, depending on how long the space is.", try_again: "Varies. You can make another check after a failed check if you’re squeezing your way through a tight space, making multiple checks. If the situation permits, you can make additional checks, or even take 20, as long as you’re not being actively opposed. If the DC to escape from rope or bindings is higher than 20 + your Escape Artist skill bonus, you cannot escape from the bonds using Escape Artist.", special: "", skill_unlock_5: "If you take a –10 penalty, the time required to use this skill is halved; escaping a grapple or pin is a move action, and escaping a net, animate rope, command plants, or control plants spell is a standard action.", skill_unlock_10: "You can attempt to escape from any entangling effect as a standard action with an Escape Artist check (DC = the effect’s save DC + 10). You can attempt an Escape Artist check as a move action to set the DC for a creature to escape from ropes or bindings; you gain a +10 bonus on the check if you instead attempt it as a full-round action.", skill_unlock_15: "You can escape any entangling effect (as above) as a move action. As a standard action, you can attempt an Escape Artist check (DC = the effect’s save DC + 20) to suppress a slow or paralysis effect for 1 round, plus 1 round for every 5 by which you exceed the DC. This action counts as purely mental for the purpose of being able to take it while paralyzed.", skill_unlock_20: "You can escape being entangled, grappled, or pinned as an immediate action with an Escape Artist check (DC = the effect’s DC + 10 or the attacker’s CMB + 10). You can attempt to suppress a slow or paralysis effect as a standard action (increasing the DC by 10), a move action (increasing the DC by 15), or an immediate action (increasing the DC by 20).")

fly = Skill.create!(name: "Fly", ability_score: "Dexterity", untrained: true, blurb: "You are skilled at flying, through either the use of wings or magic, and can perform daring or complex maneuvers while airborne. Note that this skill does not give you the ability to fly.", description: "You generally need only make a Fly check when you are attempting a complex maneuver. Without making a check, a flying creature can remain flying at the end of its turn so long as it moves a distance greater than half its speed. It can also turn up to 45 degrees by sacrificing 5 feet of movement, can rise at half speed at an angle of 45 degrees, and can descend at any angle at normal speed. Note that these restrictions only apply to movement taken during your current turn. At the beginning of the next turn, you can move in a different direction than you did the previous turn without making a check. Taking any action that violates these rules requires a Fly check. The difficulty of these maneuvers varies depending upon the maneuver you are attempting, as noted on the following chart.

<table>
  <tr>
    <th>Flying Maneuver</th>
    <th>Fly DC</th>
  </tr>
  <tr>
    <td>Move Less Than Half Speed and Remain Flying</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Hover</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Turn Greater Than 45 Degrees by Spending 5 Feet of Movement</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Turn 180 Degrees by Spending 10 Feet of Movement</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Fly Up at Greater Than 45 Degree Angle</td>
    <td>20</td>
  </tr>
</table>

Attacked While Flying: You are not considered flat-footed while flying. If you are flying using wings and you take damage while flying, you must make a DC 10 Fly check to avoid losing 10 feet of altitude. This descent does not provoke an attack of opportunity and does not count against a creature’s movement.

Collision While Flying: If you are using wings to f ly and you collide with an object equal to your size or larger, you must immediately make a DC 25 Fly check to avoid plummeting to the ground, taking the appropriate falling damage.

Avoid Falling Damage: If you are falling and have the ability to f ly, you can make a DC 10 Fly check to negate the damage. You cannot make this check if you are falling due to a failed Fly check or a collision.

High Wind Speeds: Flying in high winds adds penalties on your Fly checks as noted on Table 4–5. “Checked” means that creatures of that size or smaller must succeed on a DC 20 Fly check to move at all so long as the wind persists. “Blown away” means that creatures of that size or smaller must make a DC 25 Fly check or be blown back 2d6 × 10 feet and take 2d6 points of nonlethal damage. This check must be made every round the creature remains airborne. A creature that is blown away must still make a DC 20 Fly check to move due to also being checked.

<table>
  <tr>
    <th>Wind Force</th>
    <th>Wind Speed</th>
    <th>Checked Size</th>
    <th>Blown Away Size</th>
    <th>Fly Penalty</th>
  </tr>
  <tr>
    <td>Light</td>
    <td>0 - 10 mph</td>
    <td>-</td>
    <td>-</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Moderate</td>
    <td>11 - 20 mph</td>
    <td>-</td>
    <td>-</td>
    <td>-</td>
  </tr>
  <tr>
    <td>Strong</td>
    <td>21 - 30 mph</td>
    <td>Tiny</td>
    <td>-</td>
    <td>-2</td>
  </tr>
  <tr>
    <td>Severe</td>
    <td>31 - 50 mph</td>
    <td>Small</td>
    <td>Tiny</td>
    <td>-4</td>
  </tr>
  <tr>
    <td>Windstorm</td>
    <td>51 - 74 mph</td>
    <td>Medium</td>
    <td>Small</td>
    <td>-8</td>
  </tr>
  <tr>
    <td>Hurricane</td>
    <td>75 - 175 mph</td>
    <td>Large</td>
    <td>Medium</td>
    <td>-12</td>
  </tr>
  <tr>
    <td>Tornado</td>
    <td>175+ mph</td>
    <td>Huge</td>
    <td>Medium</td>
    <td>-16</td>
  </tr>
</table>", action: "None. A Fly check doesn’t require an action; it is made as part of another action or as a reaction to a situation.", try_again: "Varies. You can attempt a Fly check to perform
the same maneuver on subsequent rounds. If you are using wings and you fail a Fly check by 5 or more, you plummet to the ground, taking the appropriate falling damage.", special: "Creatures with a fly speed treat the Fly skill as a class skill. A creature with a natural fly speed receives a bonus (or penalty) on Fly skill checks depending on its maneuverability: Clumsy –8, Poor –4, Average +0, Good +4, Perfect +8. Creatures without a listed maneuverability rating are assumed to have average maneuverability.

A creature larger or smaller than Medium takes a size bonus or penalty on Fly checks depending on its size category: Fine +8, Diminutive +6, Tiny +4, Small +2, Large –2, Huge –4, Gargantuan –6, Colossal –8.
You cannot take ranks in this skill without a natural means of flight or gliding. Creatures can also take ranks in Fly if they possess a reliable means of flying every day • (either through a spell or other special ability).", skill_unlock_5: "A successful DC 20 Fly check allows you to make a 45-degree turn without sacrificing movement.", skill_unlock_10: "A successful DC 30 Fly check allows you to ascend at a 45-degree angle at full speed. You treat falls after midair collisions as 10 feet shorter with a successful DC 10 Fly check, plus 10 feet for every 10 points by which you exceed the DC.", skill_unlock_15: "A successful DC 30 Fly check allows you to make a 90-degree turn without sacrificing movement, or a 180-degree turn by sacrificing 5 feet of movement. You are considered one size category larger when determining wind effects on Fly checks.", skill_unlock_20: "A successful DC 35 Fly check allows you to fly straight up at full speed. You are considered two size categories larger when determining wind effects on Fly checks.")

handle_animal = Skill.create!(name: "Handle Animal", ability_score: "Charisma", untrained: false, blurb: "You are trained at working with animals, and can teach • them tricks, get them to follow your simple commands, or
even domesticate them.", description: "The DC depends on what you are trying to do.

<table>
  <tr>
    <th>Task</th>
    <th>Handle Animal DC</th>
  </tr>
  <tr>
    <td>Handle an Animal</td>
    <td>10</td>
  </tr>
  <tr>
    <td>'Push' an Animal</td>
    <td>25</td>
  </tr>
  <tr>
    <td>Teach an Animal a Trick</td>
    <td>15 - 20</td>
  </tr>
  <tr>
    <td>Train an Animal for General Purpose</td>
    <td>15 - 20</td>
  </tr>
  <tr>
    <td>Rear a Wild Animal</td>
    <td>15 + HD of Animal</td>
  </tr>
</table>

Handle an Animal: This task involves commanding an animal to perform a task or trick that it knows. If the animal is wounded or has taken any nonlethal damage or ability score damage, the DC increases by 2. If your check succeeds, the animal performs the task or trick on its next action.

Push an Animal: To push an animal means to get it to perform a task or trick that it doesn’t know but is physically capable of performing. This category also covers making an animal perform a forced march or forcing it to hustle for more than 1 hour between sleep cycles. If the animal is wounded or has taken any nonlethal damage or ability score damage, the DC increases by 2. If your check succeeds, the animal performs the task or trick on its next action.

Teach an Animal a Trick: You can teach an animal a specific trick with one week of work and a successful Handle Animal check against the indicated DC. An animal with an Intelligence score of 1 can learn a maximum of three tricks, while an animal with an Intelligence score of 2 can learn a maximum of six tricks.The following tricks can be taught to animals by training the animal for a week and making a successful Handle Animal skill check against the listed DC.

Aid (DC 20): The animal can use the aid another action to aid a specific ally in combat by attacking a specific foe the ally is fighting. You point to a particular creature that you wish the animal to aid, and you point to another that you want it to make an attack roll against, and it will comply if able. The normal creature type restrictions governing the attack trick still apply.

Attack (DC 20) The animal attacks apparent enemies. You may point to a particular creature that you wish the animal to attack, and it will comply if able. Normally, an animal will attack only humanoids, monstrous humanoids, giants, or other animals. Teaching an animal to attack all creatures (including such unnatural creatures as undead and aberrations) counts as two tricks.

Bombard (DC 20): A flying animal can deliver projectiles on command, attempting to drop a specified item that it can carry (often alchemist’s fire or a similar splash weapon) on a designated point or opponent, using its base attack bonus to determine its attack roll. The animal cannot throw the object, and it must be able to fly directly over the target.

Break Out (DC 20): On command, the animal attempts to break or gnaw through bars or bindings restricting it, its handler, or a person indicated by the handler. If the animal cannot break the restraints by itself, its attempts grant the restricted creature a +4 circumstance bonus on Escape Artist checks. Furthermore, the animal can take certain basic actions such as lifting a latch or bringing its master an unattended key. Weight and Strength restrictions still apply, and pickpocketing a key or picking any sort of lock is still far beyond the animal‘s ability.

Build Simple Structure (DC 25): The companion can build simple structures on command, limited by its natural abilities and inclinations. The companion is able to build only structures that creatures of its type would naturally build on their own, and this trick merely allows the handler to direct the companion on when and where to build such structures. For example, a spider could be commanded to spin a web between two trees, but it could not be made to create a hammock or a tent out of silk. Similarly, a beaver could be ordered to make a dam or lodge, an alligator a dome-shaped nest, and any burrowing creature a small tunnel or hole. In general, this process takes 10 minutes for each 5-foot square the structure occupies, but depending on the terrain and the type of structure, it might take as little as 1 minute or as much as 1 hour or more, at the GM’s discretion. Only companions that naturally build structures can learn this trick.

Bury (DC 15): an animal with this trick can be instructed to bury an object in its possession. The animal normally seeks a secluded place to bury its object. an animal that knows both the bury and fetch tricks can be instructed to fetch an item it has buried.

Cocoon (DC 15): The companion can cocoon an object or a helpless or willing Huge or smaller creature in webbing. The amount of time this takes depends on the size of the creature or object to be cocooned, as outlined on the following table. The cocoon has hardness 2 and 10 hit points. A creature trapped within the cocoon is effectively pinned, and it can attempt an Escape Artist check or combat maneuver check as a full-round action to escape (DC = 20 + the companion’s CMD). Alternatively, a DC 25 Strength check can break the cocoon. The companion must know the spin silk trick before it can learn this trick.

<table>
  <tr>
    <th>Target Size</th>
    <th>Time to Cocoon</th>
  </tr>
  <tr>
    <td>Tiny or Smaller</td>
    <td>1 Minute</td>
  </tr>
  <tr>
    <td>Small or Medium</td>
    <td>10 Minutes</td>
  </tr>
  <tr>
    <td>Large</td>
    <td>1 Hour</td>
  </tr>
  <tr>
    <td>Huge</td>
    <td>4 Hours</td>
  </tr>
</table>

Come (DC 15) The animal comes to you, even if it normally would not do so.

Defend (DC 20) The animal defends you (or is ready to defend you if no threat is present), even without any command being given. Alternatively, you can command the animal to defend a specific other character.

Deliver (DC 15): The animal takes an object (one you or an ally gives it, or one that it recovers with the fetch trick) to a place or person you indicate. If you indicate a place, the animal drops the item and returns to you. If you indicate a person, the animal stays adjacent to the person until the item is taken. (Retrieving an item from an animal using the deliver trick is a move action.)

Demolish (DC 15): The companion can be commanded to attack and damage objects and structures. A companion must know the attack trick before it can be taught the demolish trick, and the companion must be trained to attack creatures of all types. The companion’s handler can direct it either to make natural attacks against the object in question or to make a Strength check to attempt to break it (if applicable).

Detect (DC 25): The animal is trained to seek out the smells of air currents, alchemical items and poisons, unusual noises or echoes, and other common elements that signify the presence of potential dangers or secret passages. When commanded, the animal uses its Perception skill to try to pinpoint the source of anything that strikes it as out of the ordinary about a room or location. Note that because the animal is not intelligent, any number of doors, scents, strange mechanisms, or unfamiliar objects might catch the animal’s attention, and it cannot attempt the same Perception check more than once in this way.

Down (DC 15) The animal breaks off from combat or otherwise backs down. An animal that doesn’t know this trick continues to fight until it must flee (due to injury, a fear effect, or the like) or its opponent is defeated.

Entertain (DC 25): The animal can dance, sing, or perform some other impressive and enjoyable trick to entertain those around it. At the command of its owner, the animal can attempt a Perform check (or a Charisma check if it has no ranks in Perform) to show off its talent. Willing onlookers or those who fail an opposed Sense Motive check take a –2 penalty on Perception checks to notice anything but the animal entertaining them. Once an onlooker observes an animal’s entertain trick, that creature cannot be distracted in this way by the same animal for 24 hours. Tricksters and con artists often teach their animals to perform this trick while they pickpocket viewers or sneak about unnoticed.

Exclusive (DC 20): The animal takes directions only from the handler who taught it this trick. If an animal has both the exclusive and serve tricks, it takes directions only from the handler that taught it the exclusive trick and those creatures indicated by the trainer’s serve command. An animal with the exclusive trick does not take trick commands from others even if it is friendly or helpful toward them (such as through the result of a charm animal spell), though this does not prevent it from being controlled by other enchantment spells (such as dominate animal), and the animal still otherwise acts as a friendly or helpful creature when applicable.

Feint (DC 20): The companion is trained to feint against opponents. A companion must know the attack trick before it can be taught the feint trick, and it performs feints only against targets it would normally attack.

Fetch (DC 15): The animal goes and gets something. If you do not point out a specific item, the animal fetches a random object.

Flank (DC 20): You can instruct an animal to attack a foe you point to and to always attempt to be adjacent to (and threatening) that foe. If you or an ally is also threatening the foe, the animal attempts to flank the foe, if possible. While animals following the attack trick will flank when convenient, this trick instructs them to flank even if doing so denies it a full attack or puts the animal companion at an inconvenience or at risk, such as from attacks of opportunity, dangerous positioning, or difficult terrain. The animal must know the attack trick before it can learn this trick, and it performs it only against foes it would normally attack.

Flee (DC 20): The animal attempts to run away or hide as best it can, returning only when its handler commands it to do so. Until such a command is received, the animal does its best to track its handler and any accompanying creatures, remaining hidden but within range of its sight or hearing. This trick is particularly useful for adventurers and thieves in that it allows the animal to evade capture, and then return later to help free its friends.

Get Help (DC 20): With this trick, a trainer can designate a number of creatures up to the animal’s Intelligence score as “help.” When the command is given, the animal attempts to find one of those creatures and bring it back to the handler, even if that means journeying a long distance to the last place it encountered the target creature.

Guard (DC 20) The animal stays in place and prevents others from approaching.

Guide (DC 15): The companion can serve as a guide to a character that is blinded or otherwise unable to see. While serving as a guide, the companion remains adjacent to the guided creature at all times, readying an action each round to move when that creature moves. This allows the guided creature to automatically succeed at Acrobatics checks to move at more than half speed while blinded. Additionally, the companion identifies obstacles in the guided creature’s path and pushes them, pulls them, or otherwise signals to the creature how to avoid them, allowing the guided creature to locate and move around obstacles such as hazards, opponents, and other terrain features as though she were able to see them (though she can’t distinguish between obstacles). Finally, while serving as a guide, the companion indicates to the guided creature the presence and direction of any adjacent allies, allowing the guided creature to pinpoint the locations of such creatures. The companion can serve as a guide only as long as it is able to see in some fashion, and its ability to detect and avoid creatures and obstacles is limited by what it is able to perceive normally.

Heel (DC 15) The animal follows you closely, even to places where it normally wouldn’t go.

Hunt (DC 20): This trick allows an animal to use its natural stalking or foraging instincts to find food and return it to the animal’s handler. an animal with this trick can attempt Survival checks (or Wisdom checks, if the animal has no ranks in Survival) to provide food for others or lead them to water and shelter (as the “get along in the wild” use of the Survival skill). an animal with this trick can use the aid another action to grant a bonus on its handlers Survival checks for these purposes.

Intimidate (DC 15): The companion bares its teeth, barks, bristles, growls, or otherwise threatens a creature you designate, or, alternatively, it can be trained to do so when it encounters any creature besides its handler. The companion takes a –4 penalty on Intimidate checks against creatures other than those with the animal or humanoid types unless it has also been trained to attack creatures of any type. A companion that knows this trick automatically uses the aid another action to assist Intimidate checks attempted by its handler, provided that it is within 15 feet of its handler at the time and has not been ordered to perform another task.

Maneuver (DC 20): The animal is trained to use a specific combat maneuver on command, even when it naturally wouldn’t do so (animals typically use combat maneuvers only when using a monster ability to make a free combat maneuver, since otherwise it would provoke an attack of opportunity). an animal must know the attack trick before it can be taught the maneuver trick, and it performs maneuvers only against targets it would normally attack. This trick can be taught to an animal multiple times. Each time it is taught, the animal can be commanded to use a different combat maneuver.

Mark Territory (DC 25): Whether by spraying musk, rubbing its back against trees and rocks, or simply howling loudly, the companion lets other nearby animals know that it has claimed an area. By spending 1 hour performing this trick, the companion can mark an area of up to half a square mile in this fashion. If it does so, after 24 hours, whenever there would be a random encounter within that area that involves a wild animal or other creature of Intelligence 2 or less (including vermin but not other mindless creatures, such as oozes and mindless undead), there is a 25% chance that the encounter doesn’t actually occur, as creatures might be warded off by the markings. The companion must renew any territorial markings at least once per week, or they lose their effectiveness. There is also a 10% chance per week that the markings attract the attention of a powerful predator, which actively seeks out the companion to challenge it (and its master) for the territory.

Menace (DC 20): A menacing animal attempts to keep a creature you indicate from moving. It does its best to dissuade the target, but it attacks only if the target attempts to move from its present location or take any significant action (particularly a hostile-seeming action). As soon as the target stops moving, the animal ceases attacking but it continues to menace.

Milk Venom (DC 20): The companion can be coaxed into providing a single dose of venom on command. This process takes 10 minutes, and it requires a vial or similar container in which to store the poison. A companion that has been specifically trained to be milked of its venom never bites, stings, or otherwise poisons its handler when being milked, although the handler must still succeed at a Handle Animal check to successfully harvest the venom. A companion must have the poison ability to be taught this trick.

Perform (DC 15) The animal performs a variety of simple tricks, such as sitting up, rolling over, roaring or barking, and so on.

Pose as Scenery (DC 20): The companion freezes in place, seeming to be a mundane plant rather than a plant creature. The companion must have taken root in order to use this trick. It attempts a Disguise check with a +8 circumstance bonus, opposed by the Perception checks of observers. If it succeeds at the opposed check, the observer mistakes it for an ordinary, harmless plant. The companion must have the take root trick in order to learn this trick. Only plant companions can learn this trick.

Receive Spell (DC 25): The companion has been trained to be the recipient of a specific spell (chosen at the time the animal is taught the trick), allowing it to fully take advantage of the spell’s effects. The spell should be one that grants the companion an ability it might not normally be intelligent enough to make use of or one that it might not even realize it has (such as air walk ). The companion is able to recognize when it has been affected by this spell and can take full advantage of the spell’s effects. At the GM’s discretion, a companion can also be trained to receive certain nonspell effects, such as those granted by an elixir of fire breathing. The companion can be taught this trick multiple times; each time it learns this trick, it becomes trained to utilize a different spell effect.

Rescue (DC 20): The companion has been trained to drag its handler or another creature that the handler designates out of danger and to a safe place in the event that the handler or creature is incapacitated. If a creature that the companion is defending is rendered helpless or is slain, the companion will carry, drag, or otherwise move that creature out of danger. If the companion knows the get help trick, it will attempt to bring the creature it is rescuing to one of the creatures designated as “help.” Otherwise, you can designate a single location in advance as a safe place, and the companion will attempt to bring the creature it is rescuing to that place. If it is unable to do either of these, the companion simply moves the creature to the nearest location of relative safety. A companion must have the deliver and guard tricks in order to learn this trick.

Seek (DC 15) The animal moves into an area and looks around for anything that is obviously alive or animate.

Serve (DC 15): An animal with this trick willingly takes orders from a creature you designate. If the creature you tell the animal to serve knows what tricks the animal has, it can instruct the animal to perform these tricks using your Handle Animal bonus on the check instead of its own. The animal treats the designated ally as friendly. An animal can unlearn this trick with 1 week of training. This trick can be taught to an animal multiple times. Each time it is taught, the animal can serve an additional creature you designate.

Sneak (DC 15): The animal can be ordered to make Stealth checks in order to stay hidden and to continue using Stealth even when circumstances or its natural instincts would normally cause it to abandon secrecy.

Speak (DC 25): The companion is able to communicate very simple concepts through barks, gestures, whistles, or similar actions. The companion’s vocabulary is extremely limited, generally restricted to “yes,” “no,” and counting up to three. The companion is also able to recognize and respond to up to two specific questions per point of Intelligence. The companion does not so much understand the words as recognize the sound of them, and it responds accordingly. This trick does not actually increase the companion’s capacity to understand concepts and ideas; it can be taught a way to communicate the concept of “food,” for example, but it won’t distinguish cooked food from raw food, and it might not even recognize as food anything that is not part of its own diet. A companion must have an Intelligence score of 2 or higher to learn this trick.

Spin Silk (DC 20): The companion can create strands of delicate yet incredibly strong silk. Harvesting the silk takes 10 minutes, and it can be done once per day. This silk functions identically to a silk rope. The companion can produce a total number of feet of silk equal to 10 times its Constitution score per day, which can be divided as the handler chooses in 10-foot increments. Silk produced in this way degrades into uselessness after 24 hours. Only companions with the web ability can learn this trick.

Stay (DC 15) The animal stays in place, waiting for you to return. It does not challenge other creatures that come by, though it still defends itself if it needs to.

Subdue (DC 15): The companion can attempt to subdue opponents. Once the command is given, the companion makes all its natural attacks as nonlethal attacks (taking the typical –4 penalty on attack rolls when using normally lethal attacks) until ordered to do otherwise.

Take Root (DC 15): The companion extends its roots into the soil beneath it, anchoring itself in place and drawing water and nutrients from the soil. Taking root is a full-round action that provokes attacks of opportunity. While rooted, the companion cannot move, but it can otherwise act normally and gains a +4 bonus to CMD to resist bull rush, drag, overrun, reposition, and trip attempts. If the companion remains rooted for at least 1 hour, it absorbs enough water and nutrients to feed itself for a day. A separate command causes the companion to uproot itself as a full-round action. The companion can take root only in areas of soft soil. Only plant companions can learn this trick.

Track (DC 20) The animal tracks the scent presented to it. (This requires the animal to have the scent ability)

Throw Rider (DC 15): The animal can attempt to fling a creature riding it to the ground. Treat this as a trip combat maneuver that applies to all creatures riding the animal, and that does not provoke attacks of opportunity. An animal that knows the throw rider and exclusive tricks can be instructed to attempt to automatically throw anyone other than its trainer who attempts to ride it.

Watch (DC 15): The animal can be commanded to keep watch over a particular area, such as a campsite, and to raise an alarm if it notices any dangerous or sizable creature entering the area.

Withhold Venom (DC 20): The companion can be ordered to avoid injecting poison into creatures it strikes with whatever natural attack would normally deliver venom. As long as the companion has been ordered to withhold its venom, successful hits with that natural attack deal damage as normal and convey all other effects that they normally would, but they do not expose the target to the companion’s poison. Only companions with the poison special ability can learn this trick.

Work (DC 15) The animal pulls or pushes a medium or heavy load.

Rather than teaching an animal individual tricks, you can simply train it for a general purpose. Essentially, an animal’s purpose represents a preselected set of known tricks that fit into a common scheme, such as guarding or heavy labor. The animal must meet all the normal prerequisites for all tricks included in the training package. If the package includes more than three tricks, the animal must have an Intelligence score of 2.

An animal can be trained for only one general purpose, though if the creature is capable of learning additional tricks (above and beyond those included in its general purpose), it may do so. Training an animal for a purpose requires fewer checks than teaching individual tricks does, but no less time.

Air Support (DC 20): An animal trained in air support knows the attack, bombard, and deliver tricks.

Burglar (DC 25): An animal trained as a burglar knows the come, fetch, maneuver (steal), seek, and sneak tricks. You can order it to steal a specific item you point out.

Combat Training (DC 20) An animal trained to bear a rider into combat knows the tricks attack, come, defend, down, guard, and heel. Training an animal for combat riding takes 6 weeks. You may also “upgrade” an animal trained for riding to one trained for combat by spending 3 weeks and making a successful DC 20 Handle Animal check. The new general purpose and tricks completely replace the animal’s previous purpose and any tricks it once knew. Many horses and riding dogs are trained in this way.

Fighting (DC 20) An animal trained to engage in combat knows the tricks attack, down, and stay. Training an animal for fighting takes three weeks.

Guarding (DC 20) An animal trained to guard knows the tricks attack, defend, down, and guard. Training an animal for guarding takes four weeks.

Heavy Labor (DC 15) An animal trained for heavy labor knows the tricks come and work. Training an animal for heavy labor takes two weeks.

Hunting (DC 20) An animal trained for hunting knows the tricks attack, down, fetch, heel, seek, and track. Training an animal for hunting takes six weeks.

Liberator (DC 25): An animal trained in liberating knows the break out, flee, and get help tricks.

Performance (DC 15) An animal trained for performance knows the tricks come, fetch, heel, perform, and stay. Training an animal for performance takes five weeks.

Riding (DC 15) An animal trained to bear a rider knows the tricks come, heel, and stay. Training an animal for riding takes three weeks.

Servant (DC 20): An animal trained as a servant knows the deliver, exclusive, and serve tricks.

Rear a Wild Animal: To rear an animal means to raise a wild creature from infancy so that it becomes domesticated. A handler can rear as many as three creatures of the same kind at once.

A successfully domesticated animal can be taught tricks at the same time it’s being raised, or it can be taught as a domesticated animal later.", action: "Varies. Handling an animal is a move action, while “pushing” an animal is a full-round action. (A druid or ranger can handle an animal companion as a free action or push it as a move action.) For tasks with specific time frames noted above, you must spend half this time (at the rate of 3 hours per day per animal being handled) working toward completion of the task before you attempt the Handle Animal check. If the check fails, your attempt to teach, rear, or train the animal fails and you need not complete the teaching, rearing, or training time. If the check succeeds, you must invest the remainder of the time to complete the teaching, rearing, or training. If the time is interrupted or the task is not followed through to completion, the attempt to teach, rear, or train the animal automatically fails.", try_again: "Yes, except for rearing an animal.", special: "You can use this skill on a creature with an Intelligence score of 1 or 2 that is not an animal, but the DC of any such check increases by 5. Such creatures have the same limit on tricks known as animals do.

A druid or ranger gains a +4 circumstance bonus on Handle Animal checks involving an animal companion.

In addition, a druid’s or ranger’s animal companion knows one or more bonus tricks, which don’t count against the normal limit on tricks known and don’t require any training time or Handle Animal checks to teach.

If you have no ranks in Handle Animal, you can use a Charisma check to handle and push domestic animals, but you can’t teach, rear, or train animals. A druid or ranger with no ranks in Handle Animal can use a Charisma check to handle and push her animal companion, but she can’t teach, rear, or train other nondomestic animals.", skill_unlock_5: "Creatures you have trained gain a +2 bonus on Will saves when adjacent to you.", skill_unlock_10: "Creatures you have trained gain a +2 bonus on Will saves whenever you are within 30 feet and clearly visible. You can teach a trick in 1 day by increasing the DC by 20.", skill_unlock_15: "You can train an animal to understand your speech (as speak with animals) with 1 week of effort and a successful DC 30 Handle Animal check. Its actions are still limited by its Intelligence. You can teach a trick in 1 day (increasing the DC by 10) or 1 hour (increasing the DC by 20).", skill_unlock_20: "You can make your speech understandable to any animal for 24 hours with a successful DC 30 Handle Animal check (DC 40 for magical beasts or vermin). You can teach a trick in 1 day, 1 hour (increasing the DC by 10), or 1 minute (increasing the DC by 20).")

heal = Skill.create!(name: "Heal", ability_score: "Wisdom", untrained: true, blurb: "You are skilled at tending to wounds and ailments.", description: "The DC and effect of a Heal check depend on the task you attempt.

<table>
  <tr>
    <th>Task</th>
    <th>Heal DC</th>
  </tr>
  <tr>
    <td>First Aid</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Long-Term Care</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Treat Wounds from Caltrops, spike growth, or spike stones</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Treat Deadly Wounds</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Treat Poison</td>
    <td>Poison's Save DC</td>
  </tr>
  <tr>
    <td>Treat Disease</td>
    <td>Disease's Save DC</td>
  </tr>
</table>

First Aid: You usually use first aid to save a dying character. If a character has negative hit points and is losing hit points (at the rate of 1 per round, 1 per hour, or 1 per day), you can make him stable. A stable character regains no hit points but stops losing them. First aid also stops a character from losing hit points due to effects that cause bleed.

Long-Term Care: Providing long-term care means treating a wounded person for a day or more. If your Heal check is successful, the patient recovers hit points or ability score points lost to ability damage at twice the normal rate: 2 hit points per level for a full 8 hours of rest in a day, or 4 hit points per level for each full day of complete rest; 2 ability score points for a full 8 hours of rest in a day, or 4 ability score points for each full day of complete rest.

You can tend to as many as six patients at a time. You need a few items and supplies (bandages, salves, and so on) that are easy to come by in settled lands. Giving long-term care counts as light activity for the healer. You cannot give long-term care to yourself.

Treat Wounds from Caltrops, Spike Growth, or Spike Stones: A creature wounded by stepping on a caltrop moves at half normal speed. A successful Heal check removes this movement penalty.

A creature wounded by a spike growth or spike stones spell must succeed on a Ref lex save or take injuries that reduce his speed by one-third. Another character can remove this penalty by taking 10 minutes to dress the victim’s injuries and succeeding on a Heal check against the spell’s save DC.

Treat Deadly Wounds: When treating deadly wounds, you can restore hit points to a damaged creature. Treating deadly wounds restores 1 hit point per level of the creature. If you exceed the DC by 5 or more, add your Wisdom modifier (if positive) to this amount. A creature can only benefit from its deadly wounds being treated within 24 hours of being injured and never more than once per day. You must expend two uses from a healer’s kit to perform this task. You take a –2 penalty on your Heal skill check for each use from the healer’s kit that you lack.

Treat Poison: To treat poison means to tend to a single character who has been poisoned and who is going to take more damage from the poison (or suffer some other effect). Every time the poisoned character makes a saving throw against the poison, you make a Heal check. If your Heal check exceeds the DC of the poison, the character receives a +4 competence bonus on his saving throw against the poison.

Treat Disease: To treat a disease means to tend to a single diseased character. Every time the diseased character makes a saving throw against disease effects, you make a Heal check. If your Heal check exceeds the DC of the disease, the character receives a +4 competence bonus on his saving throw against the disease.", action: "Providing first aid, treating a wound, or treating poison is a standard action. Treating a disease or tending a creature wounded by a spike growth or spike stones spell takes 10 minutes of work. Treating deadly wounds takes 1 hour of work. Providing long-term care requires 8 hours of light activity.", try_again: "Varies. Generally speaking, you can’t try a Heal check again without witnessing proof of the original check’s failure. You can always retry a check to provide first aid, assuming the target of the previous attempt is still alive.", special: "A healer’s kit gives you a +2 circumstance bonus on Heal checks.", skill_unlock_5: "When you treat deadly wounds, the target recovers hit points and ability damage as if it had rested for a full day.", skill_unlock_10: "When you treat deadly wounds, the target recovers hit points as if it had rested for a full day with long-term care.", skill_unlock_15: "When you treat deadly wounds, the creature recovers hit point and ability damage as if it had rested for 3 days.", skill_unlock_20: "When you treat deadly wounds, the target recovers hit point and ability damage as if it had rested for 3 days with long-term care.")

intimidate = Skill.create!(name: "Intimidate", ability_score: "Charisma", untrained: true, blurb: "You can use this skill to frighten your opponents or to get them to act in a way that benefits you. This skill includes verbal threats and displays of prowess.", description: "You can use Intimidate to force an opponent to act friendly toward you for 1d6 × 10 minutes with a successful check. The DC of this check is equal to 10 + the target’s Hit Dice + the target’s Wisdom modifier. If successful, the target gives you the information you desire, takes actions that do not endanger it, or otherwise offers limited assistance. After the Intimidate expires, the target treats you as unfriendly and may report you to local authorities. If you fail this check by 5 or more, the target attempts to deceive you or otherwise hinder your activities.

Demoralize: You can use this skill to cause an opponent to become shaken for a number of rounds. The DC of this check is equal to 10 + the target’s Hit Dice + the target’s Wisdom modifier. If you are successful, the target is shaken for 1 round. This duration increases by 1 round for every 5 by which you beat the DC. You can only threaten an opponent in this way if it is within 30 feet and can clearly see and hear you. Using demoralize on the same creature only extends the duration; it does not create a stronger fear condition.", action: "Using Intimidate to change an opponent’s attitude requires 1 minute of conversation. Demoralizing an opponent is a standard action.", try_again: "You can attempt to Intimidate an opponent again, but each additional check increases the DC by +5. This increase resets after 1 hour has passed.", special: "You also gain a +4 bonus on Intimidate checks if you are larger than your target and a –4 penalty on Intimidate checks if you are smaller than your target.", skill_unlock_5: "If you exceed the DC to demoralize a target by at least 10, it is frightened for 1 round and shaken thereafter. A Will save (DC = 10 + your number of ranks in Intimidate) negates the frightened condition, but the target is still shaken, even if it has the stalwart ability.", skill_unlock_10: "If you exceed the DC to demoralize a target by at least 10, it is panicked for 1 round or frightened for 1d4 rounds (your choice) and shaken thereafter. A Will save (DC = 10 + your number of ranks in Intimidate) negates the frightened or panicked condition, but the target is still shaken, even if it has the stalwart ability.", skill_unlock_15: "If you exceed the DC to demoralize a target by at least 20, it is cowering for 1 round or panicked for 1d4 rounds (your choice) and frightened thereafter. A Will save (DC = 10 + your number of ranks in Intimidate) negates the cowering, panicked, and frightened conditions, but the target is still shaken, even if it has the stalwart ability.", skill_unlock_20: "If you exceed the DC to demoralize a target by at least 20, it is cowering for 1d4 rounds and panicked thereafter. A Will save (DC = 10 + your number of ranks in Intimidate) negates the cowering and panicked conditions, but the target is still shaken, even if it has the stalwart ability.")

knowledge_arcana = Skill.create!(name: "Knowledge (arcana)", ability_score: "Intelligence", untrained: false, blurb: "You are educated in a field of study and can answer both simple and complex questions. Like the Craft, Perform, and Profession skills, Knowledge actually encompasses a number of different specialties. Arcana includes ancient mysteries, magic traditions, arcane symbols, constructs, dragons, magical beasts. Although robots are constructs, Knowledge (arcana) cannot be used to identify robots or their abilities and weaknesses.", description: "Answering a question within your field of study has a DC of 10 (for really easy questions), 15 (for basic questions), or 20 to 30 (for really tough questions).

You can use this skill to identify monsters and their special powers or vulnerabilities. In general, the DC of such a check equals 10 + the monster’s CR. For common monsters, such as goblins, the DC of this check equals 5 + the monster’s CR. For particularly rare monsters, such as the tarrasque, the DC of this check equals 15 + the monster’s CR, or more. A successful check allows you to remember a bit of useful information about that monster. For every 5 points by which your check result exceeds the DC, you recall another piece of useful information. Many of the Knowledge skills have specific uses as noted on the below table.

<table>
  <tr>
    <th>Tasks</th>
    <th>Knowledge Skill</th>
    <th>DC</th>
  </tr>
  <tr>
    <td>Identify Auras While Using Detect Magic</td>
    <td>Arcana</td>
    <td>15 + Spell Level</td>
  </tr>
  <tr>
    <td>Identify a Spell Effect That Is In Place</td>
    <td>Arcana</td>
    <td>20 + Spell Level</td>
  </tr>
  <tr>
    <td>Identify Materials Manufactured by Magic</td>
    <td>Arcana</td>
    <td>20 + Spell Level</td>
  </tr>
  <tr>
    <td>Identify a Spell That Just Targeted You</td>
    <td>Arcana</td>
    <td>25 + Spell Level</td>
  </tr>
  <tr>
    <td>Identify the Spells Cast Using a Specific Material Component</td>
    <td>Arcana</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Identify a Monster's Abilities and Weaknesses</td>
    <td>Varies</td>
    <td>10 + Monster's CR</td>
  </tr>
</table>", action: "Usually none. In most cases, a Knowledge check doesn’t take an action.", try_again: "No. The check represents what you know, and thinking about a topic a second time doesn’t let you know something that you never learned in the first place.", special: "You cannot make an untrained Knowledge check with a DC higher than 10. If you have access to an extensive library that covers a specific skill, this limit is removed. The time to make checks using a library, however, increases to 1d4 hours. Particularly complete libraries might even grant a bonus on Knowledge checks in the fields that they cover.", skill_unlock_5: "When you successfully identify a creature, you gain one additional piece of information for every 5 ranks you possess in that Knowledge skill.", skill_unlock_10: "When you successfully identify a creature, you gain a +1 competence bonus on attack rolls, opposed ability checks, skill checks, and caster level checks against creatures of that kind (e.g., glabrezu demons, but not other demons or evil outsiders) for 1 minute. This bonus increases by 1 for every 5 ranks beyond 10 you possess in that Knowledge skill.", skill_unlock_15: "When you fail a Knowledge check, you can reroll the check at a –10 penalty. The competence bonus above also applies to saving throws against exceptional, spell-like, or supernatural abilities used by creatures you identify.", skill_unlock_20: "Whenever you attempt a Knowledge check, you can roll twice and take the better result.", knowledge: true)

knowledge_dungeoneering = Skill.create!(name: "Knowledge (dungeoneering)", ability_score: "Intelligence", untrained: false, blurb: "You are educated in a field of study and can answer both simple and complex questions. Like the Craft, Perform, and Profession skills, Knowledge actually encompasses a number of different specialties. Dungeoneering includes aberrations, caverns, oozes, spelunking.", description: "Answering a question within your field of study has a DC of 10 (for really easy questions), 15 (for basic questions), or 20 to 30 (for really tough questions).

You can use this skill to identify monsters and their special powers or vulnerabilities. In general, the DC of such a check equals 10 + the monster’s CR. For common monsters, such as goblins, the DC of this check equals 5 + the monster’s CR. For particularly rare monsters, such as the tarrasque, the DC of this check equals 15 + the monster’s CR, or more. A successful check allows you to remember a bit of useful information about that monster. For every 5 points by which your check result exceeds the DC, you recall another piece of useful information. Many of the Knowledge skills have specific uses as noted on the below table.

<table>
  <tr>
    <th>Tasks</th>
    <th>Knowledge Skill</th>
    <th>DC</th>
  </tr>
  <tr>
    <td>Identify Underground Hazard</td>
    <td>Dungeoneering</td>
    <td>15 + Hazard's CR</td>
  </tr>
  <tr>
    <td>Identify Mineral, Stone, or Metal</td>
    <td>Dungeoneering</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Determine Slope</td>
    <td>Dungeoneering</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Determine Depth Underground</td>
    <td>Dungeoneering</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Identify a Monster's Abilities and Weaknesses</td>
    <td>Varies</td>
    <td>10 + Monster's CR</td>
  </tr>
</table>", action: "Usually none. In most cases, a Knowledge check doesn’t take an action.", try_again: "No. The check represents what you know, and thinking about a topic a second time doesn’t let you know something that you never learned in the first place.", special: "You cannot make an untrained Knowledge check with a DC higher than 10. If you have access to an extensive library that covers a specific skill, this limit is removed. The time to make checks using a library, however, increases to 1d4 hours. Particularly complete libraries might even grant a bonus on Knowledge checks in the fields that they cover.", skill_unlock_5: "When you successfully identify a creature, you gain one additional piece of information for every 5 ranks you possess in that Knowledge skill.", skill_unlock_10: "When you successfully identify a creature, you gain a +1 competence bonus on attack rolls, opposed ability checks, skill checks, and caster level checks against creatures of that kind (e.g., glabrezu demons, but not other demons or evil outsiders) for 1 minute. This bonus increases by 1 for every 5 ranks beyond 10 you possess in that Knowledge skill.", skill_unlock_15: "When you fail a Knowledge check, you can reroll the check at a –10 penalty. The competence bonus above also applies to saving throws against exceptional, spell-like, or supernatural abilities used by creatures you identify.", skill_unlock_20: "Whenever you attempt a Knowledge check, you can roll twice and take the better result.", knowledge: true)

knowledge_engineering = Skill.create!(name: "Knowledge (engineering)", ability_score: "Intelligence", untrained: false, blurb: "You are educated in a field of study and can answer both simple and complex questions. Like the Craft, Perform, and Profession skills, Knowledge actually encompasses a number of different specialties. Engineering includes buildings, aqueducts, bridges, fortifications. This is the most important skill with regard to technological subjects. Knowledge (engineering) can be used to identify a robot’s abilities and weaknesses. Knowledge (engineering) is also used to identify and understand unknown technological objects in a similar manner to how Spellcraft is used to identify the properties of a magic item. The DC to correctly identify and understand an unknown technological object is equal to the object’s Craft DC. An object with a Craft DC of 15 or less can be automatically identified and understood by someone trained in Knowledge (engineering) who also has the Technologist feat.", description: "Answering a question within your field of study has a DC of 10 (for really easy questions), 15 (for basic questions), or 20 to 30 (for really tough questions).

You can use this skill to identify monsters and their special powers or vulnerabilities. In general, the DC of such a check equals 10 + the monster’s CR. For common monsters, such as goblins, the DC of this check equals 5 + the monster’s CR. For particularly rare monsters, such as the tarrasque, the DC of this check equals 15 + the monster’s CR, or more. A successful check allows you to remember a bit of useful information about that monster. For every 5 points by which your check result exceeds the DC, you recall another piece of useful information. Many of the Knowledge skills have specific uses as noted on the below table.

<table>
  <tr>
    <th>Tasks</th>
    <th>Knowledge Skill</th>
    <th>DC</th>
  </tr>
  <tr>
    <td>Identify Dangerous Construction</td>
    <td>Engineering</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Determine a Structure's Style or Age</td>
    <td>Engineering</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Determine a Structure's Weakness</td>
    <td>Engineering</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Identify a Monster's Abilities and Weaknesses</td>
    <td>Varies</td>
    <td>10 + Monster's CR</td>
  </tr>
</table>", action: "Usually none. In most cases, a Knowledge check doesn’t take an action.", try_again: "No. The check represents what you know, and thinking about a topic a second time doesn’t let you know something that you never learned in the first place.", special: "You cannot make an untrained Knowledge check with a DC higher than 10. If you have access to an extensive library that covers a specific skill, this limit is removed. The time to make checks using a library, however, increases to 1d4 hours. Particularly complete libraries might even grant a bonus on Knowledge checks in the fields that they cover.", skill_unlock_5: "When you successfully identify a creature, you gain one additional piece of information for every 5 ranks you possess in that Knowledge skill.", skill_unlock_10: "When you successfully identify a creature, you gain a +1 competence bonus on attack rolls, opposed ability checks, skill checks, and caster level checks against creatures of that kind (e.g., glabrezu demons, but not other demons or evil outsiders) for 1 minute. This bonus increases by 1 for every 5 ranks beyond 10 you possess in that Knowledge skill.", skill_unlock_15: "When you fail a Knowledge check, you can reroll the check at a –10 penalty. The competence bonus above also applies to saving throws against exceptional, spell-like, or supernatural abilities used by creatures you identify.", skill_unlock_20: "Whenever you attempt a Knowledge check, you can roll twice and take the better result.", knowledge: true)

knowledge_geography = Skill.create!(name: "Knowledge (geography)", ability_score: "Intelligence", untrained: false, blurb: "You are educated in a field of study and can answer both simple and complex questions. Like the Craft, Perform, and Profession skills, Knowledge actually encompasses a number of different specialties. Geography includes lands, terrain, climate, people. Used for astronomy.", description: "Answering a question within your field of study has a DC of 10 (for really easy questions), 15 (for basic questions), or 20 to 30 (for really tough questions).

You can use this skill to identify monsters and their special powers or vulnerabilities. In general, the DC of such a check equals 10 + the monster’s CR. For common monsters, such as goblins, the DC of this check equals 5 + the monster’s CR. For particularly rare monsters, such as the tarrasque, the DC of this check equals 15 + the monster’s CR, or more. A successful check allows you to remember a bit of useful information about that monster. For every 5 points by which your check result exceeds the DC, you recall another piece of useful information. Many of the Knowledge skills have specific uses as noted on the below table.

<table>
  <tr>
    <th>Tasks</th>
    <th>Knowledge Skill</th>
    <th>DC</th>
  </tr>
  <tr>
    <td>Identify a Creature's Ethnicity or Accent</td>
    <td>Geography</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Recognize Regional Terrain Features</td>
    <td>Geography</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Know Location of Nearest Community or Noteworthy Site</td>
    <td>Geography</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Identify a Monster's Abilities and Weaknesses</td>
    <td>Varies</td>
    <td>10 + Monster's CR</td>
  </tr>
</table>", action: "Usually none. In most cases, a Knowledge check doesn’t take an action.", try_again: "No. The check represents what you know, and thinking about a topic a second time doesn’t let you know something that you never learned in the first place.", special: "You cannot make an untrained Knowledge check with a DC higher than 10. If you have access to an extensive library that covers a specific skill, this limit is removed. The time to make checks using a library, however, increases to 1d4 hours. Particularly complete libraries might even grant a bonus on Knowledge checks in the fields that they cover.", skill_unlock_5: "When you successfully identify a creature, you gain one additional piece of information for every 5 ranks you possess in that Knowledge skill.", skill_unlock_10: "When you successfully identify a creature, you gain a +1 competence bonus on attack rolls, opposed ability checks, skill checks, and caster level checks against creatures of that kind (e.g., glabrezu demons, but not other demons or evil outsiders) for 1 minute. This bonus increases by 1 for every 5 ranks beyond 10 you possess in that Knowledge skill.", skill_unlock_15: "When you fail a Knowledge check, you can reroll the check at a –10 penalty. The competence bonus above also applies to saving throws against exceptional, spell-like, or supernatural abilities used by creatures you identify.", skill_unlock_20: "Whenever you attempt a Knowledge check, you can roll twice and take the better result.", knowledge: true)

knowledge_history = Skill.create!(name: "Knowledge (history)", ability_score: "Intelligence", untrained: false, blurb: "You are educated in a field of study and can answer both simple and complex questions. Like the Craft, Perform, and Profession skills, Knowledge actually encompasses a number of different specialties. History includes wars, colonies, migrations, founding of cities.", description: "Answering a question within your field of study has a DC of 10 (for really easy questions), 15 (for basic questions), or 20 to 30 (for really tough questions).

You can use this skill to identify monsters and their special powers or vulnerabilities. In general, the DC of such a check equals 10 + the monster’s CR. For common monsters, such as goblins, the DC of this check equals 5 + the monster’s CR. For particularly rare monsters, such as the tarrasque, the DC of this check equals 15 + the monster’s CR, or more. A successful check allows you to remember a bit of useful information about that monster. For every 5 points by which your check result exceeds the DC, you recall another piece of useful information. Many of the Knowledge skills have specific uses as noted on the below table.

<table>
  <tr>
    <th>Tasks</th>
    <th>Knowledge Skill</th>
    <th>DC</th>
  </tr>
  <tr>
    <td>Know Recent or Historically Significant Date</td>
    <td>History</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Determine Approximate Date of Specific Event</td>
    <td>History</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Know Obscure or Ancient Historical Event</td>
    <td>History</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Identify a Monster's Abilities and Weaknesses</td>
    <td>Varies</td>
    <td>10 + Monster's CR</td>
  </tr>
</table>", action: "Usually none. In most cases, a Knowledge check doesn’t take an action.", try_again: "No. The check represents what you know, and thinking about a topic a second time doesn’t let you know something that you never learned in the first place.", special: "You cannot make an untrained Knowledge check with a DC higher than 10. If you have access to an extensive library that covers a specific skill, this limit is removed. The time to make checks using a library, however, increases to 1d4 hours. Particularly complete libraries might even grant a bonus on Knowledge checks in the fields that they cover.", skill_unlock_5: "When you successfully identify a creature, you gain one additional piece of information for every 5 ranks you possess in that Knowledge skill.", skill_unlock_10: "When you successfully identify a creature, you gain a +1 competence bonus on attack rolls, opposed ability checks, skill checks, and caster level checks against creatures of that kind (e.g., glabrezu demons, but not other demons or evil outsiders) for 1 minute. This bonus increases by 1 for every 5 ranks beyond 10 you possess in that Knowledge skill.", skill_unlock_15: "When you fail a Knowledge check, you can reroll the check at a –10 penalty. The competence bonus above also applies to saving throws against exceptional, spell-like, or supernatural abilities used by creatures you identify.", skill_unlock_20: "Whenever you attempt a Knowledge check, you can roll twice and take the better result.", knowledge: true)

knowledge_local = Skill.create!(name: "Knowledge (local)", ability_score: "Intelligence", untrained: false, blurb: "You are educated in a field of study and can answer both simple and complex questions. Like the Craft, Perform, and Profession skills, Knowledge actually encompasses a number of different specialties. Local includes legends, personalities, inhabitants, laws, customs, traditions, humanoids.", description: "Answering a question within your field of study has a DC of 10 (for really easy questions), 15 (for basic questions), or 20 to 30 (for really tough questions).

You can use this skill to identify monsters and their special powers or vulnerabilities. In general, the DC of such a check equals 10 + the monster’s CR. For common monsters, such as goblins, the DC of this check equals 5 + the monster’s CR. For particularly rare monsters, such as the tarrasque, the DC of this check equals 15 + the monster’s CR, or more. A successful check allows you to remember a bit of useful information about that monster. For every 5 points by which your check result exceeds the DC, you recall another piece of useful information. Many of the Knowledge skills have specific uses as noted on the below table.

<table>
  <tr>
    <th>Tasks</th>
    <th>Knowledge Skill</th>
    <th>DC</th>
  </tr>
  <tr>
    <td>Know Local Laws, Rulers, and Popular Locations</td>
    <td>Local</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Know a Common Rumor or Local Tradition</td>
    <td>Local</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Know Hidden Organizations, Rulers, and Locations</td>
    <td>Local</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Identify a Monster's Abilities and Weaknesses</td>
    <td>Varies</td>
    <td>10 + Monster's CR</td>
  </tr>
</table>", action: "Usually none. In most cases, a Knowledge check doesn’t take an action.", try_again: "No. The check represents what you know, and thinking about a topic a second time doesn’t let you know something that you never learned in the first place.", special: "You cannot make an untrained Knowledge check with a DC higher than 10. If you have access to an extensive library that covers a specific skill, this limit is removed. The time to make checks using a library, however, increases to 1d4 hours. Particularly complete libraries might even grant a bonus on Knowledge checks in the fields that they cover.", skill_unlock_5: "When you successfully identify a creature, you gain one additional piece of information for every 5 ranks you possess in that Knowledge skill.", skill_unlock_10: "When you successfully identify a creature, you gain a +1 competence bonus on attack rolls, opposed ability checks, skill checks, and caster level checks against creatures of that kind (e.g., glabrezu demons, but not other demons or evil outsiders) for 1 minute. This bonus increases by 1 for every 5 ranks beyond 10 you possess in that Knowledge skill.", skill_unlock_15: "When you fail a Knowledge check, you can reroll the check at a –10 penalty. The competence bonus above also applies to saving throws against exceptional, spell-like, or supernatural abilities used by creatures you identify.", skill_unlock_20: "Whenever you attempt a Knowledge check, you can roll twice and take the better result.", knowledge: true)

knowledge_nature = Skill.create!(name: "Knowledge (nature)", ability_score: "Intelligence", untrained: false, blurb: "You are educated in a field of study and can answer both simple and complex questions. Like the Craft, Perform, and Profession skills, Knowledge actually encompasses a number of different specialties. Nature includes animals, fey, monstrous humanoids, plants, seasons and cycles, weather, vermin.", description: "Answering a question within your field of study has a DC of 10 (for really easy questions), 15 (for basic questions), or 20 to 30 (for really tough questions).

You can use this skill to identify monsters and their special powers or vulnerabilities. In general, the DC of such a check equals 10 + the monster’s CR. For common monsters, such as goblins, the DC of this check equals 5 + the monster’s CR. For particularly rare monsters, such as the tarrasque, the DC of this check equals 15 + the monster’s CR, or more. A successful check allows you to remember a bit of useful information about that monster. For every 5 points by which your check result exceeds the DC, you recall another piece of useful information. Many of the Knowledge skills have specific uses as noted on the below table.

<table>
  <tr>
    <th>Tasks</th>
    <th>Knowledge Skill</th>
    <th>DC</th>
  </tr>
  <tr>
    <td>Identify Natural Hazard</td>
    <td>Nature</td>
    <td>15 + Hazard's CR</td>
  </tr>
  <tr>
    <td>Identify a Common Plant or Animal</td>
    <td>Nature</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Identify Unnatural Weather Phenomenon</td>
    <td>Nature</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Determine Artifical Nature of Feature</td>
    <td>Nature</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Identify a Monster's Abilities and Weaknesses</td>
    <td>Varies</td>
    <td>10 + Monster's CR</td>
  </tr>
</table>", action: "Usually none. In most cases, a Knowledge check doesn’t take an action.", try_again: "No. The check represents what you know, and thinking about a topic a second time doesn’t let you know something that you never learned in the first place.", special: "You cannot make an untrained Knowledge check with a DC higher than 10. If you have access to an extensive library that covers a specific skill, this limit is removed. The time to make checks using a library, however, increases to 1d4 hours. Particularly complete libraries might even grant a bonus on Knowledge checks in the fields that they cover.", skill_unlock_5: "When you successfully identify a creature, you gain one additional piece of information for every 5 ranks you possess in that Knowledge skill.", skill_unlock_10: "When you successfully identify a creature, you gain a +1 competence bonus on attack rolls, opposed ability checks, skill checks, and caster level checks against creatures of that kind (e.g., glabrezu demons, but not other demons or evil outsiders) for 1 minute. This bonus increases by 1 for every 5 ranks beyond 10 you possess in that Knowledge skill.", skill_unlock_15: "When you fail a Knowledge check, you can reroll the check at a –10 penalty. The competence bonus above also applies to saving throws against exceptional, spell-like, or supernatural abilities used by creatures you identify.", skill_unlock_20: "Whenever you attempt a Knowledge check, you can roll twice and take the better result.", knowledge: true)

knowledge_nobility = Skill.create!(name: "Knowledge (nobility)", ability_score: "Intelligence", untrained: false, blurb: "You are educated in a field of study and can answer both simple and complex questions. Like the Craft, Perform, and Profession skills, Knowledge actually encompasses a number of different specialties. Nobility includes lineages, heraldry, personalities, royalty.", description: "Answering a question within your field of study has a DC of 10 (for really easy questions), 15 (for basic questions), or 20 to 30 (for really tough questions).

You can use this skill to identify monsters and their special powers or vulnerabilities. In general, the DC of such a check equals 10 + the monster’s CR. For common monsters, such as goblins, the DC of this check equals 5 + the monster’s CR. For particularly rare monsters, such as the tarrasque, the DC of this check equals 15 + the monster’s CR, or more. A successful check allows you to remember a bit of useful information about that monster. For every 5 points by which your check result exceeds the DC, you recall another piece of useful information. Many of the Knowledge skills have specific uses as noted on the below table.

<table>
  <tr>
    <th>Tasks</th>
    <th>Knowledge Skill</th>
    <th>DC</th>
  </tr>
  <tr>
    <td>Know Current Rulers and Their Symbols</td>
    <td>Nobility</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Know Proper Etiquette</td>
    <td>Nobility</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Know Line of Succession</td>
    <td>Nobility</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Identify a Monster's Abilities and Weaknesses</td>
    <td>Varies</td>
    <td>10 + Monster's CR</td>
  </tr>
</table>", action: "Usually none. In most cases, a Knowledge check doesn’t take an action.", try_again: "No. The check represents what you know, and thinking about a topic a second time doesn’t let you know something that you never learned in the first place.", special: "You cannot make an untrained Knowledge check with a DC higher than 10. If you have access to an extensive library that covers a specific skill, this limit is removed. The time to make checks using a library, however, increases to 1d4 hours. Particularly complete libraries might even grant a bonus on Knowledge checks in the fields that they cover.", skill_unlock_5: "When you successfully identify a creature, you gain one additional piece of information for every 5 ranks you possess in that Knowledge skill.", skill_unlock_10: "When you successfully identify a creature, you gain a +1 competence bonus on attack rolls, opposed ability checks, skill checks, and caster level checks against creatures of that kind (e.g., glabrezu demons, but not other demons or evil outsiders) for 1 minute. This bonus increases by 1 for every 5 ranks beyond 10 you possess in that Knowledge skill.", skill_unlock_15: "When you fail a Knowledge check, you can reroll the check at a –10 penalty. The competence bonus above also applies to saving throws against exceptional, spell-like, or supernatural abilities used by creatures you identify.", skill_unlock_20: "Whenever you attempt a Knowledge check, you can roll twice and take the better result.", knowledge: true)

knowledge_planes = Skill.create!(name: "Knowledge (planes)", ability_score: "Intelligence", untrained: false, blurb: "You are educated in a field of study and can answer both simple and complex questions. Like the Craft, Perform, and Profession skills, Knowledge actually encompasses a number of different specialties. Planes includes the Inner Planes, the Outer Planes, the Astral Plane, the Ethereal Plane, outsiders, planar magic.", description: "Answering a question within your field of study has a DC of 10 (for really easy questions), 15 (for basic questions), or 20 to 30 (for really tough questions).

You can use this skill to identify monsters and their special powers or vulnerabilities. In general, the DC of such a check equals 10 + the monster’s CR. For common monsters, such as goblins, the DC of this check equals 5 + the monster’s CR. For particularly rare monsters, such as the tarrasque, the DC of this check equals 15 + the monster’s CR, or more. A successful check allows you to remember a bit of useful information about that monster. For every 5 points by which your check result exceeds the DC, you recall another piece of useful information. Many of the Knowledge skills have specific uses as noted on the below table.

<table>
  <tr>
    <th>Tasks</th>
    <th>Knowledge Skill</th>
    <th>DC</th>
  </tr>
  <tr>
    <td>Know the Names of the Planes</td>
    <td>Planes</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Recognize Current Plane</td>
    <td>Planes</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Identify a Creature's Planar Origin</td>
    <td>Planes</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Identify a Monster's Abilities and Weaknesses</td>
    <td>Varies</td>
    <td>10 + Monster's CR</td>
  </tr>
</table>", action: "Usually none. In most cases, a Knowledge check doesn’t take an action.", try_again: "No. The check represents what you know, and thinking about a topic a second time doesn’t let you know something that you never learned in the first place.", special: "You cannot make an untrained Knowledge check with a DC higher than 10. If you have access to an extensive library that covers a specific skill, this limit is removed. The time to make checks using a library, however, increases to 1d4 hours. Particularly complete libraries might even grant a bonus on Knowledge checks in the fields that they cover.", skill_unlock_5: "When you successfully identify a creature, you gain one additional piece of information for every 5 ranks you possess in that Knowledge skill.", skill_unlock_10: "When you successfully identify a creature, you gain a +1 competence bonus on attack rolls, opposed ability checks, skill checks, and caster level checks against creatures of that kind (e.g., glabrezu demons, but not other demons or evil outsiders) for 1 minute. This bonus increases by 1 for every 5 ranks beyond 10 you possess in that Knowledge skill.", skill_unlock_15: "When you fail a Knowledge check, you can reroll the check at a –10 penalty. The competence bonus above also applies to saving throws against exceptional, spell-like, or supernatural abilities used by creatures you identify.", skill_unlock_20: "Whenever you attempt a Knowledge check, you can roll twice and take the better result.", knowledge: true)

knowledge_religion = Skill.create!(name: "Knowledge (religion)", ability_score: "Intelligence", untrained: false, blurb: "You are educated in a field of study and can answer both simple and complex questions. Like the Craft, Perform, and Profession skills, Knowledge actually encompasses a number of different specialties. Religion includes gods and goddesses, mythic history, ecclesiastic tradition, holy symbols, undead.", description: "Answering a question within your field of study has a DC of 10 (for really easy questions), 15 (for basic questions), or 20 to 30 (for really tough questions).

You can use this skill to identify monsters and their special powers or vulnerabilities. In general, the DC of such a check equals 10 + the monster’s CR. For common monsters, such as goblins, the DC of this check equals 5 + the monster’s CR. For particularly rare monsters, such as the tarrasque, the DC of this check equals 15 + the monster’s CR, or more. A successful check allows you to remember a bit of useful information about that monster. For every 5 points by which your check result exceeds the DC, you recall another piece of useful information. Many of the Knowledge skills have specific uses as noted on the below table.

<table>
  <tr>
    <th>Tasks</th>
    <th>Knowledge Skill</th>
    <th>DC</th>
  </tr>
  <tr>
    <td>Recognize a Common Deity's Symbol or Clergy</td>
    <td>Religion</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Know Common Mythology and Tenets</td>
    <td>Religion</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Recognize an Obscure Deity's Symbol or Clergy</td>
    <td>Religion</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Identify a Monster's Abilities and Weaknesses</td>
    <td>Varies</td>
    <td>10 + Monster's CR</td>
  </tr>
</table>", action: "Usually none. In most cases, a Knowledge check doesn’t take an action.", try_again: "No. The check represents what you know, and thinking about a topic a second time doesn’t let you know something that you never learned in the first place.", special: "You cannot make an untrained Knowledge check with a DC higher than 10. If you have access to an extensive library that covers a specific skill, this limit is removed. The time to make checks using a library, however, increases to 1d4 hours. Particularly complete libraries might even grant a bonus on Knowledge checks in the fields that they cover.", skill_unlock_5: "When you successfully identify a creature, you gain one additional piece of information for every 5 ranks you possess in that Knowledge skill.", skill_unlock_10: "When you successfully identify a creature, you gain a +1 competence bonus on attack rolls, opposed ability checks, skill checks, and caster level checks against creatures of that kind (e.g., glabrezu demons, but not other demons or evil outsiders) for 1 minute. This bonus increases by 1 for every 5 ranks beyond 10 you possess in that Knowledge skill.", skill_unlock_15: "When you fail a Knowledge check, you can reroll the check at a –10 penalty. The competence bonus above also applies to saving throws against exceptional, spell-like, or supernatural abilities used by creatures you identify.", skill_unlock_20: "Whenever you attempt a Knowledge check, you can roll twice and take the better result.", knowledge: true)

knowledge = Skill.create!(name: "Knowledge", ability_score: "Intelligence", untrained: false, blurb: "You are educated in a field of study and can answer both simple and complex questions. Like the Craft, Perform, and Profession skills, Knowledge actually encompasses a number of different specialties.", description: "Arcana (ancient mysteries, magic traditions, arcane symbols, constructs, dragons, magical beasts)

Dungeoneering (aberrations, caverns, oozes, spelunking)

Engineering (buildings, aqueducts, bridges, fortifications)

Geography (lands, terrain, climate, people)

History (wars, colonies, migrations, founding of cities)

Local (legends, personalities, inhabitants, laws, customs, traditions, humanoids)

Nature (animals, fey, monstrous humanoids, plants, seasons and cycles, weather, vermin)

Nobility (lineages, heraldry, personalities, royalty)

Planes (the Inner Planes, the Outer Planes, the Astral Plane, the Ethereal Plane, outsiders, planar magic)

Religion (gods and goddesses, mythic history, ecclesiastic tradition, holy symbols, undead)

Answering a question within your field of study has a DC of 10 (for really easy questions), 15 (for basic questions), or 20 to 30 (for really tough questions).

You can use this skill to identify monsters and their special powers or vulnerabilities. In general, the DC of such a check equals 10 + the monster’s CR. For common monsters, such as goblins, the DC of this check equals 5 + the monster’s CR. For particularly rare monsters, such as the tarrasque, the DC of this check equals 15 + the monster’s CR, or more. A successful check allows you to remember a bit of useful information about that monster. For every 5 points by which your check result exceeds the DC, you recall another piece of useful information. Many of the Knowledge skills have specific uses as noted on the below table.

<table>
  <tr>
    <th>Tasks</th>
    <th>Knowledge Skill</th>
    <th>DC</th>
  </tr>
  <tr>
    <td>Identify Auras While Using Detect Magic</td>
    <td>Arcana</td>
    <td>15 + Spell Level</td>
  </tr>
  <tr>
    <td>Identify a Spell Effect That Is In Place</td>
    <td>Arcana</td>
    <td>20 + Spell Level</td>
  </tr>
  <tr>
    <td>Identify Materials Manufactured by Magic</td>
    <td>Arcana</td>
    <td>20 + Spell Level</td>
  </tr>
  <tr>
    <td>Identify a Spell That Just Targeted You</td>
    <td>Arcana</td>
    <td>25 + Spell Level</td>
  </tr>
  <tr>
    <td>Identify the Spells Cast Using a Specific Material Component</td>
    <td>Arcana</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Identify Underground Hazard</td>
    <td>Dungeoneering</td>
    <td>15 + Hazard's CR</td>
  </tr>
  <tr>
    <td>Identify Mineral, Stone, or Metal</td>
    <td>Dungeoneering</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Determine Slope</td>
    <td>Dungeoneering</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Determine Depth Underground</td>
    <td>Dungeoneering</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Identify Dangerous Construction</td>
    <td>Engineering</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Determine a Structure's Style or Age</td>
    <td>Engineering</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Determine a Structure's Weakness</td>
    <td>Engineering</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Identify a Creature's Ethnicity or Accent</td>
    <td>Geography</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Recognize Regional Terrain Features</td>
    <td>Geography</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Know Location of Nearest Community or Noteworthy Site</td>
    <td>Geography</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Know Recent or Historically Significant Date</td>
    <td>History</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Determine Approximate Date of Specific Event</td>
    <td>History</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Know Obscure or Ancient Historical Event</td>
    <td>History</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Know Local Laws, Rulers, and Popular Locations</td>
    <td>Local</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Know a Common Rumor or Local Tradition</td>
    <td>Local</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Know Hidden Organizations, Rulers, and Locations</td>
    <td>Local</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Identify Natural Hazard</td>
    <td>Nature</td>
    <td>15 + Hazard's CR</td>
  </tr>
  <tr>
    <td>Identify a Common Plant or Animal</td>
    <td>Nature</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Identify Unnatural Weather Phenomenon</td>
    <td>Nature</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Determine Artifical Nature of Feature</td>
    <td>Nature</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Know Current Rulers and Their Symbols</td>
    <td>Nobility</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Know Proper Etiquette</td>
    <td>Nobility</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Know Line of Succession</td>
    <td>Nobility</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Know the Names of the Planes</td>
    <td>Planes</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Recognize Current Plane</td>
    <td>Planes</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Identify a Creature's Planar Origin</td>
    <td>Planes</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Recognize a Common Deity's Symbol or Clergy</td>
    <td>Religion</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Know Common Mythology and Tenets</td>
    <td>Religion</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Recognize an Obscure Deity's Symbol or Clergy</td>
    <td>Religion</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Identify a Monster's Abilities and Weaknesses</td>
    <td>Varies</td>
    <td>10 + Monster's CR</td>
  </tr>
</table>", action: "Usually none. In most cases, a Knowledge check doesn’t take an action.", try_again: "No. The check represents what you know, and thinking about a topic a second time doesn’t let you know something that you never learned in the first place.", special: "You cannot make an untrained Knowledge check with a DC higher than 10. If you have access to an extensive library that covers a specific skill, this limit is removed. The time to make checks using a library, however, increases to 1d4 hours. Particularly complete libraries might even grant a bonus on Knowledge checks in the fields that they cover.", skill_unlock_5: "When you successfully identify a creature, you gain one additional piece of information for every 5 ranks you possess in that Knowledge skill.", skill_unlock_10: "When you successfully identify a creature, you gain a +1 competence bonus on attack rolls, opposed ability checks, skill checks, and caster level checks against creatures of that kind (e.g., glabrezu demons, but not other demons or evil outsiders) for 1 minute. This bonus increases by 1 for every 5 ranks beyond 10 you possess in that Knowledge skill.", skill_unlock_15: "When you fail a Knowledge check, you can reroll the check at a –10 penalty. The competence bonus above also applies to saving throws against exceptional, spell-like, or supernatural abilities used by creatures you identify.", skill_unlock_20: "Whenever you attempt a Knowledge check, you can roll twice and take the better result.", knowledge: true, customizable: true)

linguistics = Skill.create!(name: "Linguistics", ability_score: "Intelligence", untrained: false, blurb: "You are skilled at working with language, in both its spoken and written forms. You can speak multiple languages, and can decipher nearly any tongue given enough time. Your skill in writing allows you to create and detect forgeries as well.", description: "You can decipher writing in an unfamiliar language or a message written in an incomplete or archaic form. The base DC is 20 for the simplest messages, 25 for standard texts, and 30 or higher for intricate, exotic, or very old writing. If the check succeeds, you understand the general content of a piece of writing about one page long (or the equivalent). If the check fails, make a DC 5 Wisdom check to see if you avoid drawing a false conclusion about the text. (Success means that you do not draw a false conclusion; failure means that you do.)

Both the Linguistics check and (if necessary) the Wisdom check are made secretly by the GM, so that you can’t tell whether the conclusion you draw is true or false.

<table>
  <tr>
    <th>Condition</th>
    <th>Linguistics Check Modifier</th>
  </tr>
  <tr>
    <td>Type of Document is Unknown to Reader</td>
    <td>-2</td>
  </tr>
  <tr>
    <td>Type of Document is Somewhat Known to Reader</td>
    <td>+0</td>
  </tr>
  <tr>
    <td>Type of Document is Well Known to Reader</td>
    <td>+2</td>
  </tr>
  <tr>
    <td>Handwriting Not Known to Reader</td>
    <td>-2</td>
  </tr>
  <tr>
    <td>Handwriting Somewhat Known to Reader</td>
    <td>+0</td>
  </tr>
  <tr>
    <td>Handwritin Intimately Known to Reader</td>
    <td>+2</td>
  </tr>
  <tr>
    <td>Reader Only Casually Reviews Document</td>
    <td>-2</td>
  </tr>
  <tr>
    <td>Document Contradicts Orders or Knowledge</td>
    <td>+2</td>
  </tr>
</table>

Create or Detect Forgeries: Forgery requires writing materials appropriate to the document being forged. To forge a document on which the handwriting is not specific to a person, you need only to have seen a similar document before, and you gain a +8 bonus on your check. To forge a signature, you need an autograph of that person to copy, and you gain a +4 bonus on the check. To forge a longer document written in the hand of some particular person, a large sample of that person’s handwriting is needed.

The Linguistics check is made secretly, so that you’re not sure how good your forgery is. As with Disguise, you don’t make a check until someone examines the work. Your Linguistics check is opposed by the Linguistics check of the person who examines the document to verify its authenticity. The examiner gains modifiers if any of the conditions are listed on the table above.

Learn a Language: Whenever you put a rank into this skill, you learn to speak and read a new language. Common languages (and their typical speakers) include the following.

Abyssal (demons and other chaotic evil outsiders)

Aklo (derros, inhuman or otherworldly monsters, evil fey)

Aquan (aquatic creatures, water-based creatures)

Auran (f lying creatures, air-based creatures)

Celestial (angels and other good outsiders)

Common (humans and the core races)

Draconic (dragons, reptilian humanoids)

Druidic (druids only)

Dwarven (dwarves)

Elven (elves, half-elves)

Giant (cyclopses, ettins, giants, ogres, trolls)

Gnome (gnomes)

Goblin (bugbears, goblins, hobgoblins)

Gnoll (gnolls)

Half ling (half lings)

Ignan (f ire-based creatures)

Infernal (devils and other lawful evil outsiders)

Orc (orcs, half-orcs)

Sylvan (centaurs, fey creatures, plant creatures, unicorns)

Terran (earth-based creatures)

Undercommon (drow, duergar, morlocks, svirfneblin)

Read Lips: Any PC may learn to read lips with a rank in Linguistics as if they had learned a new language. When reading the lips of a speaking creature within 10 feet in normal lighting conditions, the reader need not make any skill checks. In situations of dim lighting, extreme distances, or to read the lips of someone trying to hide their words from the reader, the reader must make Perception checks (DC determined by the GM based on the situation). A lip reader may only understand spoken words in a language it knows.", action: "Varies. Deciphering a page of ordinary text takes 1 minute (10 consecutive rounds). Creating a forgery can take anywhere from 1 minute to 1d4 minutes per page. Detecting a forgery using Linguistics takes 1 round of examination per page.", try_again: "Yes.", special: "You must be trained to use this skill, but you can always attempt to read archaic and strange forms of your own racial bonus languages. In addition, you can also always attempt to detect a forgery.", skill_unlock_5: "You can use Linguistics instead of Sense Motive to intercept and interpret secret messages (as the Bluff skill). You gain a +1 insight bonus on Perception and Disable Device checks to detect or disarm written magical traps. This bonus increases by 1 for every 5 ranks beyond 5 you possess in Linguistics.", skill_unlock_10: "If you succeed at a Linguistics check by at least 10 when examining writing, you can learn the precise meaning rather than general content, and you never draw false conclusions on a failed check. A successful DC 30 Linguistics check reveals the general meaning of speech, a successful DC 35 check reveals 1d4 pieces of specific information, and a successful DC 40 check reveals exact meaning.", skill_unlock_15: "You can decipher magical writings (as read magic) by succeeding at a Linguistics check (DC = 25 + caster level). If you identify a written magical trap in this way, you gain a +2 circumstance bonus on Disable Device checks to disarm it.", skill_unlock_20: "You can attempt to decipher magical or non-magical text at a rate of one page per round. If you instead spend 1 minute per page, roll twice and take the better result.")

perception = Skill.create!(name: "Perception", ability_score: "Wisdom", untrained: true, blurb: "Your senses allow you to notice fine details and alert you to danger. Perception covers all five senses, including sight, hearing, touch, taste, and smell.", description: "Perception has a number of uses, the most common of which is an opposed check versus an opponent’s Stealth check to notice the opponent and avoid being surprised. If you are successful, you notice the opponent and can react accordingly. If you fail, your opponent can take a variety of actions, including sneaking past you and attacking you.

Perception is also used to notice fine details in the environment. The DC to notice such details varies depending upon distance, the environment, and how noticeable the detail is. The following table gives a number of guidelines.

<table>
  <tr>
    <th>Detail</th>
    <th>Perception DC</th>
  </tr>
  <tr>
    <td>Hear the Sound of Battle</td>
    <td>-10</td>
  </tr>
  <tr>
    <td>Notice the Stench of Rotting Garbage</td>
    <td>-10</td>
  </tr>
  <tr>
    <td>Detect the Smell of Smoke</td>
    <td>0</td>
  </tr>
  <tr>
    <td>Hear the Details of a Conversation</td>
    <td>0</td>
  </tr>
  <tr>
    <td>Notice a Visible Creature</td>
    <td>0</td>
  </tr>
  <tr>
    <td>Determine if Food is Spoiled</td>
    <td>5</td>
  </tr>
  <tr>
    <td>Hear the Sound of a Creature Walking</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Hear the Details of a Whispered Conversation</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Find the Average Concealed Door</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Hear the Sound of a Key Being Turned in a Lock</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Find the Average Secret Door</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Hear a Bow Being Drawn</td>
    <td>25</td>
  </tr>
  <tr>
    <td>Sense a Burrowing Creature Underneath You</td>
    <td>25</td>
  </tr>
  <tr>
    <td>Notice a Pickpocket</td>
    <td>Opposed by Sleight of Hand</td>
  </tr>
  <tr>
    <td>Notice a Creature Using Stealth</td>
    <td>Opposed by Stealth</td>
  </tr>
  <tr>
    <td>Find a Hidden Trap</td>
    <td>Varies by Trap</td>
  </tr>
  <tr>
    <td>Identify the Powers of a Potion through Taste</td>
    <td>15 + Potion's Caster Level</td>
  </tr>
</table>

<table>
  <tr>
    <th>Perception Modifiers</th>
    <th>DC Modifier</th>
  </tr>
  <tr>
    <td>Distance to the Source, Object, or Creature</td>
    <td>+1 per 10 Feet</td>
  </tr>
  <tr>
    <td>Through a Closed Door</td>
    <td>+5</td>
  </tr>
  <tr>
    <td>Through a Wall</td>
    <td>+10 per Foot</td>
  </tr>
  <tr>
    <td>Favorable Conditions</td>
    <td>-2</td>
  </tr>
  <tr>
    <td>Unfavorable Conditions</td>
    <td>+2</td>
  </tr>
  <tr>
    <td>Terrible Conditions</td>
    <td>+5</td>
  </tr>
  <tr>
    <td>Creature Making the Check is Distracted</td>
    <td>+5</td>
  </tr>
  <tr>
    <td>Creature Making the Check is Asleep</td>
    <td>+10</td>
  </tr>
  <tr>
    <td>Creature or Object is Invisible</td>
    <td>+20</td>
  </tr>
</table>", action: "Most Perception checks are reactive, made in response to observable stimulus. Intentionally searching for stimulus is a move action.", try_again: "Yes. You can try to sense something you missed the first time, so long as the stimulus is still present.", special: "Creatures with the scent special quality have a +8 bonus on Perception checks made to detect a scent. Creatures with the tremorsense special quality have a +8 bonus on Perception checks against creatures touching the ground and automatically make any such checks within their range.", skill_unlock_5: "You remain alert to sounds even in your sleep, and the normal DC increase to Perception checks when you are sleeping is halved. The distance modifier on the DC of Perception checks you attempt is reduced to +1 per 20 feet.", skill_unlock_10: "The distance modifier on the DC of Perception checks you attempt is reduced to +1 per 30 feet. In addition, you gain a +5 bonus on Perception checks to notice or locate an invisible creature or object.", skill_unlock_15: "You remain alert to sounds even in your sleep, and the normal DC increase to Perception checks when you are sleeping doesn’t apply to you. The distance modifier on the DC of your Perception checks is reduced to +1 per 40 feet.", skill_unlock_20: "You gain a +10 bonus on Perception checks to notice invisible creatures or objects. The distance modifier on the DC of Perception checks you attempt is reduced to +1 per 60 feet.")

perform = Skill.create!(name: "Perform", ability_score: "Charisma", untrained: true, blurb: "You are skilled at one form of entertainment, from singing to acting to playing an instrument. Like Craft, Knowledge, and Profession, Perform is actually a number of separate skills. You could have several Perform skills, each with its own ranks.

Each of the nine categories of the Perform skill includes a variety of methods, instruments, or techniques, a small sample of which is provided for each category below.

Act (comedy, drama, pantomime)

Comedy (buffoonery, limericks, joke-telling)

Dance (ballet, waltz, jig)

Keyboard instruments (harpsichord, piano, pipe organ)

Oratory (epic, ode, storytelling)

Percussion instruments (bells, chimes, drums, gong)

String instruments (fiddle, harp, lute, mandolin)

Wind instruments (flute, pan pipes, recorder, trumpet)

Sing (ballad, chant, melody)", description: "You can impress audiences with your talent and skill in your chosen performance type.

<table>
  <tr>
    <th>Perform DC</th>
    <th>Performance</th>
  </tr>
  <tr>
    <td>10</td>
    <td>Routine performance. Trying to earn money by playing in public is akin to begging. You can earn 1d10 cp/day.</td>
  </tr>
  <tr>
    <td>15</td>
    <td>Enjoyable performance. In a prosperous city, you can earn 1d10 sp/day.</td>
  </tr>
  <tr>
    <td>20</td>
    <td>Great performance. In a prosperous city, you can earn 3d10 sp/day. In time, you may be invited to join a professional troupe and may develop a regional reputation.</td>
  </tr>
  <tr>
    <td>25</td>
    <td>Memorable performance. In a prosperous city, you can earn 1d6 gp/day. In time, you may come to the attention of noble patrons and develop a national reputation.</td>
  </tr>
  <tr>
    <td>30</td>
    <td>Extraordinary performance. In a prosperous city, you can earn 3d6 gp/day. In time, you may draw attention from distant patrons, or even from extraplanar beings.</td>
  </tr>
</table>

A masterwork musical instrument gives you a +2 circumstance bonus on all Perform checks that involve its use.

In addition to being able to put on a show, a performer knows the prominent works of their chosen type of performance.

<table>
  <tr>
    <th>Task</th>
    <th>Perform Skill</th>
    <th>DC</th>
  </tr>
  <tr>
    <td>Mimic the Style of a Famous Performer</td>
    <td>Varies</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Recall or Recognize All the Notes, Lyrics, or Lines of a Popular Work</td>
    <td>Varies</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Recall or Recognize All the Notes, Lyrics, or Lines of an Obscure Work</td>
    <td>Varies</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Improvise a Routine on a Specific Subject</td>
    <td>Act, Comedy, Oratory, or Sing</td>
    <td>20</td>
  </tr>
</table>", action: "Varies. Trying to earn money by playing in public requires anywhere from an evening’s work to a full day’s performance. The bard’s special Perform-based abilities are described in that class’s description.", try_again: "Yes. Retries are allowed, but they don’t negate previous failures, and an audience that has been unimpressed in the past is likely to be prejudiced against future performances. (Increase the DC by 2 for each previous failure.)", special: "A bard must have ranks in specific Perform categories to use some of his Bardic Performance abilities.", skill_unlock_5: "Whenever you attempt a Bluff, Diplomacy, Handle Animal, or Intimidate check, you can attempt a DC 20 Perform check to gain a +2 circumstance bonus on the check.", skill_unlock_10: "Whenever you cast a spell with the emotion or language-dependent descriptor, you can attempt a DC 25 Perform check to increase the save DC by 1.", skill_unlock_15: "Whenever you cast a spell with the emotion or language-dependent descriptor, you can attempt a DC 30 Perform check to increase your caster level by 1. You must choose whether to use this ability or the ability unlocked at 10 ranks when casting the spell.", skill_unlock_20: "Choose one of the following skills: Bluff, Diplomacy, or Intimidate. When you attempt a skill check with that skill, you can also attempt a Perform check and use the better result to determine the success of that skill check.", customizable: true)

profession = Skill.create!(name: "Profession", ability_score: "Wisdom", untrained: false, blurb: "You are skilled at a specific job. Like Craft, Knowledge, and Perform, Profession is actually a number of separate skills. You could have several Profession skills, each with its own ranks. While a Craft skill represents ability in creating an item, a Profession skill represents an aptitude in a vocation requiring a broader range of less specific knowledge. The most common Profession skills are architect, baker, barrister, brewer, butcher, clerk, cook, courtesan, driver, engineer, farmer, f isherman, gambler, gardener, herbalist, innkeeper, librarian, merchant, midwife, miller, miner, porter, sailor, scribe, shepherd, stable master, soldier, tanner, trapper, and woodcutter.", description: "You can earn half your Profession check result in gold pieces per week of dedicated work. You know how to use the tools of your trade, how to perform the profession’s daily tasks, how to supervise helpers, and how to handle common problems. You can also answer questions about your Profession. Basic questions are DC 10, while more complex questions are DC 15 or higher.

A profession often encompasses many smaller areas of expertise, and these auxiliary skills can come in handy in situations beyond just making money or answering trade-specific questions. Below are some sample additional uses for Profession skills, and GMs are encouraged to create their own.

<table>
  <tr>
    <th>Task</th>
    <th>Profession Skill</th>
    <th>DC</th>
  </tr>
  <tr>
    <td>Determine Hardness and Hit Points of a Structure</td>
    <td>Architect or Engineer</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Prepare Trail Rations (Takes 1 Hour Per Day's Worth of Rations)</td>
    <td>Baker or Cook</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Obtain a Legal Permit</td>
    <td>Barrister or Clerk</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Get Somone Released From Jail Who Has Been Imprisoned for a Minor Crime</td>
    <td>Barrister</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Ask a Special Favor From a Judge (Such as Arresting Someone)</td>
    <td>Barrister</td>
    <td>30</td>
  </tr>
  <tr>
    <td>Brew Alcohol of Exceptional Quality</td>
    <td>Brewer</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Notice Poison in a Beverage</td>
    <td>Brewer</td>
    <td>25</td>
  </tr>
  <tr>
    <td>Skin an Animal and Tan the Hide</td>
    <td>Butcher, Shepherd, or Tanner</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Slaughter and Butcher an Animal</td>
    <td>Butcher, Cook, or Shepherd</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Reduce a Legal Fine or Tax By Half the Result of the Check in gp (up to 75%)</td>
    <td>Clerk</td>
    <td>20+</td>
  </tr>
  <tr>
    <td>Cook a Meal of Exceptional Quality</td>
    <td>Cook</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Notice Poison in Food</td>
    <td>Cook</td>
    <td>25</td>
  </tr>
  <tr>
    <td>Find Potential Clients within an Establishment or Large Group</td>
    <td>Courtesan</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Continue Steering a Vehicle When You Take Damage</td>
    <td>Driver or Sailor</td>
    <td>5</td>
  </tr>
  <tr>
    <td>Take Cover (As The Ride Skill) While Steering a Vehicle</td>
    <td>Driver or Sailor</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Identify a Non-Creature Plant</td>
    <td>Farmer or Gardener</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Rejuvinate Dying Plants</td>
    <td>Farmer or Gardener</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Provide 1 Day's Worth of Food for Yourself and Others in the Wild</td>
    <td>Fisherman or Trapper</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Recall the Rules of a Game of Chance</td>
    <td>Gambler</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Get a Hunch Regarding Whether a Game is Rigged</td>
    <td>Gambler</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Reduce an Average or Lower Cost of Living by 50%</td>
    <td>Innkeeper</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Sate Hunger or Thirst for 1 Day</td>
    <td>Herbalist</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Identify Common Medicinal Herbs</td>
    <td>Herbalist</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Identify Rare Medicinal Herbs</td>
    <td>Herbalist</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Aid Another on a Knowledge Check Using Reference Material</td>
    <td>Librarian</td>
    <td>5</td>
  </tr>
  <tr>
    <td>Recall the Name of a Rare Book</td>
    <td>Librarian</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Determine Where an Item was Manufactured</td>
    <td>Merchant</td>
    <td>10+</td>
  </tr>
  <tr>
    <td>Recall Where a Common Good Fetches a Higher Price</td>
    <td>Merchant</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Safely Deliver a Child</td>
    <td>Midwife</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Safely Deliver a Child Despite Complications</td>
    <td>Midwife</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Grind a Small Piece of Nonmagical Substance into Powder</td>
    <td>Miller</td>
    <td>10 + Hardness</td>
  </tr>
  <tr>
    <td>Identify Common Metal or Semiprecious Stone</td>
    <td>Miner</td>
    <td>5</td>
  </tr>
  <tr>
    <td>Identify Rare Metal or Precious Gem</td>
    <td>Miner</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Ignore Half Hardness When Attacking a Stone or Metal Object</td>
    <td>Miner</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Increase Carrying Capacity for 8 Hours as if Strength were 2 Higher</td>
    <td>Porter</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Unload a Vessel in Half the Normal Time</td>
    <td>Porter</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Navigate a Ship in Fair Conditions</td>
    <td>Sailor</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Pilot a Ship Safely Through a Hazardous Seaway</td>
    <td>Sailor</td>
    <td>25+</td>
  </tr>
  <tr>
    <td>Determine Which Scribe Wrote a Document</td>
    <td>Scribe</td>
    <td>10+</td>
  </tr>
  <tr>
    <td>Copy a Document (30 Minutes per Page; Requires a Blank Book)</td>
    <td>Scribe</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Illuminate a Manuscript (1 Hour per Page)</td>
    <td>Scribe</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Determine the Quality of Woolen Textiles</td>
    <td>Shepherd</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Determine Whether a Weapon or Armor is of Masterwork Quality</td>
    <td>Soldier</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Estimate the Size of a Military Force</td>
    <td>Soldier</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Identify Advantages and Disadvantages of a Military Formation</td>
    <td>Soldier</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Keep Horses Fed in the Wild</td>
    <td>Stable Master</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Fit or Remove Barding in Half the Normal Time</td>
    <td>Stable Master</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Recognize Damaged or Sabotaged Horse Tack</td>
    <td>Stable Master</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Determine the Quality of Leatherwork (and Tell If It's Masterwork Quality)</td>
    <td>Tanner</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Aid Another on an Skill Check to Get Out of a Trap or Snare</td>
    <td>Trapper</td>
    <td>5</td>
  </tr>
  <tr>
    <td>Reset a Trap in Half the Normal Amount of Time</td>
    <td>Trapper</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Scavenge Wood Suitable for Campfire or Shelter</td>
    <td>Woodcutter</td>
    <td>5</td>
  </tr>
  <tr>
    <td>Ignore Half Hardness When Attacking Wooden Object</td>
    <td>Woodcutter</td>
    <td>20</td>
  </tr>
</table>", action: "Not applicable. A single check generally represents a week of work.", try_again: "Varies. An attempt to use a Profession skill to earn income cannot be retried. You are stuck with whatever weekly wage your check result brought you. Another check may be made after a week to determine a new income for the next period of time. An attempt to accomplish some specific task can usually be retried.", special: "Untrained laborers and assistants (that is, characters without any ranks in Profession) earn an average of 1 silver piece per day.", skill_unlock_5: "When using Profession checks to earn income, you earn gold pieces equal to the result of your check each week.", skill_unlock_10: "When attempting Profession checks, you can roll twice and take the better result. When answering questions about your Profession, you can always take 10.", skill_unlock_15: "You can attempt checks to earn income once per day instead of once per week.", skill_unlock_20: "When attempting Profession checks, you can choose to roll once instead of twice. If you do and the result of the roll is less than 10, replace it with 10. When answering questions about your Profession, you can always take 20.", customizable: true)

ride = Skill.create!(name: "Ride", ability_score: "Dexterity", untrained: true, blurb: "You are skilled at riding mounts, usually a horse, but possibly something more exotic, like a griffon or pegasus. If you attempt to ride a creature that is ill suited as a mount, you take a –5 penalty on your Ride checks.", description: "Typical riding actions don’t require checks. You can saddle, mount, ride, and dismount from a mount without a problem. The following tasks do require checks.

<table>
  <tr>
    <th>Task</th>
    <th>Ride DC</th>
  </tr>
  <tr>
    <td>Guide with Knees</td>
    <td>5</td>
  </tr>
  <tr>
    <td>Stay in Saddle</td>
    <td>5</td>
  </tr>
  <tr>
    <td>Fight with a Combat-Trained Mount</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Cover</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Soft Fall</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Leap</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Spur Mount</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Control Mount in Battle</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Fast Mount or Dismount</td>
    <td>20</td>
  </tr>
</table>

Guide with Knees: You can guide your mount with your knees so you can use both hands in combat. Make your Ride check at the start of your turn. If you fail, you can use only one hand this round because you need to use the other to control your mount. This does not take an action.

Stay in Saddle: You can react instantly to try to avoid falling when your mount rears or bolts unexpectedly or when you take damage. This usage does not take an action.

Fight with a Combat-Trained Mount: If you direct your war-trained mount to attack in battle, you can still make your own attack or attacks normally. This usage is a free action.

Cover: You can react instantly to drop down and hang alongside your mount, using it as cover. You can’t attack or cast spells while using your mount as cover. If you fail your Ride check, you don’t get the cover benefit. Using this option is an immediate action, but recovering from this position is a move action (no check required).

Soft Fall: You negate damage when you fall off a mount. If you fail the Ride check, you take 1d6 points of damage and are prone. This usage does not take an action.

Leap: You can get your mount to leap obstacles as part of its movement. If the Ride check to make the leap succeeds, make a check using your Ride modifier or the mount’s jump modifier, whichever is lower, to see how far the creature can jump. If you fail your Ride check, you fall off the mount when it leaps and take the appropriate falling damage (at least 1d6 points). This usage does not take an action but is part of the mount’s movement.

Spur Mount: You can spur your mount to greater speed with a move action. A successful Ride check increases the mount’s speed by 10 feet for 1 round but deals 1d3 points of damage to the creature. You can use this ability every round, but the mount becomes fatigued after a number of rounds equal to its Constitution score. This ability cannot be used on a fatigued mount.

Control Mount in Battle: As a move action, you can attempt to control a light horse, pony, heavy horse, or other mount not trained for combat riding while in battle. If you fail the Ride check, you can do nothing else in that round. You do not need to roll for horses or ponies trained for combat.

Fast Mount or Dismount: You can attempt to mount or dismount from a mount of up to one size category larger than yourself as a free action, provided that you still have a move action available that round. If you fail the Ride check, mounting or dismounting is a move action. You can’t use fast mount or dismount on a mount more than one size category larger than yourself.", action: "Varies. Mounting or dismounting normally is a move action. Other checks are a move action, a free action, or no action at all, as noted above.", try_again: "", special: "If you are riding bareback, you take a –5 penalty on Ride checks. If you use a military saddle you get a +2 circumstance bonus on Ride checks related to staying in the saddle.", skill_unlock_5: "Your mount gains a +2 bonus on Fortitude saves or Constitution checks to avoid becoming fatigued or exhausted. This bonus increases by 1 for every 5 ranks beyond 5 you possess in Ride.", skill_unlock_10: "When you spur your mount, its speed is increased by 20 feet, and it gains a +2 bonus on Reflex saves and a +2 dodge bonus to AC.", skill_unlock_15: "When an opponent targets you or your mount with a bull rush, drag, overrun, reposition, or trip combat maneuver while you are mounted, you can substitute the result of a Ride check in place of your (or your mount’s) CMD.", skill_unlock_20: "When you spur your mount, its speed is increased by 30 feet, and it gains a +4 bonus on Reflex saves and a +4 dodge bonus to AC.")

sense_motive = Skill.create!(name: "Sense Motive", ability_score: "Wisdom", untrained: true, blurb: "You are skilled at detecting falsehoods and true intentions.", description: "A successful check lets you avoid being bluffed (see the Bluff skill). You can also use this skill to determine when “something is up” (that is, something odd is going on) or to assess someone’s trustworthiness.

<table>
  <tr>
    <th>Task</th>
    <th>Sense Motive DC</th>
  </tr>
  <tr>
    <td>Hunch</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Sense Enchantment</td>
    <td>25 or 15</td>
  </tr>
  <tr>
    <td>Discern Secret Message</td>
    <td>Varies</td>
  </tr>
</table>

Hunch: This use of the skill involves making a gut assessment of the social situation. You can get the feeling from another’s behavior that something is wrong, such as when you’re talking to an impostor. Alternatively, you can get the feeling that someone is trustworthy.

Sense Enchantment: You can tell that someone’s behavior is being influenced by an enchantment effect even if that person isn’t aware of it. The usual DC is 25, but if the target is dominated (see dominate person), the DC is only 15 because of the limited range of the target’s activities.

Discern Secret Message: You may use Sense Motive to detect that a hidden message is being transmitted via the Bluff skill. In this case, your Sense Motive check is opposed by the Bluff check of the character transmitting the message. For each piece of information relating to the message that you are missing, you take a –2 penalty on your Sense Motive check. If you succeed by 4 or less, you know that something hidden is being communicated, but you can’t learn anything specific about its content. If you beat the DC by 5 or more, you intercept and understand the message. If you fail by 4 or less, you don’t detect any hidden communication. If you fail by 5 or more, you might infer false information.", action: "Trying to gain information with Sense Motive generally takes at least 1 minute, and you could spend a whole evening trying to get a sense of the people around you.", try_again: "No, though you may make a Sense Motive check for each Bluff check made against you.", special: "", skill_unlock_5: "If you were aware of an opponent before rolling initiative (such as when you ambush an enemy or negotiations break down into combat, but not when both sides happen upon each other or you are surprised), you can attempt a Sense Motive check as part of your initiative check (DC = 11 + the highest Bluff modifier among your opponents or DC 15, whichever is higher). If you succeed, you gain a +1 bonus on the initiative check, plus an additional +1 for every 5 by which you exceeded the DC.", skill_unlock_10: "After 1 minute of conversation, you can read a creature’s surface thoughts (as detect thoughts) by attempting a Sense Motive check at a –20 penalty opposed by the creature’s Bluff check.", skill_unlock_15: "You can read surface thoughts as above after 1 round. In addition, when attacked, you can attempt a Sense Motive check as an immediate action opposed by your target’s attack roll. A successful check grants a +2 insight bonus to your AC against attacks from that specific opponent for 1 minute.", skill_unlock_20: "You can read surface thoughts as above as a standard action. A successful check to gain an insight bonus to your AC also negates the attack that triggered it.")

sleight_of_hand = Skill.create!(name: "Sleight of Hand", ability_score: "Dexterity", untrained: false, blurb: "Your training allows you to pick pockets, draw hidden weapons, and take a variety of actions without being noticed.", description: "A DC 10 Sleight of Hand check lets you palm a coin-sized, unattended object. Performing a minor feat of legerdemain, such as making a coin disappear, also has a DC of 10 unless an observer is determined to note where the item went.

When you use this skill under close observation, your skill check is opposed by the observer’s Perception check. The observer’s success doesn’t prevent you from performing the action, just from doing it unnoticed.

You can hide a small object (including a light weapon or an easily concealed ranged weapon, such as a dart, sling, or hand crossbow) on your body. Your Sleight of Hand check is opposed by the Perception check of anyone observing you or of anyone frisking you. In the latter case, the searcher gains a +4 bonus on the Perception check, since it’s generally easier to find such an object than to hide it. A dagger is easier to hide than most light weapons, and grants you a +2 bonus on your Sleight of Hand check to conceal it. An extraordinarily small object, such as a coin, shuriken, or ring, grants you a +4 bonus on your Sleight of Hand check to conceal it, and heavy or baggy clothing (such as a cloak) grants you a +2 bonus on the check.

Drawing a hidden weapon is a standard action and doesn’t provoke an attack of opportunity.

If you try to take something from a creature, you must make a DC 20 Sleight of Hand check. The opponent makes a Perception check to detect the attempt, opposed by the Sleight of Hand check result you achieved when you tried to grab the item. An opponent who succeeds on this check no- tices the attempt, regardless of whether you got the item. You cannot use this skill to take an object from another creature during combat if the creature is aware of your presence.

You can also use Sleight of Hand to entertain an audience as though you were using the Perform skill. In such a case, your “act” encompasses elements of legerdemain, juggling, and the like.

<table>
  <tr>
    <th>Task</th>
    <th>Sleight of Hand DC</th>
  </tr>
  <tr>
    <td>Palm a Coin-Sized Object, Make a Coin Disappear</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Lift a Small Object from a Person</td>
    <td>20</td>
  </tr>
</table>", action: "Any Sleight of Hand check is normally a standard action. However, you may perform a Sleight of Hand check as a move action by taking a –20 penalty on the check.", try_again: "Yes, but after an initial failure, a second Sleight of Hand attempt against the same target (or while you are being watched by the same observer who noticed your previous attempt) increases the DC for the task by 10.", special: "An untrained Sleight of Hand check is simply a Dexterity check. Without actual training, you can’t succeed on any Sleight of Hand check with a DC higher than 10, except for hiding an object on your body.", skill_unlock_5: "When attempting a disarm or steal maneuver, a successful Sleight of Hand check against your target’s CMD grants a +2 circumstance bonus on your combat maneuver check.", skill_unlock_10: "The penalty for attempting a Sleight of Hand check (including drawing a hidden weapon) as a move action is reduced to –10.", skill_unlock_15: "You can attempt a Sleight of Hand check (including drawing a hidden weapon) as a swift action at a –20 penalty.", skill_unlock_20: "You take no penalty for using Sleight of Hand as a move action, and take only a –10 penalty when using it as a swift action.")

spellcraft = Skill.create!(name: "Spellcraft", ability_score: "Intelligence", untrained: false, blurb: "You are skilled at the art of casting spells, identifying magic items, crafting magic items, and identifying spells as they are being cast.", description: "Spellcraft is used whenever your knowledge and skill of the technical art of casting a spell or crafting a magic item comes into question. This skill is also used to identify the properties of magic items in your possession through the use of spells such as detect magic and identify. The DC of this check varies depending upon the task at hand.

<table>
  <tr>
    <th>Task</th>
    <th>Spellcraft DC</th>
  </tr>
  <tr>
    <td>Identify a Spell as It is Being Cast</td>
    <td>15 + Spell Level</td>
  </tr>
  <tr>
    <td>Learn a Spell from a Spellbook or Scroll</td>
    <td>15 + Spell Level</td>
  </tr>
  <tr>
    <td>Prepare a Spell from a Borrowed Spellbook</td>
    <td>15 + Spell Level</td>
  </tr>
  <tr>
    <td>Identify the Properties of a Magic Item using detect magic</td>
    <td>15 + Item's Caster Level</td>
  </tr>
  <tr>
    <td>Decipher a Scroll</td>
    <td>20 + Spell Level</td>
  </tr>
  <tr>
    <td>Craft a Magic Item</td>
    <td>Varies by Item</td>
  </tr>
</table>", action: "Identifying a spell as it is being cast requires no action, but you must be able to clearly see the spell as it is being cast, and this incurs the same penalties as a Perception skill check due to distance, poor conditions, and other factors. Learning a spell from a spellbook takes 1 hour per level of the spell (0-level spells take 30 minutes). Preparing a spell from a borrowed spellbook does not add any time to your spell preparation. Making a Spellcraft check to craft a magic item is made as part of the creation process. Attempting to ascertain the properties of a magic item takes 3 rounds per item to be identified and you must be able to thoroughly examine the object.", try_again: "You cannot retry checks made to identify a spell. If you fail to learn a spell from a spellbook or scroll, you must wait at least 1 week before you can try again. If you fail to prepare a spell from a borrowed spellbook, you cannot try again until the next day. When using detect magic or identify to learn the properties of magic items, you can only attempt to ascertain the properties of an individual item once per day. Additional attempts reveal the same results.", special: "If you are a specialist wizard, you get a +2 bonus on Spellcraft checks made to identify, learn, and prepare spells from your chosen school. Similarly, you take a –5 penalty on similar checks made concerning spells from your opposition schools.", skill_unlock_5: "Identifying magic items takes 1 full round, and the time required to learn a spell from a spellbook is halved.", skill_unlock_10: "You can identify magic items without using detect magic, though the DC is increased by 10.", skill_unlock_15: "Identifying magic items is a standard action, and the time required to learn a new spell from a spellbook is reduced to 1 minute per spell level.", skill_unlock_20: "Whenever you attempt a caster level check, attempt a Spellcraft check at a –20 penalty at the same DC. If the spellcraft check succeeds, you gain a +2 circumstance bonus on your caster level check.")

stealth = Skill.create!(name: "Stealth", ability_score: "Dexterity", untrained: true, blurb: "You are skilled at avoiding detection, allowing you to slip past foes or strike from an unseen position. This skill covers hiding and moving silently.", description: "Your Stealth check is opposed by the Perception check of anyone who might notice you. Creatures that fail to beat your Stealth check are not aware of you and treat you as if you had total concealment. You can move up to half your normal speed and use Stealth at no penalty. When moving at a speed greater than half but less than your normal speed, you take a –5 penalty. It’s impossible to use Stealth while attacking, running, or charging.

Creatures gain a bonus or penalty on Stealth checks based on their size: Fine +16, Diminutive +12, Tiny +8, Small +4, Medium +0, Large –4, Huge –8, Gargantuan –12, Colossal –16.

If people are observing you using any of their senses (but typically sight), you can’t use Stealth. Against most creatures, finding cover or concealment allows you to use Stealth. If your observers are momentarily distracted (such as by a Bluff check), you can attempt to use Stealth. While the others turn their attention from you, you can attempt a Stealth check if you can get to an unobserved place of some kind. This check, however, is made at a –10 penalty because you have to move fast.

Breaking Stealth: When you start your turn using Stealth, you can leave cover or concealment and remain unobserved as long as you succeed at a Stealth check and end your turn in cover or concealment. Your Stealth immediately ends after you make an attack roll, whether or not the attack is successful (except when sniping as noted below).

Sniping: If you’ve already successfully used Stealth at least 10 feet from your target, you can make one ranged attack and then immediately use Stealth again. You take a –20 penalty on your Stealth check to maintain your obscured location.

Creating a Diversion to Hide: You can use Bluff to allow you to use Stealth. A successful Bluff check opposed by the viewer’s Sense Motive can give you the momentary diversion you need to attempt a Stealth check while people are aware of you.", action: "Usually none. Normally, you make a Stealth check as part of movement, so it doesn’t take a separate action. However, using Stealth immediately after a ranged attack (see Sniping, above) is a move action.", try_again: "", special: "If you are invisible, you gain a +40 bonus on Stealth checks if you are immobile, or a +20 bonus on Stealth checks if you’re moving.

If people are observing you using any of their senses (but typically sight), you can’t use Stealth. Against most creatures, finding cover or concealment allows you to use Stealth. If your observers are momentarily distracted (such as by a Bluff check), you can attempt to use Stealth. While the others turn their attention from you, you can attempt a Stealth check if you can get to an unobserved place of some kind. This check, however, is made at a –10 penalty because you have to move fast.", skill_unlock_5: "Reduce the Stealth penalty from sniping by 10.", skill_unlock_10: "Stealth check penalties for moving quickly are halved, including the ability unlocked at 5 ranks, moving full speed, and reaching concealment after creating a distraction.", skill_unlock_15: "If you attack after successfully using Stealth, your target is denied its Dexterity bonus against all attacks that you make before the end of your turn.", skill_unlock_20: "If you attack after successfully using Stealth, your target is denied its Dexterity bonus against all attacks that you make before the beginning of your next turn.")

survival = Skill.create!(name: "Survival", ability_score: "Wisdom", untrained: true, blurb: "You are skilled at surviving in the wild and at navigating in the wilderness. You also excel at following trails and tracks left by others.", description: "You can keep yourself and others safe and fed in the wild. See below for DCs for various tasks that require Survival checks.

<table>
  <tr>
    <th>Task</th>
    <th>Survival DC</th>
  </tr>
  <tr>
    <td>Get along in the wild. Move up to half your overland speed while hunting and foraging (no food or water supplies needed). You can provide food and water for one other person for every 2 points by which your check result exceeds 10.</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Gain a +2 bonus on all Fortitude saves against severe weather while moving up to half your overland speed, or gain a +4 bonus if you remain stationary. You may grant the same bonus to one other character for every 1 point by which your Survival check result exceeds 15.</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Keep from getting lost or avoid natural hazards, such as quicksand.</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Predict the weather up to 24 hours in advance. For every 5 points by which your Survival check result exceeds 15, you can predict the weather for one additional day in advance.</td>
    <td>15</td>
  </tr>
</table>

To find tracks or to follow them for 1 mile requires a successful Survival check. You must make another Survival check every time the tracks become difficult to follow. If you are not trained in this skill, you can make untrained checks to find tracks, but you can follow them only if the DC for the task is 10 or lower. Alternatively, you can use the Perception skill to find a footprint or similar sign of a creature’s passage using the same DCs, but you can’t use Perception to follow tracks, even if someone else has already found them.

You move at half your normal speed while following tracks (or at your normal speed with a –5 penalty on the check, or at up to twice your normal speed with a –20 penalty on the check). The DC depends on the surface and the prevailing conditions, as given on table.

<table>
  <tr>
    <th>Surface</th>
    <th>Survival DC</th>
  </tr>
  <tr>
    <td>Very Soft Ground</td>
    <td>5</td>
  </tr>
  <tr>
    <td>Soft Ground</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Firm Ground</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Hard Ground</td>
    <td>20</td>
  </tr>
</table>

Very Soft Ground: Any surface (fresh snow, thick dust, wet mud) that holds deep, clear impressions of footprints.
Soft Ground: Any surface soft enough to yield to pressure, but firmer than wet mud or fresh snow, in which a creature leaves frequent but shallow footprints.
Firm Ground: Most normal outdoor surfaces (such as lawns, fields, woods, and the like) or exceptionally soft or dirty indoor surfaces (thick rugs and very dirty or dusty floors). The creature might leave some traces (broken branches or tufts of hair), but it leaves only occasional or partial footprints.
Hard Ground: Any surface that doesn’t hold footprints at all, such as bare rock or an indoor floor. Most streambeds fall into this category, since any footprints left behind are obscured or washed away. The creature leaves only traces (scuff marks or displaced pebbles).

<table>
  <tr>
    <th>Condition</th>
    <th>Survival DC Modifier</th>
  </tr>
  <tr>
    <td>Every Three Creatures in the Group Being Tracked</td>
    <td>-1</td>
  </tr>
  <tr>
    <td>Size of the Largest Creature Being Tracked</td>
    <td></td>
  </tr>
  <tr>
    <td>  Fine</td>
    <td>+8</td>
  </tr>
  <tr>
    <td>  Diminutive</td>
    <td>+4</td>
  </tr>
  <tr>
    <td>  Tiny</td>
    <td>+2</td>
  </tr>
  <tr>
    <td>  Small</td>
    <td>+1</td>
  </tr>
  <tr>
    <td>  Medium</td>
    <td>+0</td>
  </tr>
  <tr>
    <td>  Large</td>
    <td>-1</td>
  </tr>
  <tr>
    <td>  Huge</td>
    <td>-2</td>
  </tr>
  <tr>
    <td>  Gargantuan</td>
    <td>-4</td>
  </tr>
  <tr>
    <td>  Colossal</td>
    <td>-8</td>
  </tr>
  <tr>
    <td>Every 24 Hours Since the Trail was Made</td>
    <td>+1</td>
  </tr>
  <tr>
    <td>Every Hour of Rain Since the Trail was Made</td>
    <td>+1</td>
  </tr>
  <tr>
    <td>Fresh Snow Since the Trail was Made</td>
    <td>+10</td>
  </tr>
  <tr>
    <td>Poor Vibility</td>
    <td></td>
  </tr>
  <tr>
    <td>  Overcast or Moonless Night</td>
    <td>+6</td>
  </tr>
  <tr>
    <td>  Moonlight</td>
    <td>+3</td>
  </tr>
  <tr>
    <td>  Fog or Precipitation</td>
    <td>+3</td>
  </tr>
  <tr>
    <td>Tracked Party Hides Trail (and Moves at Half Speed)</td>
    <td>+5</td>
  </tr>
</table>", action: "Varies. A single Survival check may represent activity over the course of hours or a full day. A Survival check made to find tracks is at least a full-round action, and it may take even longer.", try_again: "Varies. For getting along in the wild or for gaining the Fortitude save bonus noted in the first table on page 107, you make a Survival check once every 24 hours. The result of that check applies until the next check is made. To avoid getting lost or avoid natural hazards, you make a Survival check whenever the situation calls for one. Retries to avoid getting lost in a specific situation or to avoid a specific natural hazard are not allowed. For finding tracks, you can retry a failed check after 1 hour (outdoors) or 10 minutes (indoors) of searching.", special: "If you are trained in Survival, you can automatically determine where true north lies in relation to yourself.", skill_unlock_5: "You reduce all nonlethal damage you take from heat, cold, starvation, or thirst by 1 point for every 5 ranks you possess in Survival.", skill_unlock_10: "You can track creatures that leave no tracks, including flying and swimming creatures and creatures using trackless step or pass without trace, taking a –20 penalty on your Survival check.", skill_unlock_15: "Once per day, you can spend 1 hour and attempt a DC 30 Survival check. Success grants you cold resistance or fire resistance 5 for 24 hours. You can share this with one ally for every 5 by which you exceeded the check.", skill_unlock_20: "You take only a –10 penalty when tracking creatures that leave no tracks.")

swim = Skill.create!(name: "Swim", ability_score: "Strength", untrained: true, blurb: "You know how to swim and can do so even in stormy water.", description: "Make a Swim check once per round while you
are in the water. Success means you may swim at up to half your speed (as a full-round action) or at a quarter of your speed (as a move action). If you fail by 4 or less, you make no progress. If you fail by 5 or more, you go underwater.

If you are underwater, either because you failed a Swim check or because you are swimming underwater intentionally, you must hold your breath. You can hold your breath for a number of rounds equal to twice your Constitution score, but only if you do nothing other than take move actions or free actions. If you take a standard action or a full-round action (such as making an attack), the remainder of the duration for which you can hold your breath is reduced by 1 round. (Effectively, a character in combat can hold his breath only half as long as normal.) After that period of time, you must make a DC 10 Constitution check every round to continue holding your breath. Each round, the DC for that check increases by 1. If you fail the Constitution check, you begin to drown. The DC for the Swim check depends on the water, as given on the table below.

<table>
  <tr>
    <th>Water</th>
    <th>Swim DC</th>
  </tr>
  <tr>
    <td>Calm Water</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Rough Water</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Stormy Water</td>
    <td>20</td>
  </tr>
</table>

Each hour that you swim, you must make a DC 20 Swim check or take 1d6 points of nonlethal damage from fatigue.", action: "A successful Swim check allows you to swim a quarter of your speed as a move action or half your speed as a full-round action.", try_again: "", special: "A creature with a swim speed can move through water at its indicated speed without making Swim checks. It gains a +8 racial bonus on any Swim check to perform a special action or avoid a hazard. The creature can always choose to take 10 on a Swim check, even if distracted or endangered when swimming. Such a creature can use the run action while swimming, provided that it swims in a straight line.

You can’t take 10 on a Swim check in stormy water, even if you aren’t otherwise being threatened or distracted.

Any creature of Tiny or smaller size should use its Dex modifier instead of its Str modifier for Climb and Swim checks.", skill_unlock_5: "You gain a swim speed of 10 feet, but only in water with a Swim DC of 15 or lower.", skill_unlock_10: "You gain a swim speed (though you do not gain the +8 racial bonus on Swim checks) equal to your base speed in water with a Swim DC of 15 or lower, or 10 feet in all other water.", skill_unlock_15: "You ignore the penalties for using slashing or bludgeoning weapons underwater, as freedom of movement.", skill_unlock_20: "You gain a swim speed equal to your base speed in all water. If you have both hands free, you gain a +8 racial bonus on Swim checks.")

use_magic_device = Skill.create!(name: "Use Magic Device", ability_score: "Charisma", untrained: false, blurb: "You are skilled at activating magic items, even if you are not otherwise trained in their use.", description: "You can use this skill to read a spell or to activate a magic item. Use Magic Device lets you use a magic item as if you had the spell ability or class features of another class, as if you were a different race, or as if you were of a different alignment.

You make a Use Magic Device check each time you activate a device such as a wand. If you are using the check to emulate an alignment or some other quality in an ongoing manner, you need to make the relevant Use Magic Device check once per hour.

You must consciously choose which requirement to emulate. That is, you must know what you are trying to emulate when you make a Use Magic Device check for that purpose. The DCs for various tasks involving Use Magic Device checks are summarized on the table below.

<table>
  <tr>
    <th>Task</th>
    <th>Use Magic Device DC</th>
  </tr>
  <tr>
    <td>Activate Blindly</td>
    <td>25</td>
  </tr>
  <tr>
    <td>Decipher a Written Scroll</td>
    <td>25 + Spell Level</td>
  </tr>
  <tr>
    <td>Use a Scroll</td>
    <td>20 + Caster Level</td>
  </tr>
  <tr>
    <td>Use a Wand</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Emulate a Class Feature</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Emulate an Ability Score</td>
    <td>See Text</td>
  </tr>
  <tr>
    <td>Emulate an Ancestry</td>
    <td>25</td>
  </tr>
  <tr>
    <td>Emulate an Alignment</td>
    <td>30</td>
  </tr>
</table>

Activate Blindly: Some magic items are activated by special words, thoughts, or actions. You can activate such an item as if you were using the activation word, thought, or action, even when you’re not and even if you don’t know it. You do have to perform some equivalent activity in order to make the check. That is, you must speak, wave the item around, or otherwise attempt to get it to activate. You get a +2 bonus on your Use Magic Device check if you’ve activated the item in question at least once before. If you fail by 9 or less, you can’t activate the device. If you fail by 10 or more, you suffer a mishap. A mishap means that magical energy gets released but doesn’t do what you wanted it to do. The default mishaps are that the item affects the wrong target or that uncontrolled magical energy is released, dealing 2d6 points of damage to you. This mishap is in addition to the chance for a mishap that you normally risk when you cast a spell from a scroll that you could not otherwise cast yourself.

Decipher a Written Spell: This usage works just like deciphering a written spell with the Spellcraft skill, except that the DC is 5 points higher. Deciphering a written spell requires 1 minute of concentration.

Emulate an Ability Score: To cast a spell from a scroll, you need a high score in the appropriate ability (Intelligence for wizard spells, Wisdom for divine spells, or Charisma for sorcerer or bard spells). Your effective ability score (appropriate to the class you’re emulating when you try to cast the spell from the scroll) is your Use Magic Device check result minus 15. If you already have a high enough score in the appropriate ability, you don’t need to make this check.

Emulate an Alignment: Some magic items have positive or negative effects based on the user’s alignment. Use Magic Device lets you use these items as if you were of an alignment of your choice. You can emulate only one alignment at a time.

Emulate a Class Feature: Sometimes you need to use a class feature to activate a magic item. In this case, your effective level in the emulated class equals your Use Magic Device check result minus 20. This skill does not let you actually use the class feature of another class. It just lets you activate items as if you had that class feature. If the class whose feature you are emulating has an alignment requirement, you must meet it, either honestly or by emulating an appropriate alignment with a separate Use Magic Device check (see above).

Emulate an Ancestry: Some magic items work only for members of certain ancestries, or work better for members of those ancestries. You can use such an item as if you were a member of an ancestry of your choice. You can emulate only one ancestry at a time.

Use a Scroll: Normally, to cast a spell from a scroll, you must have the scroll’s spell on your class spell list. Use Magic Device allows you to use a scroll as if you had a particular spell on your class spell list. The DC is equal to 20 + the caster level of the spell you are trying to cast from the scroll. In addition, casting a spell from a scroll requires a minimum score (10 + spell level) in the appropriate ability. If you don’t have a sufficient score in that ability, you must emulate the ability score with a separate Use Magic Device check.

This use of the skill also applies to other spell completion magic items.

Use a Wand, Staff, or Other Spell Trigger Item: Normally, to use a wand, you must have the wand’s spell on your class spell list. This use of the skill allows you to use a wand as if you had a particular spell on your class spell list. Failing the roll does not expend a charge.", action: "None. The Use Magic Device check is made as part of the action (if any) required to activate the magic item.", try_again: "Yes, but if you ever roll a natural 1 while attempting to activate an item and you fail, then you can’t try to activate that item again for 24 hours.", special: "You cannot take 10 with this skill. You can’t aid another on Use Magic Device checks. Only the user of the item may attempt such a check.", skill_unlock_5: "You can use the aid another action to assist another creature’s Use Magic Device check by attempting a check against the item’s Use Magic Device DC.", skill_unlock_10: "If you roll a natural 1 when activating an item, you take a –10 penalty on Use Magic Device checks with that item for 24 hours instead of being unable to activate it. This penalty stacks with itself.", skill_unlock_15: "You can use this skill to emulate two ancestries or two alignments simultaneously.", skill_unlock_20: "If you roll a natural 1 when activating an item, you can reroll the check at a –10 penalty to activate the item. You must take the result of the second check, even if it is worse, and you can’t reroll it again.")

# rand = Skill.create!(name: "", ability_score: "", untrained: true, description: "")

finesse_unchained = Skill.create!(name: "Finesse", ability_score: "Dexterity", untrained: true, blurb: "This skill is from the Pathfinder Unchained material, and represent a combination of the skills Disable Device and Sleight of Hand. The text below outlines a consolidation of those skills' features with minimal edits.", description: "<underline>Disable Device</underline> You are skilled at disarming traps and opening locks. In addition, this skill lets you sabotage simple mechanical devices, such as catapults, wagon wheels, and doors. Your training allows you to pick pockets, draw hidden weapons, and take a variety of actions without being noticed.

When disarming a trap or other device, the Disable Device check is made secretly, so that you don’t necessarily know whether you’ve succeeded.

The DC depends on how tricky the device is. If the check succeeds, you disable the device. If it fails by 4 or less, you have failed but can try again. If you fail by 5 or more, something goes wrong. If the device is a trap, you trigger it. If you’re attempting some sort of sabotage, you think the device is disabled, but it still works normally.

You also can rig simple devices such as saddles or wagon wheels to work normally for a while and then fail or fall off some time later (usually after 1d4 rounds or minutes of use).

*If you attempt to leave behind no trace of your tampering, add 5 to the DC.

<table>
  <tr>
    <th>Device</th>
    <th>Time</th>
    <th>Disable Device DC*</th>
    <th>Example</th>
  </tr>
  <tr>
    <td>Simple</td>
    <td>1 Round</td>
    <td>10</td>
    <td>Jam a Lock</td>
  </tr>
  <tr>
    <td>Tricky</td>
    <td>1d4 Rounds</td>
    <td>15</td>
    <td>Sabotage a Wagon Wheel</td>
  </tr>
  <tr>
    <td>Difficult</td>
    <td>2d4 Rounds</td>
    <td>20</td>
    <td>Disarm a Trap, Reset a Trap</td>
  </tr>
  <tr>
    <td>Extreme</td>
    <td>2d4 Rounds</td>
    <td>25</td>
    <td>Disarm a Complex Trap, Cleverly Sabotage a Clockwork Device</td>
  </tr>
</table>

Open Locks: The DC for opening a lock depends on its quality. If you do not have a set of thieves’ tools, these DCs increase by 10.

<table>
  <tr>
    <th>Lock Quality</th>
    <th>Disable Device DC</th>
  </tr>
  <tr>
    <td>Simple</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Average</td>
    <td>25</td>
  </tr>
  <tr>
    <td>Good</td>
    <td>30</td>
  </tr>
  <tr>
    <td>Superior</td>
    <td>40</td>
  </tr>
</table>

<underline>Sleight of Hand</underline> Your training allows you to pick pockets, draw hidden weapons, and take a variety of actions without being noticed.

A DC 10 Sleight of Hand check lets you palm a coin-sized, unattended object. Performing a minor feat of legerdemain, such as making a coin disappear, also has a DC of 10 unless an observer is determined to note where the item went.

When you use this skill under close observation, your skill check is opposed by the observer’s Perception check. The observer’s success doesn’t prevent you from performing the action, just from doing it unnoticed.

You can hide a small object (including a light weapon or an easily concealed ranged weapon, such as a dart, sling, or hand crossbow) on your body. Your Sleight of Hand check is opposed by the Perception check of anyone observing you or of anyone frisking you. In the latter case, the searcher gains a +4 bonus on the Perception check, since it’s generally easier to find such an object than to hide it. A dagger is easier to hide than most light weapons, and grants you a +2 bonus on your Sleight of Hand check to conceal it. An extraordinarily small object, such as a coin, shuriken, or ring, grants you a +4 bonus on your Sleight of Hand check to conceal it, and heavy or baggy clothing (such as a cloak) grants you a +2 bonus on the check.

Drawing a hidden weapon is a standard action and doesn’t provoke an attack of opportunity.

If you try to take something from a creature, you must make a DC 20 Sleight of Hand check. The opponent makes a Perception check to detect the attempt, opposed by the Sleight of Hand check result you achieved when you tried to grab the item. An opponent who succeeds on this check no- tices the attempt, regardless of whether you got the item. You cannot use this skill to take an object from another creature during combat if the creature is aware of your presence.

You can also use Sleight of Hand to entertain an audience as though you were using the Perform skill. In such a case, your “act” encompasses elements of legerdemain, juggling, and the like.

<table>
  <tr>
    <th>Task</th>
    <th>Sleight of Hand DC</th>
  </tr>
  <tr>
    <td>Palm a Coin-Sized Object, Make a Coin Disappear</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Lift a Small Object from a Person</td>
    <td>20</td>
  </tr>
</table>", action: "<underline>Disable Device</underline>: The amount of time needed to make a Disable Device check depends on the task, as noted above. Disabling a simple device takes 1 round and is a full-round action. An intricate or complex device requires 1d4 or 2d4 rounds. Attempting to open a lock is a full-round action.

<underline>Sleight of Hand</underline>: Any Sleight of Hand check is normally a standard action. However, you may perform a Sleight of Hand check as a move action by taking a –20 penalty on the check.", try_again: "<underline>Disable Device</underline>: Varies. You can retry checks made to disable traps if you miss the check by 4 or less. You can retry checks made to open locks.

<underline>Sleight of Hand</underline>: Yes, but after an initial failure, a second Sleight of Hand attempt against the same target (or while you are being watched by the same observer who noticed your previous attempt) increases the DC for the task by 10.", special: "<underline>Disable Device</underline>: A rogue who beats a trap’s DC by 10 or more can study the trap, figure out how it works, and bypass it without disarming it. A rogue can rig a trap so her allies can bypass it as well.

Characters with the trapfinding ability (like rogues) can disarm magic traps. A magic trap generally has a DC of 25 + the level of the spell used to create it.

The spells fire trap, glyph of warding, symbol, and teleportation circle also create traps that a rogue can disarm with a successful Disable Device check. Spike growth and spike stones, however, create magic hazards against which Disable Device checks do not succeed. See the individual spell descriptions for details.

<underline>Sleight of Hand</underline>: An untrained Sleight of Hand check is simply a Dexterity check. Without actual training, you can’t succeed on any Sleight of Hand check with a DC higher than 10, except for hiding an object on your body.", skill_unlock_5: "", skill_unlock_10: "", skill_unlock_15: "", skill_unlock_20: "")

nature_unchained = Skill.create!(name: "Nature", ability_score: "Intelligence", untrained: true, blurb: "This skill is from the Pathfinder Unchained material, and represent a combination of the skills Knowledge (dungeoneering), Knowledge (geography), and Knowledge (nature). The text below outlines a consolidation of those skills' features with minimal edits.", description: "Dungeoneering includes aberrations, caverns, oozes, spelunking. Geography includes lands, terrain, climate, people. Used for astronomy. Nature includes animals, fey, monstrous humanoids, plants, seasons and cycles, weather, vermin.

Answering a question within your field of study has a DC of 10 (for really easy questions), 15 (for basic questions), or 20 to 30 (for really tough questions).

You can use this skill to identify monsters and their special powers or vulnerabilities. In general, the DC of such a check equals 10 + the monster’s CR. For common monsters, such as goblins, the DC of this check equals 5 + the monster’s CR. For particularly rare monsters, such as the tarrasque, the DC of this check equals 15 + the monster’s CR, or more. A successful check allows you to remember a bit of useful information about that monster. For every 5 points by which your check result exceeds the DC, you recall another piece of useful information. Nature can have specific uses as noted on the below table.

<table>
  <tr>
    <th>Tasks</th>
    <th>Nature DC</th>
  </tr>
  <tr>
    <td>Identify Underground or Natural Hazard</td>
    <td>15 + Hazard's CR</td>
  </tr>
  <tr>
    <td>Identify Mineral, Stone, or Metal</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Identify a Creature's Ethnicity or Accent</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Identify a Common Plant or Animal</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Determine Slope</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Recognize Regional Terrain Features</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Identify Unnatural Weather Phenomenon</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Determine Depth Underground</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Know Location of Nearest Community or Noteworthy Site</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Determine Artifical Nature of Feature</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Identify a Monster's Abilities and Weaknesses</td>
    <td>10 + Monster's CR</td>
  </tr>
</table>", action: "Usually none. In most cases, a Nature check doesn’t take an action.", try_again: "No. The check represents what you know, and thinking about a topic a second time doesn’t let you know something that you never learned in the first place.", special: "You cannot make an untrained Nature check with a DC higher than 10. If you have access to an extensive library that covers a specific skill, this limit is removed. The time to make checks using a library, however, increases to 1d4 hours. Particularly complete libraries might even grant a bonus on Nature checks in the fields that they cover.", skill_unlock_5: "", skill_unlock_10: "", skill_unlock_15: "", skill_unlock_20: "", knowledge: true)

investigation = Skill.create!(name: "Investigation", ability_score: "Intelligence", untrained: true, blurb: "", description: "", action: "", try_again: "", special: "", skill_unlock_5: "", skill_unlock_10: "", skill_unlock_15: "", skill_unlock_20: "")

religion_unchained = Skill.create!(name: "Religion", ability_score: "Intelligence", untrained: true, blurb: "This skill is from the Pathfinder Unchained material, and represent a combination of the skills Knowledge (planes) and Knowledge (religion). The text below outlines a consolidation of those skills' features with minimal edits.", description: "Planes includes the Inner Planes, the Outer Planes, the Astral Plane, the Ethereal Plane, outsiders, planar magic. Religion includes gods and goddesses, mythic history, ecclesiastic tradition, holy symbols, undead.

Answering a question within your field of study has a DC of 10 (for really easy questions), 15 (for basic questions), or 20 to 30 (for really tough questions).

You can use this skill to identify monsters and their special powers or vulnerabilities. In general, the DC of such a check equals 10 + the monster’s CR. For common monsters, such as goblins, the DC of this check equals 5 + the monster’s CR. For particularly rare monsters, such as the tarrasque, the DC of this check equals 15 + the monster’s CR, or more. A successful check allows you to remember a bit of useful information about that monster. For every 5 points by which your check result exceeds the DC, you recall another piece of useful information. Religion can have specific uses as noted on the below table.

<table>
  <tr>
    <th>Tasks</th>
    <th>Religion DC</th>
  </tr>
  <tr>
    <td>Know the Names of the Planes</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Recognize a Common Deity's Symbol or Clergy</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Recognize Current Plane</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Know Common Mythology and Tenets</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Identify a Creature's Planar Origin</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Recognize an Obscure Deity's Symbol or Clergy</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Identify a Monster's Abilities and Weaknesses</td>
    <td>10 + Monster's CR</td>
  </tr>
</table>", action: "Usually none. In most cases, a Religion check doesn’t take an action.", try_again: "No. The check represents what you know, and thinking about a topic a second time doesn’t let you know something that you never learned in the first place.", special: "You cannot make an untrained Religion check with a DC higher than 10. If you have access to an extensive library that covers a specific skill, this limit is removed. The time to make checks using a library, however, increases to 1d4 hours. Particularly complete libraries might even grant a bonus on Nature checks in the fields that they cover.", skill_unlock_5: "", skill_unlock_10: "", skill_unlock_15: "", skill_unlock_20: "", knowledge: true)

society_unchained = Skill.create!(name: "Society", ability_score: "Intelligence", untrained: true, blurb: "This skill is from the Pathfinder Unchained material, and represent a combination of the skills Appraise, Knowledge (local), and Knowledge (nobility). The text below outlines a consolidation of those skills' features with minimal edits.", description: "<underline>Appraise</underline>: You can evaluate the monetary value of an object. A DC 20 Appraise check determines the value of a common item. If you succeed by 5 or more, you also determine if the item has magic properties, although this success does not grant knowledge of the magic item’s abilities. If you fail the check by less than 5, you determine the price of that item to within 20% of its actual value. If you fail this check by 5 or more, the price is wildly inaccurate, subject to GM discretion. Particularly rare or exotic items might increase the DC of this check by 5 or more.

You can also use this check to determine the most valuable item visible in a treasure hoard. The DC of this check is generally 20 but can increase to as high as 30 for a particularly large hoard.

<underline>Local and Nobility</underline>: Local includes legends, personalities, inhabitants, laws, customs, traditions, humanoids. Nobility includes lineages, heraldry, personalities, royalty.

Answering a question within your field of study has a DC of 10 (for really easy questions), 15 (for basic questions), or 20 to 30 (for really tough questions).

You can use this skill to identify monsters and their special powers or vulnerabilities. In general, the DC of such a check equals 10 + the monster’s CR. For common monsters, such as goblins, the DC of this check equals 5 + the monster’s CR. For particularly rare monsters, such as the tarrasque, the DC of this check equals 15 + the monster’s CR, or more. A successful check allows you to remember a bit of useful information about that monster. For every 5 points by which your check result exceeds the DC, you recall another piece of useful information. Society can have specific uses as noted on the below table.

<table>
  <tr>
    <th>Tasks</th>
    <th>Society DC</th>
  </tr>
  <tr>
    <td>Know Local Laws, Rulers, and Popular Locations</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Know Current Rulers and Their Symbols</td>
    <td>10</td>
  </tr>
  <tr>
    <td>Know a Common Rumor or Local Tradition</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Know Proper Etiquette</td>
    <td>15</td>
  </tr>
  <tr>
    <td>Know Hidden Organizations, Rulers, and Locations</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Know Line of Succession</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Identify a Monster's Abilities and Weaknesses</td>
    <td>Varies</td>
    <td>10 + Monster's CR</td>
  </tr>
</table>", action: "<underline>Appraise</underline>: Appraising an item takes 1 standard action. Determining the most valuable object in a treasure hoard takes 1 full-round action.

<underline>Local and Nobility</underline>: Usually none. In most cases, a Society check doesn’t take an action.", try_again: "<underline>Appraise</underline>: Additional attempts to Appraise an item reveal the same result.

<underline>Local and Nobility</underline>: No. The check represents what you know, and thinking about a topic a second time doesn’t let you know something that you never learned in the first place.", special: "<underline>Local and Nobility</underline>: You cannot make an untrained Society check with a DC higher than 10. If you have access to an extensive library that covers a specific skill, this limit is removed. The time to make checks using a library, however, increases to 1d4 hours. Particularly complete libraries might even grant a bonus on Nature checks in the fields that they cover.", skill_unlock_5: "", skill_unlock_10: "", skill_unlock_15: "", skill_unlock_20: "", knowledge: true)

spellcraft_unchained = Skill.create!(name: "Spellcraft", ability_score: "Intelligence", untrained: true, blurb: "This skill is from the Pathfinder Unchained material, and represent a combination of the skills Knowledge (arcana), Spellcraft, and Use Magic Device. The text below outlines a consolidation of those skills' features with minimal edits. All Use Magic Device skillchecks are now based on Intelligence rather than Charisma.", description: "<underline>Arcana</underline>: Arcana includes ancient mysteries, magic traditions, arcane symbols, constructs, dragons, magical beasts. Although robots are constructs, Knowledge (arcana) cannot be used to identify robots or their abilities and weaknesses.

Answering a question within your field of study has a DC of 10 (for really easy questions), 15 (for basic questions), or 20 to 30 (for really tough questions).

You can use this skill to identify monsters and their special powers or vulnerabilities. In general, the DC of such a check equals 10 + the monster’s CR. For common monsters, such as goblins, the DC of this check equals 5 + the monster’s CR. For particularly rare monsters, such as the tarrasque, the DC of this check equals 15 + the monster’s CR, or more. A successful check allows you to remember a bit of useful information about that monster. For every 5 points by which your check result exceeds the DC, you recall another piece of useful information. Arcana can have specific uses as noted on the below table.

<underline>Spellcraft</underline>: You are skilled at the art of casting spells, identifying magic items, crafting magic items, and identifying spells as they are being cast.

Spellcraft is used whenever your knowledge and skill of the technical art of casting a spell or crafting a magic item comes into question. This skill is also used to identify the properties of magic items in your possession through the use of spells such as detect magic and identify. The DC of this check varies depending upon the task at hand.

<table>
  <tr>
    <th>Task</th>
    <th>Spellcraft DC</th>
  </tr>
  <tr>
    <td>Identify a Spell as It is Being Cast</td>
    <td>15 + Spell Level</td>
  </tr>
  <tr>
    <td>Identify Auras While Using detect magic</td>
    <td>15 + Spell Level</td>
  </tr>
  <tr>
    <td>Identify the Properties of a Magic Item using detect magic</td>
    <td>15 + Item's Caster Level</td>
  </tr>
  <tr>
    <td>Learn a Spell from a Spellbook or Scroll</td>
    <td>15 + Spell Level</td>
  </tr>
  <tr>
    <td>Prepare a Spell from a Borrowed Spellbook</td>
    <td>15 + Spell Level</td>
  </tr>
  <tr>
    <td>Decipher a Scroll</td>
    <td>20 + Spell Level</td>
  </tr>
  <tr>
    <td>Identify a Spell Effect That Is In Place</td>
    <td>20 + Spell Level</td>
  </tr>
  <tr>
    <td>Identify Materials Manufactured by Magic</td>
    <td>20 + Spell Level</td>
  </tr>
  <tr>
    <td>Identify the Spells Cast Using a Specific Material Component</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Identify a Spell That Just Targeted You</td>
    <td>25 + Spell Level</td>
  </tr>
  <tr>
    <td>Identify a Monster's Abilities and Weaknesses</td>
    <td>Varies</td>
    <td>10 + Monster's CR</td>
  </tr>
  <tr>
    <td>Craft a Magic Item</td>
    <td>Varies by Item</td>
  </tr>
</table>

<underline>Use Magic Device</underline>: You are skilled at activating magic items, even if you are not otherwise trained in their use.

You can use this skill to read a spell or to activate a magic item. Use Magic Device lets you use a magic item as if you had the spell ability or class features of another class, as if you were a different race, or as if you were of a different alignment.

You make a Use Magic Device check each time you activate a device such as a wand. If you are using the check to emulate an alignment or some other quality in an ongoing manner, you need to make the relevant Use Magic Device check once per hour.

You must consciously choose which requirement to emulate. That is, you must know what you are trying to emulate when you make a Use Magic Device check for that purpose. The DCs for various tasks involving Use Magic Device checks are summarized on the table below.

<table>
  <tr>
    <th>Task</th>
    <th>Use Magic Device DC</th>
  </tr>
  <tr>
    <td>Activate Blindly</td>
    <td>25</td>
  </tr>
  <tr>
    <td>Use a Scroll</td>
    <td>20 + Caster Level</td>
  </tr>
  <tr>
    <td>Use a Wand</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Emulate a Class Feature</td>
    <td>20</td>
  </tr>
  <tr>
    <td>Emulate an Ability Score</td>
    <td>See Text</td>
  </tr>
  <tr>
    <td>Emulate an Ancestry</td>
    <td>25</td>
  </tr>
  <tr>
    <td>Emulate an Alignment</td>
    <td>30</td>
  </tr>
</table>

Activate Blindly: Some magic items are activated by special words, thoughts, or actions. You can activate such an item as if you were using the activation word, thought, or action, even when you’re not and even if you don’t know it. You do have to perform some equivalent activity in order to make the check. That is, you must speak, wave the item around, or otherwise attempt to get it to activate. You get a +2 bonus on your Use Magic Device check if you’ve activated the item in question at least once before. If you fail by 9 or less, you can’t activate the device. If you fail by 10 or more, you suffer a mishap. A mishap means that magical energy gets released but doesn’t do what you wanted it to do. The default mishaps are that the item affects the wrong target or that uncontrolled magical energy is released, dealing 2d6 points of damage to you. This mishap is in addition to the chance for a mishap that you normally risk when you cast a spell from a scroll that you could not otherwise cast yourself.

Emulate an Ability Score: To cast a spell from a scroll, you need a high score in the appropriate ability (Intelligence for wizard spells, Wisdom for divine spells, or Charisma for sorcerer or bard spells). Your effective ability score (appropriate to the class you’re emulating when you try to cast the spell from the scroll) is your Use Magic Device check result minus 15. If you already have a high enough score in the appropriate ability, you don’t need to make this check.

Emulate an Alignment: Some magic items have positive or negative effects based on the user’s alignment. Use Magic Device lets you use these items as if you were of an alignment of your choice. You can emulate only one alignment at a time.

Emulate a Class Feature: Sometimes you need to use a class feature to activate a magic item. In this case, your effective level in the emulated class equals your Use Magic Device check result minus 20. This skill does not let you actually use the class feature of another class. It just lets you activate items as if you had that class feature. If the class whose feature you are emulating has an alignment requirement, you must meet it, either honestly or by emulating an appropriate alignment with a separate Use Magic Device check (see above).

Emulate an Ancestry: Some magic items work only for members of certain ancestries, or work better for members of those ancestries. You can use such an item as if you were a member of an ancestry of your choice. You can emulate only one ancestry at a time.

Use a Scroll: Normally, to cast a spell from a scroll, you must have the scroll’s spell on your class spell list. Use Magic Device allows you to use a scroll as if you had a particular spell on your class spell list. The DC is equal to 20 + the caster level of the spell you are trying to cast from the scroll. In addition, casting a spell from a scroll requires a minimum score (10 + spell level) in the appropriate ability. If you don’t have a sufficient score in that ability, you must emulate the ability score with a separate Use Magic Device check.

This use of the skill also applies to other spell completion magic items.

Use a Wand, Staff, or Other Spell Trigger Item: Normally, to use a wand, you must have the wand’s spell on your class spell list. This use of the skill allows you to use a wand as if you had a particular spell on your class spell list. Failing the roll does not expend a charge.", action: "<underline>Arcana</underline>: Usually none. In most cases, a Knowledge check doesn’t take an action.

<underline>Spellcraft</underline>: Identifying a spell as it is being cast requires no action, but you must be able to clearly see the spell as it is being cast, and this incurs the same penalties as a Perception skill check due to distance, poor conditions, and other factors. Learning a spell from a spellbook takes 1 hour per level of the spell (0-level spells take 30 minutes). Preparing a spell from a borrowed spellbook does not add any time to your spell preparation. Making a Spellcraft check to craft a magic item is made as part of the creation process. Attempting to ascertain the properties of a magic item takes 3 rounds per item to be identified and you must be able to thoroughly examine the object.

<underline>Use Magic Device</underline>: None. The Use Magic Device check is made as part of the action (if any) required to activate the magic item.", try_again: "<underline>Arcana</underline>: No. The check represents what you know, and thinking about a topic a second time doesn’t let you know something that you never learned in the first place.

<underline>Spellcraft</underline>: You cannot retry checks made to identify a spell. If you fail to learn a spell from a spellbook or scroll, you must wait at least 1 week before you can try again. If you fail to prepare a spell from a borrowed spellbook, you cannot try again until the next day. When using detect magic or identify to learn the properties of magic items, you can only attempt to ascertain the properties of an individual item once per day. Additional attempts reveal the same results.

<underline>Use Magic Device</underline>: Yes, but if you ever roll a natural 1 while attempting to activate an item and you fail, then you can’t try to activate that item again for 24 hours.", special: "<underline>Arcana</underline>: You cannot make an untrained Knowledge check with a DC higher than 10. If you have access to an extensive library that covers a specific skill, this limit is removed. The time to make checks using a library, however, increases to 1d4 hours. Particularly complete libraries might even grant a bonus on Knowledge checks in the fields that they cover.

<underline>Spellcraft</underline>: If you are a specialist wizard, you get a +2 bonus on Spellcraft checks made to identify, learn, and prepare spells from your chosen school. Similarly, you take a –5 penalty on similar checks made concerning spells from your opposition schools.

<underline>Use Magic Device</underline>: You cannot take 10 with this skill. You can’t aid another on Use Magic Device checks. Only the user of the item may attempt such a check.", skill_unlock_5: "", skill_unlock_10: "", skill_unlock_15: "", skill_unlock_20: "", knowledge: true)

# rand = Skill.create!(name: "", ability_score: "", untrained: true, description: "")

puts "Skills Created!"

# /////////////////////////////////////////////////
# <-*-*-----*-*-*- Skillset Skills!-*-*-*-----*-*->
# /////////////////////////////////////////////////

SkillsetSkill.create!(skillset_id: cr.id, skill_id: acrobatics.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: appraise.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: bluff.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: climb.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: craft.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: diplomacy.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: disable_device.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: disguise.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: escape_artist.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: fly.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: handle_animal.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: intimidate.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: knowledge_arcana.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: knowledge_dungeoneering.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: knowledge_engineering.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: knowledge_geography.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: knowledge_history.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: knowledge_local.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: knowledge_nature.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: knowledge_nobility.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: knowledge_planes.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: knowledge_religion.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: linguistics.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: perception.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: perform.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: profession.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: ride.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: sense_motive.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: sleight_of_hand.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: spellcraft.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: stealth.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: survival.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: swim.id)
SkillsetSkill.create!(skillset_id: cr.id, skill_id: use_magic_device.id)


SkillsetSkill.create!(skillset_id: dmc.id, skill_id: acrobatics.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: bluff.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: climb.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: craft.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: diplomacy.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: disguise.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: finesse_unchained.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: handle_animal.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: heal.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: intimidate.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: investigation.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: linguistics.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: nature_unchained.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: perception.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: perform.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: profession.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: religion_unchained.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: sense_motive.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: society_unchained.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: spellcraft_unchained.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: stealth.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: survival.id)
SkillsetSkill.create!(skillset_id: dmc.id, skill_id: swim.id)

SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: acrobatics.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: bluff.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: climb.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: craft.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: diplomacy.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: disguise.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: finesse_unchained.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: handle_animal.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: heal.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: intimidate.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: investigation.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: knowledge.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: linguistics.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: nature_unchained.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: perception.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: perform.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: profession.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: religion_unchained.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: sense_motive.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: society_unchained.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: spellcraft_unchained.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: stealth.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: survival.id)
SkillsetSkill.create!(skillset_id: ravnica_custom.id, skill_id: swim.id)


# //////////////////////////////////////////////////
# <-*-*-----*-*-*- Weapon Group!-*-*-*-----*-*->
# //////////////////////////////////////////////////

axes = WeaponGroup.create!(name: 'Axes')
close = WeaponGroup.create!(name: 'Close')
crossbows = WeaponGroup.create!(name: 'Crossbows')
double_group = WeaponGroup.create!(name: 'Double')
flails = WeaponGroup.create!(name: 'Flails')
hammers = WeaponGroup.create!(name: 'Hammers')
light_blades = WeaponGroup.create!(name: 'Light Blades')
monk_group = WeaponGroup.create!(name: 'Monk')
spears = WeaponGroup.create!(name: 'Spears')
thrown = WeaponGroup.create!(name: 'Thrown')
tribal = WeaponGroup.create!(name: 'Tribal')
heavy_blades = WeaponGroup.create!(name: 'Heavy Blades')
polearms = WeaponGroup.create!(name: 'Polearms')
bows = WeaponGroup.create!(name: 'Bows')

# //////////////////////////////////////////////////
# <-*-*-----*-*-*- Weapon Qualities!-*-*-*-----*-*->
# //////////////////////////////////////////////////

brace = WeaponQuality.create!(name: 'brace', description: 'If you use a readied action to set a brace weapon against a charge, you deal double damage on a successful hit against a charging creature.')
double_quality = WeaponQuality.create!(name: 'double', description: 'You can use a double weapon to fight as if fighting with two weapons, but if you do, you incur all the normal attack penalties associated with fighting with two weapons, just as if you were using a one-handed weapon and a light weapon. You can choose to wield one end of a double weapon two-handed, but it cannot be used as a double weapon when wielded in this way—only one end of the weapon can be used in any given round.')
monk_quality = WeaponQuality.create!(name: 'monk', description: 'A monk weapon can be used by a monk to perform a flurry of blows.')
nonlethal = WeaponQuality.create!(name: 'nonlethal', description: 'These weapons deal nonlethal damage.')
reach = WeaponQuality.create!(name: 'reach', description: 'You use a reach weapon to strike opponents 10 feet away, but you can’t use it against an adjacent foe.')
trip = WeaponQuality.create!(name: 'trip', description: 'You can use a trip weapon to make trip attacks. If you are tripped during your own trip attempt, you can drop the weapon to avoid being tripped.')
disarm = WeaponQuality.create!(name: 'disarm', description: 'When you use a disarm weapon, you get a +2 bonus on Combat Maneuver Checks to disarm an enemy.')
finesse = WeaponQuality.create!(name: 'Finesse', description: 'You can use the Weapon Finesse feat to apply your Dexterity modifier instead of your Strength modifier to attack rolls with a rapier sized for you, even though it isn’t a light weapon.')


# /////////////////////////////////////////
# <-*-*-----*-*-*- Weapons!-*-*-*-----*-*->
# /////////////////////////////////////////

unarmed = Weapon.create!(name: 'Unarmed', category: 'Unarmed', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 0, num_of_dice: 1, damage_dice: 3, range: 0, thrown: false, weight: 0, damage_type: 'Bludgeoning', description: 'An unarmed strike is always considered a light weapon. Therefore, you can use the Weapon Finesse feat to apply your Dexterity modifier instead of your Strength modifier to attack rolls with an unarmed strike. Unarmed strikes do not count as natural weapons. The damage from an unarmed strike is considered weapon damage for the purposes of effects that give you a bonus on weapon damage rolls.

A monk or any character with the Improved Unarmed Strike feat can deal lethal or nonlethal damage with unarmed strikes, at his discretion.', source_id: core_rulebook.id)
  WeaponWeaponQuality.create!(weapon_id: unarmed.id, weapon_quality_id: nonlethal.id)
  WeaponWeaponGroup.create!(weapon_id: unarmed.id, weapon_group_id: close.id)

gauntlet = Weapon.create!(name: 'Gauntlet', category: 'Unarmed', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 2, num_of_dice: 1, damage_dice: 3, range: 0, thrown: false, weight: 1, damage_type: 'Bludgeoning', description: 'This metal glove lets you deal lethal damage rather than nonlethal damage with unarmed strikes. A strike with a gauntlet is otherwise considered an unarmed attack. Your opponent cannot use a disarm action to disarm you of gauntlets.

The cost and weight given are for a single gauntlet. Medium and heavy armors (except breastplate) come with gauntlets.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: gauntlet.id, weapon_group_id: close.id)

dagger = Weapon.create!(name: 'Dagger', category: 'Light', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 2, num_of_dice: 1, damage_dice: 4, range: 10, thrown: true, weight: 1, damage_type: 'Piercing or Slashing', critical_range: 19, description: 'A dagger has a blade that is about 1 foot in length.

You get a +2 bonus on Sleight of Hand skill checks made to conceal a dagger on your body.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: dagger.id, weapon_group_id: light_blades.id)
  WeaponWeaponGroup.create!(weapon_id: dagger.id, weapon_group_id: thrown.id)
  WeaponWeaponGroup.create!(weapon_id: dagger.id, weapon_group_id: tribal.id)

punching_dagger = Weapon.create!(name: 'Punching Dagger', category: 'Light', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 2, num_of_dice: 1, damage_dice: 4, critical: 3, range: 0, thrown: false, weight: 1, damage_type: 'Piercing', description: 'A punching dagger’s blade is attached to a horizontal handle that projects out from the fist when held.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: punching_dagger.id, weapon_group_id: close.id)

spiked_gauntlet = Weapon.create!(name: 'Spiked Gauntlet', category: 'Light', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 5, num_of_dice: 1, damage_dice: 4, range: 10, thrown: false, weight: 1, damage_type: 'Piercing', description: 'An attack with a spiked gauntlet is considered an armed attack. Your opponent cannot use a disarm action to disarm you of spiked gauntlets.

Note: The cost and weight given are for a single gauntlet.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: spiked_gauntlet.id, weapon_group_id: close.id)

light_mace = Weapon.create!(name: 'Light Mace', category: 'Light', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 5, num_of_dice: 1, damage_dice: 6, range: 0, thrown: false, weight: 4, damage_type: 'Bludgeoning', description: 'A light mace is made up of an ornate metal head attached to a simple wooden or metal shaft.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: light_mace.id, weapon_group_id: hammers.id)

sickle = Weapon.create!(name: 'Sickle', category: 'Light', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 6, num_of_dice: 1, damage_dice: 6, range: 0, thrown: false, weight: 2, damage_type: 'Slashing', description: '', source_id: core_rulebook.id)
  WeaponWeaponQuality.create!(weapon_id: sickle.id, weapon_quality_id: trip.id)
  WeaponWeaponGroup.create!(weapon_id: sickle.id, weapon_group_id: light_blades.id)

club = Weapon.create!(name: 'Club', category: 'One-Handed', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 0, num_of_dice: 1, damage_dice: 6, range: 10, thrown: true, weight: 3, damage_type: 'Bludgeoning', description: 'This weapon is usually just a shaped piece of wood, sometimes with a few nails or studs embedded in it.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: club.id, weapon_group_id: hammers.id)
  WeaponWeaponGroup.create!(weapon_id: club.id, weapon_group_id: tribal.id)

heavy_mace = Weapon.create!(name: 'Heavy Mace', category: 'One-Handed', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 12, num_of_dice: 1, damage_dice: 8, range: 0, thrown: false, weight: 8, damage_type: 'Bludgeoning', description: 'A heavy mace has a larger head and a longer handle than a normal (light) mace.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: heavy_mace.id, weapon_group_id: hammers.id)

morningstar = Weapon.create!(name: 'Morningstar', category: 'One-Handed', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 8, num_of_dice: 1, damage_dice: 8, range: 0, thrown: false, weight: 6, damage_type: 'Blugeoning and Piercing', description: 'A morningstar is a spiked metal ball, affixed to the top of a long handle.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: morningstar.id, weapon_group_id: flails.id)

shortspear = Weapon.create!(name: 'Shortspear', category: 'One-Handed', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 1, num_of_dice: 1, damage_dice: 6, range: 20, thrown: true, weight: 3, damage_type: 'Piercing', description: 'A shortspear is about 3 feet in length, making it a suitable thrown weapon.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: shortspear.id, weapon_group_id: spears.id)
  WeaponWeaponGroup.create!(weapon_id: shortspear.id, weapon_group_id: thrown.id)
  WeaponWeaponGroup.create!(weapon_id: shortspear.id, weapon_group_id: tribal.id)

longspear = Weapon.create!(name: 'Longspear', category: 'Two-Handed', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 5, num_of_dice: 1, damage_dice: 8, critical: 3, range: 0, thrown: false, weight: 9, damage_type: 'Piercing', description: 'A longspear is about 8 feet in length.', source_id: core_rulebook.id)
  WeaponWeaponQuality.create!(weapon_id: longspear.id, weapon_quality_id: brace.id)
  WeaponWeaponQuality.create!(weapon_id: longspear.id, weapon_quality_id: reach.id)
  WeaponWeaponGroup.create!(weapon_id: longspear.id, weapon_group_id: spears.id)

quarterstaff = Weapon.create!(name: 'Quarterstaff', category: 'Two-Handed', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 0, num_of_dice: 1, damage_dice: 6, range: 0, thrown: false, weight: 4, damage_type: 'Bludgeoning', double_weapon: true, double_num_of_dice: 1, double_damage_dice: 6, double_damage_type: 'Bludgeoning', description: 'A quarterstaff is a simple piece of wood, about 5 feet in length.', source_id: core_rulebook.id)
  WeaponWeaponQuality.create!(weapon_id: quarterstaff.id, weapon_quality_id: monk_quality.id)
  WeaponWeaponQuality.create!(weapon_id: quarterstaff.id, weapon_quality_id: double_quality.id)
  WeaponWeaponGroup.create!(weapon_id: quarterstaff.id, weapon_group_id: double_group.id)
  WeaponWeaponGroup.create!(weapon_id: quarterstaff.id, weapon_group_id: monk_group.id)

spear = Weapon.create!(name: 'Spear', category: 'Two-Handed', proficiency: 'Simple', weapon_type: 'Melee', price_in_gp: 2, num_of_dice: 1, damage_dice: 8, range: 20, critical: 3, thrown: true, weight: 6, damage_type: 'Piercing', description: 'A spear is 5 feet in length and can be thrown.', source_id: core_rulebook.id)
  WeaponWeaponQuality.create!(weapon_id: spear.id, weapon_quality_id: brace.id)
  WeaponWeaponGroup.create!(weapon_id: spear.id, weapon_group_id: spears.id)
  WeaponWeaponGroup.create!(weapon_id: spear.id, weapon_group_id: tribal.id)
  WeaponWeaponGroup.create!(weapon_id: spear.id, weapon_group_id: thrown.id)

blowgun = Weapon.create!(name: 'Blowgun', category: 'Ranged', proficiency: 'Simple', weapon_type: 'Range', price_in_gp: 2, num_of_dice: 1, damage_dice: 2, range: 20, thrown: false, weight: 1, damage_type: 'Piercing', description: 'Blowguns are generally used to deliver debilitating (but rarely fatal) poisons from a distance. They are nearly silent when fired.', ammunition_type: 'blowgun', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: blowgun.id, weapon_group_id: thrown.id)
  WeaponHand.create!(weapon_id: blowgun.id, hands: "Two")

heavy_crossbow = Weapon.create!(name: 'Heavy Crossbow', category: 'Ranged', proficiency: 'Simple', weapon_type: 'Range', price_in_gp: 50, num_of_dice: 1, damage_dice: 10, range: 120, critical_range: 19, thrown: false, weight: 8, damage_type: 'Piercing', description: 'Load: Loading a heavy crossbow is a full-round action that provokes attacks of opportunity.

You draw a heavy crossbow back by turning a small winch. Normally, operating a heavy crossbow requires two hands. However, you can shoot, but not load, a heavy crossbow with one hand at a –4 penalty on attack rolls. You can shoot a heavy crossbow with each hand, but you take a penalty on attack rolls as if attacking with two one-handed weapons. This penalty is cumulative with the penalty for one-handed firing.', ammunition_type: 'crossbow', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: heavy_crossbow.id, weapon_group_id: crossbows.id)
  heavy_crossbow_feature1 = Feature.create!(name: 'Load', action_id: full_round.id, attack_of_opportunity: true)
    WeaponFeature.create!(weapon_id: heavy_crossbow.id, feature_id: heavy_crossbow_feature1.id)
    FeatureLoading.create(feature_id: heavy_crossbow_feature1.id, capacity: 1, must_reload_after_use: true)
  WeaponHand.create!(weapon_id: heavy_crossbow.id, hands: "Two")
  WeaponHand.create!(weapon_id: heavy_crossbow.id, hands: "One", bonus: -4)

light_crossbow = Weapon.create!(name: 'Light Crossbow', category: 'Ranged', proficiency: 'Simple', weapon_type: 'Range', price_in_gp: 35, num_of_dice: 1, damage_dice: 8, range: 80, critical_range: 19, thrown: false, weight: 4, damage_type: 'Piercing', description: 'Load: Loading a light crossbow is a move action that provokes attacks of opportunity.

You draw a light crossbow back by pulling a lever. Normally, operating a light crossbow requires two hands. However, you can shoot, but not load, a light crossbow with one hand at a –2 penalty on attack rolls. You can shoot a light crossbow with each hand, but you take a penalty on attack rolls as if attacking with two light weapons. This penalty is cumulative with the penalty for one-handed firing.', ammunition_type: 'crossbow', source_id: core_rulebook.id)
  WeaponWeaponQuality.create!(weapon_id: light_crossbow.id, weapon_quality_id: crossbows.id)
  light_crossbow_feature1 = Feature.create!(name: 'Load', action_id: move.id, attack_of_opportunity: true)
    WeaponFeature.create!(weapon_id: light_crossbow.id, feature_id: light_crossbow_feature1.id)
    FeatureLoading.create(feature_id: light_crossbow_feature1.id, capacity: 1, must_reload_after_use: true)
  WeaponHand.create!(weapon_id: light_crossbow.id, hands: "Two")
  WeaponHand.create!(weapon_id: light_crossbow.id, hands: "One", bonus: -2)

dart = Weapon.create!(name: 'Dart', category: 'Ranged', proficiency: 'Simple', weapon_type: 'Range', price_in_gp: 0.5, num_of_dice: 1, damage_dice: 4, range: 20, thrown: true, weight: 0.5, damage_type: 'Piercing', description: 'Darts are missile weapons, designed to fly such that a sharp, often weighted point will strike first. They can be distinguished from javelins by fletching (i.e., feathers on the tail) and a shaft that is shorter and/or more flexible, and from arrows by the fact that they are not of the right length to use with a normal bow.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: dart.id, weapon_group_id: thrown.id)
  WeaponHand.create!(weapon_id: dart.id, hands: "One")

javelin = Weapon.create!(name: 'Javelin', category: 'Ranged', proficiency: 'Simple', weapon_type: 'Range', price_in_gp: 1, num_of_dice: 1, damage_dice: 6, range: 30, thrown: true, weight: 2, damage_type: 'Piercing', description: 'A javelin is a thin throwing spear.

Since a javelin is not designed for melee, you are treated as non-proficient with it and take a –4 penalty on attack rolls if you use a javelin as a melee weapon.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: javelin.id, weapon_group_id: spears.id)
  WeaponWeaponGroup.create!(weapon_id: javelin.id, weapon_group_id: thrown.id)
  WeaponHand.create!(weapon_id: javelin.id, hands: "One")

sling = Weapon.create!(name: 'Sling', category: 'Ranged', proficiency: 'Simple', weapon_type: 'Range', price_in_gp: 0, num_of_dice: 1, damage_dice: 4, range: 50, thrown: true, weight: 1, damage_type: 'Bludgeoning', description: 'A sling is little more than a leather cup attached to a pair of strings.

Your Strength modifier applies to damage rolls when you use a sling, just as it does for thrown weapons. You can fire, but not load, a sling with one hand.

Loading a sling is a move action that requires two hands and provokes attacks of opportunity.

You can hurl ordinary stones with a sling, but stones are not as dense or as round as bullets. Thus, such an attack deals damage as if the weapon were designed for a creature one size category smaller than you and you take a –1 penalty on attack rolls.', ammunition_type: 'sling', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: sling.id, weapon_group_id: thrown.id)
  sling_feature1 = Feature.create!(name: 'Load', action_id: move.id, attack_of_opportunity: true)
    WeaponFeature.create!(weapon_id: sling.id, feature_id: sling_feature1.id)
    FeatureLoading.create(feature_id: sling_feature1.id, capacity: 1, must_reload_after_use: true, wrong_ammo: true, wrong_ammo_attack_penalty: -1, wrong_ammo_size_decrease_steps: 1)
  WeaponHand.create!(weapon_id: sling.id, hands: "One")


crossbow_bolt = Weapon.create!(name: 'Crossbow Bolt', category: 'Ammunition', proficiency: 'Simple', weapon_type: 'Range', price_in_gp: 0.1, num_of_dice: 0, damage_dice: 0, range: 0, thrown: false, weight: 0.1, damage_type: '', description: 'Bolts come in a case or quiver that holds 10 bolts.

A crossbow bolt used as a melee weapon is treated as a light improvised weapon (–4 penalty on attack rolls) and deals damage as a dagger of its size (crit ×2).', ammunition: true, ammunition_type: 'crossbow', source_id: core_rulebook.id)

sling_bullet = Weapon.create!(name: 'Sling Bullet', category: 'Ammunition', proficiency: 'Simple', weapon_type: 'Range', price_in_gp: 0.01, num_of_dice: 0, damage_dice: 0, range: 0, thrown: false, weight: 0.5, damage_type: '', description: 'Bullets come in a leather pouch that holds 10 bullets.', ammunition: true, ammunition_type: 'sling', source_id: core_rulebook.id)

blowgun_dart = Weapon.create!(name: 'Blowgun Dart', category: 'Ammunition', proficiency: 'Simple', weapon_type: 'Range', price_in_gp: 0.05, num_of_dice: 0, damage_dice: 0, range: 0, thrown: false, weight: 0.1, damage_type: '', description: 'These light darts have tiny grooves behind the tips.

A character can apply poison to a blowgun dart without risk of poisoning himself.', ammunition: true, ammunition_type: 'blowgun', source_id: core_rulebook.id)

throwing_axe = Weapon.create!(name: 'Throwing Axe', category: 'Light', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 8, num_of_dice: 1, damage_dice: 6, range: 10, thrown: true, weight: 2, damage_type: 'Slashing', description: 'This is a small axe balanced for throwing.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: throwing_axe.id, weapon_group_id: axes.id)
  WeaponWeaponGroup.create!(weapon_id: throwing_axe.id, weapon_group_id: thrown.id)
  WeaponWeaponGroup.create!(weapon_id: throwing_axe.id, weapon_group_id: tribal.id)

light_hammer = Weapon.create!(name: 'Light Hammer', category: 'Light', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 1, num_of_dice: 1, damage_dice: 4, range: 20, thrown: true, weight: 2, damage_type: 'Bludgeoning', description: 'A lighter version of a warhammer, this weapon usually has a sleek metal head with one striking surface.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: light_hammer.id, weapon_group_id: hammers.id)
  WeaponWeaponGroup.create!(weapon_id: light_hammer.id, weapon_group_id: thrown.id)

handaxe = Weapon.create!(name: 'Handaxe', category: 'Light', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 6, num_of_dice: 1, damage_dice: 6, critical: 3, range: 0, thrown: false, weight: 3, damage_type: 'Slashing', description: 'This one-handed axe is short (roughly 1 foot long) and designed for use with one hand. Unlike throwing axes, it is not well balanced for a graceful tumbling motion, and is instead heavier at its head. Tomahawks, war hatchets, and other such names usually refer to hand axes.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: handaxe.id, weapon_group_id: axes.id)
  WeaponWeaponGroup.create!(weapon_id: handaxe.id, weapon_group_id: tribal.id)

kukri = Weapon.create!(name: 'Kukri', category: 'Light', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 8, num_of_dice: 1, damage_dice: 4, range: 0, critical_range: 18, thrown: false, weight: 2, damage_type: 'Slashing', description: 'A kukri is a curved blade, about 1 foot in length.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: kukri.id, weapon_group_id: light_blades.id)

light_pick = Weapon.create!(name: 'Light Pick', category: 'Light', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 4, num_of_dice: 1, damage_dice: 6, critical: 4, range: 0, thrown: false, weight: 3, damage_type: 'Piercing', description: 'This weapon, adapted from the pickaxe tool, has a head with a slightly curved, armorpiercing spike and a hammerlike counterweight.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: light_pick.id, weapon_group_id: axes.id)

sap = Weapon.create!(name: 'Sap', category: 'Light', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 1, num_of_dice: 1, damage_dice: 6, range: 0, thrown: false, weight: 2, damage_type: 'Bludgeoning', description: 'This weapon consists of a soft wrapping around a hard, dense core, typically a leather sheath around a lead rod. The head is wider than the handle and designed to spread out the force of the blow, making it less likely to draw blood or break bones.', source_id: core_rulebook.id)
  WeaponWeaponQuality.create!(weapon_id: sap.id, weapon_quality_id: nonlethal.id)
  WeaponWeaponGroup.create!(weapon_id: sap.id, weapon_group_id: close.id)

starknife = Weapon.create!(name: 'Starknife', category: 'Light', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 24, num_of_dice: 1, damage_dice: 4, critical: 3, range: 20, thrown: true, weight: 3, damage_type: 'Piercing', description: 'From a central metal ring, four tapering metal blades extend from this weapon like points on a compass rose. By gripping the crossbar that runs through the weapon’s open middle, a wielder can strike with it as a deadly melee weapon. Alternatively, by gripping it by the outer rim, a starknife’s light, aerodynamic design allows it to be thrown short distances in a manner similar to a chakram.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: starknife.id, weapon_group_id: light_blades.id)
  WeaponWeaponGroup.create!(weapon_id: starknife.id, weapon_group_id: thrown.id)

shortsword = Weapon.create!(name: 'Shortsword', category: 'Light', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 10, num_of_dice: 1, damage_dice: 6, critical_range: 19, range: 0, thrown: false, weight: 2, damage_type: 'Piercing', description: 'Short swords are some of the most common weapons found in any martial society, and thus designs are extremely varied, depending on the region and creator. Most are around 2 feet in length. Their blades can be curved or straight, single- or double-edged, and wide or narrow. Hilts may be ornate or simple, with crossguards, basket hilts, or no guard at all. Such weapons are often used on their own, but can also be paired as a matched set, or used in conjunction with a dagger or longer sword.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: shortsword.id, weapon_group_id: light_blades.id)

battleaxe = Weapon.create!(name: 'Battleaxe', category: 'One-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 10, num_of_dice: 1, damage_dice: 8, critical: 3, range: 0, thrown: false, weight: 6, damage_type: 'Slashing', description: 'The handle of this axe is long enough that you can wield it one-handed or two-handed. The head may have one blade or two, with blade shapes ranging from half-moons to squared edges like narrower versions of woodcutting axes. The wooden haft may be protected and strengthened with metal bands called langets.', source_id: core_rulebook.id)
  WeaponWeaponGroup.create!(weapon_id: battleaxe.id, weapon_group_id: axes.id)

light_flail = Weapon.create!(name: 'Light Flail', category: 'One-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 8, num_of_dice: 1, damage_dice: 8, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 5, damage_type: 'Bludgeoning', source_id: core_rulebook.id, description: 'A light flail consists of a weighted striking end connected to a handle by a sturdy chain. Though often imagined as a ball, sometimes spiked like the head of a morningstar, the head of a light flail can actually take many different shapes, such as short bars. Military flails are sturdier evolutions of agricultural flails, which are used for threshing – beating stacks of grains to separate the useful grains from their husks.')
  WeaponWeaponQuality.create!(weapon_id: light_flail.id, weapon_quality_id: disarm.id)
  WeaponWeaponQuality.create!(weapon_id: light_flail.id, weapon_quality_id: trip.id)
  WeaponWeaponGroup.create!(weapon_id: light_flail.id, weapon_group_id: flails.id)

longsword = Weapon.create!(name: 'Longsword', category: 'One-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 15, num_of_dice: 1, damage_dice: 8, critical: 2, critical_range: 19, range: 0, thrown: false, weight: 4, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'This sword is about 3½ feet in length.')
  WeaponWeaponGroup.create!(weapon_id: longsword.id, weapon_group_id: heavy_blades.id)

heavy_pick = Weapon.create!(name: 'Heavy Pick', category: 'One-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 8, num_of_dice: 1, damage_dice: 6, critical: 4, critical_range: 20, range: 0, thrown: false, weight: 6, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'This variant of the light pick has a longer handle and can be used with one or two hands. It is a common, inexpensive weapon for mounted soldiers since it can be used effectively from horseback.')
  WeaponWeaponGroup.create!(weapon_id: heavy_pick.id, weapon_group_id: axes.id)

rapier = Weapon.create!(name: 'Rapier', category: 'One-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 20, num_of_dice: 1, damage_dice: 6, critical: 2, critical_range: 18, range: 0, thrown: false, weight: 2, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'You can use the Weapon Finesse feat to apply your Dexterity modifier instead of your Strength modifier to attack rolls with a rapier sized for you, even though it isn’t a light weapon.

You can’t wield a rapier in two hands in order to apply 1-1/2 times your Strength bonus to damage.')
  WeaponWeaponQuality.create!(weapon_id: rapier.id, weapon_quality_id: finesse.id)
  WeaponWeaponGroup.create!(weapon_id: rapier.id, weapon_group_id: light_blades.id)
  WeaponHand.create!(weapon_id: rapier.id, hands: "One")

scimitar = Weapon.create!(name: 'Scimitar', category: 'One-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 15, num_of_dice: 1, damage_dice: 6, critical: 2, critical_range: 18, range: 0, thrown: false, weight: 4, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'This curved sword is shorter than a longsword and longer than a shortsword. Only the outer edge is sharp, and the back is flat, giving the blade a triangular cross-section.')
  WeaponWeaponGroup.create!(weapon_id: scimitar.id, weapon_group_id: heavy_blades.id)

trident = Weapon.create!(name: 'Trident', category: 'One-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 15, num_of_dice: 1, damage_dice: 8, critical: 2, critical_range: 20, range: 10, thrown: true, weight: 4, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'A trident has three metal prongs at the end of a 4-foot-long shaft.')
  WeaponWeaponQuality.create!(weapon_id: trident.id, weapon_quality_id: brace.id)
  WeaponWeaponGroup.create!(weapon_id: trident.id, weapon_group_id: spears.id)
  WeaponWeaponGroup.create!(weapon_id: trident.id, weapon_group_id: thrown.id)

warhammer = Weapon.create!(name: 'Warhammer', category: 'One-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 12, num_of_dice: 1, damage_dice: 8, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 5, damage_type: 'Bludgeoning', source_id: core_rulebook.id, description: 'This weapon consists of a wooden haft and a heavy, metal head. The head may be single (like a carpenter’s hammer) or double (like a sledgehammer). The haft is long enough that you may wield it one- or two-handed. Though heavy and relatively slow to wield, warhammers are capable of delivering immense blows, crushing armor and flesh alike.')
  WeaponWeaponGroup.create!(weapon_id: warhammer.id, weapon_group_id: hammers.id)

falchion = Weapon.create!(name: 'Falchion', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 75, num_of_dice: 2, damage_dice: 4, critical: 2, critical_range: 18, range: 0, thrown: false, weight: 8, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'This sword has one curved, sharp edge like a scimitar, with the back edge unsharpened and either flat or slightly curved. Its weight is greater toward the end, making it better for chopping rather than stabbing.')
  WeaponWeaponGroup.create!(weapon_id: falchion.id, weapon_group_id: heavy_blades.id)

heavy_flail = Weapon.create!(name: 'Heavy Flail', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 15, num_of_dice: 1, damage_dice: 10, critical: 2, critical_range: 19, range: 0, thrown: false, weight: 10, damage_type: 'Bludgeoning', source_id: core_rulebook.id, description: 'Similar to a light flail, a heavy flail has a larger metal ball and a longer handle.')
  WeaponWeaponQuality.create!(weapon_id: heavy_flail.id, weapon_quality_id: disarm.id)
  WeaponWeaponQuality.create!(weapon_id: heavy_flail.id, weapon_quality_id: trip.id)
  WeaponWeaponGroup.create!(weapon_id: heavy_flail.id, weapon_group_id: flails.id)

glaive = Weapon.create!(name: 'Glaive', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 8, num_of_dice: 1, damage_dice: 10, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 10, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'A glaive is composed of a simple blade mounted on the end of a pole about 7 feet in length.')
  WeaponWeaponQuality.create!(weapon_id: glaive.id, weapon_quality_id: reach.id)
  WeaponWeaponGroup.create!(weapon_id: glaive.id, weapon_group_id: polearms.id)

greataxe = Weapon.create!(name: 'Greataxe', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 20, num_of_dice: 1, damage_dice: 12, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 12, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'This two-handed battle axe is heavy enough that you can’t wield it with one hand. The head may have one blade or two, and may be “bearded” (meaning hooked or trailing at the bottom) to increase cleaving power and help pull down enemy shields. The haft is usually 3 to 4 feet long.')
  WeaponWeaponGroup.create!(weapon_id: greataxe.id, weapon_group_id: axes.id)

great_club = Weapon.create!(name: 'Great Club', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 5, num_of_dice: 1, damage_dice: 10, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 8, damage_type: 'Bludgeoning', source_id: core_rulebook.id, description: 'This larger, bulkier version of the common club is heavy enough that you can’t wield it with one hand. It may be ornate and carved, reinforced with metal, or a simple branch from a tree. Like simple clubs, greatclubs have many names, such as cudgels, bludgeons, shillelaghs, and more.')
  WeaponWeaponGroup.create!(weapon_id: great_club.id, weapon_group_id: hammers.id)
  WeaponWeaponGroup.create!(weapon_id: great_club.id, weapon_group_id: tribal.id)

greatsword = Weapon.create!(name: 'Greatsword', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 50, num_of_dice: 2, damage_dice: 6, critical: 2, critical_range: 19, range: 0, thrown: false, weight: 8, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'This immense two-handed sword is about 5 feet in length. A greatsword may have a dulled lower blade that can be gripped.')
  WeaponWeaponGroup.create!(weapon_id: greatsword.id, weapon_group_id: heavy_blades.id)

guisarme = Weapon.create!(name: 'Guisarme', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 9, num_of_dice: 2, damage_dice: 4, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 1, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'A guisarme is an 8-foot-long shaft with a blade and a hook mounted at the tip.')
  WeaponWeaponQuality.create!(weapon_id: guisarme.id, weapon_quality_id: reach.id)
  WeaponWeaponQuality.create!(weapon_id: guisarme.id, weapon_quality_id: trip.id)
  WeaponWeaponGroup.create!(weapon_id: guisarme.id, weapon_group_id: polearms.id)

halberd = Weapon.create!(name: 'Halberd', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 10, num_of_dice: 1, damage_dice: 10, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 12, damage_type: 'Piercing or Slashing', source_id: core_rulebook.id, description: 'A halberd is similar to a 5-foot-long spear, but it also has a small, axe-like head mounted near the tip.')
  WeaponWeaponQuality.create!(weapon_id: halberd.id, weapon_quality_id: brace.id)
  WeaponWeaponQuality.create!(weapon_id: halberd.id, weapon_quality_id: trip.id)
  WeaponWeaponGroup.create!(weapon_id: halberd.id, weapon_group_id: polearms.id)

lance = Weapon.create!(name: 'Lance', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 10, num_of_dice: 1, damage_dice: 8, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 10, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'A lance deals double damage when used from the back of a charging mount. While mounted, you can wield a lance with one hand.')
  WeaponWeaponQuality.create!(weapon_id: lance.id, weapon_quality_id: reach.id)
  WeaponWeaponGroup.create!(weapon_id: lance.id, weapon_group_id: spears.id)

ranseur = Weapon.create!(name: 'Ranseur', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 10, num_of_dice: 2, damage_dice: 4, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 12, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'Similar in appearance to a trident, a ranseur has a single spear at its tip, flanked by a pair of short, curving blades.')
  WeaponWeaponQuality.create!(weapon_id: ranseur.id, weapon_quality_id: disarm.id)
  WeaponWeaponQuality.create!(weapon_id: ranseur.id, weapon_quality_id: reach.id)
  WeaponWeaponGroup.create!(weapon_id: ranseur.id, weapon_group_id: polearms.id)

scythe = Weapon.create!(name: 'Scythe', category: 'Two-Handed', proficiency: 'Martial', weapon_type: 'Melee', price_in_gp: 18, num_of_dice: 2, damage_dice: 4, critical: 4, critical_range: 20, range: 0, thrown: false, weight: 10, damage_type: 'Piercing or Slashing', source_id: core_rulebook.id, description: 'This weapon consists of a long wooden shaft with protruding handles and a sharp curved blade set at a right angle. Derived from a farm tool used to mow down crops, a scythe requires two hands to use, and is unwieldy but capable of inflicting grievous wounds. Its connotations as a symbol of death make it an intimidating weapon.')
  WeaponWeaponQuality.create!(weapon_id: scythe.id, weapon_quality_id: trip.id)
  WeaponWeaponGroup.create!(weapon_id: scythe.id, weapon_group_id: heavy_blades.id)

longbow = Weapon.create!(name: 'Longbow', category: 'Ranged', proficiency: 'Martial', weapon_type: 'Range', price_in_gp: 75, num_of_dice: 1, damage_dice: 8, critical: 3, critical_range: 20, range: 100, thrown: false, weight: 3, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'At almost 5 feet in height, a longbow is made up of one solid piece of carefully curved wood.

You need two hands to use a bow, regardless of its size. A longbow can’t be used while mounted. If you have a penalty for low Strength, apply it to damage rolls when you use a longbow. You can apply your Strength modifier to damage rolls when you use a composite longbow, but not a regular longbow. A longbow fires arrows.', ammunition_type: 'bow')
  WeaponWeaponGroup.create!(weapon_id: longbow.id, weapon_group_id: bows.id)
  WeaponHand.create!(weapon_id: longbow.id, hands: "Two")

compositve_longbow = Weapon.create!(name: 'Composite Longbow', category: 'Ranged', proficiency: 'Martial', weapon_type: 'Range', price_in_gp: 100, num_of_dice: 1, damage_dice: 8, critical: 3, critical_range: 20, range: 110, thrown: false, weight: 3, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'You need at least two hands to use a bow, regardless of its size. You can use a composite longbow while mounted.

All composite bows are made with a particular Strength rating (that is, each requires a minimum Strength modifier to use with proficiency). If your Strength bonus is less than the strength rating of the composite bow, you can’t effectively use it, so you take a –2 penalty on attacks with it. The default composite longbow requires a Strength modifier of +0 or higher to use with proficiency. A composite longbow can be made with a high strength rating to take advantage of an above-average Strength score; this feature allows you to add your Strength bonus to damage, up to the maximum bonus indicated for the bow. Each point of Strength bonus granted by the bow adds 100 gp to its cost. If you have a penalty for low Strength, apply it to damage rolls when you use a composite longbow.

For purposes of Weapon Proficiency and similar feats, a composite longbow is treated as if it were a longbow.', ammunition_type: 'bow')
  WeaponWeaponGroup.create!(weapon_id: compositve_longbow.id, weapon_group_id: bows.id)
  WeaponHand.create!(weapon_id: compositve_longbow.id, hands: "Two")

shortbow = Weapon.create!(name: 'Shortbow', category: 'Ranged', proficiency: 'Martial', weapon_type: 'Range', price_in_gp: 30, num_of_dice: 1, damage_dice: 6, critical: 3, critical_range: 20, range: 60, thrown: false, weight: 2, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'A shortbow is made up of one piece of wood, about 3 feet in length.

You need two hands to use a bow, regardless of its size. You can use a shortbow while mounted. If you have a penalty for low Strength, apply it to damage rolls when you use a shortbow. If you have a bonus for high Strength, you can apply it to damage rolls when you use a composite shortbow, but not a regular shortbow. A shortbow fires arrows.', ammunition_type: 'bow')
  WeaponWeaponGroup.create!(weapon_id: shortbow.id, weapon_group_id: bows.id)
  WeaponHand.create!(weapon_id: shortbow.id, hands: "Two")

compositve_shortbow = Weapon.create!(name: 'Composite Shortbow', category: 'Ranged', proficiency: 'Martial', weapon_type: 'Range', price_in_gp: 75, num_of_dice: 1, damage_dice: 6, critical: 3, critical_range: 20, range: 70, thrown: false, weight: 2, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'You need at least two hands to use a bow, regardless of its size. You can use a composite shortbow while mounted.

All composite bows are made with a particular Strength rating (that is, each requires a minimum Strength modifier to use with proficiency). If your Strength bonus is lower than the strength rating of the composite bow, you can’t effectively use it, so you take a –2 penalty on attacks with it. The default composite shortbow requires a Strength modifier of +0 or higher to use with proficiency. A composite shortbow can be made with a high strength rating to take advantage of an above-average Strength score; this feature allows you to add your Strength bonus to damage, up to the maximum bonus indicated for the bow. Each point of Strength bonus granted by the bow adds 75 gp to its cost. If you have a penalty for low Strength, apply it to damage rolls when you use a composite shortbow.

For purposes of Weapon Proficiency, Weapon Focus, and similar feats, a composite shortbow is treated as if it were a shortbow.', ammunition_type: 'bow')
  WeaponWeaponGroup.create!(weapon_id: compositve_shortbow.id, weapon_group_id: bows.id)
  WeaponHand.create!(weapon_id: compositve_shortbow.id, hands: "Two")

arrow = Weapon.create!(name: 'Arrow', category: 'Ammunition', proficiency: 'Martial', weapon_type: 'Range', price_in_gp: 0.05, num_of_dice: 0, damage_dice: 0, range: 0, thrown: false, weight: 0.15, damage_type: '', description: 'A standard (common) arrow used as a melee weapon is treated as a light improvised weapon (–4 penalty on attack rolls) and deals damage as a dagger of its size (critical multiplier ×2). Unless indicated otherwise, arrows come in a leather quiver that holds 20 arrows.', ammunition: true, ammunition_type: 'bow', source_id: core_rulebook.id)

kama = Weapon.create!(name: 'Kama', category: 'Light', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 2, num_of_dice: 1, damage_dice: 6, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 2, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'Similar to a sickle—and in some regions still used to reap grain—a kama is a short, curved blade attached to a simple handle, usually made of wood. It is sometimes also referred to as a kai, and is frequently used in pairs by martial artists.')
  WeaponWeaponQuality.create!(weapon_id: kama.id, weapon_quality_id: monk_quality.id)
  WeaponWeaponQuality.create!(weapon_id: kama.id, weapon_quality_id: trip.id)
  WeaponWeaponGroup.create!(weapon_id: kama.id, weapon_group_id: light_blades.id)
  WeaponWeaponGroup.create!(weapon_id: kama.id, weapon_group_id: monk_group.id)

nunchaku = Weapon.create!(name: 'Nunchaku', category: 'Light', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 2, num_of_dice: 1, damage_dice: 6, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 2, damage_type: 'Bludgeoning', source_id: core_rulebook.id, description: 'A nunchaku is made up of two wooden or metal bars connected by a small length of rope or chain.')
  WeaponWeaponQuality.create!(weapon_id: nunchaku.id, weapon_quality_id: monk_quality.id)
  WeaponWeaponQuality.create!(weapon_id: nunchaku.id, weapon_quality_id: disarm.id)
  WeaponWeaponGroup.create!(weapon_id: nunchaku.id, weapon_group_id: flails.id)
  WeaponWeaponGroup.create!(weapon_id: nunchaku.id, weapon_group_id: monk_group.id)

sai = Weapon.create!(name: 'Sai', category: 'Light', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 1, num_of_dice: 1, damage_dice: 4, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 1, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'A sai is a metal spike flanked by a pair of prongs used to trap an enemy’s weapon. Though pointed, a sai is not usually used for stabbing. Instead, it is used primarily to bludgeon foes, punching with the hilt, or else to catch and disarm weapons between its tines. Sais are often wielded in pairs.

When wielding a sai, you get a +2 bonus on combat maneuver checks to sunder an enemy’s weapon.')
  WeaponWeaponQuality.create!(weapon_id: sai.id, weapon_quality_id: monk_quality.id)
  WeaponWeaponGroup.create!(weapon_id: sai.id, weapon_group_id: disarm.id)
  WeaponWeaponGroup.create!(weapon_id: sai.id, weapon_group_id: monk_group.id)

siangham = Weapon.create!(name: 'Siangham', category: 'Light', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 3, num_of_dice: 1, damage_dice: 6, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 1, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'This weapon is a handheld shaft fitted with a pointed tip for stabbing foes. It resembles a (much sturdier) arrow with a grip designed for melee combat.')
  WeaponWeaponQuality.create!(weapon_id: siangham.id, weapon_quality_id: monk_quality.id)
  WeaponWeaponGroup.create!(weapon_id: siangham.id, weapon_group_id: monk_group.id)

bastard_sword = Weapon.create!(name: 'Bastard Sword', category: 'One-Handed', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 35, num_of_dice: 1, damage_dice: 10, critical: 2, critical_range: 19, range: 0, thrown: false, weight: 6, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'A bastard sword is about 4 feet in length, making it too large to use in one hand without special training; thus, it is an exotic weapon. A character can use a bastard sword two-handed as a martial weapon.')
  WeaponWeaponGroup.create!(weapon_id: bastard_sword.id, weapon_group_id: heavy_blades.id)

dwarven_waraxe = Weapon.create!(name: 'Dwarven Waraxe', category: 'One-Handed', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 30, num_of_dice: 1, damage_dice: 10, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 8, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'A dwarven waraxe has a large, ornate head mounted to a thick handle, making it too large to use in one hand without special training.

Due to its size, a dwarven waraxe is an exotic weapon. A Medium character can use a dwarven waraxe two-handed as a martial weapon, or a Large creature can use it one-handed in the same way.

A dwarf treats a dwarven waraxe as a martial weapon even when using it in one hand.')
  WeaponWeaponGroup.create!(weapon_id: dwarven_waraxe.id, weapon_group_id: axes.id)

whip = Weapon.create!(name: 'Whip', category: 'One-Handed', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 1, num_of_dice: 1, damage_dice: 3, critical: 2, critical_range: 20, range: 15, thrown: false, weight: 2, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'A whip deals no damage to any creature with an armor bonus of +1 or higher or a natural armor bonus of +3 or higher. The whip is treated as a melee weapon with 15-foot reach, though you don’t threaten the area into which you can make an attack. In addition, unlike most other weapons with reach, you can use it against foes anywhere within your reach (including adjacent foes).

Using a whip provokes an attack of opportunity, just as if you had used a ranged weapon.

You can use the Weapon Finesse feat to apply your Dexterity modifier instead of your Strength modifier to attack rolls with a whip sized for you, even though it isn’t a light weapon. Wielding a whip in two hands does not add 1-1/2 times your Strength modifier to damage rolls as with other weapons (UE update).')
  WeaponWeaponQuality.create!(weapon_id: whip.id, weapon_quality_id: disarm.id)
  WeaponWeaponQuality.create!(weapon_id: whip.id, weapon_quality_id: nonlethal.id)
  WeaponWeaponQuality.create!(weapon_id: whip.id, weapon_quality_id: reach.id)
  WeaponWeaponQuality.create!(weapon_id: whip.id, weapon_quality_id: trip.id)
  WeaponWeaponQuality.create!(weapon_id: whip.id, weapon_quality_id: finesse.id)
  WeaponWeaponGroup.create!(weapon_id: whip.id, weapon_group_id: flails.id)


orc_double_axe = Weapon.create!(name: 'Orc Double Axe', category: 'Two-Handed', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 60, num_of_dice: 1, damage_dice: 8, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 15, damage_type: 'Slashing', double_weapon: true, double_num_of_dice: 1, double_damage_dice: 8, double_damage_type: 'Slashing', source_id: core_rulebook.id, description: 'A cruel weapon with blades placed at opposite ends of a long haft, an orc double axe is a double weapon. Though invented by and traditionally associated with orcs, the double axe can be crafted and wielded by other races as well, though many disdain it for its extreme weight and clumsiness. Because of the blades at either end of the axe, the wielder must hold an orc double axe in the middle of its haft, and utilize a weaving, slashing fighting style more akin to that of a quarterstaff than to that of a greataxe or battleaxe.')
  WeaponWeaponQuality.create!(weapon_id: orc_double_axe.id, weapon_quality_id: double_quality.id)
  WeaponWeaponGroup.create!(weapon_id: orc_double_axe.id, weapon_group_id: axes.id)
  WeaponWeaponGroup.create!(weapon_id: orc_double_axe.id, weapon_group_id: double_group.id)

spiked_chain = Weapon.create!(name: 'Spiked Chain', category: 'Two-Handed', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 25, num_of_dice: 2, damage_dice: 4, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 10, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'A spiked chain is about 4 feet in length, covered in wicked barbs.

You can use the Weapon Finesse feat to apply your Dexterity modifier instead of your Strength modifier to attack rolls with a spiked chain sized for you, even though it isn’t a light weapon.')
  WeaponWeaponQuality.create!(weapon_id: spiked_chain.id, weapon_quality_id: disarm.id)
  WeaponWeaponQuality.create!(weapon_id: spiked_chain.id, weapon_quality_id: trip.id)
  WeaponWeaponQuality.create!(weapon_id: spiked_chain.id, weapon_quality_id: finesse.id)
  WeaponWeaponGroup.create!(weapon_id: spiked_chain.id, weapon_group_id: flails.id)

elven_curve_blade = Weapon.create!(name: 'Elven Curve Blade', category: 'Two-Handed', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 80, num_of_dice: 1, damage_dice: 10, critical: 2, critical_range: 18, range: 0, thrown: false, weight: 7, damage_type: 'Slashing', source_id: core_rulebook.id, description: 'Essentially a longer version of a scimitar, but with a thinner blade, the elven curve blade is exceptionally rare.

You receive a +2 circumstance bonus to your Combat Maneuver Defense whenever a foe attempts to sunder your elven curve blade due to its flexible metal.

You can use the Weapon Finesse feat to apply your Dexterity modifier instead of your Strength modifier to attack rolls with an elven curve blade sized for you, even though it isn’t a light weapon.')
  WeaponWeaponGroup.create!(weapon_id: elven_curve_blade.id, weapon_group_id: heavy_blades.id)
  WeaponWeaponQuality.create!(weapon_id: elven_curve_blade.id, weapon_quality_id: finesse.id)


dire_flail = Weapon.create!(name: 'Dire Flail', category: 'Two-Handed', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 90, num_of_dice: 1, damage_dice: 8, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 10, damage_type: 'Bludgeoning', double_weapon: true, double_num_of_dice: 1, double_damage_dice: 8, double_damage_type: 'Bludgeoning', source_id: core_rulebook.id, description: 'A dire flail consists of two spheres of spiked iron dangling from chains at opposite ends of a long haft. This weapon excels at short but powerful strikes, and is typically swung in a constant churning motion. The wielder of a dire flail must have great strength, both to use the weapon effectively and to keep from tiring out.')
  WeaponWeaponQuality.create!(weapon_id: dire_flail.id, weapon_quality_id: double_quality.id)
  WeaponWeaponQuality.create!(weapon_id: dire_flail.id, weapon_quality_id: flails.id)
  WeaponWeaponGroup.create!(weapon_id: dire_flail.id, weapon_group_id: disarm.id)
  WeaponWeaponGroup.create!(weapon_id: dire_flail.id, weapon_group_id: double_group.id)
  WeaponWeaponGroup.create!(weapon_id: dire_flail.id, weapon_group_id: trip.id)

gnome_hooked_hammer = Weapon.create!(name: 'Gnome Hooked Hammer', category: 'Two-Handed', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 20, num_of_dice: 1, damage_dice: 8, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 6, damage_type: 'Bludgeoning', double_weapon: true, double_num_of_dice: 1, double_damage_dice: 6, double_damage_type: 'Piercing', source_id: core_rulebook.id, description: 'A gnome hooked hammer is a double weapon—an ingenious tool with a hammer head at one end of its haft and a long, curved pick at the other.

The hammer’s blunt head is a bludgeoning weapon that deals 1d6 points of damage (crit ×3). Its hook is a piercing weapon that deals 1d4 points of damage (crit ×4). You can use either head as the primary weapon.

Gnomes treat hooked hammers as martial weapons.')
  WeaponWeaponQuality.create!(weapon_id: gnome_hooked_hammer.id, weapon_quality_id: double_quality.id)
  WeaponWeaponQuality.create!(weapon_id: gnome_hooked_hammer.id, weapon_quality_id: trip.id)
  WeaponWeaponGroup.create!(weapon_id: gnome_hooked_hammer.id, weapon_group_id: double_group.id)

two_bladed_sword = Weapon.create!(name: 'Two-Bladed Sword', category: 'Two-Handed', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 100, num_of_dice: 1, damage_dice: 8, critical: 2, critical_range: 19, range: 0, thrown: false, weight: 10, damage_type: 'Slashing', double_weapon: true, double_num_of_dice: 1, double_damage_dice: 8, double_damage_type: 'Slashing', source_id: core_rulebook.id, description: 'A two-bladed sword is a double weapon—twin blades extend from either side of a central, short haft, allowing the wielder to attack with graceful but deadly flourishes.')
  WeaponWeaponQuality.create!(weapon_id: two_bladed_sword.id, weapon_quality_id: double_quality.id)
  WeaponWeaponGroup.create!(weapon_id: two_bladed_sword.id, weapon_group_id: double_group.id)
  WeaponWeaponGroup.create!(weapon_id: two_bladed_sword.id, weapon_group_id: heavy_blades.id)

dwarven_urgrosh = Weapon.create!(name: 'Dwarven Urgrosh', category: 'Two-Handed', proficiency: 'Exotic', weapon_type: 'Melee', price_in_gp: 50, num_of_dice: 1, damage_dice: 8, critical: 3, critical_range: 20, range: 0, thrown: false, weight: 12, damage_type: 'Slashing', double_weapon: true, double_num_of_dice: 1, double_damage_dice: 6, double_damage_type: 'Piercing', source_id: core_rulebook.id, description: 'A dwarven urgrosh is a double weapon—an axe head and a spear point on opposite ends of a long haft. The urgrosh’s axe head is a slashing weapon that deals 1d8 points of damage. Its spear head is a piercing weapon that deals 1d6 points of damage. You can use either head as the primary weapon. The other becomes the off-hand weapon. If you use an urgrosh against a charging character, the spear head is the part of the weapon that deals damage.

Dwarves treat dwarven urgroshes as martial weapons.')
  WeaponWeaponQuality.create!(weapon_id: dwarven_urgrosh.id, weapon_quality_id: double_quality.id)
  WeaponWeaponQuality.create!(weapon_id: dwarven_urgrosh.id, weapon_quality_id: brace.id)
  WeaponWeaponGroup.create!(weapon_id: dwarven_urgrosh.id, weapon_group_id: double_group.id)

bolas = Weapon.create!(name: 'Bolas', category: 'Ranged', proficiency: 'Exotic', weapon_type: 'Range', price_in_gp: 5, num_of_dice: 1, damage_dice: 4, critical: 2, critical_range: 20, range: 10, thrown: true, weight: 2, damage_type: 'Bludgeoning', source_id: core_rulebook.id, description: 'A bolas is a pair of wooden, stone, or metal weights connected by a thin rope or cord.

You can whirl and throw this weapon to make a ranged trip attack against an opponent. You can’t be tripped during your own trip attempt when using a bolas.')
  WeaponWeaponQuality.create!(weapon_id: bolas.id, weapon_quality_id: nonlethal.id)
  WeaponWeaponQuality.create!(weapon_id: bolas.id, weapon_quality_id: trip.id)
  WeaponWeaponGroup.create!(weapon_id: bolas.id, weapon_group_id: thrown.id)
  WeaponHand.create!(weapon_id: bolas.id, hands: "One")

hand_crossbow = Weapon.create!(name: 'Hand Crossbow', category: 'Ranged', proficiency: 'Exotic', weapon_type: 'Range', price_in_gp: 100, num_of_dice: 1, damage_dice: 4, critical: 2, critical_range: 19, range: 30, thrown: false, weight: 2, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'You can draw a hand crossbow back by hand.

Loading a hand crossbow is a move action that provokes attacks of opportunity.

You can shoot, but not load, a hand crossbow with one hand at no penalty. You can shoot a hand crossbow with each hand, but you take a penalty on attack rolls as if attacking with two light weapons.', ammunition_type: 'crossbow')
  WeaponWeaponGroup.create!(weapon_id: hand_crossbow.id, weapon_group_id: crossbows.id)
  hand_crossbow_feature1 = Feature.create!(name: 'Load', action_id: move.id, attack_of_opportunity: true)
    WeaponFeature.create!(weapon_id: hand_crossbow.id, feature_id: hand_crossbow_feature1.id)
    FeatureLoading.create(feature_id: hand_crossbow_feature1.id, capacity: 1, must_reload_after_use: true)
  WeaponHand.create!(weapon_id: hand_crossbow.id, hands: "One")
  WeaponHand.create!(weapon_id: hand_crossbow.id, hands: "Two")


repeating_heavy_crossbow = Weapon.create!(name: 'Repeating Heavy Crossbow', category: 'Ranged', proficiency: 'Exotic', weapon_type: 'Range', price_in_gp: 400, num_of_dice: 1, damage_dice: 10, critical: 2, critical_range: 19, range: 120, thrown: false, weight: 12, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'The repeating heavy crossbow holds 5 repeating crossbow bolts.

As long as it holds bolts, you can reload it by pulling the reloading lever (a free action). Loading a new case of 5 bolts is a full-round action that provokes attacks of opportunity.

You can fire a repeating crossbow with one hand or fire a repeating crossbow in each hand in the same manner as you would a normal crossbow of the same size. However, you must fire the weapon with two hands in order to use the reloading lever, and you must use two hands to load a new case of bolts.', ammunition_type: 'repeating crossbow')
  WeaponWeaponGroup.create!(weapon_id: repeating_heavy_crossbow.id, weapon_group_id: crossbows.id)
  repeating_heavy_crossbow_feature1 = Feature.create!(name: 'Load', action_id: full_round.id, attack_of_opportunity: true)
    WeaponFeature.create!(weapon_id: repeating_heavy_crossbow.id, feature_id: repeating_heavy_crossbow_feature1.id)
    FeatureLoading.create(feature_id: repeating_heavy_crossbow_feature1.id, capacity: 5, must_reload_after_use: true)
  WeaponHand.create!(weapon_id: repeating_heavy_crossbow.id, hands: "One")
  WeaponHand.create!(weapon_id: repeating_heavy_crossbow.id, hands: "Two")

repeating_light_crossbow = Weapon.create!(name: 'Repeating Heavy Crossbow', category: 'Ranged', proficiency: 'Exotic', weapon_type: 'Range', price_in_gp: 250, num_of_dice: 1, damage_dice: 8, critical: 2, critical_range: 19, range: 80, thrown: false, weight: 6, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'This weapon functions identically to a repeating light crossbow, except that its damage, critical, and range values are equivalent to those of a light crossbow instead of a heavy crossbow. Its significantly lighter construction and pull make it both more portable and more useful to those who rely on stealth or speed.

As long as it holds bolts, you can reload it by pulling the reloading lever (a free action). Loading a new case of 5 bolts is a full-round action that provokes attacks of opportunity.

You can fire a repeating crossbow with one hand or fire a repeating crossbow in each hand in the same manner as you would a normal crossbow of the same size. However, you must fire the weapon with two hands in order to use the reloading lever, and you must use two hands to load a new case of bolts.', ammunition_type: 'repeating crossbow')
  WeaponWeaponGroup.create!(weapon_id: repeating_light_crossbow.id, weapon_group_id: crossbows.id)
  repeating_light_crossbow_feature1 = Feature.create!(name: 'Load', action_id: full_round.id, attack_of_opportunity: true)
    WeaponFeature.create!(weapon_id: repeating_light_crossbow.id, feature_id: repeating_light_crossbow_feature1.id)
    FeatureLoading.create(feature_id: repeating_light_crossbow_feature1.id, capacity: 5, must_reload_after_use: true)
  WeaponHand.create!(weapon_id: repeating_light_crossbow.id, hands: "One")
  WeaponHand.create!(weapon_id: repeating_light_crossbow.id, hands: "Two")

net = Weapon.create!(name: 'Net', category: 'Ranged', proficiency: 'Exotic', weapon_type: 'Range', price_in_gp: 20, num_of_dice: 0, damage_dice: 0, critical: 0, critical_range: 0, range: 10, thrown: true, weight: 6, damage_type: '', source_id: core_rulebook.id, description: 'When you throw a net, you make a ranged touch attack against your target. A net’s maximum range is 10 feet. If you hit, the target is entangled.

If you control the trailing rope by succeeding on an opposed Strength check while holding it, the entangled creature can move only within the limits that the rope allows. If the entangled creature attempts to cast a spell, it must make a concentration check with a DC of 15 + the spell’s level or be unable to cast the spell.

An entangled creature can escape with a DC 20 Escape Artist check (a full-round action). The net has 5 hit points and can be burst with a DC 25 Strength check (also a full-round action). A net is useful only against creatures within one size category of you.

A net must be folded to be thrown effectively. The first time you throw your net in a fight, you make a normal ranged touch attack roll. After the net is unfolded, you take a –4 penalty on attack rolls with it. It takes 2 rounds for a proficient user to fold a net and twice that long for a non-proficient one to do so.')
  WeaponWeaponGroup.create!(weapon_id: net.id, weapon_group_id: thrown.id)
  WeaponHand.create!(weapon_id: net.id, hands: "One")

halfling_sling_staff = Weapon.create!(name: 'Halfling Sling Staff', category: 'Ranged', proficiency: 'Exotic', weapon_type: 'Range', price_in_gp: 20, num_of_dice: 1, damage_dice: 8, critical: 3, critical_range: 20, range: 80, thrown: false, weight: 3, damage_type: 'Bludgeoning', source_id: core_rulebook.id, description: 'Made from a specially designed sling attached to a short club, a halfling sling staff can be used by a proficient wielder to devastating effect.

Your Strength modifier applies to damage rolls when you use a halfling sling staff just as it does for thrown weapons. You can fire, but not load, a halfling sling staff with one hand. You can hurl ordinary stones with a halfling sling staff, but stones are not as dense or as round as bullets. Thus, such an attack deals damage as if the weapon were designed for a creature one size category smaller than you and you take a –1 penalty on attack rolls. A halfling sling staff can be used as a simple weapon that deals bludgeoning damage equal to that of a club of its size.

Loading a halfling sling staff is a move action that requires two hands and provokes attacks of opportunity.

Halflings treat halfling sling staves as martial weapons.', ammunition_type: 'sling')
  WeaponWeaponGroup.create!(weapon_id: halfling_sling_staff.id, weapon_group_id: thrown.id)
  halfling_sling_staff_feature1 = Feature.create!(name: 'Load', action_id: move.id, attack_of_opportunity: true)
    WeaponFeature.create!(weapon_id: halfling_sling_staff.id, feature_id: halfling_sling_staff_feature1.id)
    FeatureLoading.create(feature_id: halfling_sling_staff_feature1.id, capacity: 1, must_reload_after_use: true, wrong_ammo: true, wrong_ammo_attack_penalty: -1, wrong_ammo_size_decrease_steps: 1)
  WeaponHand.create!(weapon_id: halfling_sling_staff.id, hands: "One")

repeating_crossbow_bolt = Weapon.create!(name: 'Repeating Crossbow Bolt', category: 'Ammunition', proficiency: 'Exotic', weapon_type: 'Range', price_in_gp: 0.2, num_of_dice: 0, damage_dice: 0, range: 0, thrown: false, weight: 0.2, damage_type: '', description: 'Repeating crossbow bolts come in a case that holds 5 bolts.

A crossbow bolt used as a melee weapon is treated as a light improvised weapon (–4 penalty on attack rolls) and deals damage as a dagger of its size (crit ×2).', ammunition: true, ammunition_type: 'repeating crossbow', source_id: core_rulebook.id)

shuriken = Weapon.create!(name: 'Shuriken', category: 'Ranged', proficiency: 'Exotic', weapon_type: 'Range', price_in_gp: 0.2, num_of_dice: 1, damage_dice: 2, critical: 2, critical_range: 20, range: 10, thrown: true, weight: 0.1, damage_type: 'Piercing', source_id: core_rulebook.id, description: 'A shuriken is a small piece of metal with sharpened edges, designed for throwing.

A shuriken can’t be used as a melee weapon.

Although they are thrown weapons, shuriken are treated as ammunition for the purposes of drawing them and crafting masterwork or otherwise special versions of them, and of what happens to them after they are thrown.', ammunition: true, ammunition_type: "Shuriken")
  WeaponWeaponQuality.create!(weapon_id: shuriken.id, weapon_quality_id: monk_quality.id)
  WeaponWeaponGroup.create!(weapon_id: shuriken.id, weapon_group_id: thrown.id)
  WeaponWeaponGroup.create!(weapon_id: shuriken.id, weapon_group_id: monk_group.id)
  WeaponHand.create!(weapon_id: shuriken.id, hands: "One")

# IDENTIFIER = Weapon.create!(name: '', category: '', proficiency: '', weapon_type: '', price_in_gp: 0, num_of_dice: 1, damage_dice: 6, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 1, damage_type: '', source_id: SOURCE.id, description: '')
  # WeaponWeaponQuality.create!(weapon_id: IDENTIFIER.id, weapon_quality_id: QUALITY.id)
  # WeaponWeaponGroup.create!(weapon_id: IDENTIFIER.id, weapon_group_id: GROUP.id)

# IDENTIFIER = Weapon.create!(name: '', category: '', proficiency: '', weapon_type: '', price_in_gp: 0, num_of_dice: 1, damage_dice: 6, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 1, damage_type: '', source_id: SOURCE.id, description: '')
  # WeaponWeaponQuality.create!(weapon_id: IDENTIFIER.id, weapon_quality_id: QUALITY.id)
  # WeaponWeaponGroup.create!(weapon_id: IDENTIFIER.id, weapon_group_id: GROUP.id)

# IDENTIFIER = Weapon.create!(name: '', category: '', proficiency: '', weapon_type: '', price_in_gp: 0, num_of_dice: 1, damage_dice: 6, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 1, damage_type: '', source_id: SOURCE.id, description: '')
  # WeaponWeaponQuality.create!(weapon_id: IDENTIFIER.id, weapon_quality_id: QUALITY.id)
  # WeaponWeaponGroup.create!(weapon_id: IDENTIFIER.id, weapon_group_id: GROUP.id)

# IDENTIFIER = Weapon.create!(name: '', category: '', proficiency: '', weapon_type: '', price_in_gp: 0, num_of_dice: 1, damage_dice: 6, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 1, damage_type: '', source_id: SOURCE.id, description: '')
  # WeaponWeaponQuality.create!(weapon_id: IDENTIFIER.id, weapon_quality_id: QUALITY.id)
  # WeaponWeaponGroup.create!(weapon_id: IDENTIFIER.id, weapon_group_id: GROUP.id)

# IDENTIFIER = Weapon.create!(name: '', category: '', proficiency: '', weapon_type: '', price_in_gp: 0, num_of_dice: 1, damage_dice: 6, critical: 2, critical_range: 20, range: 0, thrown: false, weight: 1, damage_type: '', source_id: SOURCE.id, description: '')
  # WeaponWeaponQuality.create!(weapon_id: IDENTIFIER.id, weapon_quality_id: QUALITY.id)
  # WeaponWeaponGroup.create!(weapon_id: IDENTIFIER.id, weapon_group_id: GROUP.id)


puts "Weapons Created!!"

# /////////////////////////////////////////
# <-*-*-----*-*-*- Armors!-*-*-*-----*-*->
# /////////////////////////////////////////

padded = Armor.create!(name: 'Padded', proficiency: 'Light', price_in_gp: 5, bonus: 1, bonus_type: 'Armor', max_dex_bonus: 8, armor_check_penalty: 0, arcane_spell_failure: 5, spell_30: 30, spell_20: 20, don: "1 minute", don_hastily: "5 rounds", remove: "1 minute", weight: 10, source_id: core_rulebook.id, description: 'More than simple clothing, padded armor combines heavy, quilted cloth and layers of densely packed stuffing to create a cheap and basic protection. It is typically worn by those not intending to face lethal combat or those who wish their maneuverability to be impacted as little as possible.')

leather = Armor.create!(name: 'Leather', proficiency: 'Light', price_in_gp: 10, bonus: 2, bonus_type: 'Armor', max_dex_bonus: 6, armor_check_penalty: 0, arcane_spell_failure: 10, spell_30: 30, spell_20: 20, don: "1 minute", don_hastily: "5 rounds", remove: "1 minute", weight: 15, source_id: core_rulebook.id, description: 'Leather armor is made up of multiple overlapping pieces of leather, boiled to increase their natural toughness and then deliberately stitched together. Although not as sturdy as metal armor, the flexibility it allows wearers makes it among the most widely used types of armor.')

studded_leather = Armor.create!(name: 'Studded Leather', proficiency: 'Light', price_in_gp: 25, bonus: 3, bonus_type: 'Armor', max_dex_bonus: 5, armor_check_penalty: -1, arcane_spell_failure: 15, spell_30: 30, spell_20: 20, don: "1 minute", don_hastily: "5 rounds", remove: "1 minute", weight: 20, source_id: core_rulebook.id, description: 'An improved form of leather armor, studded leather armor is covered with dozens of metal protuberances. While these rounded studs offer little defense individually, in the numbers they are arrayed in upon such armor, they help catch lethal edges and channel them away from vital spots. The rigidity caused by the additional metal does, however, result in less mobility than is afforded by a suit of normal leather armor.')

chain_shirt = Armor.create!(name: 'Chain Shirt', proficiency: 'Light', price_in_gp: 100, bonus: 4, bonus_type: 'Armor', max_dex_bonus: 4, armor_check_penalty: -2, arcane_spell_failure: 20, spell_30: 30, spell_20: 20, don: "1 minute", don_hastily: "5 rounds", remove: "1 minute", weight: 25, source_id: core_rulebook.id, description: 'Covering the torso, this shirt is made up of thousands of interlocking metal rings.')

haramaki = Armor.create!(name: 'Haramaki', proficiency: 'Light', price_in_gp: 3, bonus: 1, bonus_type: 'Armor', max_dex_bonus: 99, armor_check_penalty: 0, arcane_spell_failure: 20, spell_30: 30, spell_20: 20, don: "1 minute", don_hastily: "5 rounds", remove: "1 minute", weight: 1, source_id: ultimate_combat.id, description: 'Also called a belly-warmer, a haramaki is a simple silken sash lined with chainmail or articulated metal plates and tied about the stomach to protect it.')

hide = Armor.create!(name: 'Hide', proficiency: 'Medium', price_in_gp: 15, bonus: 4, bonus_type: 'Armor', max_dex_bonus: 4, armor_check_penalty: -3, arcane_spell_failure: 20, spell_30: 20, spell_20: 15, don: "1 minute", don_hastily: "5 rounds", remove: "1 minute", weight: 25, source_id: core_rulebook.id, description: 'Hide armor is made from the tanned skin of particularly thick-hided beasts, stitched with either multiple overlapping layers of crude leather or exterior pieces of leather stuffed with padding or fur. Damage to the armor is typically repaired by restitching gashes or adding new pieces of hide, giving the most heavily used suits a distinctively patchwork quality.')

scale_mail = Armor.create!(name: 'Scale Mail', proficiency: 'Medium', price_in_gp: 50, bonus: 5, bonus_type: 'Armor', max_dex_bonus: 3, armor_check_penalty: -4, arcane_spell_failure: 25, spell_30: 20, spell_20: 15, don: "4 minutes", don_hastily: "1 minute", remove: "1 minute", weight: 30, source_id: core_rulebook.id, description: 'Scale mail is made up of dozens of small, overlapping metal plates. Similar to both splint mail and banded mail, scalemail has a flexible arrangement of scales in an attempt to avoid hindering the wearer’s mobility, but at the expense of omitting additional protective layers of armor. A suit of scale mail includes gauntlets.')

breastplate = Armor.create!(name: 'Breastplate', proficiency: 'Medium', price_in_gp: 200, bonus: 6, bonus_type: 'Armor', max_dex_bonus: 3, armor_check_penalty: -4, arcane_spell_failure: 25, spell_30: 20, spell_20: 15, don: "4 minutes", don_hastily: "1 minute", remove: "1 minute", weight: 30, source_id: core_rulebook.id, description: 'A breastplate protects a wearer’s torso with a single piece of sculpted metal, similar to the core piece of a suit of full plate. Despite its sturdiness, its inflexibility and open back make it inferior to complete suits of metal armor, but still an improvement over most non-metal armors.')

chainmail = Armor.create!(name: 'Chainmail', proficiency: 'Medium', price_in_gp: 150, bonus: 6, bonus_type: 'Armor', max_dex_bonus: 2, armor_check_penalty: -5, arcane_spell_failure: 30, spell_30: 20, spell_20: 15, don: "4 minutes", don_hastily: "1 minute", remove: "1 minute", weight: 40, source_id: core_rulebook.id, description: 'Unlike a chain shirt, which covers only the chest, chainmail protects the wearer with a complete mesh of chain links that cover the torso and arms, and extends below the waist. Multiple interconnected pieces offer additional protection over vital areas. The suit includes gauntlets.')

banded_mail = Armor.create!(name: 'Banded Mail', proficiency: 'Heavy', price_in_gp: 250, bonus: 7, bonus_type: 'Armor', max_dex_bonus: 1, armor_check_penalty: -6, arcane_spell_failure: 35, spell_30: 20, spell_20: 15, don: "4 minutes", don_hastily: "1 minute", remove: "1 minute", weight: 35, source_id: core_rulebook.id, description: 'Banded mail is made up of overlapping strips of metal, fastened to a sturdy backing of leather and chain. The size of the metal plates, interconnected metal bands, and layers of underlying armor make it a more significant defense than similar armors, like scale mail or splint mail.')

splint_mail = Armor.create!(name: 'Splint Mail', proficiency: 'Heavy', price_in_gp: 200, bonus: 7, bonus_type: 'Armor', max_dex_bonus: 0, armor_check_penalty: -7, arcane_spell_failure: 40, spell_30: 20, spell_20: 15, don: "4 minutes", don_hastily: "1 minute", remove: "1 minute", weight: 45, source_id: core_rulebook.id, description: 'Splint mail is made up of overlapping layers of metal strips attached to a backing of leather or sturdy fabric. These splints are of greater size and durability than those that compose a suit of scale mail, improving the protection they afford the wearer, but at the cost of flexibility. A suit of splint mail includes gauntlets.')

half_plate = Armor.create!(name: 'Half-Plate', proficiency: 'Heavy', price_in_gp: 600, bonus: 8, bonus_type: 'Armor', max_dex_bonus: 0, armor_check_penalty: -7, arcane_spell_failure: 40, spell_30: 20, spell_20: 15, don: "4 minutes, with help", don_hastily: "4 minutes", remove: "1d4+1 minutes", weight: 50, source_id: core_rulebook.id, description: 'Half-plate armor combines elements of full plate and chainmail, incorporating several sizable plates of sculpted metal with an underlying mesh of chain links. While this suit protects vital areas with several layers of armor, it is not sculpted to a single individual’s frame, reducing its wearer’s mobility even more than a suit of full plate. Half-plate armor includes gauntlets and a helm.')

full_plate = Armor.create!(name: 'Full Plate', proficiency: 'Heavy', price_in_gp: 1500, bonus: 9, bonus_type: 'Armor', max_dex_bonus: 1, armor_check_penalty: -6, arcane_spell_failure: 35, spell_30: 20, spell_20: 15, don: "4 minutes, with help", don_hastily: "4 minutes", remove: "1d4+1 minutes", weight: 50, source_id: core_rulebook.id, description: 'This metal suit comprises multiple pieces of interconnected and overlaying metal plates, incorporating the benefits of numerous types of lesser armor. A complete suit of full plate (or platemail, as it is often called) includes gauntlets, heavy leather boots, a visored helmet, and a thick layer of padding that is worn underneath the armor. Each suit of full plate must be individually fitted to its owner by a master armorsmith, although a captured suit can be resized to fit a new owner at a cost of 200 to 800 (2d4 100) gold pieces.')

buckler = Armor.create!(name: 'Buckler', proficiency: 'Shield', price_in_gp: 5, bonus: 1, bonus_type: 'Shield', max_dex_bonus: nil, armor_check_penalty: -1, arcane_spell_failure: 5, spell_30: nil, spell_20: nil, don: "1 move action", don_hastily: nil, remove: "1 move action", weight: 5, source_id: core_rulebook.id, description: 'This small metal shield is worn strapped to your forearm. You can use a bow or crossbow without penalty while carrying it. You can also use your shield arm to wield a weapon (whether you are using an offhand weapon or using your off hand to help wield a two-handed weapon), but you take a –1 penalty on attack rolls while doing so. This penalty stacks with those that may apply for fighting with your off hand and for fighting with two weapons. In any case, if you use a weapon in your off hand, you lose the buckler’s Armor Class bonus until your next turn. You can cast a spell with somatic components using your shield arm, but you lose the buckler’s Armor Class bonus until your next turn. You can’t make a shield bash with a buckler.')

light_steel_shield = Armor.create!(name: 'Light Steel Shield', proficiency: 'Shield', price_in_gp: 9, bonus: 1, bonus_type: 'Shield', max_dex_bonus: nil, armor_check_penalty: -1, arcane_spell_failure: 5, spell_30: nil, spell_20: nil, don: "1 move action", don_hastily: nil, remove: "1 move action", weight: 6, source_id: core_rulebook.id, description: 'You can bash an opponent with a light shield. See “shield, light” on Table: Weapons for the damage dealt by a shield bash. Used this way, a light shield is a martial bludgeoning weapon. For the purpose of penalties on attack rolls, treat a light shield as a light weapon. If you use your shield as a weapon, you lose its Armor Class bonus until your next turn. An enhancement bonus on a shield does not improve the effectiveness of a shield bash made with it, but the shield can be made into a magic weapon in its own right.', damage_dice: 3, num_of_dice: 1, weapon_proficiency: "Martial", weapon_category: "Light")

# IDENTIFIER = Armor.create!(name: '', proficiency: '', price_in_gp: 0, bonus: 0, bonus_type: '', max_dex_bonus: 0, armor_check_penalty: 0, arcane_spell_failure: 0, spell_30: 30, spell_20: 20, don: "", don_hastily: "", remove: "", weight: 1, source_id: SOURCE.id, description: '')

# IDENTIFIER = Armor.create!(name: '', proficiency: '', price_in_gp: 0, bonus: 0, bonus_type: '', max_dex_bonus: 0, armor_check_penalty: 0, arcane_spell_failure: 0, spell_30: 30, spell_20: 20, don: "", don_hastily: "", remove: "", weight: 1, source_id: SOURCE.id, description: '')

# IDENTIFIER = Armor.create!(name: '', proficiency: '', price_in_gp: 0, bonus: 0, bonus_type: '', max_dex_bonus: 0, armor_check_penalty: 0, arcane_spell_failure: 0, spell_30: 30, spell_20: 20, don: "", don_hastily: "", remove: "", weight: 1, source_id: SOURCE.id, description: '')

# IDENTIFIER = Armor.create!(name: '', proficiency: '', price_in_gp: 0, bonus: 0, bonus_type: '', max_dex_bonus: 0, armor_check_penalty: 0, arcane_spell_failure: 0, spell_30: 30, spell_20: 20, don: "", don_hastily: "", remove: "", weight: 1, source_id: SOURCE.id, description: '')

# IDENTIFIER = Armor.create!(name: '', proficiency: '', price_in_gp: 0, bonus: 0, bonus_type: '', max_dex_bonus: 0, armor_check_penalty: 0, arcane_spell_failure: 0, spell_30: 30, spell_20: 20, don: "", don_hastily: "", remove: "", weight: 1, source_id: SOURCE.id, description: '')

# IDENTIFIER = Armor.create!(name: '', proficiency: '', price_in_gp: 0, bonus: 0, bonus_type: '', max_dex_bonus: 0, armor_check_penalty: 0, arcane_spell_failure: 0, spell_30: 30, spell_20: 20, don: "", don_hastily: "", remove: "", weight: 1, source_id: SOURCE.id, description: '')

# IDENTIFIER = Armor.create!(name: '', proficiency: '', price_in_gp: 0, bonus: 0, bonus_type: '', max_dex_bonus: 0, armor_check_penalty: 0, arcane_spell_failure: 0, spell_30: 30, spell_20: 20, don: "", don_hastily: "", remove: "", weight: 1, source_id: SOURCE.id, description: '')

# IDENTIFIER = Armor.create!(name: '', proficiency: '', price_in_gp: 0, bonus: 0, bonus_type: '', max_dex_bonus: 0, armor_check_penalty: 0, arcane_spell_failure: 0, spell_30: 30, spell_20: 20, don: "", don_hastily: "", remove: "", weight: 1, source_id: SOURCE.id, description: '')

# IDENTIFIER = Armor.create!(name: '', proficiency: '', price_in_gp: 0, bonus: 0, bonus_type: '', max_dex_bonus: 0, armor_check_penalty: 0, arcane_spell_failure: 0, spell_30: 30, spell_20: 20, don: "", don_hastily: "", remove: "", weight: 1, source_id: SOURCE.id, description: '')

tower_shield = Armor.create!(name: 'Tower Shield', proficiency: 'Shield', price_in_gp: 30, bonus: 4, bonus_type: 'Shield', max_dex_bonus: 2, armor_check_penalty: -10, arcane_spell_failure: 50, spell_30: nil, spell_20: nil, don: "1 move action", don_hastily: nil, remove: "1 move action", weight: 45, source_id: core_rulebook.id, description: 'In most situations, a tower shield provides the indicated shield bonus to your Armor Class. As a standard action, however, you can use a tower shield to grant you total cover until the beginning of your next turn. When using a tower shield in this way, you must choose one edge of your space. That edge is treated as a solid wall for attacks targeting you only. You gain total cover for attacks that pass through this edge and no cover for attacks that do not pass through this edge (see Combat). The shield does not, however, provide cover against targeted spells; a spellcaster can cast a spell on you by targeting the shield you are holding. You cannot bash with a tower shield, nor can you use your shield hand for anything else.

When employing a tower shield in combat, you take a –2 penalty on attack rolls because of the shield’s encumbrance.')


armor_spikes = Armor.create!(name: 'Armor Spikes', proficiency: '', price_in_gp: 50, bonus: 0, bonus_type: '', max_dex_bonus: 0, armor_check_penalty: 0, arcane_spell_failure: 0, spell_30: 30, spell_20: 20, don: "", don_hastily: "", remove: "", weight: 10, source_id: core_rulebook.id, description: 'Armor spikes deal extra piercing damage (see “spiked armor” on Table: Weapons) on a successful grapple attack. The spikes count as a martial weapon. If you are not proficient with them, you take a –4 penalty on grapple checks when you try to use them. You can also make a regular melee attack (or off-hand attack) with the spikes, and they count as a light weapon in this case. (You can’t also make an attack with armor spikes if you have already made an attack with another off-hand weapon, and vice versa.) An enhancement bonus to a suit of armor does not improve the spikes’ effectiveness, but the spikes can be made into magic weapons in their own right.', extra: true, bonus_price_in_gp: true)

puts "Armor Created!"

# /////////////////////////////////////////
# <-*-*-----*-*-*- Users!-*-*-*-----*-*->
# /////////////////////////////////////////

admin = User.create!(username: "jack", password: "ey", admin: true, skillset_id: dmc.id)
cole = User.create!(username: "cole", password: "password", admin: false, skillset_id: dmc.id)
jeff = User.create!(username: "jeff", password: "password", admin: false, skillset_id: dmc.id)
michael = User.create!(username: "michael", password: "password", admin: false, skillset_id: dmc.id)
clare = User.create!(username: "clare", password: "password", admin: false, skillset_id: dmc.id)
iggy = User.create!(username: "iggy", password: "password", admin: false, skillset_id: dmc.id)
jenn = User.create!(username: "jenn", password: "password", admin: false, skillset_id: dmc.id)
sarah = User.create!(username: "sarah", password: "password", admin: false, skillset_id: dmc.id)
scott = User.create!(username: "scott", password: "password", admin: false, skillset_id: dmc.id)

# clare_voyance = User.create!(username: "clare_voyance", password: "password", admin: false, skillset_id: ravnica_custom.id)
# adam1 = User.create!(username: "Adam1", password: "password", admin: false, skillset_id: ravnica_custom.id)
# bluegdec1 = User.create!(username: "bluegdec1", password: "password", admin: false, skillset_id: ravnica_custom.id)
# just_TDUBB_it = User.create!(username: "just TDUBB it", password: "password", admin: false, skillset_id: ravnica_custom.id)
# nlscott744 = User.create!(username: "nlscott744", password: "password", admin: false, skillset_id: ravnica_custom.id)
# snegerj = User.create!(username: "snegerj", password: "password", admin: false, skillset_id: ravnica_custom.id)




# /////////////////////////////////////////
# <-*-*-----*-*-*- Races!-*-*-*-----*-*->
# /////////////////////////////////////////

aasimar = Race.create!(name: "Aasimar", speed: 30, size: "Medium", img_url: "https://vignette.wikia.nocookie.net/phaeselis/images/8/8e/Angel_Avatar.jpg", source_id: advanced_race_guide.id, description: "Aasimars are humans with a significant amount of celestial or other good outsider blood in their ancestry. While not always benevolent, aasimars are more inclined toward acts of kindness rather than evil, and they gravitate toward faiths or organizations associated with celestials. Aasimar heritage can lie dormant for generations, only to appear suddenly in the child of two apparently human parents. Most societies interpret aasimar births as good omens, though it must be acknowledged that some aasimars take advantage of the reputation of their kind, brutally subverting the expectations of others with acts of terrifying cruelty or abject venality. “It’s always the one you least suspect” is the axiom these evil aasimars live by, and they often lead double lives as upstanding citizens or false heroes, keeping their corruption well hidden. Thankfully, these few are the exception and not the rule.

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

print "Aasimar created! \r"

kitsune = Race.create!(name: "Kitsune", speed: 30, size: "Medium", img_url: "https://db4sgowjqfwig.cloudfront.net/assets/254331/Kitsune.jpg", source_id: advanced_race_guide.id, description: "Kitsune, or fox folk, are vulpine shapeshifters known for their love of both trickery and art. Kitsune possess two forms: that of an attractive human of slender build with salient eyes, and their true form of an anthropomorphic fox. Despite an irrepressible penchant for deception, kitsune prize loyalty and make true companions. They delight in the arts, particularly riddles and storytelling, and settle in ancestral clans, taking their wisdom from both the living and spirits.

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
kitsune_magic_kitsune = RacialTrait.create!(name: "Kitsune Magic", race_id: kitsune.id, description: "Kitsune add +1 to the DC of any saving throws against enchantment spells that they cast. Kitsune with a Charisma score of 11 or higher gain the following spell-like ability: 3/day—dancing lights (caster level equals the kitsune’s level).")
RacialTrait.create!(name: "Natural Weapons", race_id: kitsune.id, description: "In her natural form, a kitsune has a bite attack that deals 1d4 points of damage.")
RacialTrait.create!(name: "Low-Light Vision", race_id: kitsune.id, description: "Kitsune can see twice as far as humans in conditions of dim light.")
# RacialTrait.create!(name: "", race_id: , description: "")

fast_shifter_kitsune = AlternateRacialTrait.create!(race_id: kitsune.id, name: "Fast Shifter", description: "You were born with an innate talent for switching between your natural forms. Using your racial change shape ability is a move action instead of a standard action. This racial trait replaces kitsune magic.", source_id: advanced_race_guide.id)
  AlternateTraitReplaceRacialTrait.create!(alternate_racial_trait_id: fast_shifter_kitsune.id, racial_trait_id: kitsune_magic_kitsune.id)

print "Kitsune created! \r"

grippli = Race.create!(name: "Grippli", speed: 30, size: "Small", img_url: "https://i.pinimg.com/originals/d2/a7/e8/d2a7e8b34c06bf381e08f3eadfda781d.png", source_id: advanced_race_guide.id, description: "Gripplis stand just over 2 feet tall and have mottled green-and-brown skin. Most gripplis are primitive hunter gatherers, living on large insects and fish found near their treetop homes, and are unconcerned about events outside their swamps. The rare grippli who leaves the safety of the swamp tends to be a ranger or alchemist seeking to trade for metals and gems.")

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

print "Grippli created! \r"

orc = Race.create!(name: "Orc", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/55/3a/df/553adf14108659b44c5e67642ce9cf5b.jpg", source_id: advanced_race_guide.id, description: "Orcs are aggressive, callous, and domineering. Bullies by nature, they respect strength and power as the highest virtues. On an almost instinctive level, orcs believe they are entitled to anything they want unless someone stronger can stop them from seizing it. They rarely exert themselves off the battlefield except when forced to do so; this attitude stems not just from laziness but also from an ingrained belief that work should trickle down through the pecking order until it falls upon the shoulders of the weak. They take slaves from other races, orc men brutalize orc women, and both abuse children and elders, on the grounds that anyone too feeble to fight back deserves little more than a life of suffering. Surrounded at all times by bitter enemies, orcs cultivate an attitude of indifference to pain, vicious tempers, and a fierce willingness to commit unspeakable acts of vengeance against anyone who dares to defy them.

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

print "Orc created! \r"

changeling = Race.create!(name: "Changeling", speed: 30, size: "Medium", img_url: "https://pathfinderwiki.com/mediawiki/images/7/7d/Siova_Stormhilt.jpg", source_id: advanced_race_guide.id, description: "Changelings are the offspring of hags and their lovers taken through magic or madness. Dropped off on doorsteps of prospective foster parents, changelings are raised by strangers. Typically tall, slender, dark haired, and attractive, changelings otherwise resemble their fathers’ race. They are always female, and their mismatched colored eyes and abnormally pale skin hint at their true heritage. At puberty, changelings receive “the call,” a hypnotic spiritual voice that beckons them to travel and discover their true origins. Changelings who ignore this call choose their own destiny; those who heed it discover their “mother” and may come into great power by transforming into hags themselves.")

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

print "Changeling created! \r"

samsaran = Race.create!(name: "Samsaran", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/9c/ed/eb/9cedeb9c454258b301f8912c0f229801.png", source_id: advanced_race_guide.id, description: "Mysterious humanoids with pale blue flesh and transparent blood like the waters of a trickling brook, samsarans are ancient creatures even in their youth. A samsaran’s life is not a linear progression from birth to death, but rather a circle of birth to death to rebirth. Whenever a samsaran dies, it reincarnates anew as a young samsaran to live a new life. Her past memories remain vague and indistinct—and each new incarnation is as different a creature and personality as a child is to a parent. Samsarans appear similar to humans, with dark hair and solid white eyes with no pupils or irises. Skin tones are generally shades of light blue.

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

print "Samsaran created! \r"

half_elf = Race.create!(name: "Half-elf", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/9e/a7/89/9ea7895e06d5bfc3dfafbc857a658783.png", source_id: core_rulebook.id, description: "Elves have long drawn the covetous gazes of other races. Their generous lifespans, magical affinity, and inherent grace each contribute to the admiration or bitter envy of their neighbors. Of all their traits, however, none so entrance their human associates as their beauty. Since the two races first came into contact with each other, humans have held up elves as models of physical perfection, seeing in these fair folk idealized versions of themselves. For their part, many elves find humans attractive despite their comparatively barbaric ways, and are drawn to the passion and impetuosity with which members of the younger race play out their brief lives.

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

print "Half-Elf created! \r"

vine_leshy = Race.create!(name: "Vine Leshy", speed: 20, size: "Small", img_url: "https://i.pinimg.com/originals/95/2f/4a/952f4a813b92fdde2da083dc934c36b3.png", source_id: ultimate_wilderness.id, description: "Vine leshys are born by ritual, called forth when a druid channels a nature spirit into a plant’s form. The nature spirit that answers the call for a vine leshy creation ritual is always one that has keenly felt the influence of mortal beings. Compared to other leshys, vine leshys have an easier time relating to non-plant creatures and a deeper sense of curiosity about the wonders of the natural world beyond those plants closely related to them, as well as a fascination with the societies of humans and other creatures.

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
pass_without_trace_vine_leshy = RacialTrait.create!(name: "Pass Without Trace", race_id: vine_leshy.id, description: "Vine leshys have pass without trace as a constant spell-like ability (caster level 2nd).")
RacialTrait.create!(name: "Change Shape", race_id: vine_leshy.id, description: "Vine leshys can transform into vines, with results similar to tree shape. In this form, the leshy appears as a particularly healthy Small vine. The leshy can assume plant form or revert to its true form as a swift action.")
RacialTrait.create!(name: "Verdant Burst", race_id: vine_leshy.id, description: "When slain, a vine leshy explodes in a burst of fertile energies. All plant creatures within 30 feet of the slain leshy regain hit 1d8 points, and vines quickly infest the area. If the terrain can support vines, the undergrowth is dense enough to make the region into difficult terrain for 24 hours, after which the plant life diminishes to a normal level; otherwise, this plant life has no significant effect on movement and withers and dies within an hour.")
unassuming_foliage_vine_leshy = RacialTrait.create!(name: "Unassuming Foliage", race_id: vine_leshy.id, description: "Vine leshys gain a +4 racial bonus on Stealth checks in forests.")
climber_vine_leshy = RacialTrait.create!(name: "Climber", race_id: vine_leshy.id, description: "Vine leshys gain a +2 racial bonus on Climb checks.")
# RacialTrait.create!(name: "", race_id: , description: "")

grapevine_vine_leshy = AlternateRacialTrait.create!(race_id: vine_leshy.id, name: "Grapevine", description: "A vine leshy made from a grapevine can produce magically infused fruit that can heal her allies. She can cast goodberry once per day as a spell-like ability, with a caster level equal to her character level. This replaces pass without trace.", source_id: ultimate_wilderness.id)
  AlternateTraitReplaceRacialTrait.create!(alternate_racial_trait_id: grapevine_vine_leshy.id, racial_trait_id: pass_without_trace_vine_leshy.id)

swamp_leshy_vine_leshy = AlternateRacialTrait.create!(race_id: vine_leshy.id, name: "Swamp Leshy", description: "Some vine leshys are made from plants that naturally grow in swamps. These leshys gain a +2 racial bonus on Swim checks and a +4 racial bonus on Stealth checks in swamps. This replaces climber and alters unassuming foliage.", source_id: ultimate_wilderness.id)
  AlternateTraitReplaceRacialTrait.create!(alternate_racial_trait_id: swamp_leshy_vine_leshy.id, racial_trait_id: climber_vine_leshy.id)
  AlternateTraitReplaceRacialTrait.create!(alternate_racial_trait_id: swamp_leshy_vine_leshy.id, racial_trait_id: unassuming_foliage_vine_leshy.id)


print "Vine Leshy created! \r"

human = Race.create!(name: 'Human', speed: 30, size: 'Medium', img_url: 'https://i.pinimg.com/474x/d1/a3/7d/d1a37d1463e284fe516ccd48ba0d46af.jpg', source_id: core_rulebook.id, description: 'Humans possess exceptional drive and a great capacity to endure and expand, and as such are currently the dominant race in the world. Their empires and nations are vast, sprawling things, and the citizens of these societies carve names for themselves with the strength of their sword arms and the power of their spells. Humanity is best characterized by its tumultuousness and diversity, and human cultures run the gamut from savage but honorable tribes to decadent, devil-worshiping noble families in the most cosmopolitan cities. Humans’ curiosity and ambition often triumph over their predilection for a sedentary lifestyle, and many leave their homes to explore the innumerable forgotten corners of the world or lead mighty armies to conquer their neighbors, simply because they can.

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

print "Human created! \r"

tiefling = Race.create!(name: 'Tiefling', speed: 30, size: 'Medium', img_url: 'https://vignette.wikia.nocookie.net/thelostfrontier/images/b/b7/Female_nephilim.jpg', source_id: advanced_race_guide.id, description: 'Simultaneously more and less than mortal, tieflings are the offspring of humans and fiends. With otherworldly blood and traits to match, tieflings are often shunned and despised out of reactionary fear. Most tieflings never know their fiendish sire, as the coupling that produced their curse occurred generations earlier. The taint is long-lasting and persistent, often manifesting at birth or sometimes later in life, as a powerful, though often unwanted, boon. Despite their fiendish appearance and netherworld origins, tieflings have a human’s capacity of choosing their fate, and while many embrace their dark heritage and side with fiendish powers, others reject their darker predilections. Though the power of their blood calls nearly every tiefling to fury, destruction, and wrath, even the spawn of a succubus can become a saint and the grandchild of a pit fiend an unsuspecting hero.

Physical Description: No two tieflings look alike; the fiendish blood running through their veins manifests inconsistently, granting them an array of fiendish traits. One tiefling might appear as a human with small horns, a barbed tail, and oddly colored eyes, while another might manifest a mouth of fangs, tiny wings, and claws, and yet another might possess the perpetual smell of blood, foul incenses, and brimstone. Typically, these qualities hearken back in some way to the manner of fiend that spawned the tiefling’s bloodline, but even then the admixture of human and fiendish blood is rarely ruled by sane, mortal laws, and the vast flexibility it produces in tieflings is a thing of wonder, running the gamut from oddly beautiful to utterly terrible.

Society: Tieflings on the Material Plane rarely create their own settlements and holdings. Instead, they live on the fringes of the land where they were born or choose to settle. Most societies view tieflings as aberrations or curses, but in cultures where there are frequent interactions with summoned fiends, and especially where the worship of demons, devils, or other evil outsiders is legal or obligatory, tieflings might be much more populous and accepted, even cherished as blessings of their fiendish overlords. Tieflings seldom see another of their own kind, and thus they usually simply adopt the culture and mannerisms of their human parents. On other planes, tieflings form enclaves of their own kind. But often such enclaves are less than harmonious—the diversity of tiefling forms and philosophies is an inherent source of conflict between members of the race, and cliques and factions constantly form in an ever-shifting hierarchy where only the most opportunistic or devious gain advantage. Only those of common bloodlines or those who manage to divorce their worldview from the inherently selfish, devious, and evil nature of their birth manage to find true acceptance, camaraderie, and common ground among others of their kind.

Relations: Tieflings face a significant amount of prejudice from most other races, who view them as fiend-spawn, seeds of evil, monsters, and lingering curses placed upon the world. Far too often, civilized races shun or marginalize them, while more monstrous ones simply fear and reject them unless forced or cowed into acceptance. But half-elves, half-orcs, fetchlings and—most oddly—aasimars tend to view them as kindred spirits who are too often rejected or who don’t fit into most societies by virtue of their birth. The widespread assumption that tieflings are innately evil—ill-founded though it may be—prevents many from easily fitting into most cultures on the Material Plane except in exceedingly cosmopolitan or planar-influenced nations.

Alignment and Religion: Despite their fiendish heritage and the insidious influence of prejudice, tieflings can be of any alignment. Many of them fall prey to the dark desires that haunt their psyches, and give in to the seduction of the whispering evil within, yet others steadfastly reject their origins and actively fight against evil lures and the negative assumptions they face from others by performing acts of good. Most, however, strive to simply find their own way in the world, though they tend to adopt a very amoral, neutral view when they do. Though many creatures just assume that tieflings worship devils and demons, their religious views are as varied as their physical forms. Individual tieflings worship all manner of deities, but they are just as likely to shun religion all together. Those who give in to the dark whispers that haunt the psyche of all tieflings serve all manner of powerful fiends.

Adventurers: Tieflings rarely integrate into the mortal societies they call home. Drawn to the adventuring life as a method of escape, they hope to make a better life for themselves, to prove their freedom from their blood’s taint, or to punish a world that fears and rejects them. Tieflings make skilled rogues, powerful wizards and magi, and especially puissant sorcerers as their potent blood empowers them. Those who succumb to the evil within often become powerful clerics of fiendish powers.

Male Names: Baru, Dellisar, Maldrek, Molos, Sarvin, Shoremoth, Temerith, Voren, Zoren.

Female Names: Allizsah, Indranna, Kasidra, Kilarra, Mellisan, Mordren, Nisha.')

RaceAbilityScoreModifier.create!(race_id: tiefling.id, ability_score: "Dexterity", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: tiefling.id, ability_score: "Intelligence", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: tiefling.id, ability_score: "Charisma", bonus: -2)

RacialTrait.create!(name: 'Type', race_id: tiefling.id, description: 'Tieflings are outsiders with the native subtype.')
RacialTrait.create!(name: 'Languages', race_id: tiefling.id, description: 'Tieflings begin play speaking Common and either Abyssal or Infernal. Tieflings with high intelligence scores can choose from the following: Abyssal, Draconic, Dwarven, Elven, Gnome, Goblin, Halfling, Infernal, and Orc.')
fiendish_resistance_tiefling = RacialTrait.create!(name: 'Fiendish Resistance', race_id: tiefling.id, description: 'Tieflings have cold resistance 5, electricity resistance 5, and fire resistance 5.')
RacialTrait.create!(name: 'Skilled', race_id: tiefling.id, description: 'Tieflings gain a +2 racial bonus on Bluff and Stealth checks.')
RacialTrait.create!(name: 'Spell-like Ability', race_id: tiefling.id, description: 'Tieflings can use darkness once per day as a spell-like ability. The caster level for this ability equals the tiefling’s class level.')
RacialTrait.create!(name: 'Darkvision', race_id: tiefling.id, description: 'Tieflings can see perfectly in the dark for up to 60 feet.')
fiendish_sorcery_tiefling = RacialTrait.create!(name: 'Fiendish Sorcery', race_id: tiefling.id, description: 'Tiefling sorcerers with the Abyssal or Infernal bloodlines treat their Charisma score as 2 points higher for all sorcerer class abilities.')

prehensile_tail_tiefling = AlternateRacialTrait.create!(race_id: tiefling.id, name: "Prehensile Tail", description: "Many tieflings have tails, but some have long, flexible tails that can be used to carry items. While they cannot wield weapons with their tails, they can use them to retrieve small, stowed objects carried on their persons as a swift action. This racial trait replaces fiendish sorcery.", source_id: advanced_race_guide.id)
  AlternateTraitReplaceRacialTrait.create!(alternate_racial_trait_id: prehensile_tail_tiefling.id, racial_trait_id: fiendish_sorcery_tiefling.id)

scaled_skin_tiefling = AlternateRacialTrait.create!(race_id: tiefling.id, name: "Scaled Skin", description: "The skin of these tieflings provides some energy resistance, but is also as hard as armor. Choose one of the following energy types: cold, electricity, or fire. A tiefling with this trait gains resistance 5 in the chosen energy type and also gains a +1 natural armor bonus to AC. This racial trait replaces fiendish resistance.", source_id: advanced_race_guide.id)
  AlternateTraitReplaceRacialTrait.create!(alternate_racial_trait_id: scaled_skin_tiefling.id, racial_trait_id: fiendish_resistance_tiefling.id)

print "Tiefling created! \r"

wyvaran = Race.create!(name: "Wyvaran", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/15/be/b6/15beb63f1d370f3a850533238965aa4e.png", source_id: bestiary_4.id, description: "These creatures are the result of magical draconic experiments at crossbreeding wyverns and kobolds. Wyvarans are fiercely territorial creatures loyal to their kin and tribe, and allow no interlopers into their lands without good reason or proper tribute. Each defends its personal property, and seeks revenge on any who dare steal from it. Most evil and neutral wyvarans primarily concern themselves with expanding their territory and wealth.

Many civilized races dismiss wyvarans as fast, dumb, selfish brutes. However, a creature who respects the wyvarans’ rules about their property finds that they make steadfast and loyal allies. Adventuring wyvarans often view their companions as clutchmates, and are willing to take great risks to protect them.")

RaceAbilityScoreModifier.create!(race_id: wyvaran.id, ability_score: "Dexteriy", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: wyvaran.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: wyvaran.id, ability_score: "Intelligence", bonus: -2)

RacialTrait.create!(name: "Type", race_id: wyvaran.id, description: "Wyvarans are dragons.")
RacialTrait.create!(name: "Languages", race_id: wyvaran.id, description: "Wyvarans speak Common and Draconic. A wyvaran with a high Intelligence score can choose from the following: Dwarven, Elven, Gnome, Goblin, and Orc.")
RacialTrait.create!(name: "Flight", race_id: wyvaran.id, description: "Wyvarans have dragonlike wings that grant them a fly speed of 30 feet with clumsy maneuverability.")
RacialTrait.create!(name: "Slapping Tail", race_id: wyvaran.id, description: "Wyvarans have a tail attack they can only use when making attacks of opportunity. This slapping tail attack deals 1d8 points of damage plus the wyvaran’s Strength modifier.")
RacialTrait.create!(name: "Darkvision", race_id: wyvaran.id, description: "Wyvarans can see in the dark up to 60 feet.")
RacialTrait.create!(name: "Low-Light Vision", race_id: wyvaran.id, description: "Wyvarans have low-light vision.")
# RacialTrait.create!(name: "", race_id: , description: "")
# RacialTrait.create!(name: "", race_id: , description: "")
# RacialTrait.create!(name: "", race_id: , description: "")
# RacialTrait.create!(name: "", race_id: , description: "")
# RacialTrait.create!(name: "", race_id: , description: "")
# RacialTrait.create!(name: "", race_id: , description: "")
# RacialTrait.create!(name: "", race_id: , description: "")
# RacialTrait.create!(name: "", race_id: , description: "")

print "Wyvaran created! \r"

android = Race.create!(name: "Android", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/7e/3d/da/7e3ddad1b186ec8df9f183f9e609d643.png", source_id: bestiary_5.id, description: "Androids are superficially identical to humans in many ways, and to the uninformed it can be difficult to differentiate the two. In the right light, though, androids’ alien nature is revealed by the metallic sheen in their eyes and the biological, tattoo-like circuitry that riddles their skin. Their bodies are completely artificial, though made of materials that mimic the flexibility, shape, and density of human flesh and bone. Their organs mirror those of humans so well that only by examining the materials and makeup of these systems—which use sheeny oils and polymer alloys rather than blood and marrow—could one guess that their physiology is alien. Androids are roughly the same size as humans; on average, they are 6 feet tall and weigh 200 pounds.

Shamans speak of great forges where androids are “born” from metal wombs and are cut from electrified umbilical cords. Even androids can’t refute or verify such stories, since most who emerge from ruins do so naked and without any memories beyond their initial egress into the wide, unfamiliar world. Their complex design is unlike that of any race known, leading many to suspect that they originated from a distant star system or even another galaxy.

What separates androids from golems and other mindless constructs is that androids are living beings and as such possess souls. Similarly, androids don’t live forever, though barring violence or tragedy their bodies never deteriorate. Rather, an android’s cybernetic mind eventually shuts down and self-restarts after about a century, leaving its body vacant for several weeks as the old soul departs for its final reward in the Great Beyond and a fresh, new soul finds its way into the shell.")

RaceAbilityScoreModifier.create!(race_id: android.id, ability_score: "Dexterity", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: android.id, ability_score: "Intelligence", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: android.id, ability_score: "Charisma", bonus: -2)

RacialTrait.create!(name: "Type", race_id: android.id, description: "Androids are humanoids with android subtype.")
RacialTrait.create!(name: "Languages", race_id: android.id, description: "Androids begin play speaking Common. Androids with high Intelligence can choose any languages they want (except secret languages, such as Druidic).")
RacialTrait.create!(name: "Alert", race_id: android.id, description: "Androids gain a +2 racial bonus on Perception checks.")
RacialTrait.create!(name: "Emotionless", race_id: android.id, description: "Androids have problems processing emotions properly, and thus take a –4 penalty on Sense Motive checks.")
RacialTrait.create!(name: "Exceptional Senses", race_id: android.id, description: "Androids have darkvision and so can see perfectly in the dark to a range of 60 feet and in addition, they possess low-light vision.")
RacialTrait.create!(name: "Constructed", race_id: android.id, description: "For the purposes of effects targeting creatures by type (such as a ranger’s favored enemy and bane weapons), androids count as both humanoids and constructs. Androids gain a +4 racial bonus on all saving throws against mind-affecting effects, paralysis, poison, and stun effects, are not subject to fatigue or exhaustion, and are immune to disease and sleep effects. Androids can never gain morale bonuses, and are immune to fear effects and all emotion-based effects.")
RacialTrait.create!(name: "Nanite Surge", race_id: android.id, description: "An android’s body is infused with nanites. Once per day as an immediate action, an android can cause her nanites to surge, granting a bonus equal to 3 + the android’s character level on any one d20 roll; this ability must be activated before the roll is made. When an android uses this power, her circuitry-tattoos glow with light equivalent to that of a torch in illumination for 1 round.")

print "Android created! \r"

ghoran = Race.create!(name: "Ghoran", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/63/7e/e2/637ee236d7a3f0c70d0179e56deec3da.png", source_id: ultimate_wilderness.id, description: "While each ghoran could perpetuate itself via a single immortal seed, the inability to grow or propagate their species ensured that no new ghorans would ever appear. With each death of a ghoran by accident or violence, their race as a whole dwindled. The fact that their “flesh” had come to be regarded as a delicacy only further complicated their role in society, and even though most regions soon made the harvesting and consumption of the newly sentient ghorans illegal, they are still hunted by those who have developed a taste for their succulence.

Physical Description: The typical ghoran stands roughly as tall as a human and occupies a similar silhouette, but that’s where their similarities with humanity end. A ghoran’s “skin” is a complex layer of fibrous vines and rinds with a texture similar to moss-covered bark. Ghoran faces consist of layered petals that flush and flutter at a whim, allowing them to mimic the facial behaviors of their would-be devourers. They do not lack emotion per se, but ghoran “feelings” are primordial and abstract, making them utterly alien to most non-ghorans. A ghoran might laugh, smile, or raise its voice, but their companions seldom understand if these are displays of true emotion or merely more adaptive evolutions designed—like so many other aspects of their physiology—simply to keep them alive.

Ghorans have considerable control over their mass and can shape their bodies however they wish within the basic confines of a humanoid silhouette; this trait often gives them the impression of rustling about, especially when they are frightened or agitated. Ghorans who deal often with humanoids tend to adopt a masculine or a feminine silhouette based on their preference, but gender remains a fluid and somewhat elusive concept to them—an evolutionary adaptation of more import to the comfort of their companions than to ghorans themselves.

A ghoran has a deep cavity within its belly, housing a single seed the size of a balled human fist. Roughly every 20 years, a ghoran’s body becomes decrepit enough to no longer function. The ghoran imprints its abilities and memories into this seed and then plants it in the ground. After 1 to 2 months, a new ghoran body is born from the seed, the consciousness from the original transferring over to the fully grown body and leaving the old body behind as a mindless mass of inert plant matter. In this way, a ghoran’s legacy lives on with every regrowth; while the body regenerates, the inner self and memories of the past endure.

Society: A ghoran’s alien thought processes (to say nothing of the empty holes upon its flower-petal face roughly approximating its eyes and mouth) make it very difficult for other races to understand and empathize with, leading many ghorans to stick to themselves in segregated communities of cosmopolitan and magic-rich city-states or in the deepest wild places of their barren homeland and its neighboring kingdoms. Ghoran architecture consists of round, multifloor greenhouse towers composed of fibrous plant material coated in organic resins that grant it the hardness of stone. The towers have no roofs and several wide, stylized windows, granting the colony of ghorans living within ample access to the essential life-giving rays of the sun. Within, the air is redolent with organic aromas that often induce soporific effects upon non-ghorans, making them pliant to ghoran suggestions and uneager to take aggressive action. When unobserved, ghorans belonging to the same colony sometimes array themselves around the edges of the tower’s internal balconies, swaying in unison to some unheard rhythm and basking in the communal warmth of daylight.

Relations: Ghorans are most comfortable with other intelligent plants (such as treants and vine leshys) and wary around plant-eating creatures (including humans, whom ghorans know created them as a food source). Because their regeneration brings minor personality changes with each incarnation, ghorans have trouble forming long-lasting relationships with races such as elves, dwarves, and gnomes. Ghorans deeply distrust warmongering humanoids such as goblins and gnolls, especially those with pyromaniac tendencies. The ghorans’ relation with humanity is the most complex, for while they admire humans for their capacities and are grateful for their creation, they fear their appetites more, and it is difficult for a ghoran to trust that a human doesn’t simply want to eat it.

Alignment and Religion: Ghorans seldom follow humanoid deities, instead preferring to worship nature itself. Ghorans have no predisposition toward law, chaos, good, or evil, but many struggle to differentiate right from wrong as defined by most societies.

Adventurers: Owing to their delicious nature, ghorans seldom know peace the way that humanoid races do, and many are forced to contend with nature and learn to fight as a means of self-defense against capture and consumption. Many have taken to adventuring lifestyles either to aid friends and companions or out of a darker drive for vengeance. Others join adventuring groups in hopes of accumulating enough power and lore to, perhaps, determine a solution to their race’s central problem of reproduction, though so far no ghoran has solved this essential riddle.

Names: Ghoran naming conventions seem random, as each ghoran is self-named and “born” with a near perfect recollection of every memory from previous incarnations. As a result, ghorans sometimes pick names they found pleasing in other lives or name themselves after people or places they once knew. Others maintain the same name over several incarnations, though minor personality and physical changes from life to life ensure that while the ghoran’s name might remain the same, aspects of the ghoran’s gradual change can often confuse and frustrate longtime friends and allies.")

RaceAbilityScoreModifier.create!(race_id: ghoran.id, ability_score: "Constituion", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: ghoran.id, ability_score: "Charisma", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: ghoran.id, ability_score: "Intelligence", bonus: -2)

RacialTrait.create!(name: "Type", race_id: ghoran.id, description: "Ghorans have the plant type but lack the immunities to mind-affecting, paralysis, poison, polymorph, sleep, and stunning effects that type usually has. The plant type features immunities that, when granted to a player character race, can be disruptive and overpowered.")
RacialTrait.create!(name: "Languages", race_id: ghoran.id, description: "Ghorans begin play speaking Common and Sylvan. Ghorans with high Intelligence scores can choose any languages they want (except secret languages such as Druidic).")
RacialTrait.create!(name: "Defensive Traits", race_id: ghoran.id, description: "Ghorans have tough, rugged skin and so gain a +2 Natural Armor bonus to AC.")
RacialTrait.create!(name: "Natural Magic", race_id: ghoran.id, description: "Ghorans with a Charisma score of 11 or higher gain the following spell-like abilities: 1/day—detect poison, goodberry (created berries bud from the ghoran’s own body), and purify food and drink. The caster level is equal to the ghoran’s level. The DC for these spells is equal to 10 + the spell’s level + the ghoran’s Charisma bonus.")
RacialTrait.create!(name: "Seed", race_id: ghoran.id, description: "As a full-round action, a ghoran can expel the seed from an orifice in its abdomen. If planted in fertile ground and left undisturbed for 2d6 days, the seed grows into a healthy duplicate of the original ghoran, save that the duplicate can reallocate all skill ranks upon sprouting. Once a ghoran expels this seed, it gains 1 negative level, and it dies as soon as the duplicate sprouts. This duplicate replaces the previous ghoran character.")
RacialTrait.create!(name: "Past-Life Knowledge", race_id: ghoran.id, description: "Ghorans have memories encoded in their seeds. They treat all Knowledge skills as class skills.")
RacialTrait.create!(name: "Light Dependent", race_id: ghoran.id, description: "Ghorans are heavily light dependent and so take 1d4 points of Constitution damage each day they go without exposure to sunlight.")
RacialTrait.create!(name: "Delicious", race_id: ghoran.id, description: "Ghorans take a –2 penalty on Escape Artist and combat maneuver checks to escape a grapple against a creature that has a bite attack with the grab ability.")

print "Ghoran created! \r"


goblin = Race.create!(name: "Goblin", speed: 30, size: "Small", img_url: "https://i.pinimg.com/736x/c3/ff/a3/c3ffa36862446c39ac78d5b841036a7f.jpg", source_id: bestiary_1.id, description: "Goblins are a race of childlike creatures with a destructive and voracious nature that makes them almost universally despised. Weak and cowardly, goblins are frequently manipulated or enslaved by stronger creatures that need destructive, disposable foot soldiers. Those goblins that rely on their own wits to survive live on the fringes of society and feed on refuse and the weaker members of more civilized races. Most other races view them as virulent parasites that have proved impossible to exterminate.

Goblins can eat nearly anything, but prefer a diet of meat and consider the flesh of humans and gnomes a rare and difficult-to-obtain delicacy. While they fear the bigger races, goblins’ short memories and bottomless appetites mean they frequently go to war or execute raids against other races to sate their pernicious urges and fill their vast larders.

Physical Description: Goblins are short, ugly humanoids that stand just over 3 feet tall. Their scrawny bodies are topped with over-sized and usually hairless heads with massive ears and beady red or occasionally yellow eyes. Goblins’ skin tone varies based on the surrounding environment; common skin tones include green, gray, and blue, though black and even pale white goblins have been sighted. Their voracious appetites are served well by their huge mouths filled with jagged teeth.

Society: Violent but fecund, goblins exist in primitive tribal structures with constant shifts in power. Rarely able to sustain their own needs through farming or hunting and gathering, goblin tribes live where food is abundant or near places that they can steal it from. Since they are incapable of building significant fortifications and have been driven out of most easily accessible locations, goblins tend to live in unpleasant and remote locations, and their poor building and planning skills ensure that they dwell primarily in crude caves, ramshackle villages, and abandoned structures. Few goblins are good with tools or skilled at farming, and the rare items of any value that they possess are usually cast-off implements from humans or other civilized cultures. Goblins’ appetites and poor planning lead to small tribes dominated by the strongest warriors. Even the hardiest goblin leaders quickly find out that their survival depends on conducting frequent raids to secure sources of food and kill off the more aggressive youth of the tribe. Both goblin men and women are ugly and vicious, and both sexes are just as likely to rise to positions of power in a tribe. goblin babies are almost completely self-sufficient not long after birth, and such infants are treated almost like pets. Many tribes raise their children communally in cages or pens where adults can largely ignore them. Mortality is high among young goblins, and when the adults fail to feed them or food runs low, youths learn at an early age that cannibalism is sometimes the best means of survival in a goblin tribe.

Relations: Goblins tend to view other beings as sources of food, which makes for poor relations with most civilized races. Goblins often survive on the fringes of human civilization, preying on weak or lost travelers and occasionally raiding small settlements to fuel their voracious appetites. They have a special animosity toward gnomes, and celebrate the capturing or killing of such victims with a feast. Of the most common races, half-orcs are the most tolerant of goblins, sharing a similar ancestry and experiencing the same hatred within many societies. Goblins are mostly unaware of half-orcs‘ sympathy, however, and avoid them because they are larger, meaner, and less flavorful than other humanoids.

Alignment and Religion: Goblins are greedy, capricious, and destructive by nature, and thus most are neutral or chaotic evil.

Adventurers: goblin adventurers are usually curious and inclined to explore the world, though they are often killed off by their own foolish misdeeds or hunted down for their random acts of destruction. Their pernicious nature makes interacting with civilized races almost impossible, so goblins tend to adventure on the fringes of civilization or in the wilds. Adventurous individuals who survive long enough often ride goblin dogs or other exotic mounts, and focus on archery to avoid close confrontation with larger enemies. goblin spellcasters prefer fire magic and bombs over almost all other methods of spreading mayhem.

Chieftain Names: Dogchewer, Firesinger, Gutwad, Hogparts, Horsebiter, Mancooker, Moonslaver, Pokestick, Ripnugget, Stabsnacker, Stumpbumper, Swampstomper, Toechopper

Male Names: Boorgub, Chuffy, Churkus, Drubbus, Gawg, Ghorg, Gogmurch, Irnk, Kavak, Lunthus, Mogmurch, Mogawg, Murch, Nurpus, Pogus, Poog, Ronk, Rotfoot, Unk, Vogun, Zobmaggle, Zord.

Female Names: Aka, Chee, Fevva, Geedra, Goomluga, Gretcha, Hoglob, Janka, Klongy, Luckums, Lupi, Medge, Namby, Olba, Rempy, Reta, Ruxi, Vruta, Yalla, Ziku.")

RaceAbilityScoreModifier.create!(race_id: goblin.id, ability_score: "Dexterity", bonus: 4)
RaceAbilityScoreModifier.create!(race_id: goblin.id, ability_score: "Strength", bonus: -2)
RaceAbilityScoreModifier.create!(race_id: goblin.id, ability_score: "Charisma", bonus: -2)

RacialTrait.create!(name: "Type", race_id: goblin.id, description: "Goblins are humanoids with the goblinoid subtype.")
RacialTrait.create!(name: "Languages", race_id: goblin.id, description: "Goblins begin play speaking Goblin. Goblins with high Intelligence scores can choose from the following: Common, Draconic, Dwarven, Gnoll, Gnome, Halfling, and Orc.")
RacialTrait.create!(name: "Skilled", race_id: goblin.id, description: "Goblins gain a +4 racial bonus on Ride and Stealth checks.")
RacialTrait.create!(name: "Darkvision", race_id: goblin.id, description: "Goblins see perfectly in the dark up to 60 feet.")
RacialTrait.create!(name: "Fast Movement", race_id: goblin.id, description: "Goblins gain a +10 foot bonus to their base speed (this is already added to their Base Speed above).")

print "Golbin created! \r"


tengu = Race.create!(name: "Tengu", speed: 30, size: "Medium", img_url: "https://vignette.wikia.nocookie.net/dead-evil/images/a/af/Mochran_Tull.jpg", source_id: bestiary_1.id, description: "The crow-like tengus are known as a race of scavengers and irrepressible thieves. Covetous creatures predominantly motivated by greed, they are vain and easily won over with flattery. Deceptive, duplicitous, and cunning, tengus seek circumstances in which they can take advantage of the situation, often at the expense of others, including their own kind. They can be highly competitive, but impulsive and rash. Some claim their behavior is innate, while others believe their selfish mannerisms are cultural and developed as a learned adaptation that has enabled their people to endure through centuries of oppression.

Tengus are natural survivalists. For many, only theft and guile have afforded them the temporary luxuries other races take for granted. In the past, both humans and powerful races such as giants sought the bird-folk as slaves and servitors. Many tengus scavenged for survival, scraping for food in the shadows of cities or living as subsistence hunters and gatherers in the wild. Their descendants now struggle to find their place in contemporary society, often competing against negative stereotypes or driven to embrace them, and they rely on thievery and swordplay to get by in a harsh and unforgiving world.

Physical Description: Tengus are avian humanoids whose features strongly resemble crows. They have broad beaks and both their arms and their legs end in powerful talons. Though tengus are unable to fly, iridescent feathers cover their bodies—this plumage is usually black, though occasionally brown or blue-back. Their skin, talons, beaks, and eyes are similarly colored, and most non-tengus have great difficulty telling individuals apart. Tengus who wish to be more easily identified by other humanoids may bleach certain feathers or decorate their beaks with dyes, paint, or tiny glued ornaments. Though they are about the same height as humans, they have slight builds and tend to hunch over. A tengu’s eyes sit slightly back and to the sides of his head, giving him binocular vision with a slightly more panoramic field of view than other humanoids. Like many avians, tengus have hollow bones and reproduce by laying eggs.

Society: Tengus live in close-knit communities in which they keep to themselves. In urban centers, they tend to group in communal slums, while those living in rural areas establish isolated settlements. Overall, they remain secretive about their culture, which is a combination of old traditions laced with newer bits of culture scavenged from the races common in the neighboring regions. Cultural scavenging also extends to language, and regional dialects of Tengu are peppered with terms and colloquialisms from other languages. Unsurprisingly, tengus have a knack for language and pick up new ones quickly.

Most tengu communities tend to follow a tribal structure. Tribal rules remain loose and subjective, and tribe members settle any conflicts through public arbitration (and occasionally personal combat). While every tengu has a voice in her society, in most settlements, tengus still defer to their revered elders for wisdom and advice.

Relations: Few races easily tolerate tengus. Of the most common races, only humans allow them to settle within their cities with any regularity. When this occurs, tengus inevitably form their own ghettos and ramshackle communities, typically in the most wretched neighborhoods. Regardless of their tolerance, most humans maintain as little contact with tengus as possible. Tengus occasionally make friends with halflings and gnomes, but only when they share mutual interests. Conversely, most dwarves have no patience for tengus whatsoever. Other races tend to view tengus in a similar fashion to humans, though many actively discourage them from settling in their realms.

Alignment and Religion: Tengus tend to be neutral, though those who allow their impulsiveness to get the better of them lean toward chaotic neutral. Religious beliefs vary from tribe to tribe; some worship the traditional tengu gods (most of which are aspects of better-known deities), while others take to the worship of human gods or celestial spirits. Tengus can be fickle with regard to their patrons, quickly abandoning religious customs when they cease to provide any tangible benefit. Many embrace polytheism, picking and choosing to uphold the tenets of whatever deities best suit them at the time.

Adventurers: With little at home to leave behind, many tengus turn to a life of adventure seeking fame, fortune, and glory. A common tengu belief portrays a life on the road as a series of experiences and trials that form a path to enlightenment. Some take this to mean a path of spiritual empowerment; others view it as a way to perfect their arts or swordsmanship. Perhaps in spite of the prejudices upheld by outsiders, many tengu adventurers embrace their stereotypes. These individuals seek to succeed by epitomizing tengu racial qualities, and proudly flaunt their heritage. Despite their avian frailty, with their quick reflexes and quicker wits, tengus make excellent rogues and rangers, while those with a strong connection to the spirit world often become oracles. Those disciplined in the practice of martial arts take jobs as mercenaries and bodyguards in order to profit from their talents.

Male Names: Bukka, Chak-Chak, Chuko, Ebonfeather, Highroost, Kraugh, Pezzack, Taicho, Tchoyoitu, Xaikon.

Female Names: Aerieminder, Aikio, Cheetchu, Daba, Gildedhackle, Kankai, Mikacha, Ruk, Zhanyae.")

RaceAbilityScoreModifier.create!(race_id: tengu.id, ability_score: "Dexterity", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: tengu.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: tengu.id, ability_score: "Constitution", bonus: -2)

RacialTrait.create!(name: "Type", race_id: tengu.id, description: "Tengus are humanoids with the tengu subtype.")
RacialTrait.create!(name: "Languages", race_id: tengu.id, description: "Tengus begin play speaking Common and Tengu. Tengus with high Intelligence scores can choose any languages they want (except for secret languages, such as Druidic).")
RacialTrait.create!(name: "Sneaky", race_id: tengu.id, description: "Tengus gain a +2 racial bonus on Perception and Stealth checks.")
RacialTrait.create!(name: "Gifted Linguist", race_id: tengu.id, description: "Tengus gain a +4 racial bonus on Linguistics checks, and learn 2 languages each time they gain a rank in Linguistics rather than 1 language.")
RacialTrait.create!(name: "Swordtrained", race_id: tengu.id, description: "Tengus are trained from birth in swordplay, and as a result are automatically proficient with sword-like weapons (including bastard swords, daggers, elven curve blades, falchions, greatswords, kukris, longswords, punching daggers, rapiers, scimitars, short swords, and two-bladed swords).")
RacialTrait.create!(name: "Natural Weapons", race_id: tengu.id, description: "Tengus have a bite attack that deals 1d3 points of damage.")
RacialTrait.create!(name: "Low-Light Vision", race_id: tengu.id, description: "Tengus have low-light vision allowing them to see twice as far as humans in conditions of dim light.")

print "Tengu created! \r"

sylph = Race.create!(name: "Sylph", speed: 30, size: "Medium", img_url: "https://vignette.wikia.nocookie.net/the-banished/images/3/33/Sylph.jpg", source_id: bestiary_1.id, description: "Born from the descendants of humans and beings of elemental air such as djinn, sylphs are a shy and reclusive race consumed by intense curiosity. Sylphs spend their lives blending into the crowd, remaining unnoticed as they spy and eavesdrop on the people around them. They call this hobby “listening to the wind,” and for many sylphs it becomes an obsession. Sylphs rely on their capable, calculating intellects and on knowledge gleaned from eavesdropping to deliver them from danger.

Physical Description: Sylphs tend to be pale and thin to the point of appearing delicate, but their skinny bodies are often more resilient than they look. Many sylphs can easily pass for humans with some effort, though the complex blue markings that swirl across their skin reveal their elemental ancestry. Sylphs also bear more subtle signs of their heritage, such as a slight breeze following them wherever they go. These signs become more pronounced as a sylph experiences intense passion or anger, spontaneous gusts of wind tousling the sylph’s hair or hot blusters knocking small items off of shelves.

Society: Sylphs are usually born to human parents, and so are raised according to human customs. Most sylphs dislike the attention they receive growing up in human society, so it’s common for them to leave home soon after coming of age. They rarely abandon civilization altogether, however, preferring instead to find some new city or settlement where they can go unnoticed among (and spy upon) the masses. A sylph who happens upon another sylph unnoticed instantly becomes obsessed with her kin, spying on and learning as much about the other as she possibly can. Only after weighing all the pros and cons and formulating plans for every potential outcome will the sylph introduce herself to the other. Rarely, two sylphs will discover each other’s presence in a community at the same time. What ensues thereafter is a sort of cat-and-mouse game, a convoluted dance in which each sylph spies on the other as both attempt to gain the upper hand. Sylphs who meet this way always become either inseparable friends or intractable enemies.

Relations: Sylphs enjoy prying into the affairs of most other races, but have little taste for actually associating with most of them. Sylphs can relate on some level with elves, who share their tendency toward aloofness, but often spoil any possible relationship by violating the elven sense of privacy. Dwarves distrust sylphs intensely, considering them flighty and unreliable. They form excellent partnerships with halflings, relying on the short folk’s courage and people skills to cover their own shortcomings. Sylphs are amused by the annoyed reactions they provoke in ifrits, and find oreads too boring to give them much attention.

Alignment and Religion: Sylphs have little regard for laws and traditions, for such strictures often prohibit the very things sylphs love—subterfuge and secrecy. This doesn’t mean sylphs are opposed to law, merely that they use the most expedient means available to accomplish their goals, legal or not. Most sylphs are thus neutrally aligned. Sylphs are naturally drawn to mystery cults, and to deities who focus on secrets, travel, or knowledge.

Adventurers: An inborn urge to get to the bottom of things drives many sylphs to the adventuring life. A sylph who runs across the trail of a mystery will never be satisfied until she has uncovered every thread of evidence, followed up on every lead, and found the very heart of the trouble. Such sylphs make plenty of enemies by poking around into other peoples’ affairs, and usually turn to their roguish talents or wizardry to defend themselves.

Male Names: Akaash, Eydan, Hanuun, Siival, Vasaam.

Female Names: Inam, Keeya, Lissi, Nava, Radaya, Tena.")

RaceAbilityScoreModifier.create!(race_id: sylph.id, ability_score: "Dexterity", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: sylph.id, ability_score: "Intelligence", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: sylph.id, ability_score: "Constitution", bonus: -2)

RacialTrait.create!(name: "Type", race_id: sylph.id, description: "Sylphs are outsiders with the native subtype.")
RacialTrait.create!(name: "Languages", race_id: sylph.id, description: "Sylphs begin play speaking Common and Auran. Sylphs with high Intelligence scores can choose from the following: Aquan, Dwarven, Elven, Gnome, Halfling, Ignan, and Terran.")
RacialTrait.create!(name: "Energy Resistance", race_id: sylph.id, description: "Sylphs have electricity resistance 5.")
RacialTrait.create!(name: "Spell-Like Ability", race_id: sylph.id, description: "Sylphs can use feather fall 1/day (caster level equals the sylph’s total level).")
RacialTrait.create!(name: "Darkvision", race_id: sylph.id, description: "Sylphs can see perfectly in the dark up to 60 feet.")
RacialTrait.create!(name: "Air Affinity", race_id: sylph.id, description: "Sylph sorcerers with the elemental (air) bloodline treat their Charisma score as 2 points higher for all sorcerer spells and class abilities. Sylph spellcasters with the Air domain use their domain powers and spells at +1 caster level.")

print "Sylph created! \r"

ratfolk = Race.create!(name: "Ratfolk", speed: 20, size: "Small", img_url: "https://pbs.twimg.com/media/Dd6tAofV0AA0gVo.jpg", source_id: bestiary_3.id, description: "Ratfolk are small, rodent-like humanoids; originally native to subterranean areas in dry deserts and plains, they are now more often found in nomadic trading caravans. Much like the pack rats they resemble, ratfolk are tinkerers and hoarders by nature, and as a whole are masters of commerce, especially when it comes to acquiring and repairing mechanical or magical devices. Though some are shrewd merchants who carefully navigate the shifting alliances of black markets and bazaars, many ratfolk love their stockpiles of interesting items far more than money, and would rather trade for more such prizes to add to their hoards over mere coins. It’s common to see a successful crew of ratfolk traders rolling out of town with an even larger bundle than they entered with, the whole mess piled precariously high on a cart drawn by giant rats.

Physical Description: Typical ratfolk are average 4 feet tall and weigh 80 pounds. They often wear robes to stay cool in the desert or conceal their forms in cities, as they know other humanoids find their rodent features distasteful. Ratfolk have a strong attraction to shiny jewelry, especially copper, bronze, and gold, and many decorate their ears and tails with small rings made of such metals. They are known to train giant rats (dire rats with the giant creature simple template), which they often use as pack animals and mounts.

Society: Ratfolk are extremely communal, and live in large warrens with plenty of hidden crannies in which to stash their hoards or flee in times of danger, gravitating toward subterranean tunnels or tightly packed tenements in city slums. They feel an intense bond with their large families and kin networks, as well as with ordinary rodents of all sorts, living in chaotic harmony and fighting fiercely to defend each other when threatened. They are quick to use their stockpiles of gear in combat, but prefer to work out differences and settle disputes with mutually beneficial trades.

When a specific ratfolk warren grows overcrowded and the surrounding environment won’t support a larger community, young ratfolk instinctively seek out new places in which to dwell. If a large enough group of ratfolk immigrants all settle down in a new, fertile area, they may create a new warren, often with strong political ties to their original homeland. Otherwise, individual ratfolk are inclined to simply leave home and take up residence elsewhere, or wander on caravan trips that last most of the year, reducing the pressure of overcrowding at home.

Relations: Ratfolk tend to get along quite well with humans, and often develop ratfolk societies dwelling in the sewers, alleys, and shadows of human cities. Ratfolk find dwarves too hidebound and territorial, and often mistake even mild criticisms from dwarves as personal attacks. Ratfolk have no particular feelings about gnomes and halflings, although in areas where those races and ratfolk must compete for resources, clan warfare can become dogma for generations. Ratfolk enjoy the company of elves and half-elves, often seeing them as the calmest and most sane of the civilized humanoid races. Ratfolk are particularly fond of elven music and art, and many ratfolk warrens are decorated with elven art pieces acquired through generations of friendly trade.

Alignment and Religion: Ratfolk individuals are driven by a desire to acquire interesting items and a compulsion to tinker with complex objects. The strong ties of ratfolk communities give them an appreciation for the benefits of an orderly society, even if they are willing to bend those rules when excited about accomplishing their individual goals. Most ratfolk are neutral, and those who take to religion tend to worship deities that represent commerce and family.

Adventurers: Ratfolk are often driven by a desire to seek out new opportunities for trade, both for themselves and for their warrens. Ratfolk adventurers may seek potential markets for their clan’s goods, keep an eye out for sources of new commodities, or just wander about in hopes of unearthing enough treasure to fund less dangerous business ventures. Ratfolk battles are often decided by cunning traps, ambushes, or sabotage of enemy positions, and accordingly young ratfolk heroes often take up classes such as alchemist, gunslinger, and rogue.

Male Names: Agiz, Brihz, Djir, Ninnec, Rerdahl, Rikkan, Skivven, Tamoq.

Female Names: Bessel, Fhar, Jix, Kitch, Kubi, Nehm, Rissi, Thikka.")

RaceAbilityScoreModifier.create!(race_id: ratfolk.id, ability_score: "Dexterity", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: ratfolk.id, ability_score: "Intelligence", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: ratfolk.id, ability_score: "Strength", bonus: -2)

RacialTrait.create!(name: "Type", race_id: ratfolk.id, description: "Ratfolk are humanoids with the ratfolk subtype.")
RacialTrait.create!(name: "Languages", race_id: ratfolk.id, description: "Ratfolk begin play speaking Common. Ratfolk with high Intelligence scores can choose from the following: Aklo, Draconic, Dwarven, Gnoll, Gnome, Goblin, Halfling, Orc, and Undercommon.")
RacialTrait.create!(name: "Tinker", race_id: ratfolk.id, description: "Ratfolk gain a +2 racial bonus on Craft (alchemy), Perception, and Use Magic Device checks.")
RacialTrait.create!(name: "Rodent Empathy", race_id: ratfolk.id, description: "Ratfolk gain a +4 racial bonus on Handle Animal checks made to influence rodents.")
RacialTrait.create!(name: "Swarming", race_id: ratfolk.id, description: "Ratfolk are used to living and fighting communally, and are adept at swarming foes for their own gain and their foes’ detriment. Up to two ratfolk can share the same square at the same time. If two ratfolk in the same square attack the same foe, they are considered to be flanking that foe as if they were in two opposite squares.")
RacialTrait.create!(name: "Darkvision", race_id: ratfolk.id, description: "Ratfolk can see perfectly in the dark up to 60 feet.")

print "Ratfolk created! \r"

syrinx = Race.create!(name: "Syrinx", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/ff/70/14/ff701427ba3747bbb15bb08a0e58a8da.png", source_id: inner_sea_bestiary.id, description: "Robed in silk and its own regal wings, this humanoid assays its surroundings with the lethal detachment of the owl it resembles.

From lofty monastery-cities entrenched in soaring cliff sides and high mountain valleys, the syrinx seek to bring peace to all lands that fall within sight of their marbled spires. Erudite and aloof, the owl-like scholars embrace art, philosophy, and nebulous faiths, seeking to distance themselves from a history of barbarism and ruin.")

RaceAbilityScoreModifier.create!(race_id: syrinx.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: syrinx.id, ability_score: "Dexterity", bonus: -2)

RacialTrait.create!(name: "Type", race_id: syrinx.id, description: "Syrnix are humanoids with the synrix subtype.")
RacialTrait.create!(name: "Languages", race_id: syrinx.id, description: "Syrinx begin play speaking Syrinx. Syrinx with high Intelligence scores can choose from the following: Auran, Celestial, Strix, or Infernal.")
RacialTrait.create!(name: "Flight", race_id: syrinx.id, description: "Syrinx have a fly speed of 60 feet with average maneuverability.")
RacialTrait.create!(name: "Pride", race_id: syrinx.id, description: "Syrinx receive a +2 racial bonus on saving throws against mind-affecting effects.")
RacialTrait.create!(name: "Nocturnal", race_id: syrinx.id, description: "Syrinx gain a +2 racial bonus on Perception and Stealth checks at night.")
RacialTrait.create!(name: "Speak with Avians", race_id: syrinx.id, description: "Syrinx can speak with all birds of the animal creature type and birdlike magical beasts (like phoenixes and thunderbirds).")
RacialTrait.create!(name: "Low-Light Vision", race_id: syrinx.id, description: "Syrinx can see twice as far as humans in conditions of dim light.")
RacialTrait.create!(name: "Darkvision", race_id: syrinx.id, description: "Syrinx have darkvision and so can see perfectly in the dark up to 60 feet.")

print "Syrnix created! \r"

ifrit = Race.create!(name: "Ifrit", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/2c/ca/28/2cca281e37e4c3dca5ae693aa701a3f7.png", source_id: bestiary_1.id, description: "Humans whose ancestry includes beings of elemental fire such as efreet, ifrits are a passionate and fickle race. No ifrit is satisfied with a sedentary life; like a wildfire, ifrits must keep moving or burn away into nothingness. Ifrits not only adore flames, but personify multiple aspects of them as well, embodying both fire’s dynamic, ever-changing energy and its destructive, pitiless nature.

Physical Description: Ifrits vary in appearance as widely as their elemental ancestors do. Most have pointy ears, red or mottled horns on the brow, and hair that flickers and waves as if it were aflame. Some possess skin the color of polished brass or have charcoal-hued scales covering their arms and legs. Ifrits favor revealing and ostentatious clothing in bright oranges and reds, preferably paired with gaudy jewelry.

Society: Ifrits are most often born into human communities, and rarely form societies of their own. Those who grow up in a city are almost always imprisoned or driven off before they reach adulthood; most are simply too hot-headed and independent to fit into civilized society, and their predilection toward pyromania doesn’t endear them to the local authorities. Those born into nomadic or tribal societies fare much better, since ifrits’ instinctive urge to explore and conquer their surroundings can easily earn them a place among their tribe’s leadership.

Relations: Even the best-natured ifrits tend to view other individuals as tools to use as they see fit, and as such they get along best with races they can charm or browbeat into submission. Half-elves and gnomes often find themselves caught up in an ifrit’s schemes, while halflings, half-orcs, and dwarves usually bridle at ifrits’ controlling nature. Strangely, ifrits sometimes form incredibly close bonds with elves, whose calm, aloof nature seems to counterbalance an ifrit’s impulsiveness. Most ifrits refuse to associate with sylphs, but are otherwise on peaceable terms with the other elemental-touched races.

Alignment and Religion: Ifrits are a dichotomous people—on one hand, fiercely independent, and on the other, imperious and demanding. They are often accused of being morally impoverished, but their troublemaking behavior is rarely motivated by true malice. Ifrits are usually lawful neutral or chaotic neutral, with a few falling into true neutrality. Most ifrits lack the mindset to follow a god’s teachings, and resent the strictures placed on them by organized faith. When ifrits do take to worship (usually venerating a fire-related deity), they prove to be zealous and devoted followers.

Adventurers: Ifrits adventure for the sheer thrill of it and for the chance to test their skill against worthy foes, but most of all they adventure in search of power. Once ifrits dedicate themselves to a task, they pursue it unflinchingly, never stopping to consider the dangers ahead of them. When this brashness finally catches up with them, ifrits often rely on sorcery or bardic magic to combat their resulting troubles.

Male Names: Aja, Denat, Efit, Elum, Jalij, Maqej, Urah.

Female Names: Alayi, Etwa, Maqan, Qari, Sami, Zetaya.")

RaceAbilityScoreModifier.create!(race_id: ifrit.id, ability_score: "Dexterity", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: ifrit.id, ability_score: "Charisma", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: ifrit.id, ability_score: "Wisdom", bonus: -2)

RacialTrait.create!(name: "Type", race_id: ifrit.id, description: "Ifrits are outsiders with the native subtype.")
RacialTrait.create!(name: "Languages", race_id: ifrit.id, description: "Ifrits begin play speaking Common and Ignan. Ifrits with high Intelligence scores can choose from the following: Aquan, Auran, Dwarven, Elven, Gnome, Halfling, and Terran.")
RacialTrait.create!(name: "Energy Resistance", race_id: ifrit.id, description: "Ifrits have fire resistance 5.")
RacialTrait.create!(name: "Spell-Like Ability", race_id: ifrit.id, description: "Ifrits can use burning hands 1/day (caster level equals the ifrit’s total level).")
RacialTrait.create!(name: "Darkvision", race_id: ifrit.id, description: "Ifrits can see perfectly in the dark up to 60 feet.")
RacialTrait.create!(name: "Fire Affinity", race_id: ifrit.id, description: "Ifrit sorcerers with the elemental (fire) bloodline treat their Charisma score as 2 points higher for all sorcerer spells and class abilities. Ifrit spellcasters with the Fire domain use their domain powers and spells at +1 caster level.")

print "Ifrit created! \r"

undine = Race.create!(name: "Undine", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/b2/54/db/b254dbdf0c1f0e40d287fe563f068cad.jpg", source_id: bestiary_1.id, description: "Undines are humans who trace their ancestry to creatures from the Plane of Water. Even at first glance, one notices the potency of their ancestry, for an undine’s very flesh mimics the color of lakes, seas, and oceans. Whether they have the blood of marids or water mephits as their kin, all undines define themselves through their ancestry. They perceive their individual differences as gifts and explore the supernatural aspects of their unique heritage to the fullest.

The undines are a proud race and show little outward fear. While good-natured and somewhat playful among their own kind, they behave with slightly more reserve and seriousness in the company of non-undines. They have excellent emotional control, and can edge their tempers from calm to raging and back again within but a few minutes. While some might dub their behavior erratic, undines are simply a bit more outwardly melodramatic than most races. Certainly, they are not moody and do not become angered, excited, or otherwise emotional without provocation. As close friends, some find them overly possessive, though they are also extremely protective of those they care about.

Undines tend to settle near water, usually in warmer climates. Though land-dwellers, they spend a fair amount of time in the water. For this reason, most dress sparsely, wearing only enough clothing to protect themselves from the elements, and few wear shoes. They avoid wearing jewelry around their necks and keep their hair slicked back and tied into tight knots. This prevents hair or other objects from becoming a distraction or hindrance while swimming. Similarly, undines pursuing martial classes choose weapons that they can wield efficiently on land as well as in water.

Physical Description: Undines display a wide variation of skin tones, ranging from pale turquoise to deep blue to sea green. An undine’s straight, thick hair tends to be of a similar, yet slightly darker color than her skin. All have limpid blue eyes. Physically, undines most resemble humans, and their physiques show human diversity in regard to overall height and body type. Aside from their coloration, their most racially defining traits remain their fin-like ears and webbed hands and feet.

Society: Undines define themselves as a unique race and are capable of producing undine offspring. While they remain able to interbreed with humans, they tend to keep to themselves, and form small, reclusive communities near bodies of water, or in some cases, floating settlements. A typical undine community lives under the guidance of a small council comprising officials appointed by consensus. Council positions can be held indefinitely, though a community unhappy with the performance of a council member can call for her resignation.

Intermarriage in undine communities is common, with children raised communally. A fair amount of regional diversity exists in undine culture, as influenced by the specific ancestry of independent settlements. It should also be noted that not all undine in a single settlement claim the same ancestry, as undines may marry other undines from outside their own communities.

Relations: Undines hold no biases or prejudices toward any particular races. Their communities rely primarily on trade, giving them ample opportunity to interact with a diverse range of outsiders and foreigners. They have no qualms about establishing neighborhoods within the settlements of other races, provided adequate respect is given to both the undines and any nearby bodies of water. Still, in such instances, a given undine community does what it can to retain its autonomy.

Undines get along quite well with elves and gnomes. Often these races share protective duties over forested lakes and streams. Similarly, they interact favorably with good or neutral aquatic humanoids, sharing many common interests. They barter most freely with humans and dwarves for resources such as metal and cloth.

Alignment and Religion: Most undines are neutral. Their principle interests lie in the welfare of their people, and thus their moral concerns focus upon the community and upon themselves. This neutral view also allows them to interact with a broad scope of non-undine races with whom they trade. While not deeply religious, undines possess a strong spiritual connection to both their supernatural ancestors and to water itself. Those who pursue nonsecular paths almost always worship the gods of their ancestors or gods whose portfolios feature some aspect of water.

Adventurers: On occasion, an undine leaves her people to seek out a life of adventure. Like water itself, some undines simply feel compelled to move, and adventuring gives them an ample excuse for living on the road. Others adventure for less wholesome reasons, and exile is a common punishment for crimes within undine society. With few other options, most exiles turn to adventuring hoping to find a new place in the world. Undines’ affinity toward water makes them particularly good druids, while undine sorcerers usually have aquatic bloodlines.

Male Names: Aven, Dharak, Ghiv, Jamash, Maakor, Ondir, Radid, Shiradahz.

Female Names: Afzara, Baarah, Calah, Iryani, Maarin, Nylgune, Pari, Radabeh, Urdahna.")

RaceAbilityScoreModifier.create!(race_id: undine.id, ability_score: "Dexterity", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: undine.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: undine.id, ability_score: "Strength", bonus: -2)

RacialTrait.create!(name: "Type", race_id: undine.id, description: "Undines are outsiders with the native subtype.")
RacialTrait.create!(name: "Swim Speed", race_id: undine.id, description: "Undines have a swim speed of 30 feet, can move in water without making Swim checks, and always treat Swim as a class skill.")
RacialTrait.create!(name: "Languages", race_id: undine.id, description: "Undines begin play speaking Common and Aquan. Undines with high Intelligence scores can choose from the following: Auran, Dwarven, Elven, Gnome, Halfling, Ignan, and Terran.")
RacialTrait.create!(name: "Energy Resistance", race_id: undine.id, description: "Undines have cold resistance 5.")
RacialTrait.create!(name: "Spell-Like Ability", race_id: undine.id, description: "Undines can use hydraulic push 1/day (caster level equals the undine’s total level).")
RacialTrait.create!(name: "Darkvision", race_id: undine.id, description: "Undines can see perfectly in the dark up to 60 feet.")
RacialTrait.create!(name: "Water Affinity", race_id: undine.id, description: "Undine sorcerers with the elemental (water) bloodline treat their Charisma score as 2 points higher for all sorcerer spells and class abilities. Undine spellcasters with the Water domain use their domain powers and spells at +1 caster level.")

print "Undine created! \r"

oread = Race.create!(name: "Oread", speed: 20, size: "Medium", img_url: "https://i.pinimg.com/originals/40/3b/c7/403bc745a1d5ff605bbb9228360a1f1d.jpg", source_id: bestiary_1.id, description: "Oreads are humans whose ancestry includes the touch of an elemental being of earth somewhere along the line, often that of a shaitan genie. Stoic and contemplative, oreads are a race not easily moved, yet almost unstoppable when spurred to action. They remain a mystery to most of the world thanks to their reclusive nature, but those who seek them out in their secluded mountain hideaways find oreads to be quiet, dependable, and protective of their friends.

Physical Description: Oreads are strong and solidly built, with skin and hair colored stony shades of black, brown, gray, or white. While all oreads appear vaguely earthy, a few bear more pronounced signs of their elemental heritage—skin that shines like polished onyx, rocky outcroppings protruding from their flesh, glowing gemstones for eyes, or hair like crystalline spikes. They often dress in earthy tones, wearing practical clothing well suited to vigorous physical activity and preferring fresh flowers, simple gemstones, and other natural accents to complex manufactured jewelry.

Society: As a minor offshoot of the human race, oreads have no real established society of their own. Instead, most oreads grow up in human communities learning the customs of their parents. Adult oreads have a well-deserved reputation among other races for being hermits and loners. Few take well to the bustle of city life, preferring instead to spend their days in quiet contemplation atop some remote mountain peak or deep below the earth in a secluded cavern. Oreads with a greater tolerance for life among humans often join the city watch, or find some other way to serve their community in a position of responsibility.

Relations: Oreads feel comfortable in the company of dwarves, with whom they have much in common. They find gnomes too strange and many halflings far too brash, and so avoid these races in general. Oreads gladly associate with half-orcs and half-elves, feeling a sense of kinship with the other part-human races despite inevitable personality conflicts. Among the elemental-touched races, oreads have few friends but no true enemies.

Alignment and Religion: Oreads are, perhaps above all else, set in their ways, and any disruption of their routine is met with quiet disapproval. Oreads are fiercely protective of their friends, but don’t seem particularly concerned with the well-being of those outside their small circle of acquaintances. As such, most oreads are lawful neutral. Religious life comes easily to the earth-touched. They appreciate the quiet, contemplative life of the monastic order, and most dedicate themselves to the worship of earth- or nature-related deities.

Adventurers: Oreads are initially hesitant adventurers. They dislike leaving their homes and don’t handle the shock of new experiences well. Usually it takes some outside force to rouse oreads into action, often by threatening their homes, lives, or friends. Once the initial threat is dealt with, however, oreads often find they’ve grown accustomed to the adventuring life, and continue to pursue it through the rest of their days. Oreads make good monks and fighters thanks to their prodigious strength and self-discipline.

Male Names: Andanan, Jeydavu, Mentys, Oret, Sithundan, Urtar.

Female Names: Besthana, Echane, Ghatiyara, Irice, Nysene, Pashe.")

RaceAbilityScoreModifier.create!(race_id: oread.id, ability_score: "Strength", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: oread.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: oread.id, ability_score: "Charisma", bonus: -2)

RacialTrait.create!(name: "Type", race_id: oread.id, description: "Oreads are outsiders with the native subtype.")
RacialTrait.create!(name: "Languages", race_id: oread.id, description: "Oreads begin play speaking Common and Terran. Oreads with high Intelligence scores can choose from the following: Aquan, Auran, Dwarven, Elven, Gnome, Halfling, Ignan, and Undercommon.")
RacialTrait.create!(name: "Energy Resistance", race_id: oread.id, description: "Oreads have acid resistance 5.")
RacialTrait.create!(name: "Spell-Like Ability", race_id: oread.id, description: "Oreads can use magic stone 1/day (caster level equals the oread’s total level).")
RacialTrait.create!(name: "Darkvision", race_id: oread.id, description: "Oreads can see perfectly in the dark up to 60 feet.")
RacialTrait.create!(name: "Earth Affinity", race_id: oread.id, description: "Oread sorcerers with the elemental (earth) bloodline treat their Charisma score as 2 points higher for all sorcerer spells and class abilities. Oread spellcasters with the Earth domain use their domain powers and spells at +1 caster level.")

print "Oread created! \r"

halfling = Race.create!(name: "Halfling", speed: 20, size: "Small", img_url: "https://res.cloudinary.com/jerrick/image/upload/fl_progressive,q_auto,w_1024/5fa2d6210c0a600020cc2d4a.png", source_id: core_rulebook.id, description: "Optimistic and cheerful by nature, blessed with uncanny luck, and driven by a powerful wanderlust, halflings make up for their short stature with an abundance of bravado and curiosity. At once excitable and easy-going, halflings like to keep an even temper and a steady eye on opportunity, and are not as prone to violent or emotional outbursts as some of the more volatile races. Even in the jaws of catastrophe, halflings almost never lose their sense of humor. Their ability to find humor in the absurd, no matter how dire the situation, often allows halflings to distance themselves ever so slightly from the dangers that surround them. This sense of detachment can also help shield them from terrors that might immobilize their allies.

Halflings are inveterate opportunists. They firmly believe they can turn any situation to their advantage, and sometimes gleefully leap into trouble without any solid plan to extricate themselves if things go awry. Often unable to physically defend themselves from the rigors of the world, they know when to bend with the wind and when to hide away. Yet halflings’ curiosity often overwhelms their good sense, leading to poor decisions and narrow escapes. While harsh experience sometimes teaches halflings a measure of caution, it rarely makes them completely lose faith in their luck or stop believing that the universe, in some strange way, exists for their entertainment and would never really allow them to come to harm. Though their curiosity drives them to seek out new places and experiences, halflings possess a strong sense of hearth and home, often spending above their means to enhance the comforts of domestic life. Without a doubt, halflings enjoy luxury and comfort, but they have equally strong reasons to make their homes a showcase. Halflings consider this urge to devote time, money, and energy toward improving their dwellings a sign of both respect for strangers and affection for their loved ones. Whether for their own blood kin, cherished friends, or honored guests, halflings make their homes beautiful in order to express their feelings toward those they welcome inside. Even traveling halflings typically decorate their wagons or carry a few cherished keepsakes to adorn their campsites.

Physical Description: Halflings rise to a humble height of 3 feet. They prefer to walk barefoot, leading the bottoms of their feet to become roughly calloused. Tufts of thick, curly hair warm the tops of their broad, tanned feet.

Their skin tends toward a rich cinnamon color and their hair toward light shades of brown. A halfling’s ears are pointed, but proportionately not much larger than those of a human.

Halflings prefer simple and modest clothing. Though willing and able to dress up if the situation demands it, their racial urge to remain quietly in the background makes them rather conservative dressers in most situations. Halfling entertainers, on the other hand, make their livings by drawing attention, and tend to go overboard with gaudy and flashy costumes.

Society: Rather than place their faith in empires or great causes, many halflings prefer to focus on the simpler and humbler virtues of their families and local communities. Halflings claim no cultural homeland and control no settlements larger than rural assemblies of free towns. Most often, they dwell at the knees of their human cousins in human cities, eking out livings as they can from the scraps of larger societies. Many halflings lead perfectly fulfilling lives in the shadow of their larger neighbors, while some prefer more nomadic lives, traveling the world and experiencing all it has to offer.

Halflings rely on customs and traditions to maintain their own culture. They have an extensive oral history filled with important stories about folk heroes who exemplify particular halfling virtues, but otherwise see little purpose in studying history in and of itself. Given a choice between a pointless truth and a useful fable, halflings almost always opt for the fable. This tendency helps to explain at least something of the famous halfling adaptability. Halflings look to the future and find it very easy to cast off the weight of ancient grudges or obligations that drag down so many other races.

Relations: A typical halfling prides himself on his ability to go unnoticed by other races—a trait that allows many halflings to excel at thievery and trickery. Most halflings know full well the stereotypical view other races take of them as a result, and go out of their way to be forthcoming and friendly to the bigger races when they’re not trying to go unnoticed. They get along fairly well with gnomes, although most halflings regard these eccentric creatures with a hefty dose of caution. Halflings respect elves and dwarves, but these races often live in remote regions far from the comforts of civilization that halflings enjoy, thus limiting opportunities for interaction. By and large, only half-orcs are shunned by halflings, for their great size and violent natures are a bit too intimidating for most halflings to cope with. Halflings coexist well with humans as a general rule, but since some of the more aggressive human societies value halflings as slaves, they try not to grow too complacent. Halflings strongly value their freedom, especially the ability to travel in search of new experiences and the autonomy this requires. However, practical and flexible as always, enslaved halflings seldom fight back directly against their masters. When possible, they wait for the perfect opportunity and then simply slip away. Sometimes, if enslaved for long enough, halflings even come to adopt their owners as their new families. Though they still dream of escape and liberty, these halflings also make the best of their lives.

Alignment and Religion: Halflings are loyal to their friends and families, but since they dwell in a world dominated by races twice as large as themselves, they have come to grips with the fact that sometimes they need to scrape and scrounge for survival. Most halflings are neutral as a result. Though they usually make a show of respecting the laws and endorsing the prejudices of their communities, halflings place an even greater emphasis on the innate common sense of the individual. When a halfling disagrees with society at large, he will do what he thinks is best. Always practical, halflings frequently worship the deity most favored by their larger and more powerful neighbors. They also usually cover their bets, however. The goddess of both luck and travel seems a natural fit for most halflings and offering her a quick prayer every now and then is only common sense.

Adventurers: Their inherent luck coupled with their insatiable wanderlust makes halflings ideal candidates for lives of adventure. Though perfectly willing to pocket any valuables they come across, halflings often care more for the new experiences adventuring brings them than for any material reward. Halflings tend to view money as a means of making their lives easier and more comfortable, not as an end in and of itself. Other such vagabonds often put up with this curious race in hopes that some of their mystical luck will rub off. Halflings see nothing wrong with encouraging this belief, not just in their traveling companions, but also in the larger world. Many try to use their reputation for luck to haggle for reduced fare when traveling by ship or caravan, or even for an overnight stay at an inn. They meet with mixed success, but there are just enough stories circulating about the good fortune that befalls people traveling with halflings to give even the most skeptical pause. Of course, some suspect that halflings deliberately spread these reports for just that reason.

Male Names: Antal, Boram, Hyrgan, Jamir, Lem, Miro, Sumak, Tribin, Uldar, Vraxim.

Female Names: Anafa, Bellis, Etune, Filiu, Irlana, Marra, Pressi, Rilka, Sistra, Wyssal, Yamyra.")

RaceAbilityScoreModifier.create!(race_id: halfling.id, ability_score: "Dexterity", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: halfling.id, ability_score: "Charisma", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: halfling.id, ability_score: "Strength", bonus: -2)

RacialTrait.create!(name: "Type", race_id: halfling.id, description: "Halflings are humanoids with the Halfling subtype.")
RacialTrait.create!(name: "Languages", race_id: halfling.id, description: "Halflings begin play speaking Common and Halfling. Halflings with high Intelligence scores can choose from the following: Dwarven, Elven, Gnome, and Goblin.")
RacialTrait.create!(name: "Fearless", race_id: halfling.id, description: "Halflings receive a +2 racial bonus on all saving throws against fear. This bonus stacks with the bonus granted by halfling luck.")
RacialTrait.create!(name: "Halfling Luck", race_id: halfling.id, description: "Halflings receive a +1 racial bonus on all saving throws.")
RacialTrait.create!(name: "Sure-Footed", race_id: halfling.id, description: "Halflings receive a +2 racial bonus on Acrobatics and Climb checks.")
RacialTrait.create!(name: "Weapon Familiarity", race_id: halfling.id, description: "Halflings are proficient with slings and treat any weapon with the word “halfling” in its name as a martial weapon.")
RacialTrait.create!(name: "Keen Senses", race_id: halfling.id, description: "Halflings receive a +2 racial bonus on Perception checks.")

print "Halfling created! \r"

gnome = Race.create!(name: "Gnome", speed: 20, size: "Small", img_url: "https://i.pinimg.com/originals/55/d7/af/55d7af2518252aa0b511262ae6917a7b.jpg", source_id: core_rulebook.id, description: "Gnomes are distant relatives of the fey, and their history tells of a time when they lived in the fey’s mysterious realm, a place where colors are brighter, the wildlands wilder, and emotions more primal. Unknown forces drove the ancient gnomes from that realm long ago, forcing them to seek refuge in this world; despite this, the gnomes have never completely abandoned their fey roots or adapted to mortal culture. Though gnomes are no longer truly fey, their fey heritage can be seen in their innate magic powers, their oft-capricious natures, and their outlooks on life and the world.

Gnomes can have the same concerns and motivations as members of other races, but just as often they are driven by passions and desires that non-gnomes see as eccentric at best, and nonsensical at worst. A gnome may risk his life to taste the food at a giant’s table, to reach the bottom of a pit just because it would be the lowest place he’s ever been, or to tell jokes to a dragon—and to the gnome those goals are as worthy as researching a new spell, gaining vast wealth, or putting down a powerful evil force. While such apparently fickle and impulsive acts are not universal among gnomes, they are common enough for the race as a whole to have earned a reputation for being impetuous and at least a little mad.

Combined with their diminutive sizes, vibrant coloration, and lack of concern for the opinions of others, these attitudes have caused gnomes to be widely regarded by the other races as alien and strange. Gnomes, in turn, are often amazed how alike other common, civilized races are. It seems stranger to a gnome that humans and elves share so many similarities than that the gnomes do not. Indeed, gnomes often confound their allies by treating everyone who is not a gnome as part of a single, vast non-gnome collective race.

Physical Description: Gnomes are one of the smallest of the common races, generally standing just over 3 feet in height. Despite their small frames, however, gnomes are extremely resilient, and not as weak as many of their foes assume. Though their diminutive stature reduces their ability to move quickly, gnomes often train to take advantage of their size, especially when fighting foes much larger than themselves.

The coloration of gnomes varies so wildly that many outsiders assume gnomes commonly use dyes and illusions to change their skin and hair tones. While gnomes are certainly not above cosmetic enhancement (and may wish to change their appearance just to see how outlandish they can look), their natural hues truly range over a rainbow of coloration. Their hair tends toward vibrant colors such as the fiery orange of autumn leaves, the verdant green of forests at springtime, or the deep reds and purples of wildflowers in bloom. Similarly, their flesh tones range from earthy browns to floral pinks, and gnomes with black, pastel blue, or even green skin are not unknown. Gnomes’ coloration has little regard for heredity, with the color of a gnome’s parents and other kin having no apparent bearing on the gnome’s appearance. Gnomes possess highly mutable facial characteristics, and their proportions often don’t match the norm of other humanoid races. Many have overly large mouths and eyes, an effect which can be both disturbing and stunning, depending on the individual. Others may have extremely small features spread over an otherwise blank expanse of face, or may mix shockingly large eyes with a tiny, pursed mouth and a pert button of a nose. Gnomes rarely take pride in or show embarrassment about their features, but members of other races often fixate on a gnome’s most prominent feature and attempt to use it as the focus of insults or endearments.

Society: Unlike most races, gnomes do not generally organize themselves within classic societal structures. Gnome cities are unusual and gnome kingdoms almost unknown. Further, gnomes have no particular tendency to gather in specific neighborhoods even when a large number of them live among other races. While specific laws meant to contain the potential impact of gnomes on a society may require a “gnome quarter,” and societal pressure sometimes causes all non-gnomes to move away from areas with high gnome populations, left to their own devices, gnomes tend to spread evenly throughout communities that allow them.

However, even when gnomes are common within a community as a group, individual gnomes tend to be always on the move. Whimsical creatures at heart, they typically travel alone or with temporary companions, ever seeking new and more exciting experiences. They rarely form enduring relationships among themselves or with members of other races, instead pursuing crafts, professions, or collections with a passion that borders on zealotry. If a gnome does settle in an area or stay with a group for a longer period, it is almost always the result of some benefit that area gives to a vocation or obsession to which the gnome had dedicated himself.

Despite their extremely varied backgrounds and lack of a unifying homeland, gnomes do possess some common cultural traits. Male gnomes have a strange fondness for unusual hats and headgear, often wearing the most expensive and ostentatious head-covering they can afford (and that their chosen careers will allow them to wear without causing problems). Females rarely cover their heads, but proudly wear elaborate and eccentric hairstyles that often include intricate jeweled combs and headpieces.

Relations: Gnomes have difficulty interacting with the other races, on both emotional and physical levels. In many ways the very fact other races see gnomes as odd is itself the thing gnomes find most odd about other races, and this leads to a strong lack of common ground upon which understanding and relationships can be built. When two gnomes encounter one another, they generally assume some mutually beneficial arrangement can be reached, no matter how different their beliefs and traditions may be. Even if this turns out not to be the case, the gnomes continue to look for commonalities in their dealings with each other. The inability or unwillingness of members of other races to make the same effort when dealing with gnomes is both frustrating and confusing to most gnomes.

In many ways, it is gnomes’ strong connection to a wide range of apparently unconnected ideas that makes it difficult for other races to build relationships with them. Gnome humor, for example, is often focused on physical pranks, nonsensical rhyming nicknames, and efforts to convince others of outrageous lies that strain all credibility. Gnomes find such efforts hysterically funny, but their pranks often come across as malicious or senseless to other races, while gnomes in turn tend to think of the taller races as dull and lumbering giants. Gnomes get along reasonably well with halflings and humans, who at least have some traditions of bizarre, gnome-like humor. Gnomes generally feel dwarves and half-orcs need to lighten up, and attempt to bring levity into their lives with tricks, jokes, and outrageous tales the more dour races simply cannot see the sense of. Gnomes respect elves, but often grow frustrated with the slow pace at which members of the long-lived race make decisions. To gnomes, action is always better than inaction, and many gnomes carry several highly involved projects with them at all times to keep themselves entertained during rest periods.

Alignment and Religion: Although gnomes are impulsive tricksters, with sometimes inscrutable motives and equally confusing methods, their hearts are generally in the right place. What may seem a malicious act to a non-gnome is more likely an effort to introduce new acquaintances to new experiences, however unpleasant the experiences may be. Gnomes are prone to powerful fits of emotion, and find themselves most at peace within the natural world. They are usually neutral good, and prefer to worship deities who value individuality and nature.

Adventurers: Gnomes’ propensity for wanderlust, deep curiosity, and desire to master odd or esoteric skills and languages make them natural adventurers. They often become wanderers to experience new aspects of life, for nothing is as novel as the uncounted dangers facing adventurers. Many gnomes see adventuring as the only worthwhile purpose in life, and seek out adventures for no other motive than to experience them. Other gnomes desire to find some lost lore or material that has ties to their chosen vocation and believe only dragon hoards and ancient ruins can contain the lore they need, which can result in gnomes who think of themselves as bakers or weavers being just as accomplished adventurers as those who declare themselves to be mages or scouts.

Gnomes are physically weak compared to many races, and see this as a simple fact of life to be planned for accordingly. Most adventuring gnomes make up for their weakness with a proclivity for sorcery or bardic music, while others turn to alchemy or exotic weapons to grant them an edge in conflicts.

Male Names: Abroshtor, Bastargre, Halungalom, Krolmnite, Poshment, Zarzuket, Zatqualmie.

Female Names: Besh, Fijit, Lini, Majet, Neji, Pai, Queck, Trig.")

RaceAbilityScoreModifier.create!(race_id: gnome.id, ability_score: "Constitution", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: gnome.id, ability_score: "Charisma", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: gnome.id, ability_score: "Strength", bonus: -2)

RacialTrait.create!(name: "Type", race_id: gnome.id, description: "Gnomes are Humanoid creatures with the gnome subtype.")
RacialTrait.create!(name: "Languages", race_id: gnome.id, description: "Gnomes begin play speaking Common, Gnome, and Sylvan. Gnomes with high Intelligence scores can choose from the following: Draconic, Dwarven, Elven, Giant, Goblin, and Orc.")
RacialTrait.create!(name: "Defensive Training", race_id: gnome.id, description: "Gnomes gain a +4 dodge bonus to AC against monsters of the giant subtype.")
RacialTrait.create!(name: "Illusion Resistance", race_id: gnome.id, description: "Gnomes gain a +2 racial saving throw bonus against illusion spells and effects.")
RacialTrait.create!(name: "Keen Senses", race_id: gnome.id, description: "Gnomes receive a +2 racial bonus on Perception checks.")
RacialTrait.create!(name: "Obsessive", race_id: gnome.id, description: "Gnomes receive a +2 racial bonus on a Craft or Profession skill of their choice.")
RacialTrait.create!(name: "Gnome Magic", race_id: gnome.id, description: "Gnomes add +1 to the DC of any saving throws against illusion spells that they cast. Gnomes with Charisma scores of 11 or higher also gain the following spell-like abilities: 1/day—dancing lights, ghost sound, prestidigitation, and speak with animals. The caster level for these effects is equal to the gnome’s level. The DC for these spells is equal to 10 + the spell’s level + the gnome’s Charisma modifier.")
RacialTrait.create!(name: "Hatred", race_id: gnome.id, description: "Gnomes receive a +1 bonus on attack rolls against humanoid creatures of the reptilian and goblinoid subtypes because of their special training against these hated foes.")
RacialTrait.create!(name: "Weapon Familiarity", race_id: gnome.id, description: "Gnomes treat any weapon with the word “gnome” in its name as a martial weapon.")
RacialTrait.create!(name: "Low-Light Vision", race_id: gnome.id, description: "Gnomes can see twice as far as humans in conditions of dim light.")

print "Gnome created! \r"

elf = Race.create!(name: "Elf", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/99/1b/6f/991b6f9ccc7e3e98377fa0e0101acd4b.jpg", source_id: core_rulebook.id, description: "The long-lived elves are children of the natural world, similar in many superficial ways to fey creatures, though with key differences. While fey are truly linked to the flora and fauna of their homes, existing as the nearly immortal voices and guardians of the wilderness, elves are instead mortals who are in tune with the natural world around them. Elves seek to live in balance with the wild and understand it better than most other mortals. Some of this understanding is mystical, but an equal part comes from the elves’ long lifespans, which in turn gives them long-ranging outlooks. Elves can expect to remain active in the same locale for centuries. By necessity, they must learn to maintain sustainable lifestyles, and this is most easily done when they work with nature, rather than attempting to bend it to their will. However, their links to nature are not entirely driven by pragmatism. Elves’ bodies slowly change over time, taking on a physical representation of their mental and spiritual states, and those who dwell in a region for a long period of time find themselves physically adapting to match their surroundings, most noticeably taking on coloration that reflects the local environment.

Elves value their privacy and traditions, and while they are often slow to make friends at both the personal and national levels, once an outsider is accepted as a comrade, the resulting alliances can last for generations. Elves take great joy in forging alliances with races that share or exceed their long lifetimes, and often work to befriend dragons, outsiders, and fey. Those elves who spend their lives among the short-lived races, on the other hand, often develop a skewed perception of mortality and become morose, the result of watching wave after wave of companions age and die before their eyes.

Physical Description: Generally taller than humans, elves possess a graceful, slender physique that is accentuated by their long, pointed ears. It is a mistake, however, to consider them weak or feeble, as the thin limbs of an elf can contain surprising power. Their eyes are wide and almond-shaped, and filled with large, vibrantly colored pupils. The coloration of elves as a whole varies wildly, and is much more diverse than that of human populations. However, as their coloration often matches their surroundings, the elves of a single community may appear quite similar. Forest-dwelling elves often have variations of green, brown, and tan in their hair, eye, and even skin tones.

While elven clothing often plays off the beauty of the natural world, those elves who live in cities tend to bedeck themselves in the latest fashions. Where city-dwelling elves encounter other urbanites, the elves are often fashion trendsetters.

Society: Many elves feel a bond with nature and strive to live in harmony with the natural world. Although, like most, elves prefer bountiful lands where resources are plentiful, when driven to live in harsher climates, they work hard to protect and shepherd the region’s bounty, and learn how to maximize the benefit they receive from what little can be harvested. When they can carve out a sustainable, reliable life in deserts and wastelands, they take pride as a society in the accomplishment. While this can make them excellent guides to outsiders they befriend who must travel through such lands, their disdain of those who have not learned to live off the scant land as they have makes such friends rare.

Elves have an innate gift for craftsmanship and artistry, especially when working in wood, bone, ivory, or leather. Most, however, find manipulating earth and stone to be distasteful, and prefer to avoid forging, stonework, and pottery. When such work must be done within a community, a few elves may find themselves drawn to it, but regardless of their craftsmanship, such “dirt-wrights” are generally seen by other elves as being a bit off. In the most insular of elven societies, they may even be treated as lower class.

Elves also have an appreciation for the written word, magic, and painstaking research. Their naturally keen minds and senses, combined with their inborn patience, make them particularly suited to wizardry. Arcane research and accomplishment are seen as both practical goals, in line with being a soldier or architect, and artistic endeavors as great as poetry or sculpture. Within elven society, wizards are held in extremely high regard as masters of an art both powerful and aesthetically valued. Other spellcasters are not disdained, but do not gain the praise lavished upon elven wizards.

Relations: Elves are prone to dismissing other races, writing them off as rash and impulsive, yet on an individual level, they are excellent judges of character. In many cases an elf will come to value a specific member of another race, seeing that individual as deserving and respectable, while still dismissing the race as a whole. If called on this behavior, the elf often doesn’t understand why his “special friend” is upset the elf has noticed the friend is “so much better than the rest of his kind.” Even elves who see such prejudice for what it is must constantly watch themselves to prevent such views from coloring their thinking.

Elves are not foolish enough, however, to dismiss all aspects of other races and cultures. An elf might not want a dwarf neighbor, but would be the first to acknowledge dwarves’ skill at smithing and their tenacity in facing orc threats. Elves regard gnomes as strange (and sometimes dangerous) curiosities, but regard their magical talent as being worthy of praise and respect. Halflings are often viewed with a measure of pity, for these small folk seem to the elves to be adrift, without a traditional home. Elves are fascinated with humans, who seem to live in a few short years as full a life as an elf manages in centuries. In fact, many elves become infatuated with humans, as evidenced by the number of half-elves in the world. Elves have difficulty accepting crossbreeds of any sort, however, and usually disown such offspring. They similarly regard half-orcs with distrust and suspicion, assuming they possess the worst aspects of orc and human personalities.

Alignment and Religion: Elves are emotional and capricious, yet value kindness and beauty. Most elves are chaotic good, wishing all creatures to be safe and happy, but unwilling to sacrifice personal freedom or choice to accomplish such goals. They prefer deities who share their love of the mystic qualities of the world.

Adventurers: Many elves embark on adventures out of a desire to explore the world, leaving their secluded realms to reclaim forgotten elven magic or search out lost kingdoms established millennia ago by their ancestors. This need to see a wider world is accepted by their societies as a natural part of becoming mature and experienced individuals. Such elves are expected to return in some few decades and take up lives in their homelands once more, enriched both in treasure and in worldview. For those elves raised among humans, however, life within their homes—watching friends and family swiftly age and die—is often stifling, and the ephemeral and unfettered life of an adventurer holds a natural appeal. Elves generally eschew melee because of their relative frailty, preferring instead to engage enemies at range. Most see combat as unpleasant even when needful, and prefer it be done as quickly as possible, preferably without getting close enough to smell their foes. This preference for making war at a distance, coupled with their natural accuracy and grasp of the arcane, encourages elves to pursue classes such as wizards and rangers.

Male Names: Caladrel, Heldalel, Lanliss, Meirdrarel, Seldlon, Talathel, Variel, Zordlon.

Female Names: Amrunelara, Dardlara, Faunra, Jathal, Merisiel, Oparal, Soumral, Tessara, Yalandlara.")

RaceAbilityScoreModifier.create!(race_id: elf.id, ability_score: "Dexterity", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: elf.id, ability_score: "Intelligence", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: elf.id, ability_score: "Constitution", bonus: -2)

RacialTrait.create!(name: "Type", race_id: elf.id, description: "Elves are Humanoids with the elf subtype.")
RacialTrait.create!(name: "Languages", race_id: elf.id, description: "Elves begin play speaking Common and Elven. Elves with high Intelligence scores can choose from the following: Celestial, Draconic, Gnoll, Gnome, Goblin, Orc, and Sylvan.")
RacialTrait.create!(name: "Elven Immunities", race_id: elf.id, description: "Elves are immune to magic sleep effects and gain a +2 racial saving throw bonus against enchantment spells and effects.")
RacialTrait.create!(name: "Keen Senses", race_id: elf.id, description: "Elves receive a +2 racial bonus on Perception checks.")
RacialTrait.create!(name: "Elven Magic", race_id: elf.id, description: "Elves receive a +2 racial bonus on caster level checks made to overcome spell resistance. In addition, elves receive a +2 racial bonus on Spellcraft skill checks made to identify the properties of magic items.")
RacialTrait.create!(name: "Weapon Familiarity", race_id: elf.id, description: "Elves are proficient with longbows (including composite longbows), longswords, rapiers, and shortbows (including composite shortbows), and treat any weapon with the word “elven” in its name as a martial weapon.")
RacialTrait.create!(name: "Low-Light Vision", race_id: elf.id, description: "Elves can see twice as far as humans in conditions of dim light.")

print "Elf created! \r"

dwarf = Race.create!(name: "Dwarf", speed: 20, size: "Medium", img_url: "https://paizo.com/image/content/PathfinderRPG/PZO1129-Shaman.jpg", source_id: core_rulebook.id, description: "Dwarves are a stoic but stern race, ensconced in cities carved from the hearts of mountains and fiercely determined to repel the depredations of savage races like orcs and goblins. More than any other race, dwarves have acquired a reputation as dour and humorless artisans of the earth. It could be said that their history shapes the dark disposition of many dwarves, for they reside in high mountains and dangerous realms below the earth, constantly at war with giants, goblins, and other such horrors.

Dwarves are lovers of history and tradition, and their long lifespan leads to far less in the way of generational shifts in attitudes, styles, fashions, and trends than shorter-lived races exhibit. If a thing is not broken, they do not fix it or change it; and if it is broken, they fix it rather than replace it. Thrifty as a rule, dwarves are loath to discard anything unless it is truly ruined and unable to be fixed. At the same time, dwarves’ meticulous, near-obsessive attention to detail and durability in their craftsmanship makes that a rare occurrence, as the things they make are built to last. As a result, buildings, artwork, tools, housewares, garments, weapons, and virtually everything else made by dwarves still sees regular use at an age when such items would be relegated to museum pieces, dusty antique shelves, or junkyard fodder by other races. Taken together, these traits create the impression that dwarves are a race frozen in time.

Nothing could be further from the truth, however, as dwarves are both thoughtful and imaginative, willing to experiment, if always keen to refine and perfect a new technique or product before moving on to the next one. Dwarves have achieved feats of metallurgy, stonework, and engineering that have consistently outpaced the technological advances of other races, though some non-dwarven races have used magic to supplement and perfect their own creations to achieve the same ends through mystical rather than mundane means. They are also a race typified by stubborn courage and dedication to seeing tasks through to completion, whatever the risks. These traits have led dwarves to explore and settle in extreme environments that would cause other races to quail and retreat. From the darkest depths of the underworld to the highest mountain peaks, from rusting iron citadels along desolate rocky coasts to squat jungle ziggurats, dwarves have established their enclaves and redoubts, holding them against all comers or perishing to the last and leaving only their enduring monuments to stand as their legacy. While it is said that dwarves are not venturesome or inventive, it would be more accurate to say that they maintain a focus on and dedication to each task they undertake and every change they adopt, vetting such changes thoroughly before adopting them wholeheartedly. When faced with new circumstances and new needs, they react by applying tried and true tools and techniques systematically, using existing methods whenever possible rather than trying to invent novel solutions for every situation. If necessity requires, however, they throw themselves with equal vigor into developing the next perfect procedure for demolishing the obstacles that get in their way. Once their desired goal is obtained, they focus on consolidating each new piece of territory or conceptual advance. Dwarves thus rarely overextend themselves, but they also may miss opportunities to seize the initiative and maximize the advantages they create.

Physical Description: Dwarves are a short and stocky race, and stand about a foot shorter than most humans, with wide, compact bodies that account for their burly appearance. Male and female dwarves pride themselves on the long length of their hair, and men often decorate their beards with a variety of clasps and intricate braids. Clean-shavenness on a male dwarf is a sure sign of madness, or worse—no one familiar with their race trusts a beardless dwarven man.

Society: The great distances between dwarves’ mountain citadels account for many of the cultural differences that exist within their society. Despite these schisms, dwarves throughout the world are characterized by their love of stonework, their passion for stone- and metal-based craftsmanship and architecture, and their fierce hatred of giants, orcs, and goblinoids. In some remote enclaves, such as those areas where these races are uncommon or unheard of, dwarves’ fixation on security and safety combined with their rather pugnacious nature leads them to find enemies or at least rivals wherever they settle. While they are not precisely militaristic, they learned long ago that those without axes can be hewn apart by them, and thus dwarves everywhere are schooled to be ready to enforce their rights and claims by force of arms. When their patience with diplomacy is exhausted, dwarves do not hesitate to adopt what they call “aggressive negotiations.”

Relations: Dwarves and orcs have long dwelt in proximity to one another, and share a history of violence as old as both races. Dwarves generally distrust and shun half-orcs. They find elves, gnomes, and halflings to be too frail, flighty, or “pretty” to be worthy of proper respect. It is with humans that dwarves share the strongest link, for humans’ industrious nature and hearty appetites come closest to matching those of the dwarven ideal.

Alignment and Religion: Dwarves are driven by honor and tradition. While they are often stereotyped as standoffish, they have a strong sense of friendship and justice, and those who win their trust understand that while they work hard, they play even harder—especially when good ale is involved. Most dwarves are lawful good.

Adventurers: Although dwarven adventurers are rare compared to humans, they can be found in most regions of the world. Dwarves often leave the confines of their redoubts to seek glory for their clans, to find wealth with which to enrich the fortress-homes of their birth, or to reclaim fallen dwarven citadels from racial enemies. Dwarven warfare is often characterized by tunnel fighting and melee combat, and as such most dwarves tend toward classes such as fighters and barbarians.

Male Names: Dolgrin, Grunyar, Harsk, Kazmuk, Morgrym, Rogar.

Female Names: Agna, Bodill, Ingra, Kotri, Rusilka, Yangrit.")

RaceAbilityScoreModifier.create!(race_id: dwarf.id, ability_score: "Constitution", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: dwarf.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: dwarf.id, ability_score: "Charisma", bonus: -2)

RacialTrait.create!(name: "Type", race_id: dwarf.id, description: "Dwarves are humanoids with the dwarf subtype.")
RacialTrait.create!(name: "Slow and Steady", race_id: dwarf.id, description: "Dwarves have a base speed of 20 feet, but their speed is never modified by armor or encumbrance.")
RacialTrait.create!(name: "Languages", race_id: dwarf.id, description: "Dwarves begin play speaking Common and Dwarven. Dwarves with high Intelligence scores can choose from the following: Giant, Gnome, Goblin, Orc, Terran, and Undercommon.")
RacialTrait.create!(name: "Defensive Training", race_id: dwarf.id, description: "Dwarves gain a +4 dodge bonus to AC against monsters of the giant subtype.")
RacialTrait.create!(name: "Hardy", race_id: dwarf.id, description: "Dwarves gain a +2 racial bonus on saving throws against poison, spells, and spell-like abilities.")
RacialTrait.create!(name: "Stability", race_id: dwarf.id, description: "Dwarves gain a +4 racial bonus to their Combat Maneuver Defense when resisting a bull rush or trip attempt while standing on the ground.")
RacialTrait.create!(name: "Greed", race_id: dwarf.id, description: "Dwarves gain a +2 racial bonus on Appraise checks made to determine the price of non-magical goods that contain precious metals or gemstones.")
RacialTrait.create!(name: "Stonecutting", race_id: dwarf.id, description: "Dwarves gain a +2 bonus on Perception checks to notice unusual stonework, such as traps and hidden doors located in stone walls or floors. They receive a check to notice such features whenever they pass within 10 feet of them, whether or not they are actively looking.")
RacialTrait.create!(name: "Darkvision", race_id: dwarf.id, description: "Dwarves can see perfectly in the dark up to 60 feet.")
RacialTrait.create!(name: "Hatred", race_id: dwarf.id, description: "Dwarves gain a +1 racial bonus on attack rolls against humanoid creatures of the orc and goblinoid subtypes because of their special training against these hated foes.")
RacialTrait.create!(name: "Weapon Familiarity", race_id: dwarf.id, description: "Dwarves are proficient with battleaxes, heavy picks, and warhammers, and treat any weapon with the word “dwarven” in its name as a martial weapon.")

print "Dwarf Created! \r"

minotaur_race = Race.create!(name: "Minotaur", speed: 30, size: "Large", img_url: "https://i.pinimg.com/originals/aa/c5/20/aac520ba14f2133a71738d900f3fa3d4.jpg", source_id: custom.id, description: "Nothing holds a grudge like a minotaur. Scorned by the civilized races centuries ago and born from a deific curse, minotaurs have hunted, slain, and devoured lesser humanoids in retribution for real or imagined slights for as long as anyone can remember. Many cultures have legends of how the first minotaurs were created by vengeful or slighted gods who punished humans by twisting their forms, robbing them of their intellects and beauty, and giving them the heads of bulls. Yet most modern minotaurs hold these legends in contempt and believe that they are not divine mockeries but divine paragons created by a potent and cruel demon lord named Baphomet.

The traditional minotaur’s lair is a maze, be it a legitimate labyrinth constructed to baffle and confuse, an accidental one such as a city sewer system, or a naturally occurring one such as a tangle of caverns and other underground passageways. Employing their innate cunning, minotaurs use their maze lairs to vex unwary foes who seek them out or who simply stumble into the lairs and become lost, slowly hunting the intruders as they try in vain to find a way out. Only when despair has truly set in does the minotaur move in to strike at its lost victims. When dealing with a group, minotaurs often let one creature escape, to spread the tale of horror and lure others to their mazes in hope of slaying the beasts. Of course, to minotaurs, these would-be heroes make for delicious meals.

Minotaurs might also be found in the employ of a more powerful monster or evil creature, serving it so long as they can still hunt and dine as they please. Usually, this means guarding some powerful object or valuable location, but it can also be a sort of mercenary work, hunting down the foes of its master.

Minotaurs are relatively straightforward combatants, using their horns to horribly gore the nearest living creature when combat begins.")

RaceAbilityScoreModifier.create!(race_id: minotaur_race.id, ability_score: "Strength", bonus: 4)
RaceAbilityScoreModifier.create!(race_id: minotaur_race.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: minotaur_race.id, ability_score: "Intelligence", bonus: -2)

RacialTrait.create!(name: "Type", race_id: minotaur_race.id, description: "Minotaurs are monstrous humanoids.")
RacialTrait.create!(name: "Languages", race_id: minotaur_race.id, description: "Minotaurs begin play speaking Common and Giant. Minotaurs with high Intelligence scores can choose from the following: Dwarven, Orc, Sylvan, Terran, and Undercommon.")
RacialTrait.create!(name: "Darkvision", race_id: minotaur_race.id, description: "Minotaurs can see in the dark up to 60 feet.")
RacialTrait.create!(name: "Natural Cunning", race_id: minotaur_race.id, description: "Minotaurs have a +4 racial bonus against the maze spell and skill checks and saving throws to avoid getting lost, and a +2 racial bonus to skill checks to track other creatures.")
RacialTrait.create!(name: "Natural Armor", race_id: minotaur_race.id, description: "Minotaurs have +1 natural armor bonus to their AC.")
RacialTrait.create!(name: "Gore", race_id: minotaur_race.id, description: "Minotaurs have a gore attack that deals 1d6 points of damage.")

print "Minotaur Created! \r"

half_orc = Race.create!(name: "Half-Orc", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/24/6a/e7/246ae72fca915bb327ab8949c07156a6.jpg", source_id: core_rulebook.id, description: "As seen by civilized races, half-orcs are monstrosities, the result of perversion and violence—whether or not this is actually true. Half-orcs are rarely the result of loving unions, and as such are usually forced to grow up hard and fast, constantly fighting for protection or to make names for themselves. Half-orcs as a whole resent this treatment, and rather than play the part of the victim, they tend to lash out, unknowingly confirming the biases of those around them. A few feared, distrusted, and spat-upon half-orcs manage to surprise their detractors with great deeds and unexpected wisdom—though sometimes it’s easier just to crack a few skulls. Some half-orcs spend their entire lives proving to full-blooded orcs that they are just as fierce. Others opt for trying to blend into human society, constantly demonstrating that they aren’t monsters. Their need to always prove themselves worthy encourages half-orcs to strive for power and greatness within the society around them.

Physical Description: Half-orcs average around 6 feet tall, with powerful builds and greenish or grayish skin. Their canine teeth often grow long enough to protrude from their mouths, and these “tusks,” combined with heavy brows and slightly pointed ears, give them their notoriously bestial appearance. While half-orcs may be impressive, few ever describe them as beautiful. Despite these obvious orc traits, half-orcs are as varied as their human parents.

Society: Unlike half-elves, where at least part of society’s discrimination is born out of jealousy or attraction, half-orcs get the worst of both worlds: physically weaker than their orc kin, they also tend to be feared or attacked outright by humans who don’t bother making the distinction between full orcs and half bloods. Even on the best of terms, half-orcs in civilized societies are not exactly accepted, and tend to be valued only for their physical abilities. On the other hand, orc leaders have been known to deliberately spawn half-orcs, as the half breeds make up for their lack of physical strength with increased cunning and aggression, making them natural leaders and strategic advisors. Within orc tribes, half-orcs find themselves constantly striving to prove their worth in battle and with feats of strength. Half-orcs raised within orc tribes are more likely to file their tusks and cover themselves in tribal tattoos. Tribal leaders quietly recognize that half-orcs are often more clever than their orc cousins and often apprentice them to the tribe’s shaman, where their cunning might eventually strengthen the tribe. Apprenticeship to a shaman is a brutal and often short-lived distinction, however, and those half-orcs who survive it either become influential in the tribe or are eventually driven to leave.

Half-orcs have a much more mixed experience in human society, where many cultures view them as little more than monsters. They often are unable even to get normal work, and are pressed into service in the military or sold into slavery. In these cultures, half-orcs often lead furtive lives, hiding their nature whenever possible. The dark underworld of society is often the most welcoming place, and many half-orcs wind up serving as enforcers for thieves guilds or other types of organized crime. Less commonly, human cities may allow half-orcs a more normal existence, even enabling them to develop small communities of their own. These communities are usually centered around the arena districts, the military, or mercenary organizations where their brute strength is valued and their appearance is more likely to be overlooked. Even surrounded by their own kind, half-orc life isn’t easy. Bullying and physical confrontation comes easy to a people who have been raised with few other examples of behavior. It is, however, one of the best places for young half-orcs to grow up without prejudice, and these small enclaves are one of the few places where half-orc marriages and children are truly accepted and sometimes cherished.

Even more rarely, certain human cultures come to embrace half-orcs for their strength. There are stories of places where people see half-orc children as a blessing and seek out half-orc or orc lovers. In these cultures, half-orcs lead lives not much different from full-blooded humans.

Relations: Elves and dwarves tend to be the least accepting of half-orcs, seeing in them too great a resemblance to their racial enemies, and other races aren’t much more understanding. A lifetime of persecution leaves the average half-orc wary and quick to anger, yet people who break through his savage exterior might find a well-hidden core of empathy. Human societies with few orc problems tend to be the most accommodating, and half-orcs dwelling there can often find work as mercenaries and enforcers. Even in places where there is a general tolerance for half-orcs, however, many humans mistreat them when they can get away with it.

Half-orcs are envious of the measure of acceptance half-elves have within human and elven society and resent their physical beauty, which contrasts starkly to the half-orcs’ brutish appearance. While half-orcs avoid antagonizing their half-breed cousins directly, they won’t hesitate to undermine them if the opportunity presents itself.

Of all the other races, half-orcs are most sympathetic with halflings, who often have an equally rough lot in life. Half-orcs respect the halfling’s ability to blend in and disappear and admire their perpetually cheerful outlook on life in spite of hardships. Halflings fail to appreciate this fact because they usually are too busy avoiding the large, intimidating half-orcs.

Alignment and Religion: Forced to live either among brutish orcs or as lonely outcasts in civilized lands, most half-orcs are bitter, violent, and reclusive. Evil comes easily to them, but they are not evil by nature—rather, most half-orcs are chaotic neutral, having been taught by long experience that there’s no point doing anything but that which directly benefits themselves. Half-orcs worship the human or orc gods venerated in the area where they were raised. Those who live alongside humans most often worship human gods of war, freedom, or destruction. Half-orcs raised in orc tribes find themselves most drawn to the gods of blood, fire, and iron—depending more on what god the tribe worships rather than the half-orcs’ personal preference. Many half-orcs are contrary about religion, either ignoring it entirely, or getting deeply involved in it and trying to find meaning in a life filled with hate and misunderstanding; even a half-orc divine spellcaster may wrestle with doubt and anger about religion and faith.

Adventurers: Staunchly independent, many half-orcs take to lives of adventure out of necessity, seeking to escape their painful pasts or improve their lot through force of arms. Others, more optimistic or desperate for acceptance, take up the mantle of crusaders in order to prove their worth to the world. Half-orcs raised in orc societies often take up the brutish ways of those around them, becoming fighters, barbarians, or rangers. Half-orcs who survive their shaman training may eventually succeed their masters as tribal shamans, or flee the tribe and practice their magic as outcasts or explorers.

Half-orcs are just as likely to have children that possess an innate talent for sorcery as any other race, with the abyssal, destined, and elemental (fire) bloodlines being the most common types of sorcerers. Half-orcs are fascinated by alchemy, and its destructive capabilities make its usefulness obvious in any orc tribe. Half-orc alchemists treat themselves as living experiments, even to the point of trying to separate their orc and human halves through alchemy. Other alchemists use their powers to enhance their physical abilities and thus increase their status within orc communities.

In human societies, half-orcs have a few more options. Many find it easy to take advantage of the brute strength and work as mercenaries or caravan guards. Crime is another easy route for half-orcs, as there are plenty of criminals looking for a strong arm. Half-orc clerics in human communities are fairly rare; the more religious half-orcs more often turn to (or get pushed to) the martial aspects of religious service and become paladins or inquisitors. Half-orcs usually lack the patience and money required to become a wizard.

Males names: Ausk, Davor, Hakak, Kizziar, Makoa, Nesteruk, Tsadok.

Female names: Canan, Drogheda, Goruza, Mazon, Shirish, Tevaga, Zeljka.")

RaceAbilityScoreModifier.create!(race_id: half_orc.id, ability_score: "Any", bonus: 2)

RacialTrait.create!(name: "Type", race_id: half_orc.id, description: "Half-orcs are Humanoid creatures with both the human and orc subtypes.")
RacialTrait.create!(name: "Languages", race_id: half_orc.id, description: "Half-orcs begin play speaking Common and Orc. Half-orcs with high Intelligence scores can choose from the following: Abyssal, Draconic, Giant, Gnoll, and Goblin.")
RacialTrait.create!(name: "Intimidating", race_id: half_orc.id, description: "Half-orcs receive a +2 racial bonus on Intimidate checks due to their fearsome nature.")
RacialTrait.create!(name: "Orc Ferocity", race_id: half_orc.id, description: "Once per day, when a half-orc is brought below 0 hit points but not killed, he can fight on for 1 more round as if disabled. At the end of his next turn, unless brought to above 0 hit points, he immediately falls unconscious and begins dying.")
RacialTrait.create!(name: "Weapon Familiarity", race_id: half_orc.id, description: "Half-orcs are proficient with greataxes and falchions and treat any weapon with the word “orc” in its name as a martial weapon.")
RacialTrait.create!(name: "Darkvision", race_id: half_orc.id, description: "Half-orcs can see in the dark up to 60 feet.")
RacialTrait.create!(name: "Orc Blood", race_id: half_orc.id, description: "Half-orcs count as both humans and orcs for any effect related to race.")

print "Half-Orc Created! \r"

vanara = Race.create!(name: "Vanara", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/cb/29/b4/cb29b44c13fcabf092b44d6d954ec279.png", source_id: bestiary_3.id, description: "Vanaras are intelligent, monkeylike humanoids that live in deep, warm forests and lush jungles. A vanara’s body is covered in a thin coat of soft fur, and individuals with chestnut, ivory, and even golden coats are common. Despite their fur, vanaras can grow lengthy hair on their head just as humans can, and both male and female vanaras take pains to wear elaborate hairstyles for important social functions. The hair on a vanara’s head matches the color of its fur. All vanaras have long, prehensile tails and handlike feet capable of well-articulated movements. A vanara stands slightly shorter and weighs slightly less than a typical human.")

RaceAbilityScoreModifier.create!(race_id: vanara.id, ability_score: "Dexterity", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: vanara.id, ability_score: "Wisdom", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: vanara.id, ability_score: "Charisma", bonus: -2)

type_vanara = RacialTrait.create!(name: "Type", race_id: vanara.id, description: "Vanaras are humanoids with the vanara subtype.")
RacialTrait.create!(name: "Climb Speed", race_id: vanara.id, description: "Vanaras have a climb speed of 20 feet.")
RacialTrait.create!(name: "Languages", race_id: vanara.id, description: "Vanaras begin play speaking Common and Vanaran. Vanaras with high Intelligence scores can choose from the following: Aklo, Celestial, Elven, Gnome, Goblin, and Sylvan.")
nimble_vanara = RacialTrait.create!(name: "Nimble", race_id: vanara.id, description: "Vanaras have a +2 racial bonus on Acrobatics and Stealth checks.")
RacialTrait.create!(name: "Low-Light Vision", race_id: vanara.id, description: "Vanaras can see twice as far as a human in dim light.")
RacialTrait.create!(name: "Prehensile Tail", race_id: vanara.id, description: "A vanara has a long, flexible tail that she can use to carry objects. She cannot wield weapons with her tail, but the tail allows her to retrieve a small, stowed object carried on her person as a swift action.")

change_size_vanara = AlternateRacialTrait.create!(race_id: vanara.id, name: "Change Size", description: "One vanara in every 500 is gifted with limited shapeshifting ability. Such a creature can adjust her size at will. She gains the change shape ability and the shapeshifter subtype. Instead of changing appearance, she can use change shape to reduce her size category to Small. Her ability scores don't change, only her size (and thus her weapon damage); normal size penalties and bonuses to AC and CMD and on attack and skill rolls apply. Changing size or returning to her true size is a full-round action. This racial trait alters the vanara's type and replaces nimble.", source_id: blood_of_the_beast.id)
  AlternateTraitReplaceRacialTrait.create!(alternate_racial_trait_id: change_size_vanara.id, racial_trait_id: nimble_vanara.id)
  AlternateTraitReplaceRacialTrait.create!(alternate_racial_trait_id: change_size_vanara.id, racial_trait_id: type_vanara.id)


print "Vanara Created! \r"

catfolk = Race.create!(name: "Catfolk", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/736x/fb/84/c0/fb84c0a397204a1fe8c96e6a20bf2fa8.jpg", source_id: bestiary_3.id, description: "Catfolk are a race of natural explorers who rarely tire of trailblazing, but such trailblazing is not limited merely to the search for new horizons in distant lands. Many catfolk see personal growth and development as equally valid avenues of exploration. While most catfolk are nimble, capable, and often active creatures, there is also a strong tendency among some catfolk to engage in quiet contemplation and study. Such individuals are interested in finding new solutions to age-old problems and questioning even the most steadfast philosophical certainties of the day. They are curious by nature, and catfolk culture never discourages inquisitiveness, but rather fosters and encourages it. Many are seen as quirky extroverts by members of other races, but within catfolk tribes there is no shame attached to minor peculiarities, eccentricities, or foolhardiness. All but the most inwardly focused catfolk enjoy being the center of attention, but not at the expense of their tribe, whether it’s the one the catfolk are born into or the tribe they choose through the bonds of friendship with other creatures. catfolk tend to be both generous and loyal to their family and friends.

Physical Description: In general, catfolk are lithe and slender, standing midway between dwarves and humans in stature. While clearly humanoid, they possess many feline features, including a coat of soft fine fur, slit pupils, and a sleek, slender tail. Their ears are pointed, but unlike those of elves, are more rounded and catlike. They manipulate objects as easily as any other humanoid, but their fingers terminate in small, sharp, retractable claws. These claws are typically not powerful enough to be used as weapons, but some members of the species—either by quirk of birth or from years of honing—can use them with deadly effect. Feline whiskers are not uncommon, but not universal, and hair and eye color vary greatly.

Society: While self-expression is an important aspect of catfolk culture, it is mitigated by a strong sense of community and group effort. In the wild, catfolk are a hunter-gatherer tribal people. The pursuit of personal power never comes before the health and well-being of the tribe. More than one race has underestimated this seemingly gentle people only to discover much too late that their cohesion also provides them great strength.

Catfolk prefer to be led by their most competent members, usually a council of sub-chieftains chosen by their peers, either though consensus or election. The sub-chiefs then choose a chieftain to lead in times of danger and to mediate disputes among the sub-chiefs. The chieftain is the most capable member of the tribe, and is often magically talented. catfolk who settle in more urban and civilized areas still cling to a similar tribal structure, but often see friends outside the tribe, even those from other races, as part of their extended tribe. Within adventuring groups, catfolk who do not consider themselves the obvious choice as chieftain often defer to the person who most resembles their cultural ideal of a chieftain.

Relations: Adaptable and curious, catfolk get along with almost any race that extends reciprocal goodwill. They acclimate easily to halflings, humans, and especially elves. catfolk and elves share a passionate nature, as well as a love of music, dance, and storytelling; elven communities often gently mentor catfolk tribes, though such elves are careful not to act in a patronizing manner toward their feline friends. Gnomes make natural companions for catfolk, as catfolk enjoy gnomes’ strange and obsessive qualities. catfolk are tolerant of kobolds as long as the reptilian beings respect the Catfolk’s boundaries. The feral nature of orcs stirs as much puzzlement as it does revulsion among catfolk, as they don’t understand orcs’ savagery and propensity for self-destruction. Half-orcs, on the other hand, intrigue catfolk, especially those half-orcs who strive to excel beyond the deleterious and hateful nature of their savage kin. catfolk often view goblins and ratfolk as vermin, as they disdain the swarming and pernicious tendencies of those races.

Alignment and Religion: With community and unselfish cooperation at the center of their culture, as well as a good-natured curiosity and willingness to adapt to the customs of many other races, most catfolk tend toward good alignments. The clear majority of catfolk are also chaotic, as wisdom is not their strongest virtue; nevertheless, there are exceptions with cause.

Adventurers: Natural born trackers, the hunter-gatherer aspect of their tribes pushes many catfolk toward occupations as rangers and druids by default, but such roles don’t always speak to their love of performance art, be it song, dance, or storytelling. catfolk legends also speak of a rich tradition of great sorcerer heroes. Those catfolk who internalize their wanderlust often become wizards and monks, with many of those monks taking the path of the nimble guardian. While catfolk cavaliers and inquisitors are rare (steadfast dedication to a cause is often alien to the catfolk mindset) individuals who choose these paths are never looked down upon. catfolk understand that exploration and self-knowledge can lead down many roads, and are accepting of nearly all professions and ways of life.

Male Names: Carruth, Drewan, Ferus, Gerran, Nyktan, Rouqar, Zithembe.

Female Names: Alyara, Duline, Hoya, Jilyana, Milah, Miniri, Siphelele, Tiyeri.")

RaceAbilityScoreModifier.create!(race_id: catfolk.id, ability_score: "Dexterity", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: catfolk.id, ability_score: "Charisma", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: catfolk.id, ability_score: "Wisdom", bonus: -2)

RacialTrait.create!(name: "Type", race_id: catfolk.id, description: "Catfolk are humanoids with the catfolk subtype.")
RacialTrait.create!(name: "Languages", race_id: catfolk.id, description: "Catfolk begin play speaking Common and Catfolk. Catfolk with high Intelligence scores can choose from the following languages: Elven, Gnoll, Gnome, Goblin, Halfling, Orc, and Sylvan.")
RacialTrait.create!(name: "Cat's Luck", race_id: catfolk.id, description: "Once per day when a catfolk makes a Reflex saving throw, he can roll the saving throw twice and take the better result. He must decide to use this ability before the saving throw is attempted.")
RacialTrait.create!(name: "Natural Hunter", race_id: catfolk.id, description: "Catfolk receive a +2 racial bonus on Perception, Stealth, and Survival checks.")
RacialTrait.create!(name: "Sprinter", race_id: catfolk.id, description: "Catfolk gain a 10-foot racial bonus to their speed when using the charge, run, or withdraw actions.")
RacialTrait.create!(name: "Low-Light Vision", race_id: catfolk.id, description: "Catfolk have low-light vision allowing them to see twice as far as humans in dim light.")

print "Catfolk Created! \r"

ganzi = Race.create!(name: "Ganzi", speed: 30, size: "Medium", img_url: "https://pathfinderwiki.com/mediawiki/images/thumb/a/ad/Ganzi.jpg/250px-Ganzi.jpg", source_id: planar_adventures.id, description: "Unlike the crossbreed aasimars and tieflings, ganzi are mutations caused by generations of exposure to chaotic energies in the Material Plane.

Ganzi share many traits with proteans. They are fluid and flexible, resilient, resistant to the energies of decay and entropy, and can sense the delicate currents of chaos that bind the planes together, alerting them to danger and deception and allowing enterprising ganzi to stir those eddies and rewrite a creature’s fortunes. They also share the proteans’ curiosity and disdain for order, compulsively wandering the world to see what can be seen.

Physical Description: No two ganzi look alike, but most appear human with one or two unusual physical qualities—often slowly-shifting patterns of birthmarks on their hands, feet, or faces. A rare few display reptilian or birdlike qualities such as scaly skin, feathery hair, or needlesharp teeth. An unfortunate few are born missing major features, or with ears, eyes, or fingers in unusual places on their bodies. Their hair and eyes invariably shine in vibrant colors, which shift over the course of weeks or months. Less common than aasimars, tieflings, or geniekin, ganzi are often mistaken for these other races.

Society: Ganzi tend to distrust organization and tradition, and rarely form strong communities or cultural touchstones. Instead they blend into the wilder ringes of their parent culture, joining artist conclaves, anarchist collectives, dissidents, protesters, or revolutionaries challenging tradition.

Relations: Ganzi excel at blending in with other races, despite their bombastic tendencies and unusual physical traits. Most simply appear as excitable humans. Many ganzi never realize their true heritage, mistaking their strange abilities for sorcerous aptitude. Those who recognize a touch of the planes in their blood get on well with other native outsider races— geniekin especially. Their experiences as outcasts in a larger society means they appreciate the challenges faced by half-elves and half-orcs, even if their struggles are different.

Alignment and Religion: As might be expected for a people touched by otherworldly chaos, ganzi tend to reject rigid codes and laws, but they feel no strong pulls toward good or evil, and tend most often toward chaotic neutral alignment. Ganzi who honor the gods prefer those who guide them on their journeys or who reward quick wit.

Adventurers: Ganzi naturally slip into (and out of) the role of adventurer as they explore the world. Most succumb to a wanderlust that carries them out into the wilderness or drives them to explore the strange corners of their home communities, while others find that their natural impulse to test limits and poke at holes earns them enemies from whom they must flee.

Ganzis are the end result of planar chaos touching living creatures. Where the planes brush against the Material Plane or where chaotic inhabitants (be they chaos beasts, proteans, valkyries, or others) affect or influence mortal life, ganzis are born in their wake like ripples in a pond.

While ganzis are superficially human in appearance, they often have features that set them apart from the rest of humanity. These features can vary widely; one ganzi might have a discolored hand that flickers with entropic (but harmless) energy, while another might have brightly colored scales covering her shoulders and back, and yet another might have horns and glowing green eyes.

Likewise, ganzi height and weight can vary dramatically, even by human standards, but the average ganzi stands between 5 and 6 feet tall and weighs anywhere from 100 to 300 pounds.

Many ganzis are mistaken for aasimars or tieflings at birth, but in truth ganzi births very rarely result from mortals mingling with outsiders. The vast majority are born after one or both parents were exposed to a force of chaotic or entropic energy. As such, the circumstances of a ganzi’s childhood can vary dramatically and depend on the parents’ tolerance for the unexpected.

A ganzi’s tendency towards chaos exacerbates this, with many ganzis developing gregarious, iconoclastic, or thrill-seeking reputations among their peers. A sizable minority of ganzis appear completely human early in life, their anarchic heritage manifesting shortly after puberty in a chaotic—and traumatic—spasm of rapid evolution. While ganzis are most commonly of human stock, it is not unknown for ganzis to be born among other races. These ganzis bear superficial signs of their nonhuman heritage, but their statistics and abilities are identical to those born to humans.

Like other native outsiders of humanoid heritage, ganzis are found most often scattered amidst the societies of their parent races. The rare ganzis who choose not to wander may live their entire lives without meeting another of their kind. Due to their scattered pattern of birth and their tendency towards wandering lifestyles, ganzis rarely congregate in significant numbers and almost never form cultures of their own. On occasion, a Material Plane society in a region with links to other planes will produce enough ganzis over time for them to form their own subculture, but such societies are rare indeed.

Given their relationship to the Cerulean Void and its natives, it is not uncommon for ganzis with awareness of their heritage and the resources for planar travel to journey to the Maelstrom. Some ganzis make this pilgrimage to seek out proteans, valkyries, or other natives of the Maelstrom in hopes of understanding their own place in the cosmos, while others are drawn to the idea of communing with the vast and potent force of primordial chaos itself.

As befits their chaotic origin, the personality and outlook of individual ganzis can vary significantly. Often chaotic-aligned, with no particular tendency towards good or evil, many find themselves drawn to the life of the wandering adventurer. Ganzis are commonly possessed of deep curiosity and powerful creative talent, leading many to become artists or bards, while others enjoy the alchemist’s dichotomous mastery of creation and destruction. Sorcerous talents and oracular mysteries of all varieties are unsurprisingly common among ganzis.")

RaceAbilityScoreModifier.create!(race_id: ganzi.id, ability_score: "Constitution", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: ganzi.id, ability_score: "Charisma", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: ganzi.id, ability_score: "Intelligence", bonus: -2)

RacialTrait.create!(name: "Type", race_id: ganzi.id, description: "Ganzis are outsiders with the native subtype.")
RacialTrait.create!(name: "Languages", race_id: ganzi.id, description: "Ganzis begin play speaking Common and one of the following: Abyssal, Celestial, or Protean. Ganzis with high Intelligence scores can select any of those languages as bonus languages, along with Aklo, Aquan, Auran, Ignan, Sylvan, or Terran.")
RacialTrait.create!(name: "Darkvision", race_id: ganzi.id, description: "Ganzis can see in the dark up to 60 feet.")
RacialTrait.create!(name: "Maelstrom Resistance", race_id: ganzi.id, description: "Ganzis have acid resistance 5, electricity resistance 5, and sonic resistance 5, and they gain a +2 racial bonus on saving throws against spells of the polymorph subschool.")
RacialTrait.create!(name: "Skilled", race_id: ganzi.id, description: "Ganzis gain a +2 racial bonus on Sense Motive and Survival checks.")
RacialTrait.create!(name: "Ganzi Oddity", race_id: ganzi.id, description: "As creatures infused with the entropic forces of the Maelstrom, all ganzis have a distinct and unusual oddity that manifests as a physical or magical ability that sets the ganzi apart. Typically, a ganzi’s oddity is chosen from the most common manifestations of entropy listed below, but other, more unique oddities can certainly exist. The numbers listed for each option can be used to randomly determine what form of ganzi oddity a particular Ganzi might have, at the GM’s option, but the quibble ability is the most common.

1–2: Chaos Champion (Su) Ganzis with a lineage linked to the einherji often become crusaders for the forces of entropy and excel in combat against lawful beings. The ganzi can smite law once per day as a swift action, targeting a lawful foe. She adds her Charisma modifier as a bonus on attack rolls and gains a bonus on damage rolls equal to her Hit Dice. Once activated, smite law persists until the target is dead or the ganzi rests, whichever comes first.

3–4: Entropic Flesh (Ex) Ganzis with lineages that link strongly to chaos beasts retain some of their ancestors’ immunity to transformation. In addition to gaining a +2 bonus on Escape Artist checks and to CMD against grapple combat maneuvers, when such ganzis are affected by a hostile transmutation effect (such as polymorphing or petrification), they can attempt a new saving throw at the start of their next turn to end the effect. They gain a +4 bonus on this second saving throw, but if they fail, the transmutation effect persists as long as it normally would.

5–6: Prehensile Tail (Ex) Ganzis with lineages that are particularly influenced by the presence of proteans often have colorful feathers, scales, or skin, and a long serpentine tail. This tail can be used to carry items. While ganzis with this oddity cannot wield weapons with their tails, they can use their tails to retrieve small, stowed objects carried on their persons as a swift action.

7–14: Quibble (Su) For most ganzis, the influence of chaos is relatively subtle and manifests as an ability to infect others with entropy and unexpected luck (be it good luck or bad). Once per day as an immediate action, a ganzi can twist probability and alter the luck of a single creature within 20 feet, forcing it to reroll a single d20 roll it has just made. The target must take the second result, even if it is worse. A ganzi can use this ability after the target has rolled but must use it before the GM declares whether the roll was a success or failure. Unwilling creatures can resist a ganzi’s quibble with a successful Will save (DC = 10 + half the ganzi’s level + the ganzi’s Charisma modifier). This is a curse effect.

15–18: Spell-Like Ability (Sp) Ganzis whose chaotic influences rise from regions other than the Maelstrom or its inhabitants often manifest an oddity that duplicates the effects of a specific spell. Such ganzis gain one of the following spell-like abilities, usable once per day at a caster level equal to the ganzi’s HD: alter self, blur, detect thoughts, hideous laughter, minor image, shatter, or spider climb.

19–20: Weaponplay (Ex) Ganzis with lineages that link to the valkyries manifest their heritage in their skill in combat. Such ganzis are always proficient with all simple and martial weapons, and they can qualify for feats normally available only to fighters (such as Weapon Specialization) even if they don’t have any fighter class levels.

Expanded Oddities
Due to the Maelstrom’s entropic influence on their compositions, ganzis each have an unusual but defining feature—referred to as an oddity—that sets them apart from other races and even from other members of their own race. These oddities vary wildly from ganzi to ganzi, and they can manifest as physical features, such as feathers, scales, or a tail, or as more subtle magical abilities. At the GM’s discretion, players with ganzi characters can roll 1d20 to randomly determine what form their characters’ oddities take using the list below.

1–3: Amorphous Limbs (Su) The influence of the Maelstrom manifests in the ganzi’s ability to transform one of her limbs at will, often into a natural weapon such as a massive clawed arm. Every 1d4 rounds as a swift action, a ganzi can transform one of her limbs into a natural melee weapon that deals 1d6 points of damage. The transformation lasts until the beginning of the ganzi’s next turn. The damage dealt by this natural weapon can be lethal or nonlethal, at the ganzi’s discretion, and she chooses whether the damage type is bludgeoning, piercing, or slashing.

4–6: Ink (Ex) As a standard action, the ganzi can spit a stream of opaque, black ink from her mouth to a distance of up to 20 feet. The ganzi can target either a creature or a square on the ground, each with different effects, as detailed below. The ganzi can use this ability once per day, plus one additional time per day for every 4 Hit Dice she has. Creature: The ganzi shoots a stream of ink into a creature’s eyes as a ranged touch attack with a range of 30 feet. If the ganzi hits, the target must succeed at a Fortitude saving throw (DC = 10 + half the ganzi’s Hit Dice + the ganzi’s Constitution modifier) or be blinded for 1d4 rounds. Ground: The ganzi spits the ink into a single square on the ground within 30 feet, which becomes slippery for 1d6 rounds. Any creatures entering the square must succeed at a Reflex save (DC = 10 + half the ganzi’s Hit Dice + the ganzi’s Constitution modifier) or fall prone.

7–10: Racing Mind (Ex) A ganzi whose lineage is linked to hunduns might inherit an aspect of the outsiders’ chaotic minds. The ganzi’s churning vortex of thoughts bolsters it against mental attacks, granting the ganzi a +2 bonus on Will saves against mind-affecting effects.

11–13: Spell-Like Ability (Sp) Ganzis whose chaotic influences rise from sources other than the Maelstrom or its inhabitants often manifest an oddity that duplicates the effects of a specific spell. Such a ganzi gains one of the following spell-like abilities, which can be used once per day with a caster level equal to the ganzi’s HD: acid arrow, gust of wind, mirror image, resist energy, scorching ray, see invisibility, or warp wood.

14–16: Uncanny Aura (Su) Some ganzis have an unsettling aura of chaos that rattles hostile creatures that venture too close. Once per day as a standard action, such a ganzi can activate an uncanny aura; enemies within 30 feet must succeed at a Will saving throw (DC = 10 + half the ganzi’s Hit Dice + the ganzi’s Charisma modifier) or become frightened until the beginning of the ganzi’s next turn. The aura remains for a number of rounds equal to the ganzi’s Charisma modifier (minimum 1 round). Once a creature has been affected by an uncanny aura, whether it failed its save or not, it cannot be affected again for 24 hours.

17–18: Vestigial Wings (Ex) The ganzi has a pair of small, vestigial wings, likely but not limited to resembling those of a flying creature or some manner of construct. Though these appendages do not grant flight, these ganzis can use their wings to stabilize themselves when they’re thrown off balance. Such ganzis gain a +1 bonus on Reflex saving throws and a +2 bonus on Acrobatics checks to balance.

19–20: Void Touch (Su) A ganzi whose lineage is influenced strongly by voidworms might exhibit the ability to inflict chaos on others’ minds. Three times per day when such a ganzi hits a creature with a melee attack, the ganzi can deliver a burst of chaos to that creature as a free action. The target must succeed at a Will save (DC = 10 + half the ganzi’s Hit Dice + the ganzi’s Constitution modifier) or be confused for 1 round.")

print "Ganzi Created! \r"

gillmen = Race.create!(name: "Gillmen", speed: 30, size: "Medium", img_url: "https://i.pinimg.com/originals/8f/8f/22/8f8f22d91a24ec9bf6ab10bc2bd12daa.png", source_id: advanced_race_guide.id, description: "Gillmen descended from humans. Aboleths captured several of these humans and muted them to survive underwater. The gillmen’s ancestors were thus saved from extinction, but at a terrible cost: for centuries, they served the aboleths, physically and mentally twisted into the perfect tools of that ancient race.

In time, the aboleths abandoned their fleshwarped servants. Despite their freedom, gillmen still bear the psychic scars of their race’s captivity. They face the distrust of others, who often suspect gillmen of ulterior agendas.

They view allies warily, wondering if they, too, want only to use the gillmen for their own purposes. Gillmen today are leery of everyone—even of their own kind.

Gillmen appear human at first glance, but the gills on their neck and their vibrant purple eye color give them away. Gillmen have soft, delicate skin in shades of pearly white, peach, salmon, or sandy brown. Their hair is often dark brown or black, but for some it takes on the colors of the sea, and they have thick, expressive eyebrows. Gillmen are physically bound to the sea; they must submerge themselves in water at least once a day or their skin dries and cracks, their organs begin to fail, and they eventually die.

When associating with others, gillmen prefer the company of their own kind, though they sometimes consort with humans or merfolk, usually as traders or messengers.

Rumors persist that some gillmen still serve aboleth masters willingly, moving among coastal regions as spies and saboteurs. The discovery of these agents perpetuates the pervasive belief that all gillmen are—knowingly or unknowingly—thralls to aboleth masters.

Adventurers: Though small gillman communities exist underwater, most gillmen operate independently or in small family groups. They share no overreaching racial goals or desires, banding together solely for survival. Each gillman has unique experiences and motivations that may lead to an adventuring life. Although gillmen are slow to make friends with other races, they are nonetheless a stable addition to any group of adventurers.

Some gillmen are unable to let go of their race’s past. These adventurers follow rumors of aboleth activity and seek out villains that serve the deep-sea masters. They also pursue powerful allies and artifacts to aid them against the aboleth menace. Gillman adventurers quest for information on why the aboleths first created the gillmen, what purpose the gillmen were intended to fulfill, and why the aboleths gave up their thralls. These gillmen hope to ascertain their history so that it can be put to rest, allowing their people to begin building a unified future.")

RaceAbilityScoreModifier.create!(race_id: gillmen.id, ability_score: "Constitution", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: gillmen.id, ability_score: "Charisma", bonus: 2)
RaceAbilityScoreModifier.create!(race_id: gillmen.id, ability_score: "Wisdom", bonus: -2)

RacialTrait.create!(name: "Type", race_id: gillmen.id, description: "Gillmen are humanoids with the aquatic subtype.")
RacialTrait.create!(name: "Swim Speed", race_id: gillmen.id, description: "Gillmen have a swim speed of 30 feet, can move in water without making Swim checks, and always treat Swim as a class skill.")
RacialTrait.create!(name: "Languages", race_id: gillmen.id, description: "Gillmen begin play speaking Common and Aboleth. Gillmen with high Intelligence scores can choose from the following: Aklo, Aquan, Draconic, and Elven.")
RacialTrait.create!(name: "Enchantment Resistance", race_id: gillmen.id, description: "Gillmen gain a +2 racial bonus to saving throws against non-aboleth enchantment spells and effects, but take a –2 penalty on such saving throws against aboleth sources.")
RacialTrait.create!(name: "Water Dependent", race_id: gillmen.id, description: "A gillman’s body requires constant submersion in fresh or salt water. Gillmen who spend more than one day without fully submerging themselves in water risk internal organ failure, painful cracking of the skin, and death within 4d6 hours.")
RacialTrait.create!(name: "Amphibious", race_id: gillmen.id, description: "Gillmen can breathe both water and air.")

print "Gillmen Created! \r"

puts "Ancestries Created!"


# /////////////////////////////////////////
# <-*-*-----*-*-*- Classes!-*-*-*-----*-*->
# /////////////////////////////////////////

oracle = Klass.create!(name: "Oracle", hit_die: 8, skill_ranks: 4, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: "https://i.pinimg.com/474x/31/c3/79/31c379bb4e8751a478360d8dfd22f7bc--female-wizard-pathfinder-rpg.jpg", source_id: advanced_players_guide.id, starting_wealth: "3d6 × 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", description: "Although the gods work through many agents, perhaps none is more mysterious than the oracle. These divine vessels are granted power without their choice, selected by providence to wield powers that even they do not fully understand. Unlike a cleric, who draws her magic through devotion to a deity, oracles garner strength and power from many sources, namely those patron deities who support their ideals. Instead of worshiping a single source, oracles tend to venerate all of the gods that share their beliefs. While some see the powers of the oracle as a gift, others view them as a curse, changing the life of the chosen in unforeseen ways.

Role: Oracles do not usually associate with any one church or temple, instead preferring to strike out on their own, or with a small group of like-minded individuals. Oracles typically use their spells and revelations to further their understanding of their mystery, be it through fighting mighty battles or tending to the poor and sick.

Alignment: Any.")

swashbuckler = Klass.create!(name: "Swashbuckler", hit_die: 10, skill_ranks: 4, fortitude: 0.34, reflex: 0.5, will: 0.34, img_url: "https://vignette.wikia.nocookie.net/pathfinderkingmaker/images/8/84/Taswik_duelist.jpg", source_id: advanced_class_guide.id, starting_wealth: "5d6 × 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", description: "Whereas many warriors brave battle encased in suits of armor and wielding large and powerful weapons, swashbucklers rely on speed, agility, and panache. Swashbucklers dart in and out of the fray, wearing down opponents with lunges and feints, all while foiling the powerful attacks against them with a flick of the wrist and a flash of the blade. Their deft parries and fatal ripostes are carnage elevated to an art form. Some may be arrogant and devil-may-care, but behind this veneer lie people deeply dedicated to their craft. Those of smaller races are particularly driven to prove that the right mix of discipline and daring is the perfect counter to size and strength, and enjoy nothing more than taking down lumbering brutes and bullies.

Role: Combining fancy footwork with quick and precise lunges, swashbucklers dart in and out of battle, harassing and thwarting their opponents. These fast and agile combatants serve as protectors for spellcasters and flank mates for rogues and slayers, while waiting for the opportunity to show panache and score the killing blow on some lumbering hulk. Swashbucklers often face death with wry humor, mocking it with jabbing wit.

Alignment: Any.")

shifter = Klass.create!(name: "Shifter", hit_die: 10, skill_ranks: 4, fortitude: 0.5, reflex: 0.5, will: 0.34, img_url: "https://i.pinimg.com/736x/2f/2f/1a/2f2f1a0f43c353bced1595dffa7db32c.jpg", starting_wealth: "3d6 × 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", source_id: ultimate_wilderness.id, description: "Whether riding on the wind as a falcon or hiding in some fetid bog waiting to strike, the shifter is a true master of the wild. Both a devoted defender of druidic circles and a fierce predator, the shifter can take on the forms of nature and even fuse them together with devastating effect and unbridled savagery. By way of the druidic discipline of wild shape, they become living aspects of the wild. At first, they are able to assume only a minor aspect, but with time and practice they can fully transform into ever more powerful forms.

The shifter class offers players a way to experience a shapeshifting character that is more martially inclined than a spellcasting druid. With each new level, the shifter’s powers grow in new and surprising ways, creating a character that thrives in battle, exploration, and stealth.

Shifters are protectors of druidic circles and avengers of nature, yet a shifter’s magic is different from that of her druidic kin. Rather than invoking spells from the natural world or forging alliances with animals, shifters focus their supernatural powers inward to gain control over their own forms. Their ability to change their forms is as varied as the wonders of the wilds themselves but always remains at least partially rooted in the natural world. There are many paths to becoming a shifter; most are trained in that role by druidic circles and have their powers unlocked via rituals of initiation. Yet some stumble upon the gift naturally, as if their blood bore the secrets of shifter transformation.

For those leaning toward the causes of law and good, the path of the shifter is one of contemplation and understanding. They become one with nature through mental and physical mimicry and gain an ever deeper spiritual understanding of the ebb and flow of the natural world. Those leaning toward the chaotic and evil teachings of druidic philosophy find such enlightenment through more violent means. These are typically quicker transformations, both brutal and painful, imparting the dark lessons of nature through its most catastrophic forms. Shifters who lean toward true neutrality are the most diverse when it comes to their command of metamorphic secrets.

Role: The shifter is so attuned to nature and the wild beasts of the world that she can call upon those powers to mystically fortify her being. Fluid in form and function, she can shape herself to overcome hardships and support those she befriends or serves.

Alignment: Any neutral.")

unchained_barbarian = Klass.create!(name: "Barbarian", hit_die: 12, skill_ranks: 4, fortitude: 0.5, reflex: 0.34, will: 0.34, img_url: "https://i.pinimg.com/originals/1b/16/b9/1b16b9707ef85952b3cee0482cdbbd3c.jpg", starting_wealth: "3d6 × 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", source_id: core_rulebook.id, description: "For some, there is only rage. In the ways of their people, in the fury of their passion, in the howl of battle, conflict is all these brutal souls know. Savages, hired muscle, masters of vicious martial techniques, they are not soldiers or professional warriors—they are the battle possessed, creatures of slaughter and spirits of war. Known as barbarians, these warmongers know little of training, preparation, or the rules of warfare; for them, only the moment exists, with the foes that stand before them and the knowledge that the next moment might hold their death. They possess a sixth sense in regard to danger and the endurance to weather all that might entail. These brutal warriors might rise from all walks of life, both civilized and savage, though whole societies embracing such philosophies roam the wild places of the world. Within barbarians storms the primal spirit of battle, and woe to those who face their rage.

Role: Barbarians excel in combat, possessing the martial prowess and fortitude to take on foes seemingly far superior to themselves. With rage granting them boldness and daring beyond that of most other warriors, barbarians charge furiously into battle and ruin all who would stand in their way.

Alignment: Any non-lawful")

vigilante = Klass.create!(name: "Vigilante", hit_die: 8, skill_ranks: 6, fortitude: 0.34, reflex: 0.5, will: 0.5, img_url: "https://i.pinimg.com/originals/a7/79/cf/a779cf8972496626f1074d9cc62f27a0.png", starting_wealth: "5d6 × 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", source_id: ultimate_intrigue.id, description: "Being a renowned hero can be dangerous to your health and prosperity. Fighting against corruption and the evil that lurks within society makes you a target and, even worse, puts your friends and family in danger. For those who must maintain a social persona, being a part of the greater community while secretly fighting against powerful forces within it requires leading a double life.

By day, the vigilante maneuvers through society, dealing with other nobles or influential individuals. By night, he dons a disguise and an utterly different set of goals, taking the fight to his foes and solving problems with a blade when words will not suffice.

Game Masters should consider carefully whether or not a vigilante will make for a good fit with their campaign. The class is one that requires a degree of social aptitude and roleplaying to make full use of its potential.

Campaigns that focus more on wilderness exploration, travel, or dungeon delving and that are lighter on politics, negotiation, and manipulation might require a vigilante player to put in additional effort to make full use of his class features. Alternatively, a vigilante is uniquely suited to make for a powerful villain, hidden by day behind a mask of civility and a terror at night, free to commit terrible acts without risking discovery.

For players, the vigilante offers a unique opportunity to take on the role of a character with a hidden side, and whose life is committed to a secret agenda that he must struggle to advance in a complex world. Not every problem can be solved with a dagger in the dark, and even the most stubborn foe might be become an ally with the proper bribe. For the vigilante, these tasks are both within reach as long as you learn to properly use your dual nature and hidden skills to your fullest advantage.

Life can be unfair. Think of the starving peasants forced to toil for the local baron or the common laborers tasked with building the king’s newest palace for a mere handful of copper pieces each week. There are those who see these injustices and do nothing. There are those who are willing to reap the rewards obtained through the suffering of others.

Then there are those who see inequality and find themselves driven to take action, outside the law if necessary. These vigilantes operate in plain sight, hiding behind respectable personas by day, but donning alternate guises by night to right the wrongs they see all around them.

Not all vigilantes are out to make the world a better place. Some criminals hide behind the pretense of being ordinary folk, only to become terrors in the shadows, stealing and killing to fulfill some dark agenda. In either case, the vigilante is a character of two natures—the face that everyone knows and the mask that inspires fear.

Role: A vigilante can take on many tasks within a group. Most are skilled at negotiating delicate social situations and courtly intrigue, but they can also serve as stealthy spies or even brutish warriors in dangerous environments.

Alignment: Any.")

arcanist = Klass.create!(name: "Arcanist", hit_die: 6, skill_ranks: 2, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: "https://i.pinimg.com/originals/59/af/7d/59af7defc23bcd2a6338ad3d67e52df8.png", starting_wealth: "2d6 × 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", source_id: advanced_class_guide.id, description: "Some spellcasters seek the secrets of magic, pursuing the power to make the impossible possible. Others are born with magic in their blood, commanding unbelievable forces as effortlessly as they breathe. Yet still others seek to meld the science of arcane scholars with the natural might of innate casters. These arcanists seek to discover the mysterious laws of magic and through will and expertise bend those forces to their whims. Arcanists are the shapers and tinkers of the arcane world, and no magic can resist their control.

Role: Arcanists are scholars of all things magical. They constantly seek out new forms of magic to discover how they work, and in many cases, to collect the energy of such magic for their own uses. Many arcanists are seen as reckless, more concerned with the potency of magic than the ramifications of unleashing such power.

Alignment: Any.")

brawler = Klass.create!(name: "Brawler", hit_die: 10, skill_ranks: 4, fortitude: 0.5, reflex: 0.5, will: 0.34, img_url: "https://i.pinimg.com/originals/71/90/a8/7190a8fb193a883fda6f7fa5f1cc7bdd.jpg", starting_wealth: "3d6 × 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", source_id: advanced_class_guide.id, description: "Deadly even with nothing in her hands, a brawler eschews using the fighter’s heavy armor and the monk’s mysticism, focusing instead on perfecting many styles of brutal unarmed combat. Versatile, agile, and able to adapt to most enemy attacks, a brawler’s body is a powerful weapon.

Role: Brawlers are maneuverable and well suited for creating flanking situations or dealing with lightly armored enemies, as well as quickly adapting to a rapidly changing battlefield.

Alignment: Any.")

bard = Klass.create!(name: "Bard", hit_die: 8, skill_ranks: 6, fortitude: 0.34, reflex: 0.5, will: 0.5, img_url: "https://i.pinimg.com/originals/09/4c/27/094c279e4763d248da26622fb9654054.png", source_id: core_rulebook.id, starting_wealth: "3d6 × 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", description: "Untold wonders and secrets exist for those skillful enough to discover them. Through cleverness, talent, and magic, these cunning few unravel the wiles of the world, becoming adept in the arts of persuasion, manipulation, and inspiration. Typically masters of one or many forms of artistry, bards possess an uncanny ability to know more than they should and use what they learn to keep themselves and their allies ever one step ahead of danger. Bards are quick-witted and captivating, and their skills might lead them down many paths, be they gamblers or jacks-of-all-trades, scholars or performers, leaders or scoundrels, or even all of the above. For bards, every day brings its own opportunities, adventures, and challenges, and only by bucking the odds, knowing the most, and being the best might they claim the treasures of each.

Role: Bards capably confuse and confound their foes while inspiring their allies to ever-greater daring. While accomplished with both weapons and magic, the true strength of bards lies outside melee, where they can support their companions and undermine their foes without fear of interruptions to their performances.

Alignment: Any")

fate_weaver = Klass.create!(name: "Fate Weaver", hit_die: 6, skill_ranks: 6, fortitude: 0.34, reflex: 0.5, will: 0.34, img_url: "https://i.pinimg.com/originals/db/9f/cc/db9fcc1ded708f4ea2e90b515334b3b3.png", source_id: custom.id, starting_wealth: "2d6 × 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", description: "The Fate Weaver has been touched by those who control destiny, allowing their chaotic nature to benefit them tremendously. Whether they are aware of their powers, or believe they are just lucky, the Fate Weaver seeks domination. With their granted gifts, their fortune is more real than anyone else's: they just have to take it.

Role: The Fate Weaver has a wide array of options, but they may not always be consistent, necessary, or beneficial. Be wary of the Fate Weaver’s power: it is awesome in the both the good and the bad sense. A clutch Fate Weaver can change the tide in an instant, and often has a card up their sleeve for the most unlikely situations.

Alignment: Any Chaotic")

wizard = Klass.create!(name: "Wizard", hit_die: 6, skill_ranks: 2, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: "https://i.pinimg.com/originals/e0/cc/47/e0cc47ea55051b8221c15cfc208f3a20.png", source_id: core_rulebook.id, starting_wealth: "2d6 × 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", description: "Beyond the veil of the mundane hide the secrets of absolute power. The works of beings beyond mortals, the legends of realms where gods and spirits tread, the lore of creations both Wondrous Item and terrible—such mysteries call to those with the ambition and the intellect to rise above the common folk to grasp true might. Such is the path of the wizard. These shrewd magic-users seek, collect, and covet esoteric knowledge, drawing on cultic arts to work wonders beyond the abilities of mere mortals. While some might choose a particular field of magical study and become masters of such powers, others embrace versatility, reveling in the unbounded wonders of all magic. In either case, wizards prove a cunning and potent lot, capable of smiting their foes, empowering their allies, and shaping the world to their every desire.

Role: While universalist wizards might study to prepare themselves for any manner of danger, specialist wizards research schools of magic that make them exceptionally skilled within a specific focus. Yet no matter their specialty, all wizards are masters of the impossible and can aid their allies in overcoming any danger.

Alignment: Any")

unchained_summoner = Klass.create!(name: 'Summoner', hit_die: 8, skill_ranks: 2, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: 'https://i.pinimg.com/originals/4f/9d/ac/4f9dac371934ff8f117751e94165c285.png', source_id: advanced_players_guide.id, starting_wealth: "2d6 × 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", description: 'There are those who take a different path when pursuing the arcane arts, reaching across the boundaries of the world to the far-f lung planes to call forth all manner of creatures to do their bidding. Known as summoners, these arcane practitioners form close bonds with particular outsiders, known as eidolons, which increase in power along with their callers. In the end, summoners and their eidolons become linked, sharing shards of the same souls.

Role: Summoners spend much of their time exploring the arcane arts alongside their eidolons. While their power comes from within, they rely heavily on their eidolon companions in dangerous situations. While a summoner and his eidolon function as individuals, their true power lies in what they can accomplish together.

Unchained: Most of the summoner’s class features are the same as those of the class’s original design—the biggest change comes to the eidolon. The unchained summoner selects a subtype for his eidolon (such as angel, demon, or protean), which determines a number of its evolutions and helps to shape the eidolon’s general attitude and appearance. In addition, some of the evolutions are now tied to one or more subtypes and base forms, to make eidolons that better match the expected appearances and abilities of such creatures. Finally, the summoner spell list has been greatly revised, removing a number of imbalances.

Alignment: Any.')

cleric = Klass.create!(name: 'Cleric', hit_die: 8, skill_ranks: 2, fortitude: 0.34, reflex: 0.34, will: 0.5, img_url: 'https://i.pinimg.com/originals/11/64/74/116474aaa94e3c45029f6ec5c7c341ff.png', source_id: core_rulebook.id, starting_wealth: "4d6 × 10 gp (average 175 gp.) In addition, each character begins play with an outfit worth 10 gp or less.", description: 'In faith and the miracles of the divine, many find a greater purpose. Called to serve powers beyond most mortal understanding, all priests preach wonders and provide for the spiritual needs of their people. Clerics are more than mere priests, though; these emissaries of the divine work the will of their deities through strength of arms and the magic of their gods. Devoted to the tenets of the religions and philosophies that inspire them, these ecclesiastics quest to spread the knowledge and influence of their faith. Yet while they might share similar abilities, clerics prove as different from one another as the divinities they serve, with some offering healing and redemption, others judging law and truth, and still others spreading conflict and corruption. The ways of the cleric are varied, yet all who tread these paths walk with the mightiest of allies and bear the arms of the gods themselves.
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

print "Oracle features created! \r"


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

print "Fate Weaver features created! \r"


bard1 = KlassFeature.create!(klass_id: bard.id, name: "Weapon and Armor Proficiency", description: "A bard is proficient with all simple weapons, plus the longsword, rapier, sap, shortsword, shortbow, and whip. Bards are also proficient with light armor and shields (except tower shields). A bard can cast bard spells while wearing light armor and using a shield without incurring the normal arcane spell failure chance. Like any other arcane spellcaster, a bard wearing medium or heavy armor incurs a chance of arcane spell failure if the spell in question has a somatic component. A multiclass bard still incurs the normal arcane spell failure chance for arcane spells received from other classes.")
  FeatureLevel.create!(klass_feature_id: bard1.id, level: 1, table_description: "none")
  bard1_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: bard1.id, feature_id: bard1_feature.id)
    FeatureWeaponProficiency.create!(feature_id: bard1_feature.id, proficiency_group: "Simple")
    FeatureWeaponProficiency.create!(feature_id: bard1_feature.id, weapon_id: longsword.id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: bard1_feature.id, weapon_id: rapier.id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: bard1_feature.id, weapon_id: sap.id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: bard1_feature.id, weapon_id: shortsword.id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: bard1_feature.id, weapon_id: shortbow.id, additive: true)
    FeatureWeaponProficiency.create!(feature_id: bard1_feature.id, weapon_id: whip.id, additive: true)
    FeatureArmorProficiency.create!(feature_id: bard1_feature.id, proficiency_group: "Light")
    FeatureArmorProficiency.create!(feature_id: bard1_feature.id, proficiency_group: "Shield")
    FeatureArmorProficiency.create!(feature_id: bard1_feature.id, armor_id: tower_shield.id, additive: false)

bard2 = KlassFeature.create!(klass_id: bard.id, name: "Spells", description: "A bard casts arcane spells drawn from the bard spell list. He can cast any spell he knows without preparing it ahead of time. Every bard spell has a verbal component (singing, reciting, or music). To learn or cast a spell, a bard must have a Charisma score equal to at least 10 + the spell level. The Difficulty Class (DC) for a saving throw against a bard’s spell is 10 + the spell level + the bard’s Charisma modifier.

Like other spellcasters, a bard can cast only a certain number of spells of each spell level per day. His base daily spell allotment is given on Table: bard. In addition, he receives bonus spells per day if he has a high Charisma score.

The bard’s selection of spells is extremely limited. A bard begins play knowing four 0-level spells and two 1st-level spells of the bard’s choice. At each new bard level, he gains one or more new spells, as indicated on Table: Bard Spells Known. (Unlike spells per day, the number of spells a bard knows is not affected by his Charisma score (See Table: Ability Modifiers and Bonus Spells).

Upon reaching 5th level, and at every third bard level after that (8th, 11th, and so on), a bard can choose to learn a new spell in place of one he already knows. In effect, the bard “loses” the old spell in exchange for the new one. The new spell’s level must be the same as that of the spell being exchanged, and it must be at least one level lower than the highest-level bard spell the bard can cast. A bard may swap only a single spell at any given level, and must choose whether or not to swap the spell at the same time that he gains new spells known for the level.

A bard need not prepare his spells in advance. He can cast any spell he knows at any time, assuming he has not yet used up his allotment of spells per day for the spell’s level.

Cantrips: Bard’s learn a number of cantrips, or 0-level spells, as noted on Table: Bard Spells Known under “Spells Known.” These spells are cast like any other spell, but they do not consume any slots and may be used again.")
  FeatureLevel.create!(klass_feature_id: bard2.id, level: 1, table_description: "none")
  bard_spell_list = SpellList.create!(name: "Bard Spells List")
  bard2_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: bard2_feature.id, klass_feature_id: bard2.id)
    bard_spellcasting = FeatureSpellcasting.create!(feature_id: bard2_feature.id, ability_score: "charisma", prepare_spells: false, expend_prepared_spells: false, infinite_zero_level: true, known_spell_list: true, apply_metamagic_when_casting: true, apply_metamagic_when_preparing: false, type_of_magic: "Arcane", caster_level_penalty: 0, spell_list_id: bard_spell_list.id)

bard3 = KlassFeature.create!(klass_id: bard.id, name: "Bardic Knowledge", description: "A bard adds half his class level (minimum 1) to all Knowledge skill checks and may make all Knowledge skill checks untrained.")
  FeatureLevel.create!(klass_feature_id: bard3.id, level: 1, table_description: "Bardic Knowledge")
  bard3_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: bard3_feature.id, klass_feature_id: bard3.id)
    FeatureSkillBonus.create!(feature_id: bard3_feature.id, skill_id: nil, bonus: 0.5, bonus_type: "untyped", duration: "permanent", specific_statistic: "Knowledge", bonus_multiplier: "level", round_down: true, minimum_bonus: 1, bonus_multiplier_based_on_feature_level: true)

bard4 = KlassFeature.create!(klass_id: bard.id, name: "Bardic Performance", description: "A bard is trained to use the Perform skill to create magical effects on those around him, including himself if desired. He can use this ability for a number of rounds per day equal to 4 + his Charisma modifier. At each level after 1st a bard can use bardic performance for 2 additional rounds per day. Each round, the bard can produce any one of the types of bardic performance that he has mastered, as indicated by his level.

Starting a bardic performance is a standard action, but it can be maintained each round as a free action. Changing a bardic performance from one effect to another requires the bard to stop the previous performance and start a new one as a standard action. A bardic performance cannot be disrupted, but it ends immediately if the bard is killed, paralyzed, stunned, knocked unconscious, or otherwise prevented from taking a free action to maintain it each round. A bard cannot have more than one bardic performance in effect at one time.

At 7th level, a bard can start a bardic performance as a move action instead of a standard action. At 13th level, a bard can start a bardic performance as a swift action.

Each bardic performance has audible components, visual components, or both.

If a bardic performance has audible components, the targets must be able to hear the bard for the performance to have any effect, and many such performances are language dependent (as noted in the description). A deaf bard has a 20% chance to fail when attempting to use a bardic performance with an audible component. If he fails this check, the attempt still counts against his daily limit. Deaf creatures are immune to bardic performances with audible components.

If a bardic performance has a visual component, the targets must have line of sight to the bard for the performance to have any effect. A blind bard has a 50% chance to fail when attempting to use a bardic performance with a visual component. If he fails this check, the attempt still counts against his daily limit. Blind creatures are immune to bardic performances with visual components.")
  FeatureLevel.create!(klass_feature_id: bard4.id, level: 1, table_description: "Bardic Performance")
  bard4_feature = Feature.create!(action_id: standard.id)
    KlassFeatureFeature.create!(feature_id: bard4_feature.id, klass_feature_id: bard4.id)
    bard4_feature_usage = FeatureUsage.create!(feature_id: bard4_feature.id, limit_frequency: "Day", unit: "rounds", adjustable: true, toggleable: true, base_limit: 4, base_limit_modifier: "charisma", limit_increase_per_level: 2, toggle_off_action_id: free.id, expend_frequency: "Round", maintain_action_id: free.id)
    FeatureAlternateAction.create!(feature_id: bard4_feature.id, level: 7, action_id: move.id)
    FeatureAlternateAction.create!(feature_id: bard4_feature.id, level: 13, action_id: swift.id)

bard5 = KlassFeature.create!(klass_id: bard.id, name: "Countersong", description: "At 1st level, a bard learns to counter magic effects that depend on sound (but not spells that have verbal components.) Each round of the countersong he makes a Perform (keyboard, percussion, wind, string, or sing) skill check. Any creature within 30 feet of the bard (including the bard himself) that is affected by a sonic or language-dependent magical attack may use the bard’s Perform check result in place of its saving throw if, after the saving throw is rolled, the Perform check result proves to be higher. If a creature within range of the countersong is already under the effect of a non-instantaneous sonic or language-dependent magical attack, it gains another saving throw against the effect each round it hears the countersong, but it must use the bard’s Perform skill check result for the save. Countersong does not work on effects that don’t allow saves. Countersong relies on audible components.")
  FeatureLevel.create!(klass_feature_id: bard5.id, level: 1, table_description: "Countersong")
  bard5_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: bard5_feature.id, klass_feature_id: bard5.id)
    bard5_feature_usage = FeatureUsage.create!(feature_id: bard5_feature.id)
    FeatureUsageFeatureOption.create!(base_feature_usage_id: bard4_feature_usage.id, option_feature_usage_id: bard5_feature_usage.id, option_name: "Bardic Performance", cost: 1)

bard6 = KlassFeature.create!(klass_id: bard.id, name: "Distraction", description: "At 1st level, a bard can use his performance to counter magic effects that depend on sight. Each round of the Distraction, he makes a Perform (act, comedy, dance, or oratory) skill check. Any creature within 30 feet of the bard (including the bard himself) that is affected by an illusion (pattern) or illusion (figment) magical attack may use the bard’s Perform check result in place of its saving throw if, after the saving throw is rolled, the Perform check result proves to be higher. If a creature within range of the Distraction is already under the effect of a non-instantaneous illusion (pattern) or illusion (figment) magical attack, it gains another saving throw against the effect each round it sees the Distraction, but it must use the bard’s Perform check result for the save. Distraction does not work on effects that don’t allow saves. Distraction relies on visual components.")
  FeatureLevel.create!(klass_feature_id: bard6.id, level: 1, table_description: "Distraction")
  bard6_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: bard6_feature.id, klass_feature_id: bard6.id)
    bard6_feature_usage = FeatureUsage.create!(feature_id: bard6_feature.id)
    FeatureUsageFeatureOption.create!(base_feature_usage_id: bard4_feature_usage.id, option_feature_usage_id: bard6_feature_usage.id, option_name: "Bardic Performance", cost: 1)

bard7 = KlassFeature.create!(klass_id: bard.id, name: "Fascinate", description: "At 1st level, a bard can use his performance to cause one or more creatures to become fascinated with him. Each creature to be fascinated must be within 90 feet, able to see and hear the bard, and capable of paying attention to him. The bard must also be able to see the creatures affected. The Distraction of a nearby combat or other dangers prevents the ability from working. For every three levels a bard has attained beyond 1st, he can target one additional creature with this ability.

Each creature within range receives a Will save (DC 10 + 1/2 the bard’s level + the bard’s Cha modifier) to negate the effect. If a creature’s saving throw succeeds, the bard cannot attempt to fascinate that creature again for 24 hours. If its saving throw fails, the creature sits quietly and observes the performance for as long as the bard continues to maintain it. While fascinated, a target takes a –4 penalty on skill checks made as reactions, such as Perception checks. Any potential threat to the target allows the target to make a new saving throw against the effect. Any obvious threat, such as someone drawing a weapon, casting a spell, or aiming a weapon at the target, automatically breaks the effect.

Fascinate is an enchantment (compulsion), mind-affecting ability. Fascinate relies on audible and visual components in order to function.")
  FeatureLevel.create!(klass_feature_id: bard7.id, level: 1, table_description: "Fascinate")
  bard7_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: bard7_feature.id, klass_feature_id: bard7.id)
    bard7_feature_usage = FeatureUsage.create!(feature_id: bard7_feature.id)
    FeatureUsageFeatureOption.create!(base_feature_usage_id: bard4_feature_usage.id, option_feature_usage_id: bard7_feature_usage.id, option_name: "Bardic Performance", cost: 1)
    FeatureSavingThrow.create!(feature_id: bard7_feature.id, base: 10, ability_score_modifier: "charisma", level_modifier: 0.5, saving_throw: "will", bonus_multiplier_based_on_feature_level: true)

bard8 = KlassFeature.create!(klass_id: bard.id, name: "Inspire Courage", description: "A 1st level bard can use his performance to inspire courage in his allies (including himself), bolstering them against fear and improving their combat abilities. To be affected, an ally must be able to perceive the bard’s performance. An affected ally receives a +1 morale bonus on saving throws against charm and fear effects and a +1 competence bonus on attack and weapon damage rolls. At 5th level, and every six bard levels thereafter, this bonus increases by +1, to a maximum of +4 at 17th level. Inspire courage is a mind-affecting ability. inspire courage can use audible or visual components. The bard must choose which component to use when starting his performance.")
  FeatureLevel.create!(klass_feature_id: bard8.id, level: 1, table_description: "Inspire Courage +1")
  FeatureLevel.create!(klass_feature_id: bard8.id, level: 5, table_description: "Inspire Courage +2")
  FeatureLevel.create!(klass_feature_id: bard8.id, level: 11, table_description: "Inspire Courage +3")
  FeatureLevel.create!(klass_feature_id: bard8.id, level: 17, table_description: "Inspire Courage +4")
  bard8_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: bard8_feature.id, klass_feature_id: bard8.id)
    bard8_feature_usage = FeatureUsage.create!(feature_id: bard8_feature.id)
    FeatureUsageFeatureOption.create!(base_feature_usage_id: bard4_feature_usage.id, option_feature_usage_id: bard8_feature_usage.id, option_name: "Bardic Performance", cost: 1)
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Saving Throw", bonus: 1, bonus_type: "morale", duration: "temporary", applicable_level: 1, statistic_details: "charm and fear effects")
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Attack", bonus: 1, bonus_type: "competence", duration: "temporary", applicable_level: 1)
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Damage", bonus: 1, bonus_type: "competence", duration: "temporary", specific_statistic: "weapon", applicable_level: 1)
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Saving Throw", bonus: 2, bonus_type: "morale", duration: "temporary", applicable_level: 5, statistic_details: "charm and fear effects")
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Attack", bonus: 2, bonus_type: "competence", duration: "temporary", applicable_level: 5)
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Damage", bonus: 2, bonus_type: "competence", duration: "temporary", specific_statistic: "weapon", applicable_level: 5)
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Saving Throw", bonus: 3, bonus_type: "morale", duration: "temporary", applicable_level: 11, statistic_details: "charm and fear effects")
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Attack", bonus: 3, bonus_type: "competence", duration: "temporary", applicable_level: 11)
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Damage", bonus: 3, bonus_type: "competence", duration: "temporary", specific_statistic: "weapon", applicable_level: 11)
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Saving Throw", bonus: 4, bonus_type: "morale", duration: "temporary", applicable_level: 17, statistic_details: "charm and fear effects")
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Attack", bonus: 4, bonus_type: "competence", duration: "temporary", applicable_level: 17)
    FeatureStatBonus.create!(feature_id: bard8_feature.id, statistic: "Damage", bonus: 4, bonus_type: "competence", duration: "temporary", specific_statistic: "weapon", applicable_level: 17)
    FeatureApplication.create!(feature_id: bard8_feature.id, affects_allies: true, toggleable: true)
    # rays count as weapons when it comes to bonuses that only apply to weapons damage (i.e., bard's inspire courage)

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

print "Bard features created! \r"

cleric1 = KlassFeature.create!(klass_id: cleric.id, name: "Weapon and Armor Proficiencies", description: "Clerics are proficient with all simple weapons, light armor, medium armor, and shields (except tower shields). Clerics are also proficient with the favored weapon of their deities.")
  FeatureLevel.create!(klass_feature_id: cleric1.id, level: 1, table_description: "none")
  cleric1_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: cleric1.id, feature_id: cleric1_feature.id)
    FeatureWeaponProficiency.create!(feature_id: cleric1_feature.id, proficiency_group: "Simple")
    FeatureWeaponProficiency.create!(feature_id: cleric1_feature.id, player_choice: true, additive: true)
    FeatureArmorProficiency.create!(feature_id: cleric1_feature.id, proficiency_group: "Light")
    FeatureArmorProficiency.create!(feature_id: cleric1_feature.id, proficiency_group: "Medium")
    FeatureArmorProficiency.create!(feature_id: cleric1_feature.id, proficiency_group: "Shield")
    FeatureArmorProficiency.create!(feature_id: cleric1_feature.id, armor_id: tower_shield.id, additive: false)
    FeatureCharacterChoice.create!(feature_id: cleric1_feature.id, sub_feature: "weapon_proficiencies", column: "weapon_id")

cleric2 = KlassFeature.create!(klass_id: cleric.id, name: "Aura", description: "A cleric of a chaotic, evil, good, or lawful deity has a particularly powerful aura corresponding to the deity’s alignment (see detect evil for details).")
  FeatureLevel.create!(klass_feature_id: cleric2.id, level: 1, table_description: "Aura")
  cleric2_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: cleric2.id, feature_id: cleric2_feature.id)
    FeatureDisplayDescription.create!(feature_id: cleric2_feature.id, title: "Aura", description: "Faint", access_alignment: true, applicable_level: 1)
    FeatureDisplayDescription.create!(feature_id: cleric2_feature.id, title: "Aura", description: "Moderate", access_alignment: true, applicable_level: 2)
    FeatureDisplayDescription.create!(feature_id: cleric2_feature.id, title: "Aura", description: "Strong", access_alignment: true, applicable_level: 5)
    FeatureDisplayDescription.create!(feature_id: cleric2_feature.id, title: "Aura", description: "Overwhelming", access_alignment: true, applicable_level: 11)

cleric3 = KlassFeature.create!(klass_id: cleric.id, name: "Spellcasting", description: "A cleric casts divine spells which are drawn from the cleric spell list. Her alignment, however, may restrict her from casting certain spells opposed to her moral or ethical beliefs; see Chaotic, Evil, Good, and Lawful Spells. A cleric must choose and prepare her spells in advance.

To prepare or cast a spell, a cleric must have a Wisdom score equal to at least 10 + the spell level. The Difficulty Class for a saving throw against a cleric’s spell is 10 + the spell level + the cleric’s Wisdom modifier.

Like other spellcasters, a cleric can cast only a certain number of spells of each spell level per day. Her base daily spell allotment is given on Table: Cleric. In addition, she receives bonus spells per day if she has a high Wisdom score (see Table: Ability Modifiers and Bonus Spells).

Clerics meditate or pray for their spells. Each cleric must choose a time at which she must spend 1 hour each day in quiet contemplation or supplication to regain her daily allotment of spells. Time spent resting has no effect on whether a cleric can prepare spells. A cleric may prepare and cast any spell on the cleric spell list, provided that she can cast spells of that level, but she must choose which spells to prepare during her daily meditation.

Chaotic, Evil, Good, and Lawful Spells A cleric can’t cast spells of an alignment opposed to her own or her deity’s (if she has one). Spells associated with particular alignments are indicated by the chaotic, evil, good, and lawful descriptors in their spell descriptions.")
  FeatureLevel.create!(klass_feature_id: cleric3.id, level: 1, table_description: "none")
  cleric_spell_list = SpellList.create!(name: "Cleric Spells List")
  cleric3_feature = Feature.create!()
    KlassFeatureFeature.create!(feature_id: cleric3_feature.id, klass_feature_id: cleric3.id)
    cleric_spellcasting = FeatureSpellcasting.create!(feature_id: cleric3_feature.id, ability_score: "wisdom", prepare_spells: true, expend_prepared_spells: true, infinite_zero_level: true, known_spell_list: false, apply_metamagic_when_casting: false, apply_metamagic_when_preparing: true, type_of_magic: "Divine", caster_level_penalty: 0, spell_list_id: cleric_spell_list.id)

cleric4 = KlassFeature.create!(klass_id: cleric.id, name: "Channel Energy", description: "Regardless of alignment, any cleric can release a wave of energy by channeling the power of her faith through her holy (or unholy) symbol. This energy can be used to cause or heal damage, depending on the type of energy channeled and the creatures targeted.

A good cleric (or a neutral cleric who worships a good deity) channels positive energy and can choose to deal damage to undead creatures or to heal living creatures. An evil cleric (or a neutral cleric who worships an evil deity) channels negative energy and can choose to deal damage to living creatures or to heal undead creatures. A neutral cleric of a neutral deity (or one who is not devoted to a particular deity) must choose whether she channels positive or negative energy. Once this choice is made, it cannot be reversed. This decision also determines whether the cleric can cast spontaneous cure or inflict spells (see spontaneous casting).

Channeling energy causes a burst that affects all creatures of one type (either undead or living) in a 30-foot radius centered on the cleric. The amount of damage dealt or healed is equal to 1d6 points of damage plus 1d6 points of damage for every two cleric levels beyond 1st (2d6 at 3rd, 3d6 at 5th, and so on). Creatures that take damage from channeled energy receive a Will save to halve the damage. The DC of this save is equal to 10 + 1/2 the cleric’s level + the cleric’s Charisma modifier. Creatures healed by channel energy cannot exceed their maximum hit point total—all excess healing is lost. A cleric may channel energy a number of times per day equal to 3 + her Charisma modifier. This is a standard action that does not provoke an attack of opportunity. A cleric can choose whether or not to include herself in this effect.

A cleric must be able to present her holy symbol to use this ability.")
  FeatureLevel.create!(klass_feature_id: cleric4.id, level: 1, table_description: "Channel Energy 1d6")
  FeatureLevel.create!(klass_feature_id: cleric4.id, level: 3, table_description: "Channel Energy 2d6")
  FeatureLevel.create!(klass_feature_id: cleric4.id, level: 5, table_description: "Channel Energy 3d6")
  FeatureLevel.create!(klass_feature_id: cleric4.id, level: 7, table_description: "Channel Energy 4d6")
  FeatureLevel.create!(klass_feature_id: cleric4.id, level: 9, table_description: "Channel Energy 5d6")
  FeatureLevel.create!(klass_feature_id: cleric4.id, level: 11, table_description: "Channel Energy 6d6")
  FeatureLevel.create!(klass_feature_id: cleric4.id, level: 13, table_description: "Channel Energy 7d6")
  FeatureLevel.create!(klass_feature_id: cleric4.id, level: 15, table_description: "Channel Energy 8d6")
  FeatureLevel.create!(klass_feature_id: cleric4.id, level: 17, table_description: "Channel Energy 9d6")
  FeatureLevel.create!(klass_feature_id: cleric4.id, level: 19, table_description: "Channel Energy 10d6")
  cleric4_feature = Feature.create!(action_id: standard.id)
    KlassFeatureFeature.create!(klass_feature_id: cleric4.id, feature_id: cleric4_feature.id)
    FeatureUsage.create!(feature_id: cleric4_feature.id, limit_frequency: "Day", adjustable: true, base_limit: 3, base_limit_modifier: "charisma")
    FeatureSavingThrow.create!(feature_id: cleric4_feature.id, base: 10, ability_score_modifier: "charisma", level_modifier: 0.5, saving_throw: "will", bonus_multiplier_based_on_feature_level: true)
    FeatureDamage.create!(feature_id: cleric4_feature.id, num_of_dice: 1, damage_dice: 6, applicable_level: 1)
    FeatureDamage.create!(feature_id: cleric4_feature.id, num_of_dice: 2, damage_dice: 6, applicable_level: 2)
    FeatureDamage.create!(feature_id: cleric4_feature.id, num_of_dice: 3, damage_dice: 6, applicable_level: 3)
    FeatureDamage.create!(feature_id: cleric4_feature.id, num_of_dice: 4, damage_dice: 6, applicable_level: 4)
    FeatureDamage.create!(feature_id: cleric4_feature.id, num_of_dice: 5, damage_dice: 6, applicable_level: 5)
    FeatureDamage.create!(feature_id: cleric4_feature.id, num_of_dice: 6, damage_dice: 6, applicable_level: 6)
    FeatureDamage.create!(feature_id: cleric4_feature.id, num_of_dice: 7, damage_dice: 6, applicable_level: 7)
    FeatureDamage.create!(feature_id: cleric4_feature.id, num_of_dice: 8, damage_dice: 6, applicable_level: 8)
    FeatureDamage.create!(feature_id: cleric4_feature.id, num_of_dice: 9, damage_dice: 6, applicable_level: 9)
    FeatureDamage.create!(feature_id: cleric4_feature.id, num_of_dice: 10, damage_dice: 6, applicable_level: 10)
    FeatureStep.create!(feature_id: cleric4_feature.id, applicable_level: 1, step: 1, sub_feature: "damage")
    FeatureStep.create!(feature_id: cleric4_feature.id, applicable_level: 3, step: 2, sub_feature: "damage")
    FeatureStep.create!(feature_id: cleric4_feature.id, applicable_level: 5, step: 3, sub_feature: "damage")
    FeatureStep.create!(feature_id: cleric4_feature.id, applicable_level: 7, step: 4, sub_feature: "damage")
    FeatureStep.create!(feature_id: cleric4_feature.id, applicable_level: 9, step: 5, sub_feature: "damage")
    FeatureStep.create!(feature_id: cleric4_feature.id, applicable_level: 11, step: 6, sub_feature: "damage")
    FeatureStep.create!(feature_id: cleric4_feature.id, applicable_level: 13, step: 7, sub_feature: "damage")
    FeatureStep.create!(feature_id: cleric4_feature.id, applicable_level: 15, step: 8, sub_feature: "damage")
    FeatureStep.create!(feature_id: cleric4_feature.id, applicable_level: 17, step: 9, sub_feature: "damage")
    FeatureStep.create!(feature_id: cleric4_feature.id, applicable_level: 19, step: 10, sub_feature: "damage")
    FeatureCharacterChoice.create!(feature_id: cleric4_feature.id, sub_feature: "damage", column: "damage_type", option: "positive")
    FeatureCharacterChoice.create!(feature_id: cleric4_feature.id, sub_feature: "damage", column: "damage_type", option: "negative")

cleric5 = KlassFeature.create!(klass_id: cleric.id, name: "Domains", description: "A cleric’s deity influences her alignment, what magic she can perform, her values, and how others see her. A cleric chooses two domains from among those belonging to her deity. A cleric can select an alignment domain (Chaos, Evil, Good, or Law) only if her alignment matches that domain. If a cleric is not devoted to a particular deity, she still selects two domains to represent her spiritual inclinations and abilities (subject to GM approval). The restriction on alignment domains still applies.

Each domain grants a number of domain powers, dependent upon the level of the cleric, as well as a number of bonus spells. A cleric gains one domain spell slot for each level of cleric spell she can cast, from 1st on up. Each day, a cleric can prepare one of the spells from her two domains in that slot. If a domain spell is not on the cleric spell list, a cleric can prepare it only in her domain spell slot. Domain spells cannot be used to cast spells spontaneously.

In addition, a cleric gains the listed powers from both of her domains, if she is of a high enough level. Unless otherwise noted, activating a domain power is a standard action.", specialization: true, choice_amount: 2)
  FeatureLevel.create!(klass_feature_id: cleric5.id, level: 1, table_description: "Domains")
  cleric5_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: cleric5.id, feature_id: cleric5_feature.id)
    FeatureBonusSpellSlot.create!(feature_id: cleric5_feature.id, list_of_available_spells: "klass_specializations", sub_feature: "castable_spells")

  air_domain = KlassSpecialization.create!(name: "Air Domain", description: "You can manipulate lightning, mist, and wind, traffic with air creatures, and are resistant to electricity damage.")
    KlassFeatureKlassSpecialization.create!(klass_feature_id: cleric5.id, klass_specialization_id: air_domain.id)
    air_domain1 = KlassSpecializationFeature.create!(klass_specialization_id: air_domain.id, name: "Lightning Arc", description: "As a standard action, you can unleash an arc of electricity targeting any foe within 30 feet as a ranged touch attack. This arc of electricity deals 1d6 points of electricity damage + 1 point for every two cleric levels you possess. You can use this ability a number of times per day equal to 3 + your Wisdom modifier.", level: 1)
      air_domain1_feature = Feature.create!(action_id: standard.id)
        KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: air_domain1.id, feature_id: air_domain1_feature.id)
        FeatureUsage.create!(feature_id: air_domain1_feature.id, limit_frequency: "Day", adjustable: true, base_limit: 3, base_limit_modifier: "charisma")
        FeatureDamage.create!(feature_id: air_domain1_feature.id, num_of_dice: 1, damage_dice: 6, damage_type: "electricity", base_mod: 0, mod_increase_per_level: 0.5)
        FeatureAttack.create!(feature_id: air_domain1_feature.id, attack_type: "range", armor_class: "touch")
    air_domain2 = KlassSpecializationFeature.create!(klass_specialization_id: air_domain.id, name: "Electricity Resistance", description: "At 6th level, you gain resist electricity 10. This resistance increases to 20 at 12th level. At 20th level, you gain immunity to electricity.", level: 6)
    air_domain3 = KlassSpecializationFeature.create!(klass_specialization_id: air_domain.id, name: "Domain Spells", description: "1st—obscuring mist, 2nd—wind wall, 3rd—gaseous form, 4th—air walk, 5th—control winds, 6th—chain lightning, 7th—elemental body IV (air only), 8th—whirlwind, 9th—elemental swarm (air spell only).", level: 1)
      air_domain3_feature = Feature.create!()
        KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: air_domain3.id, feature_id: air_domain3_feature.id)

  animal_domain = KlassSpecialization.create!(name: "Animal Domain", description: "You can speak with and befriend animals with ease. In addition, you treat Knowledge (nature) as a class skill.")
    KlassFeatureKlassSpecialization.create!(klass_feature_id: cleric5.id, klass_specialization_id: animal_domain.id)
    animal_domain1 = KlassSpecializationFeature.create!(klass_specialization_id: animal_domain.id, name: "Base", description: "", level: 1)
      animal_domain1_feature = Feature.create!()
        KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: animal_domain1.id, feature_id: animal_domain1_feature.id)
        FeatureSkillBonus.create!(feature_id: animal_domain1_feature.id, skill_id: knowledge_nature.id, class_skill: true)
        FeatureSkillBonus.create!(feature_id: animal_domain1_feature.id, skill_id: nature_unchained.id, class_skill: true)
    animal_domain2 = KlassSpecializationFeature.create!(klass_specialization_id: animal_domain.id, name: "Speak with Animals", description: "You can speak with animals, as per the spell, for a number of rounds per day equal to 3 + your cleric level.", level: 1)
      animal_domain2_feature = Feature.create!()
        KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: animal_domain2.id, feature_id: animal_domain2_feature.id)
        FeatureUsage.create!(feature_id: animal_domain2_feature.id, unit: "rounds", limit_frequency: "Day", adjustable: true, base_limit: 4, limit_increase_per_level: 1)
    animal_domain3 = KlassSpecializationFeature.create!(klass_specialization_id: animal_domain.id, name: "Animal Companion", description: "At 4th level, you gain the service of an animal companion. Your effective druid level for this animal companion is equal to your cleric level – 3. (Druids who take this ability through their nature bond class feature use their druid level – 3 to determine the abilities of their animal companions).", level: 4)
    animal_domain4 = KlassSpecializationFeature.create!(klass_specialization_id: animal_domain.id, name: "Domain Spells", description: "1st—calm animals, 2nd—hold animal, 3rd—dominate animal, 4th—summon nature’s ally IV (animals only), 5th—beast shape III (animals only), 6th—antilife shell, 7th—animal shapes, 8th—summon nature’s ally VIII (animals only), 9th—shapechange.", level: 1)
      animal_domain4_feature = Feature.create!()
        KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: animal_domain4.id, feature_id: animal_domain4_feature.id)

  artifice_domain = KlassSpecialization.create!(name: "Artifice Domain", description: "You can repair damage to objects, animate objects with life, and create objects from nothing.")
    KlassFeatureKlassSpecialization.create!(klass_feature_id: cleric5.id, klass_specialization_id: artifice_domain.id)
    artifice_domain1 = KlassSpecializationFeature.create!(klass_specialization_id: artifice_domain.id, name: "Artificer's Touch", description: "You can cast mending at will, using your cleric level as the caster level to repair damaged objects. In addition, you can cause damage to objects and construct creatures by striking them with a melee touch attack. Objects and constructs take 1d6 points of damage +1 for every two cleric levels you possess. This attack bypasses an amount of damage reduction and hardness equal to your cleric level. You can use this ability a number of times per day equal to 3 + your Wisdom modifier.", level: 1)
      artifice_domain1_feature = Feature.create!()
        KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: artifice_domain1.id, feature_id: artifice_domain1_feature.id)
      artifice_domain1_feature2 = Feature.create!(action_id: standard.id)
        KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: artifice_domain1.id, feature_id: artifice_domain1_feature2.id)
        FeatureUsage.create!(feature_id: artifice_domain1_feature2.id, limit_frequency: "Day", adjustable: true, base_limit: 3, base_limit_modifier: "wisdom")
        FeatureDamage.create!(feature_id: artifice_domain1_feature2.id, num_of_dice: 1, damage_dice: 6, base_mod: 0, mod_increase_per_level: 0.5)
        FeatureAttack.create!(feature_id: artifice_domain1_feature2.id, attack_type: "melee", armor_class: "touch")
    artifice_domain2 = KlassSpecializationFeature.create!(klass_specialization_id: artifice_domain.id, name: "Dancing Weapons", description: "At 8th level, you can give a weapon touched the dancing special weapon quality for 4 rounds. You can use this ability once per day at 8th level, and an additional time per day for every four levels beyond 8th.", level: 8)
    artifice_domain3 = KlassSpecializationFeature.create!(klass_specialization_id: artifice_domain.id, name: "Domain Spells", description: "1st—animate rope, 2nd—wood shape, 3rd—stone shape, 4th—minor creation, 5th—fabricate, 6th—major creation, 7th—wall of iron, 8th—statue*, 9th—prismatic sphere.", level: 1)
      artifice_domain3_feature = Feature.create!()
        KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: artifice_domain3.id, feature_id: artifice_domain3_feature.id)

    chaos_domain = KlassSpecialization.create!(name: "Chaos Domain", description: "our touch infuses life and weapons with chaos, and you revel in all things anarchic.")
      KlassFeatureKlassSpecialization.create!(klass_feature_id: cleric5.id, klass_specialization_id: chaos_domain.id)
      chaos_domain1 = KlassSpecializationFeature.create!(klass_specialization_id: chaos_domain.id, name: "Touch of Chaos", description: "You can imbue a target with chaos as a melee touch attack. For the next round, anytime the target rolls a d20, he must roll twice and take the less favorable result. You can use this ability a number of times per day equal to 3 + your Wisdom modifier.", level: 1)
        chaos_domain1_feature = Feature.create!(action_id: standard.id)
          KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: chaos_domain1.id, feature_id: chaos_domain1_feature.id)
          FeatureUsage.create!(feature_id: chaos_domain1_feature.id, limit_frequency: "Day", adjustable: true, base_limit: 3, base_limit_modifier: "wisdom")
          FeatureApplication.create!(feature_id: chaos_domain1_feature.id, affects_allies: true, affects_enemies: true)
      chaos_domain2 = KlassSpecializationFeature.create!(klass_specialization_id: chaos_domain.id, name: "Chaos Blade", description: "At 8th level, you can give a weapon touched the anarchic special weapon quality for a number of rounds equal to 1/2 your cleric level. You can use this ability once per day at 8th level, and an additional time per day for every four levels beyond 8th.", level: 8)
      chaos_domain3 = KlassSpecializationFeature.create!(klass_specialization_id: chaos_domain.id, name: "Domain Spells", description: "1st—protection from law, 2nd—align weapon (chaos only), 3rd—magic circle against law, 4th—chaos hammer, 5th—dispel law, 6th—animate objects, 7th—word of chaos, 8th—cloak of chaos, 9th—summon monster IX (chaos spell only).")
        chaos_domain3_feature = Feature.create!()
          KlassSpecializationFeatureFeature.create!(klass_specialization_feature_id: chaos_domain3.id, feature_id: chaos_domain3_feature.id)





cleric6 = KlassFeature.create!(klass_id: cleric.id, name: "Spontaneous Casting", description: "A good cleric (or a neutral cleric of a good deity) can channel stored spell energy into healing spells that she did not prepare ahead of time. The cleric can “lose” any prepared spell that is not an orison or domain spell in order to cast any cure spell of the same spell level or lower (a cure spell is any spell with “cure” in its name).

An evil cleric (or a neutral cleric of an evil deity) can’t convert prepared spells to cure spells but can convert them to inflict spells (an inflict spell is one with “inflict” in its name).

A cleric who is neither good nor evil and whose deity is neither good nor evil can convert spells to either cure spells or inflict spells (player’s choice). Once the player makes this choice, it cannot be reversed. This choice also determines whether the cleric channels positive or negative energy (see channel energy).")
  FeatureLevel.create!(klass_feature_id: cleric6.id, level: 1, table_description: "Spontaneous Casting")
  cleric6_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: cleric6.id, feature_id: cleric6_feature.id)
    FeatureCharacterChoice.create!(feature_id: cleric6_feature.id, sub_feature: "spontaneous_casting", option: "cure")
    FeatureCharacterChoice.create!(feature_id: cleric6_feature.id, sub_feature: "spontaneous_casting", option: "inflict")

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")
  # IDENTIFIER_feature = Feature.create!()
  #   KlassFeatureFeature.create!(klass_feature_id: IDENTIFIER.id, feature_id: IDENTIFIER_feature.id)

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")
  # IDENTIFIER_feature = Feature.create!()
  #   KlassFeatureFeature.create!(klass_feature_id: IDENTIFIER.id, feature_id: IDENTIFIER_feature.id)

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")
  # IDENTIFIER_feature = Feature.create!()
  #   KlassFeatureFeature.create!(klass_feature_id: IDENTIFIER.id, feature_id: IDENTIFIER_feature.id)

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")
  # IDENTIFIER_feature = Feature.create!()
  #   KlassFeatureFeature.create!(klass_feature_id: IDENTIFIER.id, feature_id: IDENTIFIER_feature.id)

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")
  # IDENTIFIER_feature = Feature.create!()
  #   KlassFeatureFeature.create!(klass_feature_id: IDENTIFIER.id, feature_id: IDENTIFIER_feature.id)

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")
  # IDENTIFIER_feature = Feature.create!()
  #   KlassFeatureFeature.create!(klass_feature_id: IDENTIFIER.id, feature_id: IDENTIFIER_feature.id)

# IDENTIFIER = KlassFeature.create!(klass_id: CLASS.id, name: "", description: "")
  # FeatureLevel.create!(klass_feature_id: IDENTIFIER.id, level: 1, table_description: "")
  # IDENTIFIER_feature = Feature.create!()
  #   KlassFeatureFeature.create!(klass_feature_id: IDENTIFIER.id, feature_id: IDENTIFIER_feature.id)

print "Cleric features created! \r"


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

print "Arcanist features created! \r"



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

print "Vigilante features created! \r"


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

print "Shifter features created! \r"


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

print "Swashbuckler features created! \r"


unchained_barbarian1 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Weapon and Armor Proficiency", description: "A barbarian is proficient with all simple and martial weapons, light armor, medium armor, and shields (except tower shields).")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian1.id, level: 1, table_description: "none")
  unchained_barbarian1_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: unchained_barbarian1.id, feature_id: unchained_barbarian1_feature.id)
    FeatureWeaponProficiency.create!(feature_id: unchained_barbarian1_feature.id, proficiency_group: "Simple")
    FeatureWeaponProficiency.create!(feature_id: unchained_barbarian1_feature.id, proficiency_group: "Martial")
    FeatureArmorProficiency.create!(feature_id: unchained_barbarian1_feature.id, proficiency_group: "Light")
    FeatureArmorProficiency.create!(feature_id: unchained_barbarian1_feature.id, proficiency_group: "Medium")
    FeatureArmorProficiency.create!(feature_id: unchained_barbarian1_feature.id, proficiency_group: "Shield")
    FeatureArmorProficiency.create!(feature_id: unchained_barbarian1_feature.id, armor_id: tower_shield.id, additive: false)

unchained_barbarian2 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Fast Movement", description: "A barbarian’s base speed is faster than the norm for her race by 10 feet. This benefit applies only when she is wearing no armor, light armor, or medium armor, and not carrying a heavy load. Apply this bonus before modifying the barbarian’s speed because of any load carried or armor worn. This bonus stacks with any other bonuses to the barbarian’s base speed.")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian2.id, level: 1, table_description: "Fast Movement")
  unchained_barbarian2_feature = Feature.create!()
    KlassFeatureFeature.create!(klass_feature_id: unchained_barbarian2.id, feature_id: unchained_barbarian2_feature.id)
    FeatureMovement.create!(feature_id: unchained_barbarian2_feature.id, movement: "Base", feet: 10, bonus: true, permanent: true)
    FeatureCondition.create!(feature_id: unchained_barbarian2_feature.id, unless_wearing: "Heavy", unless_load: "Heavy")
    FeatureApplication.create!(feature_id: unchained_barbarian2_feature.id, calculate_before: "load")
    FeatureApplication.create!(feature_id: unchained_barbarian2_feature.id, calculate_before: "armor")

unchained_barbarian3 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Rage", description: "A barbarian can call upon inner reserves of strength and ferocity, granting her additional combat prowess. At 1st level, a barbarian can rage for a number of rounds per day equal to 4 + her Constitution modifier. For each level after 1st she possesses, the barbarian can rage for 2 additional rounds per day. Temporary increases to Constitution, such as that gained from bear’s endurance, do not increase the total number of rounds that a barbarian can rage per day. A barbarian can enter a rage as a free action. The total number of rounds of rage per day is renewed after resting for 8 hours, although these hours need not be consecutive.

While in a rage, a barbarian gains a +2 bonus on melee attack rolls, melee damage rolls, thrown weapon damage rolls, and Will saving throws. In addition, she takes a –2 penalty to Armor Class. She also gains 2 temporary hit points per Hit Die. These temporary hit points are lost first when a character takes damage, disappear when the rage ends, and are not replenished if the barbarian enters a rage again within 1 minute of her previous rage. While in a rage, a barbarian cannot use any Charisma-, Dexterity-, or Intelligence-based skill (except Acrobatics, Fly, Intimidate, and Ride) or any ability that requires patience or concentration (such as spellcasting).

A barbarian can end her rage as a free action, and is fatigued for 1 minute after a rage ends. A barbarian can’t enter a new rage while fatigued or exhausted, but can otherwise enter a rage multiple times per day. If a barbarian falls unconscious, her rage immediately ends.")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian3.id, level: 1, table_description: "Rage")
  unchained_barbarian_feature_3 = Feature.create!(name: nil, action_id: free.id)
    KlassFeatureFeature.create!(klass_feature_id: unchained_barbarian3.id, feature_id: unchained_barbarian_feature_3.id)
    FeatureStatBonus.create!(feature_id: unchained_barbarian_feature_3.id, statistic: 'Attack', bonus: 2, bonus_type: 'untyped', duration: 'temporary', specific_statistic: 'melee')
    FeatureStatBonus.create!(feature_id: unchained_barbarian_feature_3.id, statistic: 'Damage', bonus: 2, bonus_type: 'untyped', duration: 'temporary', specific_statistic: 'melee')
    FeatureStatBonus.create!(feature_id: unchained_barbarian_feature_3.id, statistic: 'Damage', bonus: 2, bonus_type: 'untyped', duration: 'temporary', specific_statistic: 'thrown')
    FeatureStatBonus.create!(feature_id: unchained_barbarian_feature_3.id, statistic: 'Will', bonus: 2, bonus_type: 'untyped', duration: 'temporary')
    FeatureStatBonus.create!(feature_id: unchained_barbarian_feature_3.id, statistic: 'Armor Class', bonus: -2, bonus_type: 'untyped', duration: 'temporary')
    FeatureStatBonus.create!(feature_id: unchained_barbarian_feature_3.id, statistic: 'Hit Points', bonus: 2, bonus_type: 'temporary', duration: 'temporary', bonus_multiplier: 'level', bonus_multiplier_based_on_feature_level: true)
    FeatureUsage.create!(feature_id: unchained_barbarian_feature_3.id, limit_frequency: 'Day', unit: 'round', adjustable: true, toggleable: true, base_limit: 4, base_limit_modifier: 'constitution', limit_increase_per_level: 2, toggle_off_action_id: free.id, expend_frequency: 'Round')
    FeatureCondition.create!(feature_id: unchained_barbarian_feature_3.id, affected_by_temporary_stat_bonus: false)
    FeatureCondition.create!(feature_id: unchained_barbarian_feature_3.id, if_affected_by_condition: 'fatigued')
    FeatureCondition.create!(feature_id: unchained_barbarian_feature_3.id, if_affected_by_condition: 'exhausted')
  unchained_barbarian_feature_3_after = Feature.create!(name: "Fatigued (Rage)", after: true)
    KlassFeatureFeature.create!(feature_id: unchained_barbarian_feature_3_after.id, klass_feature_id: unchained_barbarian3.id)
    FeatureStatusCondition.create!(feature_id: unchained_barbarian_feature_3_after.id, condition: "Fatigued")


unchained_barbarian4 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Rage Powers", description: "As a barbarian gains levels, she learns to use her rage in new ways. At 2nd level and every 2 levels thereafter, the barbarian gains a rage power. A barbarian gains the benefits of rage powers only while raging. Some of these powers are always active during a rage, and others require the barbarian to take an action to use them. Unless otherwise noted, a barbarian cannot select an individual power more than once.

Some of the following rage powers are stances. Activating a stance rage power is a move action. A barbarian can’t have more than one stance rage power active at a time. If she activates a stance rage power while another one is active, the current stance immediately ends. The stance can be intentionally ended at the beginning of the barbarian’s turn as a free action; otherwise, it lasts until the rage ends.")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian4.id, level: 2, table_description: "Rage Power")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian4.id, level: 4, table_description: "Rage Power")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian4.id, level: 6, table_description: "Rage Power")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian4.id, level: 8, table_description: "Rage Power")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian4.id, level: 10, table_description: "Rage Power")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian4.id, level: 12, table_description: "Rage Power")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian4.id, level: 14, table_description: "Rage Power")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian4.id, level: 16, table_description: "Rage Power")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian4.id, level: 18, table_description: "Rage Power")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian4.id, level: 20, table_description: "Rage Power")

unchained_barbarian5 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Uncanny Dodge", description: "At 2nd level, a barbarian gains the ability to react to danger before her senses would normally allow her to do so. She cannot be caught flat-footed, nor does she lose her Dexterity bonus to AC if immobilized. A barbarian with this ability can still lose her Dexterity bonus to AC if an opponent successfully uses the feint action against her.

If a barbarian already has uncanny dodge from a different class, she automatically gains improved uncanny dodge (see below) instead.")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian5.id, level: 2, table_description: "Uncanny Dodge")

unchained_barbarian6 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Danger Sense", description: "At 3rd level, a barbarian gains a +1 bonus on Reflex saves to avoid traps and a +1 dodge bonus to AC against attacks by traps. In addition, she gains a +1 bonus on Perception checks to avoid being surprised by a foe. These bonuses increase by 1 every 3 levels thereafter (to a maximum of +6 at 18th level). This ability counts as trap sense for any feat or class prerequisite, and can be replaced by any archetype class feature that replaces trap sense. The bonuses gained from this ability stack with those gained from trap sense (if the barbarian has trap sense from another class).")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian6.id, level: 3, table_description: "Danger Sense +1")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian6.id, level: 6, table_description: "Danger Sense +2")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian6.id, level: 9, table_description: "Danger Sense +3")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian6.id, level: 12, table_description: "Danger Sense +4")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian6.id, level: 15, table_description: "Danger Sense +5")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian6.id, level: 18, table_description: "Danger Sense +6")

unchained_barbarian7 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Improved Uncanny Dodge", description: "At 5th level, a barbarian can no longer be flanked. This defense denies enemies the ability to sneak attack the barbarian by flanking her, unless the attacker has at least 4 more levels in a class that provides sneak attack than the barbarian has barbarian levels.

If the barbarian also has uncanny dodge from another class, levels from the classes that grant uncanny dodge stack to determine the minimum level required to flank the barbarian.")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian7.id, level: 5, table_description: "Improved Uncanny Dodge")

unchained_barbarian8 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Damage Reduction", description: "At 7th level, a barbarian gains damage reduction. Each time the barbarian takes damage from a weapon or natural attack, subtract 1 from the damage taken. At 10th level and every 3 levels thereafter, this damage reduction rises by 1 point (up to 5 points at 19th level). Damage Reduction can reduce damage to 0, but not below 0.")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian8.id, level: 7, table_description: "Damage Reduction 1/-")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian8.id, level: 10, table_description: "Damage Reduction 2/-")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian8.id, level: 13, table_description: "Damage Reduction 3/-")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian8.id, level: 16, table_description: "Damage Reduction 4/-")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian8.id, level: 19, table_description: "Damage Reduction 5/-")

unchained_barbarian9 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Greater Rage", description: "At 11th level, a barbarian’s bonus on melee attack rolls, melee damage rolls, thrown weapon damage rolls, and Will saves while raging increases to +3. In addition, the amount of temporary hit points gained when entering a rage increases to 3 per Hit Die.")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian9.id, level: 11, table_description: "Greater Rage")

unchained_barbarian10 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Indomitable Will", description: "At 14th level, the barbarian gains a +4 bonus on Will saves to resist enchantment spells while raging. This bonus stacks with all other modifiers, including the morale bonus on Will saves she gains during her rage.")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian10.id, level: 14, table_description: "Indomitable Will")

unchained_barbarian11 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Tireless Rage", description: "At 17th level, a barbarian is no longer fatigued at the end of her rage. If she enters a rage again within 1 minute of ending a rage, she doesn’t gain any temporary hit points from her rage.")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian11.id, level: 17, table_description: "Tireless Rage")

unchained_barbarian12 = KlassFeature.create!(klass_id: unchained_barbarian.id, name: "Mighty Rage", description: "At 20th level, a barbarian’s bonus on melee attack rolls, melee damage rolls, thrown weapon damage rolls, and Will saves while raging increases to +4. In addition, the amount of temporary hit points gained when entering a rage increases to 4 per Hit Die.")
  FeatureLevel.create!(klass_feature_id: unchained_barbarian12.id, level: 20, table_description: "Mighty Rage")

print "Unchained Barbarian features created! \r"


brawler1 = KlassFeature.create!(klass_id: brawler.id, name: "Weapon and Armor Proficiency", description: "A brawler is proficient with all simple weapons plus the handaxe, short sword, and weapons from the close fighter weapon group. She is proficient with light armor and shields (except tower shields).")
  FeatureLevel.create!(klass_feature_id: brawler1.id, level: 1, table_description: "none")

brawler2 = KlassFeature.create!(klass_id: brawler.id, name: "Brawler's Cunning", description: "If the brawler’s Intelligence score is less than 13, it counts as 13 for the purpose of meeting the prerequisites of combat feats.")
  FeatureLevel.create!(klass_feature_id: brawler2.id, level: 1, table_description: "Brawler's Cunning")

brawler3 = KlassFeature.create!(klass_id: brawler.id, name: "Martial Flexibility", description: "A brawler can take a move action to gain the benefit of a combat feat she doesn’t possess. This effect lasts for 1 minute. The brawler must meet all the feat’s prerequisites. She may use this ability a number of times per day equal to 3 + 1/2 her brawler level (minimum 1).

The brawler can use this ability again before the duration expires in order to replace the previous combat feat with another choice.

If a combat feat has a daily use limitation (such as Stunning Fist), any uses of that combat feat while using this ability count toward that feat’s daily limit.

At 6th level, a brawler can use this ability to gain the benefit of two combat feats at the same time. She may select one feat as a swift action or two feats as a move action. She may use one of these feats to meet a prerequisite of the second feat; doing so means that she cannot replace a feat currently fulfilling another’s prerequisite without also replacing those feats that require it. Each individual feat selected counts toward her daily uses of this ability.

At 10th level, a brawler can use this ability to gain the benefit of three combat feats at the same time. She may select one feat as a free action, two feats as a swift action, or three feats as a move action. She may use one of the feats to meet a prerequisite of the second and third feats, and use the second feat to meet a prerequisite of the third feat. Each individual feat selected counts toward her daily uses of this ability.

At 12th level, a brawler can use this ability to gain the benefit of one combat feat as an immediate action or three combat feats as a swift action. Each individual feat selected counts toward her daily uses of this ability.

At 20th level, a brawler can use this ability to gain the benefit of any number of combat feats as a swift action. Each feat selected counts toward her daily uses of this ability.

")
  FeatureLevel.create!(klass_feature_id: brawler3.id, level: 1, table_description: "Martial Flexibility")
  FeatureLevel.create!(klass_feature_id: brawler3.id, level: 6, table_description: "Martial Flexibility (swift action)")
  FeatureLevel.create!(klass_feature_id: brawler3.id, level: 10, table_description: "Martial Flexibility (free action)")
  FeatureLevel.create!(klass_feature_id: brawler3.id, level: 12, table_description: "Martial Flexibility (immediate action)")
  FeatureLevel.create!(klass_feature_id: brawler3.id, level: 20, table_description: "Martial Flexibility (any number)")

brawler4 = KlassFeature.create!(klass_id: brawler.id, name: "Martial Training", description: "At 1st level, a brawler counts her total brawler levels as both fighter levels and monk levels for the purpose of qualifying for feats. She also counts as both a fighter and a monk for feats and magic items that have different effects based on whether the character has levels in those classes (such as Stunning Fist and a monk’s robe). This ability does not automatically grant feats normally granted to fighters and monks based on class level, namely Stunning Fist.")
  FeatureLevel.create!(klass_feature_id: brawler4.id, level: 1, table_description: "Martial Training")

brawler5 = KlassFeature.create!(klass_id: brawler.id, name: "Unarmed Strike", description: "At 1st level, a brawler gains Improved Unarmed Strike as a bonus feat. A brawler may attack with fists, elbows, knees, and feet. This means that a brawler may make unarmed strikes with her hands full. A brawler applies her full Strength modifier (not half ) on damage rolls for all her unarmed strikes.

Usually, a brawler’s unarmed strikes deal lethal damage, but she can choose to deal nonlethal damage instead with no penalty on her attack roll. She has the same choice to deal lethal or nonlethal damage while grappling.

A brawler’s unarmed strike is treated as both a manufactured weapon and a natural weapon for the purpose of spells and effects that modify either manufactured weapons or natural weapons.

A brawler also deals more damage with her unarmed strikes than others, as shown on Table: Brawler. The unarmed damage values listed on that table are for Medium brawlers.")
  FeatureLevel.create!(klass_feature_id: brawler5.id, level: 1, table_description: "Unarmed Strike 1d6")
  FeatureLevel.create!(klass_feature_id: brawler5.id, level: 4, table_description: "Unarmed Strike 1d8")
  FeatureLevel.create!(klass_feature_id: brawler5.id, level: 8, table_description: "Unarmed Strike 1d10")
  FeatureLevel.create!(klass_feature_id: brawler5.id, level: 12, table_description: "Unarmed Strike 2d6")
  FeatureLevel.create!(klass_feature_id: brawler5.id, level: 16, table_description: "Unarmed Strike 2d8")
  FeatureLevel.create!(klass_feature_id: brawler5.id, level: 20, table_description: "Unarmed Strike 2d10")

brawler6 = KlassFeature.create!(klass_id: brawler.id, name: "Bonus Combat Feats", description: "At 2nd level and every 3 levels thereafter, a brawler gains a bonus combat feat in addition to those gained from normal advancement. These bonus feats must be ones that affect or improve her defenses or melee attacks. The brawler must meet the prerequisites of the selected bonus combat feat.

Upon reaching 5th level and every 3 levels thereafter, a brawler can choose to learn a new bonus combat feat in place of a bonus combat feat she has already learned. In effect, the brawler loses the bonus combat feat in exchange for the new one. The old feat cannot be one that was used as a prerequisite for another feat, prestige class, or other ability. A brawler can only change one feat at any given level, and must choose whether or not to swap the feat at the time she gains a new bonus combat feat for the level.")
  FeatureLevel.create!(klass_feature_id: brawler6.id, level: 2, table_description: "Bonus Combat Feat")
  FeatureLevel.create!(klass_feature_id: brawler6.id, level: 5, table_description: "Bonus Combat Feat")
  FeatureLevel.create!(klass_feature_id: brawler6.id, level: 8, table_description: "Bonus Combat Feat")
  FeatureLevel.create!(klass_feature_id: brawler6.id, level: 11, table_description: "Bonus Combat Feat")
  FeatureLevel.create!(klass_feature_id: brawler6.id, level: 14, table_description: "Bonus Combat Feat")
  FeatureLevel.create!(klass_feature_id: brawler6.id, level: 17, table_description: "Bonus Combat Feat")
  FeatureLevel.create!(klass_feature_id: brawler6.id, level: 20, table_description: "Bonus Combat Feat")

brawler7 = KlassFeature.create!(klass_id: brawler.id, name: "Brawler's Flurry", description: "Starting at 2nd level, a brawler can make a brawler’s flurry as a full-attack action. When doing so, a brawler has the Two-Weapon Fighting feat when attacking with any combination of unarmed strikes, weapons from the close fighter weapon group, or weapons with the “monk” special feature. She does not need to use two different weapons to use this ability.

A brawler applies her full Strength modifier to her damage rolls for all attacks made with brawler’s flurry, whether the attacks are made with an off-hand weapon or a weapon wielded in both hands. A brawler can substitute disarm, sunder, and trip combat maneuvers for unarmed attacks as part of brawler’s flurry. A brawler with natural weapons can’t use such weapons as part of brawler’s flurry, nor can she make natural weapon attacks in addition to her brawler’s flurry attacks.

At 8th level, the brawler gains use of the Improved Two-Weapon Fighting feat when using brawler’s flurry. At 15th level, she gains use of the Greater Two-Weapon Fighting feat when using brawler’s flurry.")
  FeatureLevel.create!(klass_feature_id: brawler7.id, level: 2, table_description: "Brawler's Flurry (Two-Wepon Fighting)")
  FeatureLevel.create!(klass_feature_id: brawler7.id, level: 8, table_description: "Brawler's Flurry (Improved Two-Wepon Fighting)")
  FeatureLevel.create!(klass_feature_id: brawler7.id, level: 15, table_description: "Brawler's Flurry (Greater Two-Wepon Fighting)")

brawler8 = KlassFeature.create!(klass_id: brawler.id, name: "Maneuver Training", description: "At 3rd level, a brawler can select one combat maneuver to receive additional training. She gains a +1 bonus on combat maneuver checks when performing that combat maneuver and a +1 bonus to her CMD when defending against that maneuver.

At 7th level and every 4 levels thereafter, the brawler becomes further trained in another combat maneuver, gaining the above +1 bonus combat maneuver checks and to CMD. In addition, the bonuses granted by all previous maneuver training increase by 1 each. (For example, if a brawler chooses grapple at 3rd level and sunder at 7th level, her bonuses to grapple are +2 and bonuses to sunder are +1. If she then chooses bull rush upon reaching 11th level, her bonuses to grapple are +3, to sunder are +2, and to bull rush are +1.)")
  FeatureLevel.create!(klass_feature_id: brawler8.id, level: 3, table_description: "Maneuver Training 1")
  FeatureLevel.create!(klass_feature_id: brawler8.id, level: 7, table_description: "Maneuver Training 2")
  FeatureLevel.create!(klass_feature_id: brawler8.id, level: 11, table_description: "Maneuver Training 3")
  FeatureLevel.create!(klass_feature_id: brawler8.id, level: 15, table_description: "Maneuver Training 4")
  FeatureLevel.create!(klass_feature_id: brawler8.id, level: 19, table_description: "Maneuver Training 5")

brawler9 = KlassFeature.create!(klass_id: brawler.id, name: "AC Bonus", description: "At 4th level, when a brawler wears light or no armor, she gains a +1 dodge bonus to AC and CMD. This bonus increases by 1 at 9th, 13th, and 18th levels.

These bonuses to AC apply against touch attacks. She loses these bonuses while immobilized or helpless, wearing medium or heavy armor, or carrying a medium or heavy load.")
  FeatureLevel.create!(klass_feature_id: brawler9.id, level: 4, table_description: "AC Bonus +1")
  FeatureLevel.create!(klass_feature_id: brawler9.id, level: 9, table_description: "AC Bonus +2")
  FeatureLevel.create!(klass_feature_id: brawler9.id, level: 13, table_description: "AC Bonus +3")
  FeatureLevel.create!(klass_feature_id: brawler9.id, level: 18, table_description: "AC Bonus +4")

brawler10 = KlassFeature.create!(klass_id: brawler.id, name: "Knockout", description: "At 4th level, once per day a brawler can unleash a devastating attack that can instantly knock a target unconscious. She must announce this intent before making her attack roll. If the brawler hits and the target takes damage from the blow, the target must succeed at a Fortitude saving throw (DC = 10 + 1/2 the brawler’s level + the higher of the brawler’s Strength or Dexterity modifier) or fall unconscious for 1d6 rounds. Each round on its turn, the unconscious target may attempt a new saving throw to end the effect as a full-round action that does not provoke attacks of opportunity. Creatures immune to critical hits or nonlethal damage are immune to this ability. At 10th level, the brawler may use this ability twice per day; at 16th level, she may use it three times per day.")
  FeatureLevel.create!(klass_feature_id: brawler10.id, level: 4, table_description: "Knockout 1/day")
  FeatureLevel.create!(klass_feature_id: brawler10.id, level: 10, table_description: "Knockout 2/day")
  FeatureLevel.create!(klass_feature_id: brawler10.id, level: 16, table_description: "Knockout 3/day")

brawler11 = KlassFeature.create!(klass_id: brawler.id, name: "Brawler's Strike", description: "At 5th level, a brawler’s unarmed strikes are treated as magic weapons for the purpose of overcoming damage reduction. At 9th level, her unarmed attacks are also treated as cold iron and silver for the purpose of overcoming damage reduction. At 12th level, she chooses one alignment component: chaotic, evil, good, or lawful; her unarmed strikes also count as this alignment for the purpose of overcoming damage reduction. (This alignment component cannot be the opposite of the brawler’s actual alignment, such as a good brawler choosing evil strikes.) At 17th level, her unarmed attacks are also treated as adamantine weapons for the purpose of overcoming damage reduction and bypassing hardness.")
  FeatureLevel.create!(klass_feature_id: brawler11.id, level: 5, table_description: "Brawler's Strike (magic)")
  FeatureLevel.create!(klass_feature_id: brawler11.id, level: 9, table_description: "Brawler's Strike (cold iron and silver)")
  FeatureLevel.create!(klass_feature_id: brawler11.id, level: 12, table_description: "Brawler's Strike (alignment)")
  FeatureLevel.create!(klass_feature_id: brawler11.id, level: 17, table_description: "Brawler's Strike (adamantine)")

brawler12 = KlassFeature.create!(klass_id: brawler.id, name: "Close Weapon Mastery", description: "At 5th level, a brawler’s damage with close weapons increases. When wielding a close weapon, she uses the unarmed strike damage of a brawler 4 levels lower instead of the base damage for that weapon (for example, a 5th-level Medium brawler wielding a punching dagger deals 1d6 points of damage instead of the weapon’s normal 1d4). If the weapon normally deals more damage than this, its damage is unchanged. This ability does not affect any other aspect of the weapon. The brawler can decide to use the weapon’s base damage instead of her adjusted unarmed strike damage—this must be declared before the attack roll is made.")
  FeatureLevel.create!(klass_feature_id: brawler12.id, level: 5, table_description: "Close Weapon Mastery")

brawler13 = KlassFeature.create!(klass_id: brawler.id, name: "Awesome Blow", description: "At 16th level, the brawler can as a standard action perform an awesome blow combat maneuver against a corporeal creature of her size or smaller. If the combat maneuver check succeeds, the opponent takes damage as if the brawler hit it with the close weapon she is wielding or an unarmed strike, it is knocked flying 10 feet in a direction of the brawler’s choice, and it falls prone. The brawler can only push the opponent in a straight line, and the opponent can’t move closer to the brawler than the square it started in. If an obstacle prevents the completion of the opponent’s move, the opponent and the obstacle each take 1d6 points of damage, and the opponent is knocked prone in the space adjacent to the obstacle. (Unlike the Awesome Blow monster feat, the brawler can be of any size to use this ability.)")
  FeatureLevel.create!(klass_feature_id: brawler13.id, level: 16, table_description: "Awesome Blow")

brawler14 = KlassFeature.create!(klass_id: brawler.id, name: "Improved Awesome Blow", description: "At 20th level, the brawler can use her awesome blow ability as an attack rather than as a standard action. She may use it on creatures of any size. If the maneuver roll is a natural 20, the brawler can immediately attempt to confirm the critical by rolling another combat maneuver check with all the same modifiers as the one just rolled; if the confirmation roll is successful, the attack deals double damage, and the damage from hitting an obstacle (if any) is also doubled.")
  FeatureLevel.create!(klass_feature_id: brawler14.id, level: 20, table_description: "Improved Awesome Blow")

print "Brawler features created! \r"





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

# Spellcasting.create!(klass_feature_id: witch2.id, ability_score: "Intelligence", prepared: true, limited: true, expendable: true, infinite_zero_level: false, bonus_spells: true, klass_spell_list_id: witch.id)

Spellcasting.create!(klass_feature_id: fate_weaver4.id, ability_score: "Charisma", prepared: false, limited: true, expendable: false, infinite_zero_level: false, bonus_spells: false, klass_spell_list_id: fate_weaver.id)

Spellcasting.create!(klass_feature_id: bard2.id, ability_score: "Charisma", prepared: false, limited: true, expendable: false, infinite_zero_level: true, bonus_spells: true, klass_spell_list_id: bard.id)

Spellcasting.create!(klass_feature_id: arcanist2.id, ability_score: "Intelligence", prepared: true, limited: true, expendable: false, infinite_zero_level: true, bonus_spells: true, klass_spell_list_id: wizard.id, prepared_amount: true)

# Spellcasting.create!(klass_feature_id: alchemist2.id, ability_score: "Intelligence", prepared: true, limited: true, expendable: true, infinite_zero_level: false, bonus_spells: true, klass_spell_list_id: alchemist.id, alchemy: true)


puts "Classes Created!"

# /////////////////////////////////////////
# <-*-*-----*-*-*- Spells Per Day!-*-*-*-----*-*->
# /////////////////////////////////////////

SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 1, spells: 1, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 2, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 3, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 4, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 5, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 6, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 7, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 8, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 9, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 10, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 11, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 12, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 13, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 14, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 15, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 16, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 17, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 18, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 19, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 20, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 4, spells: 1, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 5, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 6, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 7, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 8, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 9, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 10, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 11, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 12, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 13, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 14, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 15, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 16, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 17, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 18, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 19, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 20, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 7, spells: 1, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 8, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 9, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 10, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 11, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 12, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 13, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 14, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 15, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 16, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 17, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 18, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 19, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 20, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 10, spells: 1, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 11, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 12, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 13, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 14, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 15, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 16, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 17, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 18, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 19, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 20, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 13, spells: 1, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 14, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 15, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 16, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 17, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 18, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 19, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 20, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 16, spells: 1, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 17, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 18, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 19, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 20, spells: 5, feature_spellcasting_id: bard_spellcasting.id)

KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 1, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 2, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 3, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 4, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 5, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 6, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 7, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 8, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 9, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 10, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 11, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 12, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 13, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 14, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 15, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 16, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 17, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 18, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 19, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 0, klass_level: 20, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 1, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 2, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 3, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 4, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 5, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 6, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 7, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 8, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 9, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 10, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 11, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 12, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 13, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 14, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 15, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 16, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 17, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 18, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 19, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 1, klass_level: 20, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 4, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 5, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 6, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 7, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 8, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 9, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 10, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 11, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 12, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 13, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 14, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 15, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 16, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 17, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 18, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 19, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 2, klass_level: 20, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 7, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 8, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 9, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 10, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 11, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 12, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 13, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 14, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 15, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 16, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 17, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 18, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 19, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 3, klass_level: 20, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 10, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 11, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 12, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 13, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 14, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 15, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 16, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 17, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 18, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 19, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 4, klass_level: 20, spells: 6, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 13, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 14, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 15, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 16, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 17, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 18, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 19, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 5, klass_level: 20, spells: 5, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 6, klass_level: 16, spells: 2, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 6, klass_level: 17, spells: 3, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 6, klass_level: 18, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 6, klass_level: 19, spells: 4, feature_spellcasting_id: bard_spellcasting.id)
KnownSpellsPerLevel.create!(spell_level: 6, klass_level: 20, spells: 5, feature_spellcasting_id: bard_spellcasting.id)

SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 1, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 2, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 3, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 4, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 5, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 6, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 7, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 8, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 9, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 10, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 11, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 12, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 13, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 14, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 15, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 16, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 17, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 18, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 19, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 0, klass_level: 20, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 1, spells: 1, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 2, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 3, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 4, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 5, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 6, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 7, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 8, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 9, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 10, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 11, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 12, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 13, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 14, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 15, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 16, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 17, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 18, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 19, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 20, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 3, spells: 1, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 4, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 5, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 6, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 7, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 8, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 9, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 10, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 11, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 12, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 13, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 14, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 15, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 16, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 17, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 18, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 19, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 20, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 5, spells: 1, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 6, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 7, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 8, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 9, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 10, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 11, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 12, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 13, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 14, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 15, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 16, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 17, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 18, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 19, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 20, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 7, spells: 1, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 8, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 9, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 10, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 11, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 12, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 13, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 14, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 15, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 16, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 17, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 18, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 19, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 20, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 9, spells: 1, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 10, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 11, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 12, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 13, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 14, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 15, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 16, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 17, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 18, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 19, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 20, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 11, spells: 1, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 12, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 13, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 14, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 15, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 16, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 17, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 18, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 19, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 20, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 13, spells: 1, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 14, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 15, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 16, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 17, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 18, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 19, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 20, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 15, spells: 1, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 16, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 17, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 18, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 19, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 20, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 17, spells: 1, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 18, spells: 2, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 19, spells: 3, feature_spellcasting_id: cleric_spellcasting.id)
SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 20, spells: 4, feature_spellcasting_id: cleric_spellcasting.id)

# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 1, spells: 2, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 2, spells: 3, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 3, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 4, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 5, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 6, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 7, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 8, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 9, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 10, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 11, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 12, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 13, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 14, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 15, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 1, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 4, spells: 2, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 5, spells: 3, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 6, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 7, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 8, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 9, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 10, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 11, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 12, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 13, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 14, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 15, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 2, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 6, spells: 2, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 7, spells: 3, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 8, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 9, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 10, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 11, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 12, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 13, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 14, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 15, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 3, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 8, spells: 2, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 9, spells: 3, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 10, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 11, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 12, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 13, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 14, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 15, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 4, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 10, spells: 2, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 11, spells: 3, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 12, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 13, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 14, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 15, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 5, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 12, spells: 2, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 13, spells: 3, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 14, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 15, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 6, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 14, spells: 2, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 15, spells: 3, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 16, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 17, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 7, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 16, spells: 2, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 17, spells: 3, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 18, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 19, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 8, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 18, spells: 2, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 19, spells: 3, feature_spellcasting_id: arcanist.id)
# SpellsPerDayPerLevel.create!(spell_level: 9, klass_level: 20, spells: 4, feature_spellcasting_id: arcanist.id)
#




# SpellsPerDayPerLevel.create!(spell_level: , klass_level: , spells: , feature_spellcasting_id: )
# SpellsPerDayPerLevel.create!(spell_level: , klass_level: , spells: , feature_spellcasting_id: )
# SpellsPerDayPerLevel.create!(spell_level: , klass_level: , spells: , feature_spellcasting_id: )
# SpellsPerDayPerLevel.create!(spell_level: , klass_level: , spells: , feature_spellcasting_id: )
# SpellsPerDayPerLevel.create!(spell_level: , klass_level: , spells: , feature_spellcasting_id: )

# /////////////////////////////////////////
# <-*-*-----*-*-*- Prepared Amount!-*-*-*-----*-*->
# /////////////////////////////////////////

PreparedAmount.create!(spell_level: 0, klass_level: 1, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 2, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 3, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 4, spells: 6, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 5, spells: 6, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 6, spells: 7, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 7, spells: 7, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 8, spells: 8, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 9, spells: 8, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 10, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 11, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 12, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 13, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 14, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 15, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 16, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 17, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 18, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 19, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 0, klass_level: 20, spells: 9, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 1, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 2, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 3, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 4, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 5, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 6, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 7, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 8, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 9, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 10, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 11, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 12, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 13, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 14, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 15, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 16, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 17, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 18, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 19, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 1, klass_level: 20, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 4, spells: 1, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 5, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 6, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 7, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 8, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 9, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 10, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 11, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 12, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 13, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 14, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 15, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 16, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 17, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 18, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 19, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 2, klass_level: 20, spells: 5, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 6, spells: 1, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 7, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 8, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 9, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 10, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 11, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 12, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 13, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 14, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 15, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 16, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 17, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 18, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 19, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 3, klass_level: 20, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 8, spells: 1, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 9, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 10, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 11, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 12, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 13, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 14, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 15, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 16, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 17, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 18, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 19, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 4, klass_level: 20, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 10, spells: 1, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 11, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 12, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 13, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 14, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 15, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 16, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 17, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 18, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 19, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 5, klass_level: 20, spells: 4, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 6, klass_level: 12, spells: 1, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 6, klass_level: 13, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 6, klass_level: 14, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 6, klass_level: 15, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 6, klass_level: 16, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 6, klass_level: 17, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 6, klass_level: 18, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 6, klass_level: 19, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 6, klass_level: 20, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 7, klass_level: 14, spells: 1, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 7, klass_level: 15, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 7, klass_level: 16, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 7, klass_level: 17, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 7, klass_level: 18, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 7, klass_level: 19, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 7, klass_level: 20, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 8, klass_level: 16, spells: 1, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 8, klass_level: 17, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 8, klass_level: 18, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 8, klass_level: 19, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 8, klass_level: 20, spells: 3, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 9, klass_level: 18, spells: 1, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 9, klass_level: 19, spells: 2, klass_id: arcanist.id)
PreparedAmount.create!(spell_level: 9, klass_level: 20, spells: 3, klass_id: arcanist.id)




# /////////////////////////////////////////
# <-*-*-----*-*-*- Calendar!-*-*-*-----*-*->
# /////////////////////////////////////////

gregorian = Calendar.create!(name: "Gregorian Calendar", leap_year: true)
  january = Month.create!(name: "January", num_of_days: 31, place: 1, season: "Winter", calendar_id: gregorian.id)
  february = Month.create!(name: "February", num_of_days: 28, place: 2, season: "Winter", calendar_id: gregorian.id, leap_month: true)
  march = Month.create!(name: "March", num_of_days: 31, place: 3, season: "Spring", calendar_id: gregorian.id)
  april = Month.create!(name: "April", num_of_days: 30, place: 4, season: "Spring", calendar_id: gregorian.id)
  may = Month.create!(name: "May", num_of_days: 31, place: 5, season: "Spring", calendar_id: gregorian.id)
  june = Month.create!(name: "June", num_of_days: 30, place: 6, season: "Summer", calendar_id: gregorian.id)
  july = Month.create!(name: "July", num_of_days: 31, place: 7, season: "Summer", calendar_id: gregorian.id)
  august = Month.create!(name: "August", num_of_days: 31, place: 8, season: "Summer", calendar_id: gregorian.id)
  september = Month.create!(name: "September", num_of_days: 30, place: 9, season: "Autumn", calendar_id: gregorian.id)
  october = Month.create!(name: "October", num_of_days: 31, place: 10, season: "Autumn", calendar_id: gregorian.id)
  november = Month.create!(name: "November", num_of_days: 30, place: 11, season: "Autumn", calendar_id: gregorian.id)
  december = Month.create!(name: "December", num_of_days: 31, place: 12, season: "Winter", calendar_id: gregorian.id)

  sunday = Day.create!(name: "Sunday", place: 1, calendar_id: gregorian.id)
  monday = Day.create!(name: "Monday", place: 2, calendar_id: gregorian.id)
  tuesday = Day.create!(name: "Tuesday", place: 3, calendar_id: gregorian.id)
  wednesday = Day.create!(name: "Wednesday", place: 4, calendar_id: gregorian.id)
  thursday = Day.create!(name: "Thursday", place: 5, calendar_id: gregorian.id)
  friday = Day.create!(name: "Friday", place: 6, calendar_id: gregorian.id)
  saturday = Day.create!(name: "Saturday", place: 7, calendar_id: gregorian.id)

oum_calendar = Calendar.create!(name: "Oum Calendar", leap_year: false)
  floreau_budding = Month.create!(name: "Floreau Budding", num_of_days: 30, place: 1, season: "Spring", calendar_id: oum_calendar.id)
  floreau_equinox = Month.create!(name: "Floreau Equinox", num_of_days: 30, place: 2, season: "Spring", calendar_id: oum_calendar.id)
  floreau_blossom = Month.create!(name: "Floreau Blossom", num_of_days: 30, place: 3, season: "Spring", calendar_id: oum_calendar.id)
  harvest_flourish = Month.create!(name: "Harvest Flourish", num_of_days: 30, place: 4, season: "Summer", calendar_id: oum_calendar.id)
  harvest_solstice = Month.create!(name: "Harvest Solstice", num_of_days: 30, place: 5, season: "Summer", calendar_id: oum_calendar.id)
  harvest_scorch = Month.create!(name: "Harvest Scorch", num_of_days: 30, place: 6, season: "Summer", calendar_id: oum_calendar.id)
  autumn_cornucopia = Month.create!(name: "Autumn Cornucopia", num_of_days: 30, place: 7, season: "Autumn", calendar_id: oum_calendar.id)
  autumn_equinox = Month.create!(name: "Autumn Equinox", num_of_days: 30, place: 8, season: "Autumn", calendar_id: oum_calendar.id)
  autumn_festival = Month.create!(name: "Autumn Festival", num_of_days: 30, place: 9, season: "Autumn", calendar_id: oum_calendar.id)
  borealis_snowfall = Month.create!(name: "Borealis Snowfall", num_of_days: 30, place: 10, season: "Winter", calendar_id: oum_calendar.id)
  borealis_solstice = Month.create!(name: "Borealis Solstice", num_of_days: 30, place: 11, season: "Winter", calendar_id: oum_calendar.id)
  borealis_renewal = Month.create!(name: "Borealis Renewal", num_of_days: 30, place: 12, season: "Winter", calendar_id: oum_calendar.id)
  lunalis = Month.create!(name: "Lunalis", random_num_of_days: true, place: 13, season: "Chaotic", calendar_id: oum_calendar.id)

  moonday = Day.create!(name: "Moonday", place: 1, calendar_id: oum_calendar.id)
  everglow = Day.create!(name: "Everglow", place: 2, calendar_id: oum_calendar.id)
  wyrmsrite = Day.create!(name: "Wyrmsrite", place: 3, calendar_id: oum_calendar.id)
  feyblessed = Day.create!(name: "Feyblessed", place: 4, calendar_id: oum_calendar.id)
  radiance = Day.create!(name: "Radiance", place: 5, calendar_id: oum_calendar.id)
  solarday = Day.create!(name: "Solarday", place: 6, calendar_id: oum_calendar.id)
  demoncrest = Day.create!(name: "Demoncrest", place: 7, calendar_id: oum_calendar.id)


# /////////////////////////////////////////
# <-*-*-----*-*-*- Campaigns!-*-*-*-----*-*->
# /////////////////////////////////////////

current_campaign = Campaign.create!(name: 'Ask Questions Second', current_weekday: 'Everglow', current_month: 'Autumn Festival', current_day: 7, current_age: "5th Age", current_year: 1241, dm_id: admin.id, skillset_id: dmc.id, theme: "", setting: "", custom_notes: "", calendar_id: oum_calendar.id, starting_level: 1, websocket_code: UUID.new.generate)

test_campaign = Campaign.create!(name: "Testing 123 Testing", calendar_id: oum_calendar.id, dm_id: admin.id, skillset_id: dmc.id, starting_level: 1, websocket_code: UUID.new.generate)

ravnica_campaign = Campaign.create!(name: "Ravnica", calendar_id: oum_calendar.id, dm_id: admin.id, skillset_id: ravnica_custom.id, starting_level: 2, websocket_code: UUID.new.generate)

# /////////////////////////////////////////
# <-*-*-----*-*-*- Class Skillset Skills!-*-*-*-----*-*->
# /////////////////////////////////////////
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: acrobatics.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: climb.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: handle_animal.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: intimidate.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: nature_unchained.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: perception.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: survival.id)
ClassSkillsetSkill.create!(klass_id: unchained_barbarian.id, skillset_id: dmc.id, skill_id: swim.id)

ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: acrobatics.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: bluff.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: climb.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: diplomacy.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: disguise.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: finesse_unchained.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: intimidate.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: investigation.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: linguistics.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: perception.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: perform.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: religion_unchained.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: sense_motive.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: society_unchained.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: spellcraft_unchained.id)
ClassSkillsetSkill.create!(klass_id: bard.id, skillset_id: dmc.id, skill_id: stealth.id)

# ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: acrobatics.id)
# ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: bluff.id)
# ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: climb.id)
# ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: craft.id)
# ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: diplomacy.id)
# ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: disguise.id)
# ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: finesse_unchained.id)
# ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: intimidate.id)
# ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: investigation.id)
# ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: linguistics.id)
# ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: perception.id)
# ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: perform.id)
# ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: profession.id)
# ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: sense_motive.id)
# ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: society_unchained.id)
# ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: stealth.id)
# ClassSkillsetSkill.create!(klass_id: unchained_rogue.id, skillset_id: dmc.id, skill_id: swim.id)

ClassSkillsetSkill.create!(klass_id: oracle.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: oracle.id, skillset_id: dmc.id, skill_id: diplomacy.id)
ClassSkillsetSkill.create!(klass_id: oracle.id, skillset_id: dmc.id, skill_id: heal.id)
ClassSkillsetSkill.create!(klass_id: oracle.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: oracle.id, skillset_id: dmc.id, skill_id: religion_unchained.id)
ClassSkillsetSkill.create!(klass_id: oracle.id, skillset_id: dmc.id, skill_id: sense_motive.id)
ClassSkillsetSkill.create!(klass_id: oracle.id, skillset_id: dmc.id, skill_id: spellcraft_unchained.id)

# ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: acrobatics.id)
# ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: craft.id)
# ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: heal.id)
# ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: intimidate.id)
# ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: nature_unchained.id)
# ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: profession.id)
# ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: religion_unchained.id)
# ClassSkillsetSkill.create!(klass_id: witch.id, skillset_id: dmc.id, skill_id: spellcraft_unchained.id)

ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: acrobatics.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: climb.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: handle_animal.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: nature_unchained.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: perception.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: stealth.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: survival.id)
ClassSkillsetSkill.create!(klass_id: shifter.id, skillset_id: dmc.id, skill_id: swim.id)

ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: linguistics.id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: nature_unchained.id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: religion_unchained.id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: society_unchained.id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: spellcraft_unchained.id)
ClassSkillsetSkill.create!(klass_id: arcanist.id, skillset_id: dmc.id, skill_id: investigation.id)

ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: acrobatics.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: climb.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: handle_animal.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: intimidate.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: perception.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: sense_motive.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: society_unchained.id)
ClassSkillsetSkill.create!(klass_id: brawler.id, skillset_id: dmc.id, skill_id: swim.id)

ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: acrobatics.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: bluff.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: climb.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: diplomacy.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: finesse_unchained.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: intimidate.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: perception.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: perform.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: sense_motive.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: society_unchained.id)
ClassSkillsetSkill.create!(klass_id: swashbuckler.id, skillset_id: dmc.id, skill_id: swim.id)

ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: acrobatics.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: bluff.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: climb.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: diplomacy.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: disguise.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: finesse_unchained.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: intimidate.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: investigation.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: perception.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: perform.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: sense_motive.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: society_unchained.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: stealth.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: survival.id)
ClassSkillsetSkill.create!(klass_id: vigilante.id, skillset_id: dmc.id, skill_id: swim.id)

ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: bluff.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: diplomacy.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: finesse_unchained.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: handle_animal.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: heal.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: intimidate.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: linguistics.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: perform.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: perception.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: sense_motive.id)
ClassSkillsetSkill.create!(klass_id: fate_weaver.id, skillset_id: dmc.id, skill_id: survival.id)

ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: dmc.id, skill_id: linguistics.id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: dmc.id, skill_id: nature_unchained.id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: dmc.id, skill_id: religion_unchained.id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: dmc.id, skill_id: society_unchained.id)
ClassSkillsetSkill.create!(klass_id: wizard.id, skillset_id: dmc.id, skill_id: spellcraft_unchained.id)

ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: handle_animal.id)
ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: linguistics.id)
ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: nature_unchained.id)
ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: religion_unchained.id)
ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: society_unchained.id)
ClassSkillsetSkill.create!(klass_id: unchained_summoner.id, skillset_id: dmc.id, skill_id: spellcraft_unchained.id)


ClassSkillsetSkill.create!(klass_id: cleric.id, skillset_id: dmc.id, skill_id: diplomacy.id)
ClassSkillsetSkill.create!(klass_id: cleric.id, skillset_id: dmc.id, skill_id: heal.id)
ClassSkillsetSkill.create!(klass_id: cleric.id, skillset_id: dmc.id, skill_id: linguistics.id)
ClassSkillsetSkill.create!(klass_id: cleric.id, skillset_id: dmc.id, skill_id: religion_unchained.id)
ClassSkillsetSkill.create!(klass_id: cleric.id, skillset_id: dmc.id, skill_id: sense_motive.id)
ClassSkillsetSkill.create!(klass_id: cleric.id, skillset_id: dmc.id, skill_id: craft.id)
ClassSkillsetSkill.create!(klass_id: cleric.id, skillset_id: dmc.id, skill_id: profession.id)
ClassSkillsetSkill.create!(klass_id: cleric.id, skillset_id: dmc.id, skill_id: society_unchained.id)
ClassSkillsetSkill.create!(klass_id: cleric.id, skillset_id: dmc.id, skill_id: spellcraft_unchained.id)



# ////////////////////////////////////////////////////
# <-*-*-----*-*-*- Favored Klass Bonus!-*-*-*-----*-*->
# ////////////////////////////////////////////////////

hp_up = FavoredKlassBonus.create!(description: '+1 hit point')
one_skill_point = FavoredKlassBonus.create!(description: '+1 skill point')
# witch_changeling = FavoredKlassBonus.create!(klass_id: witch.id, race_id: changeling.id, description: '+1 spell to your familiar. Must be at least one level below the highest level spell you can cast')
fate_weaver_human = FavoredKlassBonus.create!(klass_id: fate_weaver.id, race_id: human.id, description: '+1/3 Fate Points each day when you roll')
# alchemist_vine_leshy = FavoredKlassBonus.create!(klass_id: alchemist.id, race_id: vine_leshy.id, description: "Add 1/4 to the alchemist's natural armor bonus when using their mutagen.")
bard_vine_leshy = FavoredKlassBonus.create!(klass_id: bard.id, race_id: vine_leshy.id, description: "Add a +1/3 bonus to Perform (oratory) checks, including checks using versatile performance, as long as the bard first spends at least 10 minutes telling a story.")
# druid_vine_leshy = FavoredKlassBonus.create!(klass_id: druid.id, race_id: vine_leshy.id, description: "Add a +1/2 bonus to the druid's wild empathy or plant empathy checks.")
# kineticist_vine_leshy = FavoredKlassBonus.create!(klass_id: kineticist.id, race_id: vine_leshy.id, description: "Gain 1/5 of the Extra Wild Talent feat. This feat must be spent on a wood-element talent.")
oracle_vine_leshy = FavoredKlassBonus.create!(klass_id: oracle.id, race_id: vine_leshy.id, description: "An oracle with the nature or wood mystery adds one spell from the druid's spell list that isn't on the cleric spell list to the oracle's spell list; they still must select this spell as one of their spells known in order to cast it. This spell must be at least 1 level lower than the highest spell level the oracle can cast.")
# ranger_vine_leshy = FavoredKlassBonus.create!(klass_id: ranger.id, race_id: vine_leshy.id, description: "Add a +1/2 bonus to Knowledge (nature) checks in the ranger's favored terrain.")
# unchained_rogue_vine_leshy = FavoredKlassBonus.create!(klass_id: unchained_rogue.id, race_id: vine_leshy.id, description: "Add a +1/2 bonus to Climb checks and on Stealth checks in forests.")
# shaman_vine_leshy = FavoredKlassBonus.create!(klass_id: shaman.id, race_id: vine_leshy.id, description: "Shamans with the nature or wood spirit adds one spell from the druid's spell list that isn't on the shaman spell list to the shaman's spell list; they still must select this spell as one of their spells known in order to cast it. This spell must be at least 1 level lower than the highest spell level the shaman can cast.")
# alchemist_tiefling = FavoredKlassBonus.create!(klass_id: alchemist.id, race_id: tiefling.id, description: "Add +1/2 to the alchemist’s bomb damage.")

# /////////////////////////////////////////
# <-*-*-----*-*-*- Character!-*-*-*-----*-*->
# /////////////////////////////////////////

# persephone = Character.create!(user_id: admin.id, name: "Persephone", strength: 5, dexterity: 15, constitution: 12, intelligence: 17, wisdom: 4, charisma: 15, race_id: changeling.id, skillset_id: dmc.id, alignment: 'chaotic neutral', campaign_id: current_campaign.id)
# # +1 to Int from Tome of Clear Thought
#
# CharacterKlass.create!(character_id: persephone.id, klass_id: witch.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: witch_changeling.id)
# CharacterKlass.create!(character_id: persephone.id, klass_id: vigilante.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
# CharacterKlass.create!(character_id: persephone.id, klass_id: witch.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: witch_changeling.id)
# CharacterKlass.create!(character_id: persephone.id, klass_id: vigilante.id, hp: nil, feat_id: nil, ability_score_improvement: 'intelligence', level: 4, favored_klass_bonus_id: nil)
# CharacterKlass.create!(character_id: persephone.id, klass_id: witch.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: witch_changeling.id)
# CharacterKlass.create!(character_id: persephone.id, klass_id: witch.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: witch_changeling.id)
# CharacterKlass.create!(character_id: persephone.id, klass_id: witch.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 7, favored_klass_bonus_id: witch_changeling.id)

sly = Character.create!(user_id: admin.id, name: "Sly", full_name: 'Slyvester Ruby', strength: 8, dexterity: 16, constitution: 16, intelligence: 8, wisdom: 13, charisma: 18, race_id: grippli.id, skillset_id: dmc.id, campaign_id: current_campaign.id)

sly1 = CharacterKlass.create!(character_id: sly.id, klass_id: fate_weaver.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: fate_weaver_human.id)
  CharacterKlassOption.create!(character_klass_id: sly1.id, feature_option_id: chaotic2.id)
sly2 = CharacterKlass.create!(character_id: sly.id, klass_id: fate_weaver.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: fate_weaver_human.id)
sly3 = CharacterKlass.create!(character_id: sly.id, klass_id: fate_weaver.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: fate_weaver_human.id)
 CharacterKlassOption.create!(character_klass_id: sly3.id, feature_option_id: chaotic3.id)
sly4 = CharacterKlass.create!(character_id: sly.id, klass_id: fate_weaver.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 4, favored_klass_bonus_id: fate_weaver_human.id)
sly5 = CharacterKlass.create!(character_id: sly.id, klass_id: fate_weaver.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: fate_weaver_human.id)
  CharacterKlassOption.create!(character_klass_id: sly5.id, feature_option_id: chaotic1.id)

nettie = Character.create!(user_id: admin.id, name: "Nettie", full_name: 'Apple Nettlekiss', strength: 14, dexterity: 14, constitution: 13, intelligence: 18, wisdom: 14, charisma: 14, race_id: vine_leshy.id, skillset_id: dmc.id, campaign_id: current_campaign.id)

nettie1 = CharacterKlass.create!(character_id: nettie.id, klass_id: bard.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
nettie2 = CharacterKlass.create!(character_id: nettie.id, klass_id: bard.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
nettie3 = CharacterKlass.create!(character_id: nettie.id, klass_id: bard.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: nil)
nettie4 = CharacterKlass.create!(character_id: nettie.id, klass_id: bard.id, hp: nil, feat_id: nil, ability_score_improvement: "intelligence", level: 4, favored_klass_bonus_id: nil)
nettie5 = CharacterKlass.create!(character_id: nettie.id, klass_id: bard.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: nil)
nettie6 = CharacterKlass.create!(character_id: nettie.id, klass_id: bard.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: nil)
nettie7 = CharacterKlass.create!(character_id: nettie.id, klass_id: bard.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 7, favored_klass_bonus_id: nil)

CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: acrobatics.id, ranks: 4)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: climb.id, ranks: 6)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: finesse_unchained.id, ranks: 4)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: handle_animal.id, ranks: 2)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: heal.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: linguistics.id, ranks: 7)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: nature_unchained.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: perception.id, ranks: 6)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: perform.id, ranks: 3)
# wind ^
# CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: perform.id, ranks: 2)
# percussion ^
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: religion_unchained.id, ranks: 6)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: sense_motive.id, ranks: 2)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: society_unchained.id, ranks: 5)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: spellcraft_unchained.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: nettie.id, skillset_id: dmc.id, skill_id: stealth.id, ranks: 6)

merg = Character.create!(user_id: admin.id, name: "Merg", strength: 15, dexterity: 14, constitution: 15, intelligence: 13, wisdom: 13, charisma: 13, race_id: orc.id, skillset_id: dmc.id, campaign_id: current_campaign.id, lethal_damage: 30)
# +1 to Dexterity, Manual of Quickness of Action

merg1 = CharacterKlass.create!(character_id: merg.id, klass_id: unchained_barbarian.id, hp: 12, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: one_skill_point.id)
merg2 = CharacterKlass.create!(character_id: merg.id, klass_id: unchained_barbarian.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: one_skill_point.id)
merg3 = CharacterKlass.create!(character_id: merg.id, klass_id: unchained_barbarian.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: one_skill_point.id)
merg4 = CharacterKlass.create!(character_id: merg.id, klass_id: unchained_barbarian.id, hp: 7, feat_id: nil, ability_score_improvement: 'dexterity', level: 4, favored_klass_bonus_id: one_skill_point.id)
merg5 = CharacterKlass.create!(character_id: merg.id, klass_id: unchained_barbarian.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: one_skill_point.id)
merg6 = CharacterKlass.create!(character_id: merg.id, klass_id: unchained_barbarian.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: one_skill_point.id)
merg7 = CharacterKlass.create!(character_id: merg.id, klass_id: unchained_barbarian.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 7, favored_klass_bonus_id: one_skill_point.id)

CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: acrobatics.id, ranks: 4)
CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: handle_animal.id, ranks: 5)
CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: intimidate.id, ranks: 7)
CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: investigation.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: linguistics.id, ranks: 5)
CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: nature_unchained.id, ranks: 1)
CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: perception.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: profession.id, ranks: 3, detail: 'sailor')
CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: profession.id, ranks: 0, detail: 'fence')
CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: sense_motive.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: merg.id, skillset_id: dmc.id, skill_id: survival.id, ranks: 5)


cedrick = Character.create!(user_id: admin.id, name: "Cedrick", full_name: "Cedrick Ren 'Renny' Briarwert VII, Prince of Indiaster", strength: 17, dexterity: 14, constitution: 12, intelligence: 10, wisdom: 17, charisma: 10, race_id: grippli.id, skillset_id: dmc.id, campaign_id: current_campaign.id)

cedrick1 = CharacterKlass.create!(character_id: cedrick.id, klass_id: shifter.id, hp: 10, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: hp_up.id)
cedrick2 = CharacterKlass.create!(character_id: cedrick.id, klass_id: shifter.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: hp_up.id)
cedrick3 = CharacterKlass.create!(character_id: cedrick.id, klass_id: shifter.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: hp_up.id)
cedrick4 = CharacterKlass.create!(character_id: cedrick.id, klass_id: shifter.id, hp: 7, feat_id: nil, ability_score_improvement: 'strength', level: 4, favored_klass_bonus_id: one_skill_point.id)
cedrick5 = CharacterKlass.create!(character_id: cedrick.id, klass_id: shifter.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: one_skill_point.id)
cedrick6 = CharacterKlass.create!(character_id: cedrick.id, klass_id: shifter.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: nil)
cedrick7 = CharacterKlass.create!(character_id: cedrick.id, klass_id: shifter.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 7, favored_klass_bonus_id: nil)

CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: acrobatics.id, ranks: 1)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: bluff.id, ranks: 4)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: diplomacy.id, ranks: 2)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: finesse_unchained.id, ranks: 2)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: handle_animal.id, ranks: 2)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: heal.id, ranks: 1)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: intimidate.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: investigation.id, ranks: 5)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: linguistics.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: nature_unchained.id, ranks: 1)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: perception.id, ranks: 4)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: stealth.id, ranks: 2)
CharacterSkillsetSkill.create!(character_id: cedrick.id, skillset_id: dmc.id, skill_id: survival.id, ranks: 1)


maddox = Character.create!(user_id: admin.id, name: "Maddox", full_name: 'Maddox Magpie', strength: 9, dexterity: 16, constitution: 14, intelligence: 18, wisdom: 11, charisma: 17, race_id: samsaran.id, skillset_id: dmc.id, campaign_id: current_campaign.id, is_done_preparing_spells: true)
# +1 to Charisma, Tome of Leadership and Influence

maddox1 = CharacterKlass.create!(character_id: maddox.id, klass_id: arcanist.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
maddox2 = CharacterKlass.create!(character_id: maddox.id, klass_id: arcanist.id, hp: 5, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
maddox3 = CharacterKlass.create!(character_id: maddox.id, klass_id: arcanist.id, hp: 5, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: nil)
maddox4 = CharacterKlass.create!(character_id: maddox.id, klass_id: arcanist.id, hp: 5, feat_id: nil, ability_score_improvement: nil, level: 4, favored_klass_bonus_id: nil)
maddox5 = CharacterKlass.create!(character_id: maddox.id, klass_id: arcanist.id, hp: 5, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: nil)
maddox6 = CharacterKlass.create!(character_id: maddox.id, klass_id: arcanist.id, hp: 5, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: nil)
maddox7 = CharacterKlass.create!(character_id: maddox.id, klass_id: arcanist.id, hp: 5, feat_id: nil, ability_score_improvement: nil, level: 7, favored_klass_bonus_id: nil)

CharacterSkillsetSkill.create!(character_id: maddox.id, skillset_id: dmc.id, skill_id: acrobatics.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: maddox.id, skillset_id: dmc.id, skill_id: craft.id, ranks: 3, detail: 'gears/clockwork')
CharacterSkillsetSkill.create!(character_id: maddox.id, skillset_id: dmc.id, skill_id: heal.id, ranks: 5)
CharacterSkillsetSkill.create!(character_id: maddox.id, skillset_id: dmc.id, skill_id: investigation.id, ranks: 6)
CharacterSkillsetSkill.create!(character_id: maddox.id, skillset_id: dmc.id, skill_id: linguistics.id, ranks: 6)
CharacterSkillsetSkill.create!(character_id: maddox.id, skillset_id: dmc.id, skill_id: nature_unchained.id, ranks: 6)
CharacterSkillsetSkill.create!(character_id: maddox.id, skillset_id: dmc.id, skill_id: perception.id, ranks: 5)
CharacterSkillsetSkill.create!(character_id: maddox.id, skillset_id: dmc.id, skill_id: religion_unchained.id, ranks: 6)
CharacterSkillsetSkill.create!(character_id: maddox.id, skillset_id: dmc.id, skill_id: spellcraft_unchained.id, ranks: 6)
CharacterSkillsetSkill.create!(character_id: maddox.id, skillset_id: dmc.id, skill_id: survival.id, ranks: 3)

robby = Character.create!(user_id: admin.id, name: 'Robby', full_name: 'Sir Robby Redfurred', strength: 13, dexterity: 16, constitution: 10, intelligence: 9, wisdom: 13, charisma: 17, race_id: kitsune.id, skillset_id: dmc.id, campaign_id: current_campaign.id, lethal_damage: 26)
# +1 to Strength, Manual of Gainful Exercise

robby1 = CharacterKlass.create!(character_id: robby.id, klass_id: swashbuckler.id, hp: 10, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
robby2 = CharacterKlass.create!(character_id: robby.id, klass_id: swashbuckler.id, hp: 9, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
robby3 = CharacterKlass.create!(character_id: robby.id, klass_id: swashbuckler.id, hp: 8, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: nil)
# robby4 = CharacterKlass.create!(character_id: robby.id, klass_id: unchained_rogue.id, hp: 6, feat_id: nil, ability_score_improvement: 'intelligence', level: 4, favored_klass_bonus_id: nil)
# robby5 = CharacterKlass.create!(character_id: robby.id, klass_id: unchained_rogue.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: nil)
# robby6 = CharacterKlass.create!(character_id: robby.id, klass_id: unchained_rogue.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: nil)
# robby7 = CharacterKlass.create!(character_id: robby.id, klass_id: unchained_rogue.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 7, favored_klass_bonus_id: nil)

CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: acrobatics.id, ranks: 2)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: bluff.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: climb.id, ranks: 4)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: diplomacy.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: disguise.id, ranks: 2)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: finesse_unchained.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: handle_animal.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: heal.id, ranks: 1)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: intimidate.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: linguistics.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: perception.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: perform.id, ranks: 1, detail: 'acting')
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: profession.id, ranks: 2, detail: 'sailor')
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: sense_motive.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: stealth.id, ranks: 3)
CharacterSkillsetSkill.create!(character_id: robby.id, skillset_id: dmc.id, skill_id: swim.id, ranks: 3)

festus = Character.create!(user_id: admin.id, name: 'Festus', full_name: nil, strength: 16, dexterity: 16, constitution: 16, intelligence: 16, wisdom: 16, charisma: 16, race_id: half_elf.id, any_bonus: 'Strength', skillset_id: dmc.id, campaign_id: current_campaign.id)

festus1 = CharacterKlass.create!(character_id: festus.id, klass_id: brawler.id, hp: 10, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
festus1 = CharacterKlass.create!(character_id: festus.id, klass_id: brawler.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: nil)
festus1 = CharacterKlass.create!(character_id: festus.id, klass_id: brawler.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: nil)
festus1 = CharacterKlass.create!(character_id: festus.id, klass_id: brawler.id, hp: nil, feat_id: nil, ability_score_improvement: 'strength', level: 4, favored_klass_bonus_id: nil)
festus1 = CharacterKlass.create!(character_id: festus.id, klass_id: brawler.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: nil)
festus1 = CharacterKlass.create!(character_id: festus.id, klass_id: brawler.id, hp: nil, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: nil)

# grackle = Character.create!(user_id: admin.id, name: 'Grackle', full_name: nil, strength: 10, dexterity: 14, constitution: 10, intelligence: 14, wisdom: 11, charisma: 9, race_id: tiefling.id, skillset_id: dmc.id, campaign_id: current_campaign.id)
#
# grackle1 = CharacterKlass.create!(character_id: grackle.id, klass_id: alchemist.id, hp: 8, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: alchemist_tiefling.id)
# grackle1 = CharacterKlass.create!(character_id: grackle.id, klass_id: alchemist.id, hp: 7, feat_id: nil, ability_score_improvement: nil, level: 2, favored_klass_bonus_id: alchemist_tiefling.id)
# grackle1 = CharacterKlass.create!(character_id: grackle.id, klass_id: alchemist.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 3, favored_klass_bonus_id: alchemist_tiefling.id)
# grackle1 = CharacterKlass.create!(character_id: grackle.id, klass_id: alchemist.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 4, favored_klass_bonus_id: alchemist_tiefling.id)
# grackle1 = CharacterKlass.create!(character_id: grackle.id, klass_id: alchemist.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 5, favored_klass_bonus_id: alchemist_tiefling.id)
# grackle1 = CharacterKlass.create!(character_id: grackle.id, klass_id: alchemist.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 6, favored_klass_bonus_id: alchemist_tiefling.id)
# grackle1 = CharacterKlass.create!(character_id: grackle.id, klass_id: alchemist.id, hp: 6, feat_id: nil, ability_score_improvement: nil, level: 7, favored_klass_bonus_id: alchemist_tiefling.id)

# CharacterSkillsetSkill.create!(character_id: grackle.id, skillset_id: dmc.id, skill_id: acrobatics.id, ranks: 7)
# CharacterSkillsetSkill.create!(character_id: grackle.id, skillset_id: dmc.id, skill_id: finesse_unchained.id, ranks: 7)
# CharacterSkillsetSkill.create!(character_id: grackle.id, skillset_id: dmc.id, skill_id: stealth.id, ranks: 4)
# CharacterSkillsetSkill.create!(character_id: grackle.id, skillset_id: dmc.id, skill_id: heal.id, ranks: 7)
# CharacterSkillsetSkill.create!(character_id: grackle.id, skillset_id: dmc.id, skill_id: perception.id, ranks: 3)
# CharacterSkillsetSkill.create!(character_id: grackle.id, skillset_id: dmc.id, skill_id: craft.id, ranks: 7, detail: 'alchemy')
# CharacterSkillsetSkill.create!(character_id: grackle.id, skillset_id: dmc.id, skill_id: investigation.id, ranks: 7)
# CharacterSkillsetSkill.create!(character_id: grackle.id, skillset_id: dmc.id, skill_id: spellcraft_unchained.id, ranks: 7)


# /////////////////////////////////////////
# <-*-*-----*-*-*- Known Spells!-*-*-*-----*-*->
# /////////////////////////////////////////

# KnownSpell.create!(klass_spell_id: charm_person_witch.id, character_id: persephone.id, klass_id: witch.id)
# KnownSpell.create!(klass_spell_id: detect_magic_witch.id, character_id: persephone.id, klass_id: witch.id)
# KnownSpell.create!(klass_spell_id: mending_witch.id, character_id: persephone.id, klass_id: witch.id)
# KnownSpell.create!(klass_spell_id: message_witch.id, character_id: persephone.id, klass_id: witch.id)
# KnownSpell.create!(klass_spell_id: light_witch.id, character_id: persephone.id, klass_id: witch.id)
# KnownSpell.create!(klass_spell_id: trial_of_fire_and_acid_witch.id, character_id: persephone.id, klass_id: witch.id)
# KnownSpell.create!(klass_spell_id: mount_witch.id, character_id: persephone.id, klass_id: witch.id)
# KnownSpell.create!(klass_spell_id: unerring_weapon_witch.id, character_id: persephone.id, klass_id: witch.id)
#
# KnownSpell.create!(klass_spell_id: message_unchained_summoner.id, character_id: persephone.id, klass_id: vigilante.id)
# KnownSpell.create!(klass_spell_id: summon_monster_I_unchained_summoner.id, character_id: persephone.id, klass_id: vigilante.id)
#
# KnownSpell.create!(klass_spell_id: charm_person_bard.id, character_id: nettie.id, klass_id: bard.id)
# KnownSpell.create!(klass_spell_id: message_bard.id, character_id: nettie.id, klass_id: bard.id)
# KnownSpell.create!(klass_spell_id: identify_bard.id, character_id: nettie.id, klass_id: bard.id)
#
# KnownSpell.create!(klass_spell_id: dancing_lights_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: detect_magic_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: mage_hand_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: mending_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: prestidigitation_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: read_magic_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: spark_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: open_close_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: jolt_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: magic_missile_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: identify_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: mage_armor_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: true_strike_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: ear_piercing_scream_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: floating_disk_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: touch_of_combustion_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: endothermic_touch_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: lay_of_the_land_bard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: stone_call_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: sonic_scream_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: admonishing_ray_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: twisted_futures_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: twisted_space_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: make_whole_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: lightning_bolt_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: haste_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
# KnownSpell.create!(klass_spell_id: dispel_magic_wizard.id, character_id: maddox.id, klass_id: arcanist.id)
#
# KnownSpell.create!(klass_spell_id: cure_light_wounds_alchemist.id, character_id: grackle.id, klass_id: alchemist.id)
# KnownSpell.create!(klass_spell_id: shield_alchemist.id, character_id: grackle.id, klass_id: alchemist.id)
# KnownSpell.create!(klass_spell_id: reduce_person_alchemist.id, character_id: grackle.id, klass_id: alchemist.id)
# KnownSpell.create!(klass_spell_id: enlarge_person_alchemist.id, character_id: grackle.id, klass_id: alchemist.id)
# KnownSpell.create!(klass_spell_id: expeditious_retreat_alchemist.id, character_id: grackle.id, klass_id: alchemist.id)
# KnownSpell.create!(klass_spell_id: cure_moderate_wounds_alchemist.id, character_id: grackle.id, klass_id: alchemist.id)
# KnownSpell.create!(klass_spell_id: alchemical_allocation_alchemist.id, character_id: grackle.id, klass_id: alchemist.id)
# KnownSpell.create!(klass_spell_id: lesser_restoration_alchemist.id, character_id: grackle.id, klass_id: alchemist.id)
# KnownSpell.create!(klass_spell_id: channel_vigor_alchemist.id, character_id: grackle.id, klass_id: alchemist.id)

# /////////////////////////////////////////
# <-*-*-----*-*-*- Cast Spells!-*-*-*-----*-*->
# /////////////////////////////////////////

# CastSpell.create!(character_id: maddox.id, klass_id: arcanist.id, spell_level: 1)

# /////////////////////////////////////////
# <-*-*-----*-*-*- Prepared Spells!-*-*-*-----*-*->
# /////////////////////////////////////////

# PreparedSpell.create!(klass_spell_id: charm_person_witch.id, character_id: persephone.id, spell_level: 1, cast: false, klass_id: witch.id)
# PreparedSpell.create!(klass_spell_id: charm_person_witch.id, character_id: persephone.id, spell_level: 1, cast: false, klass_id: witch.id)
# PreparedSpell.create!(klass_spell_id: detect_magic_witch.id, character_id: persephone.id, spell_level: 0, cast: false, klass_id: witch.id)
# PreparedSpell.create!(klass_spell_id: mending_witch.id, character_id: persephone.id, spell_level: 0, cast: false, klass_id: witch.id)
# PreparedSpell.create!(klass_spell_id: message_witch.id, character_id: persephone.id, spell_level: 0, cast: false, klass_id: witch.id)
# PreparedSpell.create!(klass_spell_id: light_witch.id, character_id: persephone.id, spell_level: 0, cast: false, klass_id: witch.id)
#
# PreparedSpell.create!(klass_spell_id: detect_magic_wizard.id, character_id: maddox.id, spell_level: 0, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: read_magic_wizard.id, character_id: maddox.id, spell_level: 0, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: dancing_lights_wizard.id, character_id: maddox.id, spell_level: 0, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: prestidigitation_wizard.id, character_id: maddox.id, spell_level: 0, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: open_close_wizard.id, character_id: maddox.id, spell_level: 0, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: spark_wizard.id, character_id: maddox.id, spell_level: 0, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: mage_hand_wizard.id, character_id: maddox.id, spell_level: 0, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: magic_missile_wizard.id, character_id: maddox.id, spell_level: 1, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: ear_piercing_scream_wizard.id, character_id: maddox.id, spell_level: 1, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: endothermic_touch_wizard.id, character_id: maddox.id, spell_level: 1, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: mage_armor_wizard.id, character_id: maddox.id, spell_level: 1, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: touch_of_combustion_wizard.id, character_id: maddox.id, spell_level: 1, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: sonic_scream_wizard.id, character_id: maddox.id, spell_level: 2, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: admonishing_ray_wizard.id, character_id: maddox.id, spell_level: 2, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: twisted_futures_wizard.id, character_id: maddox.id, spell_level: 2, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: haste_wizard.id, character_id: maddox.id, spell_level: 3, cast: false, klass_id: arcanist.id)
# PreparedSpell.create!(klass_spell_id: lightning_bolt_wizard.id, character_id: maddox.id, spell_level: 3, cast: false, klass_id: arcanist.id)


# /////////////////////////////////////////
# <-*-*-----*-*-*- Magic Items!-*-*-*-----*-*->
# /////////////////////////////////////////

# //////////
# LIMIT FREQUENCY IS FOR HOW OFTEN THE ITEM CAN BE USED FOR ITS LIMIT COUNTER
# IE. CAN BE USED ONCE A ROUND, TWICE A DAY, etc.
# syntax: USE UPPERCASED STRING FOR ROUND/DAY/WEEK/MINUTE ETC.

# potion_of_cure_light_wounds = MagicItem.create!(name: 'Potion of Cure Light Wounds', description: 'The imbiber of this potion is affected by the cure light wounds spell.', slot: 'potion', aura: 'faint conjuration', caster_level: 1, price_in_gp: 50, weight: 0, activatable: true, expendable: true, group: 'Potion')
#   potion_of_cure_light_wounds_feature1 = Feature.create!(name: nil, action_id: standard.id)
#     MagicItemFeature.create!(magic_item_id: potion_of_cure_light_wounds.id, feature_id: potion_of_cure_light_wounds_feature1.id)
#     potion_of_cure_light_wounds_feature1_usage = FeatureUsage.create!(feature_id: potion_of_cure_light_wounds_feature1.id, limit: 1, destroy_after_use: true, limit_frequency: 'Round', adjustable: false)
#       FeatureUsageSpellOption.create!(feature_usage_id: potion_of_cure_light_wounds_feature1_usage.id, spell_id: sp17.id, castable: false, cost: 1)
#
# potion_of_cure_moderate_wounds = MagicItem.create!(name: 'Potion of Cure Moderate Wounds', description: 'The imbiber of this potion is affected by the cure moderate wounds spell.', slot: 'potion', aura: 'faint conjuration', caster_level: 3, price_in_gp: 300, weight: 0, activatable: true, expendable: true, group: 'Potion')
#   potion_of_cure_moderate_wounds_feature1 = Feature.create!(name: nil, action_id: standard.id)
#     MagicItemFeature.create!(magic_item_id: potion_of_cure_moderate_wounds.id, feature_id: potion_of_cure_moderate_wounds_feature1.id)
#     potion_of_cure_moderate_wounds_feature1_usage = FeatureUsage.create!(feature_id: potion_of_cure_moderate_wounds_feature1.id, limit: 1, destroy_after_use: true, limit_frequency: 'Round', adjustable: false)
#       FeatureUsageSpellOption.create!(feature_usage_id: potion_of_cure_moderate_wounds_feature1_usage.id, spell_id: sp45.id, castable: false, cost: 1)
#
# quick_runners_shirt = MagicItem.create!(name: "Quick Runner's Shirt", description: 'This shirt is made of light, gossamer-thin fabric embroidered with arrangements of winged feet.
#
# Once per day as a swift action, the wearer can take an additional move action to move and then immediately end his turn, losing any unspent actions.
#
# A character must wear this shirt continuously for 24 hours before he can activate this ability.', slot: 'chest', aura: 'faint transmutation', caster_level: 5, price_in_gp: 1000, weight: 0, activatable: true, expendable: false, group: 'Wondrous Item')
#   quick_runners_shirt_feature1 = Feature.create!(name: nil, action_id: swift.id)
#     MagicItemFeature.create!(magic_item_id: quick_runners_shirt.id, feature_id: quick_runners_shirt_feature1.id)
#     quick_runners_shirt_feature1_usage = FeatureUsage.create!(feature_id: quick_runners_shirt_feature1.id, limit: 1, destroy_after_use: false, limit_frequency: 'Day', adjustable: false)
#
# pirates_eye_patch = MagicItem.create!(name: "Pirate's Eye Patch", description: 'This black silk eye patch is adorned by a skull and crossbones worked in silver thread.
#
# The wearer of this patch gains a +2 competence bonus on Swim and Climb checks. In addition, once per day, the wearer of this eye patch can gain the effects of either touch of the sea or expeditious retreat on command (wearer’s choice).', slot: 'eye', aura: 'faint transmutation', caster_level: 2, price_in_gp: 2600, weight: 0, activatable: true, expendable: false, group: 'Wondrous Item')
# #   pirates_eye_patch_touch_of_the_sea = MagicItemSpellReference.create!(magic_item_id: pirates_eye_patch.id, spell_id: sp70.id, castable: true)
# #   pirates_eye_patch_expeditious_retreat = MagicItemSpellReference.create!(magic_item_id: pirates_eye_patch.id, spell_id: sp52.id, castable: true)
#   pirates_eye_patch_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: pirates_eye_patch.id, feature_id: pirates_eye_patch_feature1.id)
#     pirates_eye_patch_feature1_usage = FeatureUsage.create!(feature_id: pirates_eye_patch_feature1.id, limit: 1, destroy_after_use: false, limit_frequency: 'Day', adjustable: false)
#       FeatureUsageSpellOption.create!(feature_usage_id: pirates_eye_patch_feature1_usage.id, spell_id: sp70.id, castable: true, cost: 1)
#       FeatureUsageSpellOption.create!(feature_usage_id: pirates_eye_patch_feature1_usage.id, spell_id: sp52.id, castable: true, cost: 1)
#   pirates_eye_patch_feature2 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: pirates_eye_patch.id, feature_id: pirates_eye_patch_feature2.id)
#     FeatureSkillBonus.create!(feature_id: pirates_eye_patch_feature2.id, skill_id: swim.id, bonus: 2, bonus_type: 'competence', duration: 'permanent')
#     FeatureSkillBonus.create!(feature_id: pirates_eye_patch_feature2.id, skill_id: climb.id, bonus: 2, bonus_type: 'competence', duration: 'permanent')
#   # pirates_eye_patch_feature3 = Feature.create!(name: nil)
#   #   MagicItemFeature.create!(magic_item_id: pirates_eye_patch.id, feature_id: pirates_eye_patch_feature3.id)
#
# boots_of_elvenkind = MagicItem.create!(name: 'Boots of Elvenkind', description: 'These soft boots are partially made out of living leaves and other natural materials.
#
# They enable the wearer to move nimbly about in virtually any surroundings, granting a +5 competence bonus on Acrobatics checks.', slot: 'feet', aura: 'faint transmutation', caster_level: 5, price_in_gp: 2500, weight: 1, activatable: false, expendable: false, group: 'Wondrous Item')
#   boots_of_elvenkind_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: boots_of_elvenkind.id, feature_id: boots_of_elvenkind_feature1.id)
#     FeatureSkillBonus.create!(feature_id: boots_of_elvenkind_feature1.id, skill_id: acrobatics.id, bonus: 5, bonus_type: 'competence', duration: 'permanent')
# #
# bag_of_holding_I = MagicItem.create!(name: 'Bag of Holding I', description: 'The bag of holding opens into a nondimensional space: its inside is larger than its outside dimensions.
#
# The bag can hold up to 250 lbs, with a volume of up to 30 cubic feet.
#
# If a bag of holding is overloaded, or if sharp objects pierce it (from inside or outside), the bag immediately ruptures and is ruined, and all contents are lost forever. If a bag of holding is turned inside out, all of its contents spill out, unharmed, but the bag must be put right before it can be used again. If living creatures are placed within the bag, they can survive for up to 10 minutes, after which time they suffocate. Retrieving a specific item from a bag of holding is a move action, unless the bag contains more than an ordinary backpack would hold, in which case retrieving a specific item is a full-round action. Magic items placed inside the bag do not offer any benefit to the character carrying the bag.
#
# If a bag of holding is placed within a portable hole, a rift to the Astral Plane is torn in the space: bag and hole alike are sucked into the void and forever lost. If a portable hole is placed within a bag of holding, it opens a gate to the Astral Plane: the hole, the bag, and any creatures within a 10-foot radius are drawn there, destroying the portable hole and bag of holding in the process.', slot: 'none', aura: 'moderate conjuration', caster_level: 9, price_in_gp: 2500, weight: 15, activatable: true, expendable: false, group: 'Wondrous Item')
#   bag_of_holding_I_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: bag_of_holding_I.id, feature_id: bag_of_holding_I_feature1.id)
#     FeatureContainer.create!(feature_id: bag_of_holding_I_feature1.id, weight: 250, volume_cubic_feet: 30)
#
# handy_haversack = MagicItem.create!(name: 'Handy Haversack', description: 'A backpack of this sort appears to be well made, well used, and quite ordinary. It has two side pouches, each of which appears large enough to hold about a quart of material. In fact, each is like a bag of holding and can actually hold material of as much as 2 cubic feet in volume or 20 pounds in weight. The large central portion of the pack can contain up to 8 cubic feet or 80 pounds of material. Even when so filled, the backpack always weighs only 5 pounds.
#
# While such storage is useful enough, the pack has an even greater power. When the wearer reaches into it for a specific item, that item is always on top. Thus, no digging around and fumbling is ever necessary to find what a haversack contains. Retrieving any specific item from a haversack is a move action, but it does not provoke the attacks of opportunity that retrieving a stored item usually does.', slot: 'none', aura: 'moderate conjuration', caster_level: 9, price_in_gp: 2000, weight: 5, activatable: true, expendable: false, group: 'Wondrous Item')
#   handy_haversack_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: handy_haversack.id, feature_id: handy_haversack_feature1.id)
#     FeatureContainer.create!(feature_id: handy_haversack_feature1.id, weight: 120, volume_cubic_feet: 12)
#
# mask_of_the_rabbit_prince = MagicItem.create!(name: 'Mask of the Rabbit Prince', description: 'This colorful mask covers the top half of the wearer’s face and depicts the countenance of a resolute rabbit complete with large, floppy felt ears. Despite its apparently fragile construction, the mask is as tough as iron (hardness 10). The mask of the rabbit prince imparts reckless bravado, granting the wearer a +2 morale bonus on initiative checks and on saving throws against fear effects. In addition, the wearer always counts as having a running start when attempting Acrobatics checks to jump.', slot: 'head', aura: 'faint tranmutation', caster_level: 3, price_in_gp: 6000, weight: 0.5, activatable: false, expendable: true, group: 'Wondrous Item')
#   mask_of_the_rabbit_prince_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: mask_of_the_rabbit_prince.id, feature_id: mask_of_the_rabbit_prince_feature1.id)
#     FeatureStatBonus.create!(feature_id: mask_of_the_rabbit_prince_feature1.id, statistic: 'Initiative', bonus: 2, bonus_type: 'morale', duration: 'permanent')
#     mask_of_the_rabbit_prince_feature1_stat1 = FeatureStatBonus.create!(feature_id: mask_of_the_rabbit_prince_feature1.id, statistic: 'Save', bonus: 2, bonus_type: 'morale', duration: 'permanent')
#       FeatureStatBonusCondition.create!(feature_stat_bonus_id: mask_of_the_rabbit_prince_feature1_stat1.id, condition: 'fear effects')
#     FeatureSkillNote.create!(feature_id: mask_of_the_rabbit_prince_feature1.id, skill_id: acrobatics.id, note: 'counts as having a running start when attempting Acrobatics checks to jump')
#
# staff_of_size_alteration = MagicItem.create!(name: 'Staff of Size Alteration', description: 'This staff of dark wood is stouter and sturdier than most magical staves, with a gnarled and twisted knot of wood at the top end. It allows use of the following spells:
#
# enlarge person (1 charge)
# reduce person (1 charge)
# shrink item (2 charges)
# mass enlarge person (3 charges)
# mass reduce person (3 charges)', slot: 'none', aura: 'moderate transmutation', caster_level: 8, price_in_gp: 26150, weight: 5, activatable: false, expendable: false, group: 'Staff')
#   staff_of_size_alteration_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: staff_of_size_alteration.id, feature_id: staff_of_size_alteration_feature1.id)
#     staff_of_size_alteration_feature1_usage = FeatureUsage.create!(feature_id: staff_of_size_alteration_feature1.id, limit: 10, destroy_after_use: false, limit_frequency: 'Forever', adjustable: true)
#       FeatureUsageSpellOption.create!(feature_usage_id: staff_of_size_alteration_feature1_usage.id, spell_id: sp67.id, castable: true, cost: 3)
#       FeatureUsageSpellOption.create!(feature_usage_id: staff_of_size_alteration_feature1_usage.id, spell_id: sp68.id, castable: true, cost: 3)
#       FeatureUsageSpellOption.create!(feature_usage_id: staff_of_size_alteration_feature1_usage.id, spell_id: sp64.id, castable: true, cost: 1)
#       FeatureUsageSpellOption.create!(feature_usage_id: staff_of_size_alteration_feature1_usage.id, spell_id: sp65.id, castable: true, cost: 1)
#       FeatureUsageSpellOption.create!(feature_usage_id: staff_of_size_alteration_feature1_usage.id, spell_id: sp66.id, castable: true, cost: 2)
#
# slippers_of_spider_climbing = MagicItem.create!(name: 'Slippers of Spider Climbing', description: 'When worn, a pair of these slippers enables movement on vertical surfaces or even upside down along ceilings, leaving the wearer’s hands free. Her climb speed is 20 feet. Severely slippery surfaces—icy, oiled, or greased surfaces—make these slippers useless. The slippers can be used for 10 minutes per day, split up as the wearer chooses (minimum 1 minute per use).', slot: 'feet', aura: 'faint transmutation', caster_level: 4, price_in_gp: 4800, weight: 0.5, activatable: true, expendable: false, group: 'Wondrous Item')
#   slippers_of_spider_climbing_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: slippers_of_spider_climbing.id, feature_id: slippers_of_spider_climbing_feature1.id)
#     slippers_of_spider_climbing_feature1_usage = FeatureUsage.create!(feature_id: slippers_of_spider_climbing_feature1.id, limit: 10, unit: 'minute', destroy_after_use: false, limit_frequency: 'Day', adjustable: true, toggleable: true)
#     FeatureMovement.create!(feature_id: slippers_of_spider_climbing_feature1.id, movement: 'Climb', feet: 20)
#
# necklace_of_fireballs_III = MagicItem.create!(name: 'Necklace of Fireballs III', description: 'This item appears to be a string or cluster of spherical beads, sometimes with the ends tied together to form a necklace.
#
# (It does not count as an item worn around the neck for the purpose of determining which of a character’s worn magic items is effective.) If a character holds it, however, all can see the strand as it really is—a golden chain from which hang a number of golden spheres. The spheres are detachable by the wearer (and only by the wearer), who can easily hurl one of them up to 70 feet. When a sphere arrives at the end of its trajectory, it detonates as a fireball spell (Reflex DC 14 half).
#
# Spheres come in different strengths, ranging from those that deal 2d6 points of fire damage to those that deal 10d6. The market price of a sphere is 150 gp for each die of damage it deals.
#
# Type III has 7 beads on it: 4 beads that deal 3d6 points of fire damage, 2 beads that deal 5d6 points of fire damage, and 1 bead that deals 7d6 points of fire damage.
#
# Each necklace of fireballs contains a combination of spheres of various strengths. Some traditional combinations, designated types I through VII, are detailed above.
#
# If the necklace is being worn or carried by a character who fails her saving throw against a magical fire attack, the item must make a saving throw as well (with a save bonus of +7). If the necklace fails to save, all its remaining spheres detonate simultaneously, often with regrettable consequences for the wearer.', slot: 'neck', aura: 'moderate evocation', caster_level: 10, price_in_gp: 4350, weight: 1, activatable: false, expendable: true, group: 'Wondrous Item')
#   necklace_of_fireballs_III_feature1 = Feature.create!(name: nil, action_id: standard.id)
#     MagicItemFeature.create!(magic_item_id: necklace_of_fireballs_III.id, feature_id: necklace_of_fireballs_III_feature1.id)
#     necklace_of_fireballs_III_feature1_usage = FeatureUsage.create!(feature_id: necklace_of_fireballs_III_feature1.id, limit: 7, unit: 'bead', destroy_after_use: false, limit_frequency: 'Forever', adjustable: false, toggleable: true)
#       FeatureUsageOption.create!(feature_usage_id: necklace_of_fireballs_III_feature1_usage.id, detail: '3d6 fire damage', cost: 1, amount: 4, destroy_after_use: true)
#       FeatureUsageOption.create!(feature_usage_id: necklace_of_fireballs_III_feature1_usage.id, detail: '5d6 fire damage', cost: 1, amount: 2, destroy_after_use: true)
#       FeatureUsageOption.create!(feature_usage_id: necklace_of_fireballs_III_feature1_usage.id, detail: '7d6 fire damage', cost: 1, amount: 1, destroy_after_use: true)
#       FeatureUsageSpellOption.create!(feature_usage_id: necklace_of_fireballs_III_feature1_usage.id, spell_id: sp69.id, castable: false, cost: 1)
#
# pint_of_eek = MagicItem.create!(name: 'Pint of Eek', description: 'After consuming, you immediately breath out a blast of sonic energy in a 30 ft line. All affected creatures take 3d6 sonic damage, or half that if they succeed at a DC 15 Reflex save.', slot: 'none', aura: 'moderate evocation', caster_level: 7, price_in_gp: 1000, weight: 0, activatable: true, expendable: true, group: 'Wondrous Item')
#   pint_of_eek_feature1 = Feature.create!(name: nil, action_id: standard.id)
#     MagicItemFeature.create!(magic_item_id: pint_of_eek.id, feature_id: pint_of_eek_feature1.id)
#     pint_of_eek_feature1_usage = FeatureUsage.create!(feature_id: pint_of_eek_feature1.id, limit: 1, destroy_after_use: true, limit_frequency: 'Round', adjustable: false)
#
# monster_almanac = MagicItem.create!(name: 'Monster Almanac', description: 'This sketchbook has up to 100 pages full of scribbled notes and hasty sketches about monsters. When the user focuses on a particular page, the text and pictures start moving, revealing more details about the creature.
#
# The user must spend 10 minutes researching a particular type of monster to get any benefit from the almanac. If the user is trained in the appropriate Knowledge skill to identify a monster, he gets a +2 circumstance bonus on his check. He can attempt a Knowledge check to identify a creature despite being untrained in the appropriate skill (but without the +2 bonus) as long as the check’s DC is no higher than 15.', slot: 'none', aura: 'faint divination', caster_level: 3, price_in_gp: 4000, weight: 0.5, activatable: true, expendable: false, group: 'Wondrous Item')
#   monster_almanac_feature1 = Feature.create!(name: nil, action_id: ten.id)
#     MagicItemFeature.create!(magic_item_id: monster_almanac.id, feature_id: monster_almanac_feature1.id)
#
# astralabe = MagicItem.create!(name: 'Astralabe', description: 'An astralabe is essentially an extraplanar compass: a device that explorers of the planes can use to orient themselves in realms without shared cardinal directions or physical laws.
#
# The device creates an abstraction of north, east, south, and west, as well as up, down, in, out, back, forward, past, future, and a variety of other directions that can prove helpful in navigating the planes. Despite diverse cosmetic differences, astralabes share a uniform internal design and, by and large, give consistent, shared directions. As such, many—if not most— planar cartographers utilize astralabes when creating maps, allowing travelers to navigate lands without magnetic poles or with malleable terrains as though there were one consistent north. The device keeps a constant orientation, but it does not adjust or circumvent hazards or show particular paths. Any creature not on the Material Plane who employs an astralabe while attempting a Knowledge, Survival, or similar skill check to navigate gains a +4 bonus on that check.
#
# Additionally, an astralabe can aid a traveler in preparing to travel to another plane. The device can read emanations from portals, gates, and other connections between the planes and display them upon its surface. These displays can be interpreted with a successful Knowledge (planes) check. A user must typically succeed at a DC 25 Knowledge (planes) check to correctly read an astralabe, though demiplanes and stranger realms might require a higher DC or yield inconclusive results. Those who succeed learn the name of the plane beyond the portal, though not the portal’s exact location upon that plane—it doesn’t reveal tiers, layers, or subrealms, in the case of planes divided into multiple parts. Those who fail the check are unable to tell what plane lies beyond.
#
# Those who fail the check by 10 or more incorrectly identify what plane lies beyond, with the details of this misinformation determined by the GM.
#
# Astralabes generally don’t function on the Material Plane, shutting down and emanating an aura of only faint divination.
#
# However, should one be brought within 20 feet of a portal or similar passage to another plane, it becomes active for as long as it remains nearby. An astralabe operates continuously while on any plane other than the Material Plane.', slot: 'none', aura: 'moderate divination', caster_level: 8, price_in_gp: 16000, weight: 3, activatable: false, expendable: false, group: 'Wondrous Item')
#
# #
# elixir_of_fire_breath = MagicItem.create!(name: 'Elixir of Fire Breath', description: 'This strange bubbling elixir bestows upon the drinker the ability to spit gouts of flame. He can breathe fire up to three times, each time dealing 4d6 points of fire damage to a single target up to 25 feet away. The victim can attempt a DC 13 Reflex save for half damage. Unused blasts of fire dissipate 1 hour after the liquid is consumed.', slot: 'none', aura: 'moderate evocation', caster_level: 11, price_in_gp: 1100, weight: 0, activatable: true, expendable: true, group: 'Wondrous Item')
#   elixir_of_fire_breath_feature1 = Feature.create!(name: nil, action_id: standard.id)
#     MagicItemFeature.create!(magic_item_id: elixir_of_fire_breath.id, feature_id: elixir_of_fire_breath_feature1.id)
#     elixir_of_fire_breath_feature1_usage = FeatureUsage.create!(feature_id: elixir_of_fire_breath_feature1.id, limit: 1, limit_frequency: 'Round', destroy_after_use: true, adjustable: false)
# #
# blind_mans_cask = MagicItem.create!(name: "Blind Man's Cask", description: 'This black and red ceramic pot is about 5 ft tall, and does not change wieght if the only thing within it is alcohol. There is an an accompanying rubber gummy mouth guard. If the mouth guard is within 20 ft of the cask, anyone with the mouth guard in their mouth can drink from the cask as if the liquid inside was teleporting. Any liquid can be consumed this way, but the connection is lost if more than half of the container is filled with a non-fluid substance.', slot: 'none', aura: 'faint conjuration', caster_level: 5, price_in_gp: 1500, weight: 20, activatable: false, expendable: false, group: 'Wondrous Item')
# #
# jabberjaw_gem_halfling = MagicItem.create!(name: 'Jabberjaw Gem (Halfling)', description: "When a gem is held, your spokemon language (heard and mouthed) appear as if you were speaking the gem's associated language. Whoever is wielding the gem or touching the wielder can hear the actual language spoken. If you hold multiple gems, your language is an amalgam of all the gems. For listeners who know all of the languages spoken, they must make a DC 15 Linguistics check to comprehend the speaker. For each language a listener doesn't know, increase the DC by 5.", slot: 'none', aura: 'faint transmutation', caster_level: 1, price_in_gp: 600, weight: 0, activatable: false, expendable: false, group: 'Wondrous Item')
#   jabberjaw_gem_halfling_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: jabberjaw_gem_halfling.id, feature_id: jabberjaw_gem_halfling_feature1.id)
#     jabberjaw_gem_halfling_feature1_usage = FeatureUsage.create!(feature_id: jabberjaw_gem_halfling_feature1.id, limit: 1000, limit_frequency: 'Round', destroy_after_use: false, unit: '', adjustable: false, toggleable: false, wieldable: true)
#     FeatureLanguage.create!(feature_id: jabberjaw_gem_halfling_feature1.id, language: 'Halfling', note: 'cannot understand')
# #
# jabberjaw_gem_abyssal = MagicItem.create!(name: 'Jabberjaw Gem (Halfling)', description: "When a gem is held, your spokemon language (heard and mouthed) appear as if you were speaking the gem's associated language. Whoever is wielding the gem or touching the wielder can hear the actual language spoken. If you hold multiple gems, your language is an amalgam of all the gems. For listeners who know all of the languages spoken, they must make a DC 15 Linguistics check to comprehend the speaker. For each language a listener doesn't know, increase the DC by 5.", slot: 'none', aura: 'faint transmutation', caster_level: 1, price_in_gp: 600, weight: 0, activatable: false, expendable: false, group: 'Wondrous Item')
#   jabberjaw_gem_abyssal_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: jabberjaw_gem_abyssal.id, feature_id: jabberjaw_gem_abyssal_feature1.id)
#     jabberjaw_gem_abyssal_feature1_usage = FeatureUsage.create!(feature_id: jabberjaw_gem_abyssal_feature1.id, limit: 1000, limit_frequency: 'Round', destroy_after_use: false, unit: '', adjustable: false, toggleable: false, wieldable: true)
#     FeatureLanguage.create!(feature_id: jabberjaw_gem_abyssal_feature1.id, language: 'Abyssal', note: 'cannot understand')
# #
# jabberjaw_gem_dwarven = MagicItem.create!(name: 'Jabberjaw Gem (Halfling)', description: "When a gem is held, your spokemon language (heard and mouthed) appear as if you were speaking the gem's associated language. Whoever is wielding the gem or touching the wielder can hear the actual language spoken. If you hold multiple gems, your language is an amalgam of all the gems. For listeners who know all of the languages spoken, they must make a DC 15 Linguistics check to comprehend the speaker. For each language a listener doesn't know, increase the DC by 5.", slot: 'none', aura: 'faint transmutation', caster_level: 1, price_in_gp: 600, weight: 0, activatable: false, expendable: false, group: 'Wondrous Item')
#   jabberjaw_gem_dwarven_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: jabberjaw_gem_dwarven.id, feature_id: jabberjaw_gem_dwarven_feature1.id)
#     jabberjaw_gem_dwarven_feature1_usage = FeatureUsage.create!(feature_id: jabberjaw_gem_dwarven_feature1.id, limit: 1000, limit_frequency: 'Round', destroy_after_use: false, unit: '', adjustable: false, toggleable: false, wieldable: true)
#     FeatureLanguage.create!(feature_id: jabberjaw_gem_dwarven_feature1.id, language: 'Dwarven', note: 'cannot understand')
# #
# jabberjaw_gem_sylvan = MagicItem.create!(name: 'Jabberjaw Gem (Halfling)', description: "When a gem is held, your spokemon language (heard and mouthed) appear as if you were speaking the gem's associated language. Whoever is wielding the gem or touching the wielder can hear the actual language spoken. If you hold multiple gems, your language is an amalgam of all the gems. For listeners who know all of the languages spoken, they must make a DC 15 Linguistics check to comprehend the speaker. For each language a listener doesn't know, increase the DC by 5.", slot: 'none', aura: 'faint transmutation', caster_level: 1, price_in_gp: 600, weight: 0, activatable: false, expendable: false, group: 'Wondrous Item')
#   jabberjaw_gem_sylvan_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: jabberjaw_gem_sylvan.id, feature_id: jabberjaw_gem_sylvan_feature1.id)
#     jabberjaw_gem_sylvan_feature1_usage = FeatureUsage.create!(feature_id: jabberjaw_gem_sylvan_feature1.id, limit: 1000, limit_frequency: 'Round', destroy_after_use: false, unit: '', adjustable: false, toggleable: false, wieldable: true)
#     FeatureLanguage.create!(feature_id: jabberjaw_gem_sylvan_feature1.id, language: 'Sylvan', note: 'cannot understand')
# #
# jabberjaw_gem_undercommon = MagicItem.create!(name: 'Jabberjaw Gem (Halfling)', description: "When a gem is held, your spokemon language (heard and mouthed) appear as if you were speaking the gem's associated language. Whoever is wielding the gem or touching the wielder can hear the actual language spoken. If you hold multiple gems, your language is an amalgam of all the gems. For listeners who know all of the languages spoken, they must make a DC 15 Linguistics check to comprehend the speaker. For each language a listener doesn't know, increase the DC by 5.", slot: 'none', aura: 'faint transmutation', caster_level: 1, price_in_gp: 600, weight: 0, activatable: false, expendable: false, group: 'Wondrous Item')
#   jabberjaw_gem_undercommon_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: jabberjaw_gem_undercommon.id, feature_id: jabberjaw_gem_undercommon_feature1.id)
#     jabberjaw_gem_undercommon_feature1_usage = FeatureUsage.create!(feature_id: jabberjaw_gem_undercommon_feature1.id, limit: 1000, limit_frequency: 'Round', destroy_after_use: false, unit: '', adjustable: false, toggleable: false, wieldable: true)
#     FeatureLanguage.create!(feature_id: jabberjaw_gem_undercommon_feature1.id, language: 'Undercommon', note: 'cannot understand')
# #
# origami_boat = MagicItem.create!(name: 'Origami Boat', description: 'If this makes contact with water, it gradually (over the course of 5 minutes) increase its size until it becomes a row boat with a space of 20 ft by 10 ft in the same shape as the paper. After 2 hours, the boat gradually (over the course of 10 minutes) shrinks back to its smaller form. This transmation resets after 12 hours.', slot: 'none', aura: 'faint transmutation', caster_level: 12, price_in_gp: 400, weight: 0, activatable: false, expendable: false, group: 'Wondrous Item')
#   origami_boat_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: origami_boat.id, feature_id: origami_boat_feature1.id)
# #     origami_boat_feature1_usage = FeatureUsage.create!(feature_id: origami_boat_feature1.id, limit: 1000, limit_frequency: 'Round', destroy_after_use: false, unit: '', adjustable: false, toggleable: false)
# #       FeatureUsageSpellOption.create!(feature_usage_id: origami_boat_feature1_usage.id, spell_id: , cost: 1, castable: true)
# #       FeatureUsageOption.create!(feature_usage_id: origami_boat_feature1_usage.id, detail: '', cost: 1, amount: 1, destroy_after_use: false)
# #     FeatureSkillBonus.create!(feature_id: origami_boat_feature1.id, skill_id: , bonus: 0, bonus_type: '', duration: 'temporary')
# #     FeatureSkillNote.create!(feature_id: origami_boat_feature1.id, skill_id: , note: '')
# #     origami_boat_feature1_stat1 = FeatureStatBonus.create!(feature_id: origami_boat_feature1.id, statistic: '', bonus: 0, bonus_type: '', duration: 'temporary')
# #       FeatureStateBonusCondition.create!(feature_stat_bonus_id: origami_boat_feature1_stat1.id, condition: '')
# #     FeatureStatNote.create!(feature_id: origami_boat_featureVAR.id, statistic: '', note: '')
# #
# brass_griffin_cloak = MagicItem.create!(name: 'Brass Griffin Cloak', description: 'While wearing this cloak, if the wearer is damaged by fire damage, they are not affected by it; the cloak draws the energy towards it. Once the clock has absorbed 50 damage this way, the cloak burns up and is destroyed, and any excess damage is dealt to the wearer. Once a day, as a move action, you may be affected by the spell endure elements. The duration of this effect is 1 hour.', slot: 'shoulders', aura: 'faint transmutation', caster_level: 3, price_in_gp: 2500, weight: 5, activatable: false, expendable: false, group: 'Wondrous Item')
#   brass_griffin_cloak_feature1 = Feature.create!(name: nil, action_id: move.id)
#     MagicItemFeature.create!(magic_item_id: brass_griffin_cloak.id, feature_id: brass_griffin_cloak_feature1.id)
#     brass_griffin_cloak_feature1_usage = FeatureUsage.create!(feature_id: brass_griffin_cloak_feature1.id, limit: 1, limit_frequency: 'Day', destroy_after_use: false, unit: '', adjustable: false, toggleable: false)
#       FeatureUsageSpellOption.create!(feature_usage_id: brass_griffin_cloak_feature1_usage.id, spell_id: sp75.id, cost: 1, castable: false)
# #       FeatureUsageOption.create!(feature_usage_id: brass_griffin_cloak_feature1_usage.id, detail: '', cost: 1, amount: 1, destroy_after_use: false)
# #     FeatureSkillBonus.create!(feature_id: brass_griffin_cloak_feature1.id, skill_id: , bonus: 0, bonus_type: '', duration: 'temporary')
# #     FeatureSkillNote.create!(feature_id: brass_griffin_cloak_feature1.id, skill_id: , note: '')
# #     brass_griffin_cloak_feature1_stat1 = FeatureStatBonus.create!(feature_id: brass_griffin_cloak_feature1.id, statistic: '', bonus: 0, bonus_type: '', duration: 'temporary')
# #       FeatureStateBonusCondition.create!(feature_stat_bonus_id: brass_griffin_cloak_feature1_stat1.id, condition: '')
# #     FeatureStatNote.create!(feature_id: brass_griffin_cloak_feature1.id, statistic: '', note: '')
# #
# poisoners_glove = MagicItem.create!(name: "Poisoner's Glove", description: 'These black, rubbery gloves have sharpened digits. Fine channels lead to the tip of each finger, which are often stained with foul chemicals. The gloves are used primarily by assassins to deliver poisons while in combat.
#
# Each glove may be filled with a single dose of poison, a potion, alchemist infusion, holy water, or similar liquid as long as the liquid would not harm the gloves (for example, alchemist’s fire and acid cannot be used). The wearer can deliver the dose to a target as a melee touch attack or as part of an unarmed strike or natural attack with the hands (such as a claw or slam attack). In the case of a personal infused extract, the opponent receives both a Fortitude save and spell resistance.
#
# The wearer can use both gloves in the same round using two-weapon fighting or multiple natural attacks (such as 2 slams or 2 claws). Each glove can be used once per day. Filling a glove is a full-round action that provokes attacks of opportunity.', slot: 'hands', aura: 'faint transmutation', caster_level: 5, price_in_gp: 5000, weight: 0.0, activatable: false, expendable: false, group: 'Wondrous Item')
#   poisoners_glove_feature1 = Feature.create!(name: nil)
#     MagicItemFeature.create!(magic_item_id: poisoners_glove.id, feature_id: poisoners_glove_feature1.id)
#     poisoners_glove_feature1_usage = FeatureUsage.create!(feature_id: poisoners_glove_feature1.id, limit: 2, limit_frequency: 'Day', destroy_after_use: false, unit: '', adjustable: false, toggleable: false)
# #
# # IDENTIFIER = MagicItem.create!(name: '', description: '', slot: 'none', aura: '', caster_level: 0, price_in_gp: 0, weight: 0.0, activatable: false, expendable: false, group: 'Wondrous Item')
# #   IDENTIFIER_featureVAR = Feature.create!(name: nil, action_id:)
# #     MagicItemFeature.create!(magic_item_id: IDENTIFIER.id, feature_id: IDENTIFIER_featureVAR.id)
# #     IDENTIFIER_featureVAR_usage = FeatureUsage.create!(feature_id: IDENTIFIER_featureVAR.id, limit: 1000, limit_frequency: 'Round', destroy_after_use: false, unit: '', adjustable: false, toggleable: false)
# #       FeatureUsageSpellOption.create!(feature_usage_id: IDENTIFIER_featureVAR_usage.id, spell_id: , cost: 1, castable: true)
# #       FeatureUsageOption.create!(feature_usage_id: IDENTIFIER_featureVAR_usage.id, detail: '', cost: 1, amount: 1, destroy_after_use: false)
# #     FeatureSkillBonus.create!(feature_id: IDENTIFIER_featureVAR.id, skill_id: , bonus: 0, bonus_type: '', duration: 'temporary')
# #     FeatureSkillNote.create!(feature_id: IDENTIFIER_featureVAR.id, skill_id: , note: '')
# #     IDENTIFIER_featureVAR_stat1 = FeatureStatBonus.create!(feature_id: IDENTIFIER_featureVAR.id, statistic: '', bonus: 0, bonus_type: '', duration: 'temporary')
# #       FeatureStateBonusCondition.create!(feature_stat_bonus_id: IDENTIFIER_featureVAR_stat1.id, condition: '')
# #     FeatureStatNote.create!(feature_id: IDENTIFIER_featureVAR.id, statistic: '', note: '')
# #
# #
# # IDENTIFIER = MagicItem.create!(name: '', description: '', slot: 'none', aura: '', caster_level: 0, price_in_gp: 0, weight: 0.0, activatable: false, expendable: false, group: 'Wondrous Item')
# #   IDENTIFIER_featureVAR = Feature.create!(name: nil, action_id:)
# #     MagicItemFeature.create!(magic_item_id: IDENTIFIER.id, feature_id: IDENTIFIER_featureVAR.id)
# #     IDENTIFIER_featureVAR_usage = FeatureUsage.create!(feature_id: IDENTIFIER_featureVAR.id, limit: 1000, limit_frequency: 'Round', destroy_after_use: false, unit: '', adjustable: false, toggleable: false)
# #       FeatureUsageSpellOption.create!(feature_usage_id: IDENTIFIER_featureVAR_usage.id, spell_id: , cost: 1, castable: true)
# #       FeatureUsageOption.create!(feature_usage_id: IDENTIFIER_featureVAR_usage.id, detail: '', cost: 1, amount: 1, destroy_after_use: false)
# #     FeatureSkillBonus.create!(feature_id: IDENTIFIER_featureVAR.id, skill_id: , bonus: 0, bonus_type: '', duration: 'temporary')
# #     FeatureSkillNote.create!(feature_id: IDENTIFIER_featureVAR.id, skill_id: , note: '')
# #     IDENTIFIER_featureVAR_stat1 = FeatureStatBonus.create!(feature_id: IDENTIFIER_featureVAR.id, statistic: '', bonus: 0, bonus_type: '', duration: 'temporary')
# #       FeatureStateBonusCondition.create!(feature_stat_bonus_id: IDENTIFIER_featureVAR_stat1.id, condition: '')
# #     FeatureStatNote.create!(feature_id: IDENTIFIER_featureVAR.id, statistic: '', note: '')
# #     FeatureLanguage.create!(feature_id: IDENTIFIER_featureVAR.id, language: '', note: '')
#
# puts "Magic Items Created!"


# //////////////////////////////////////////////////////
# <-*-*-----*-*-*- Character Weapons!-*-*-*-----*-*->
# //////////////////////////////////////////////////////

# cw1 = CharacterWeapon.create!(character_id: grackle.id, weapon_id: dagger.id, masterwork: true, description: 'beautiful piece of work', name: 'Ancient Cutlass', discovered: false, known: true, equipped: false)

# //////////////////////////////////////////////////////
# <-*-*-----*-*-*- Character Magic Items!-*-*-*-----*-*->
# //////////////////////////////////////////////////////

# cmi1 = CharacterMagicItem.create!(character_id: maddox.id, magic_item_id: staff_of_size_alteration.id, false_desc: '', discovered: true, known: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi1.id, feature_usage_id: staff_of_size_alteration_feature1_usage.id)
# #
# # cmi2 = CharacterMagicItem.create!(character_id: maddox.id, magic_item_id: necklace_of_fireballs_III.id, false_desc: '', discovered: true, known: true)
# # CharacterMagicItemFeatureUsageOption.create!(character_magic_item_id: cmi2.id, feature_usage_id: necklace_of_fireballs_III_feature1_usage.id)
#
# cmi3 = CharacterMagicItem.create!(character_id: maddox.id, magic_item_id: handy_haversack.id, false_desc: '', discovered: true, known: true)
# container1 = Container.create!()
# CharacterMagicItemContainer.create!(character_magic_item_id: cmi3.id, container_id: container1.id)
#
# cmi4 = CharacterMagicItem.create!(character_id: maddox.id, magic_item_id: monster_almanac.id, false_desc: '', discovered: true, known: true)
#
# cmi5 = CharacterMagicItem.create!(character_id: maddox.id, magic_item_id: astralabe.id, false_desc: '', discovered: true, known: true)
#
# cmi6 = CharacterMagicItem.create!(character_id: merg.id, magic_item_id: elixir_of_fire_breath.id, false_desc: '', discovered: true, known: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi6.id, feature_usage_id: elixir_of_fire_breath_feature1_usage.id)
#
# cmi7 = CharacterMagicItem.create!(character_id: merg.id, magic_item_id: blind_mans_cask.id, false_desc: '', discovered: true, known: true)
#
# cmi8 = CharacterMagicItem.create!(character_id: maddox.id, magic_item_id: pirates_eye_patch.id, false_desc: '', discovered: true, known: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi8.id, feature_usage_id: pirates_eye_patch_feature1_usage.id)
#
# cmi9 = CharacterMagicItem.create!(character_id: robby.id, magic_item_id: quick_runners_shirt.id, false_desc: '', discovered: true, known: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi9.id, feature_usage_id: quick_runners_shirt_feature1_usage.id)
#
# cmi10 = CharacterMagicItem.create!(character_id: robby.id, magic_item_id: origami_boat.id, false_desc: '', discovered: true, known: true)
#
# cmi11 = CharacterMagicItem.create!(character_id: robby.id, magic_item_id: brass_griffin_cloak.id, false_desc: '', discovered: true, known: true)
#
# cmi12 = CharacterMagicItem.create!(character_id: robby.id, magic_item_id: jabberjaw_gem_halfling.id, false_desc: '', discovered: true, known: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi12.id, feature_usage_id: jabberjaw_gem_halfling_feature1_usage.id)
#
# cmi13 = CharacterMagicItem.create!(character_id: robby.id, magic_item_id: jabberjaw_gem_abyssal.id, false_desc: '', discovered: true, known: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi13.id, feature_usage_id: jabberjaw_gem_abyssal_feature1_usage.id)
#
# cmi14 = CharacterMagicItem.create!(character_id: robby.id, magic_item_id: jabberjaw_gem_dwarven.id, false_desc: '', discovered: true, known: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi14.id, feature_usage_id: jabberjaw_gem_dwarven_feature1_usage.id)
#
# cmi15 = CharacterMagicItem.create!(character_id: robby.id, magic_item_id: jabberjaw_gem_sylvan.id, false_desc: '', discovered: true, known: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi15.id, feature_usage_id: jabberjaw_gem_sylvan_feature1_usage.id)
#
# cmi16 = CharacterMagicItem.create!(character_id: robby.id, magic_item_id: jabberjaw_gem_undercommon.id, false_desc: '', discovered: true, known: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi16.id, feature_usage_id: jabberjaw_gem_undercommon_feature1_usage.id)
#
# cmi17 = CharacterMagicItem.create!(character_id: cedrick.id, magic_item_id: slippers_of_spider_climbing.id, false_desc: '', discovered: true, known: true, equipped: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi17.id, feature_usage_id: slippers_of_spider_climbing_feature1_usage.id)
#
# cmi18 = CharacterMagicItem.create!(character_id: cedrick.id, magic_item_id: pint_of_eek.id, false_desc: '', discovered: true, known: true)
# CharacterMagicItemFeatureUsage.create!(character_magic_item_id: cmi18.id, feature_usage_id: pint_of_eek_feature1_usage.id)


# ///////////////////////////////////////
# <-*-*-----*-*-*- Ideas!-*-*-*-----*-*->
# ///////////////////////////////////////

Idea.create!(content: "1d6 Wolves")
Idea.create!(content: "Organ Grinder")
Idea.create!(content: "Old Cathedral")
Idea.create!(content: "Old Woman who isn't what she seems")
Idea.create!(content: "Gliscening Waterfall")
Idea.create!(content: "Underwater Ruins")
Idea.create!(content: "Monastery")
Idea.create!(content: "Guards chasing a Kid")
Idea.create!(content: "Rare Domestic Animal")
Idea.create!(content: "Legends of a Nearby Ruin")
Idea.create!(content: "A Lost Poison Vial")
Idea.create!(content: "1d10 Street Performers")
Idea.create!(content: "A Corpse where it shouldn't be")
Idea.create!(content: "Small Church of a Well-Known God")
Idea.create!(content: "Red-Orange")
Idea.create!(content: "Lavendar")
Idea.create!(content: "The Color of Grain")
Idea.create!(content: "Windmill")
Idea.create!(content: "Child Prodigy")
Idea.create!(content: "A Lost Bard")
Idea.create!(content: "A Small, Hidden Bar")
Idea.create!(content: "A 2d6-Story Tavern")
Idea.create!(content: "Defunct Mansion")
Idea.create!(content: "Posh Butler")
Idea.create!(content: "Missing Arrows")
Idea.create!(content: "Bright Sunshine")
Idea.create!(content: "A Mysterious Ticking Noise")
Idea.create!(content: "An Inappropriate Attire")
Idea.create!(content: "Heist")
Idea.create!(content: "Falling 4d20 feet")
Idea.create!(content: "Ghost Threats")
Idea.create!(content: "A Splash of Purple")
Idea.create!(content: "Desert")
Idea.create!(content: "Antique Salesperson")
Idea.create!(content: "Dead Trees")
Idea.create!(content: "Quarry")
Idea.create!(content: "Masked Face")
Idea.create!(content: "Someone Becoming Unhappy because of a Party Member")
Idea.create!(content: "Private Mocking")
Idea.create!(content: "Weathered Inscription")
Idea.create!(content: "Boastful Nobility")
Idea.create!(content: "Impressive Artisitic Creation")
Idea.create!(content: "Colossal Wreck")
Idea.create!(content: "1d4 Camelids doing Manual Labor")
Idea.create!(content: "Excited Skilled Craftsman")
Idea.create!(content: "Whimsical, Passionate Dancing")
Idea.create!(content: "Pleasant Alcohol")
Idea.create!(content: "Impressive Manners")
Idea.create!(content: "Obscuring Screen")
Idea.create!(content: "Someone caught eavesdropping")
Idea.create!(content: "Sphere")
Idea.create!(content: "Community")
Idea.create!(content: "Barbarian")
Idea.create!(content: "Encampment")
Idea.create!(content: "Bard")
Idea.create!(content: "Scrappy College")
Idea.create!(content: "Cleric")
Idea.create!(content: "Holy Site")
Idea.create!(content: "Druid")
Idea.create!(content: "Nature Preserve")
Idea.create!(content: "Fighter")
Idea.create!(content: "Training Ground")
Idea.create!(content: "Monk")
Idea.create!(content: "Remote Path")
Idea.create!(content: "Paladin")
Idea.create!(content: "Holy Temple")
Idea.create!(content: "Rogue")
Idea.create!(content: "Seedy Tavern")
Idea.create!(content: "Ranger")
Idea.create!(content: "Outpost")
Idea.create!(content: "Sorcerer")
Idea.create!(content: "Arcane Location")
Idea.create!(content: "Wizard")
Idea.create!(content: "Library")
Idea.create!(content: "Alchemist")
Idea.create!(content: "Laboratory")
Idea.create!(content: "Cavalier")
Idea.create!(content: "Warfront")
Idea.create!(content: "Inquisitor")
Idea.create!(content: "Prison")
Idea.create!(content: "Summoner")
Idea.create!(content: "Sanctuary")
Idea.create!(content: "Oracle")
Idea.create!(content: "Mountain Temple")
Idea.create!(content: "Witch")
Idea.create!(content: "Creepy Forest")
Idea.create!(content: "Gunslinger")
Idea.create!(content: "Saloon")
Idea.create!(content: "Magus")
Idea.create!(content: "Lost City")
Idea.create!(content: "Vigiliante")
Idea.create!(content: "Skyscraper")
Idea.create!(content: "Arcanist")
Idea.create!(content: "Arcane Tower")
Idea.create!(content: "Bloodrager")
Idea.create!(content: "Ritual Cavern")
Idea.create!(content: "Brawler")
Idea.create!(content: "Fight Pit")
Idea.create!(content: "Hunter")
Idea.create!(content: "Animal Camp")
Idea.create!(content: "Investigator")
Idea.create!(content: "Crime Scene")
Idea.create!(content: "Shaman")
Idea.create!(content: "Hut Village")
Idea.create!(content: "Skald")
Idea.create!(content: "Old Battlefield")
Idea.create!(content: "Slayer")
Idea.create!(content: "Guild Den")
Idea.create!(content: "Swashbuckler")
Idea.create!(content: "Ship")
Idea.create!(content: "Warpriest")
Idea.create!(content: "Medic Tent")
Idea.create!(content: "1d10 x 10 of ^ (the above thing)")
Idea.create!(content: "1d10 x 10 of v (the below thing)")
Idea.create!(content: "1d4+1 of ^ (the above thing)")
Idea.create!(content: "1d4+1 of v (the below thing)")
Idea.create!(content: "2 of ^ (the above thing)")
Idea.create!(content: "2 of v (the below thing)")
Idea.create!(content: "Wall/Cliff Face")
Idea.create!(content: "Part of an Area is Submerged")
Idea.create!(content: "A Thin Wall/Crumbling Brick Wall")
Idea.create!(content: "A Thick Door/A Gate")
Idea.create!(content: "Someone Tells a Lie")
Idea.create!(content: "Player is not allowed Access")
Idea.create!(content: "A Naive Person in a Position of Power")
Idea.create!(content: "Someone needs to be Healed")
Idea.create!(content: "Someone Scared")
Idea.create!(content: "A Group of Unconscious Bodies")
Idea.create!(content: "Quaranteened Location")
Idea.create!(content: "Foreigner Enters Town")
Idea.create!(content: "Nobility is mentioned in Disgust")
Idea.create!(content: "City is mentioned Favorably")
Idea.create!(content: "Someone wants to go to another Plane")
Idea.create!(content: "Talking in a different Language")
Idea.create!(content: "Acquire a Forgery (DC 10 + 2d6)")
Idea.create!(content: "A Group Doubts a Player")
Idea.create!(content: "Magic Item Stolen")
Idea.create!(content: "Character Depends on Item or Location")
Idea.create!(content: "Artwork/Odd or Amazing/Carved/Painted")
Idea.create!(content: "Bound and Hooded")
Idea.create!(content: "Store or Hold Important Items")
Idea.create!(content: "Glyph")
Idea.create!(content: "Mechanical Trap")
Idea.create!(content: "Physically Above a Desired Location")
Idea.create!(content: "Pets/Trained Creatures")
Idea.create!(content: "Pests/Vermin")
Idea.create!(content: "A Creature 2 Sizes Bigger")
Idea.create!(content: "A Creature 2 Sizes Smaller")
Idea.create!(content: "Someone is Actively Casting a Spell/Ritual")
Idea.create!(content: "2d6 Buildings")
Idea.create!(content: "Deep Darkness")
Idea.create!(content: "Extraplanar Creature")
Idea.create!(content: "Good ^ (the above thing)")
Idea.create!(content: "Evil ^ (the above thing)")
Idea.create!(content: "Ominous Weather")
Idea.create!(content: "Multiple Secret Passages")
Idea.create!(content: "Cursed Object")
Idea.create!(content: "Entertainer")
Idea.create!(content: "Eerily Quiet")
Idea.create!(content: "Trench")
Idea.create!(content: "Pit")
Idea.create!(content: "Patrol/Guards")
Idea.create!(content: "Loud Noise Approaching")
Idea.create!(content: "Demon")
Idea.create!(content: "Devil")
Idea.create!(content: "Protean")
Idea.create!(content: "Sphinx")
Idea.create!(content: "Mermaid")
Idea.create!(content: "No Path/Trail")
Idea.create!(content: "Mounted Fighters")
Idea.create!(content: "Made of Bone")
Idea.create!(content: "Made of Bronze")
Idea.create!(content: "Made of Stone")
Idea.create!(content: "Archaic Weapons/Tools")
Idea.create!(content: "Surprise Ally")
Idea.create!(content: "Firepit/Campfire")
Idea.create!(content: "Psychopomp")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")
# Idea.create!(content: "")


# ///////////////////////////////////////
# <-*-*-----*-*-*- Testing!-*-*-*-----*-*->
# ///////////////////////////////////////

test_character = Character.create!(user_id: admin.id, name: "Test", strength: 8, dexterity: 11, constitution: 10, intelligence: 10, wisdom: 16, charisma: 12, race_id: human.id, skillset_id: dmc.id, alignment: 'chaotic neutral', campaign_id: current_campaign.id)

CharacterKlass.create!(character_id: test_character.id, klass_id: cleric.id, hp: 8, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)

CharacterWeapon.create!(character_id: test_character.id, weapon_id: scythe.id, masterwork: false, description: '', name: '', discovered: true, known: true, equipped: "")

CharacterWeapon.create!(character_id: test_character.id, weapon_id: rapier.id, masterwork: false, description: '', name: '', discovered: true, known: true, equipped: "")

CharacterWeapon.create!(character_id: test_character.id, weapon_id: quarterstaff.id, masterwork: false, description: '', name: '', discovered: true, known: true, equipped: "")

CharacterWeapon.create!(character_id: test_character.id, weapon_id: greatsword.id, masterwork: false, description: '', name: '', discovered: true, known: true, equipped: "")

CharacterWeapon.create!(character_id: test_character.id, weapon_id: longbow.id, masterwork: false, description: '', name: '', discovered: true, known: true, equipped: "")

CharacterWeapon.create!(character_id: test_character.id, weapon_id: light_crossbow.id, masterwork: false, description: '', name: '', discovered: true, known: true, equipped: "")


CharacterWeapon.create!(character_id: test_character.id, weapon_id: crossbow_bolt.id, masterwork: false, description: '', name: '', discovered: true, known: true, equipped: "", ammunition_amount: 20)

CharacterWeapon.create!(character_id: test_character.id, weapon_id: club.id, masterwork: false, description: '', name: '', discovered: true, known: true, equipped: "")


CharacterArmor.create!(character_id: test_character.id, armor_id: padded.id, description: "", discovered: true, known: true)
CharacterArmor.create!(character_id: test_character.id, armor_id: chainmail.id, description: "", discovered: true, known: true)
CharacterArmor.create!(character_id: test_character.id, armor_id: full_plate.id, description: "", discovered: true, known: true)



test_character_2 = Character.create!(user_id: admin.id, name: "Another Option", strength: 13, dexterity: 13, constitution: 11, intelligence: 10, wisdom: 6, charisma: 14, race_id: human.id, skillset_id: dmc.id, alignment: 'chaotic neutral', campaign_id: current_campaign.id)

CharacterKlass.create!(character_id: test_character_2.id, klass_id: bard.id, hp: 8, feat_id: nil, ability_score_improvement: nil, level: 1, favored_klass_bonus_id: nil)
