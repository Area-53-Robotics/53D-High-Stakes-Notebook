#import "/template/template.typ": *

#show: create-entry.with(
  title: "Kalahari Classic Signature Event",
  type: "competition",
  date: datetime(year: 2025, month: 01, day: 24),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Jin",
  witnessed: "Ishika",
)

#admonition(type: "competition", title: "Competition Results")[
  - *Rank:* 50/86
  - *Qualification Matches Wins/Losses/Ties:* 3/5/0
  - *Eliminated in:* Qualifications
]

= Competition Goals
- Test that our robot is at a world competitive level.
- Figure out the necessary changes to be made to the robot.

= Matches
#tournament-match(
  match: "Q20",
  red_alliance: (teams: ("355A", "6741R"), score: 40),
  blue_alliance: (teams: ("53D", "2719F"), score: 17),
  outcome: "Loss",
  auton: "Red",
  awp: false,
  strategy: [
    - We will play more defensively and take control of a positive corner while 2719F plays very offensively.
    - We will score as many rings as possible on the wall stakes in the last 15 seconds of the match.
  ],
  auton_notes: [
    - The wrong auton was selected, so we did not score any rings.
    - 2719F scored one ring.
    - The opposing alliance scored 3 top rings.
  ],
  match_notes: [
    - The battery was very low because we did not have time to prepare.
    - The clamp was causing issues, so we focused on wall stakes.
    - We had difficulty scoring wall stakes because our ladybrown motors were overheating.
    - The battery ran out and we got disconnected.

  ],
  subsystems: (
    overperformed: none,
    satisfactory: none,
    underperformed: ("Intake", "Ladybrown", "Clamp",),
    disabled: ("Drivetrain"),
  )
)

#tournament-match(
  match: "Q40",
  red_alliance: (teams: ("44691F", "99904C"), score: 30),
  blue_alliance: (teams: ("6008A", "53D"), score: 3),
  outcome: "Win",
  auton: "Red",
  awp: true,
  strategy: [
    - We are very confident that we can win this match, so we will play more offensively.
    - We will score a mobile goal in a positive corner as quickly as possible, then score on the wall stakes.

  ],
  auton_notes: [
    - Our auton worked perfectly, scoring two top rings.
    - Us and 6008A scored 7 total points in auton.

  ],
  match_notes: [
    - We got a mostly full mobile goal and worked with 6008A to control the positive corners.
    - We tried to add a ring to our mobile goal but the intake messed up.
    - We placed our mobile goals in the positive corners.
    - 99904C tried to go for wall stakes with moderate success. However, we later played defensively against them.
    - 6008A made a negative play with the opponents' mobile goal at the very end, descoring 3 rings.

  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Ladybrown", "Clamp", "Drivetrain"),
    underperformed: "Intake",
    disabled: none,
  )
)

#tournament-match(
  match: "Q65",
  red_alliance: (teams: ("242X", "53D"), score: 15),
  blue_alliance: (teams: ("937X", "2011B"), score: 20),
  outcome: "Loss",
  auton: "Red",
  awp: false,
  strategy: [
    - Protect a positive corner while 242X fills a mobile goal.
    - When 242X is in the positive corner, try to contest for the other positive corner.

  ],
  auton_notes: [
    - The opposing alliance's auton rushed the ring stack and made us score a wrong color ring.
    - We scored a ring on the alliance wall stake.

  ],
  match_notes: [
    - Our intake jammed.
    - The enemy alliance got two mobile goals with six and five rings respectively.
    - We took up a positive corner, however we only had three rings on the mobile goal.
    - We moved one of their full mobile goals into a negative corner.
  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Ladybrown", "Clamp","Drivetrain"),
    underperformed: "Intake",
    disabled: none,
  )
)

#tournament-match(
  match: "Q80",
  red_alliance: (teams: ("53D", "45434R"), score: 16),
  blue_alliance: (teams: ("91915B", "1233A"), score: 14),
  outcome: "Win",
  auton: "Red",
  awp: true,
  strategy: [
    - If the intake fails, utilize the clamp for defense and offensive negative plays.
  ],
  auton_notes: [
    - Our auton missed one ring but 45434R got us the auton win point.
    - The opposing alliance scored two top rings and touched the ladder.
  ],
  match_notes: [
    - Our intake got jammed again.
    - We protected the positive corners while 45434R filled up their mobile goal.
    - We fought over a positive corner and managed to place our mobile goal into it.
    - 1233A got a wall stake.

  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Ladybrown", "Clamp", "Drivetrain"),
    underperformed: "Intake",
    disabled: none,
  )
)

#tournament-match(
  match: "Q95",
  red_alliance: (teams: ("99751E", "8823A"), score: 25),
  blue_alliance: (teams: ("53D", "242V"), score: 20),
  outcome: "Loss",
  auton: "Red",
  awp: false,
  strategy: [
    - We want to play very offensively in this match and try to control both of the positive corners.
    - Then, in the last 15 seconds, we will try to score on the wall stake.

  ],
  auton_notes: [
    - Our auton scored one ring on a wall stake and one on a mobile goal, but crossed the auton line so we lost the auton bonus.
    - We would have won the AWP if we had not crossed the auton line.


  ],
  match_notes: [
    - We filled up a mobile goal.
    - 242V placed a mobile goal with 3 rings into a positive corner.
    - 8823A prevented us from getting double positive corners.
    - We tried to descore a red mobile goal from a positive corner but ended up just pushing the other bot.
    - The opposing alliance went for wall stakes.
    - We managed to descore their full mobile goal from a positive angle.
    - They tipped over our mobile goal which was in a positive corner.
    - We tried to put the mobile goal in a negative corner but it did not count.

  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Clamp", "Intake"),
    underperformed: ("Ladybrown") ,
    disabled: none,
  )
)

#tournament-match(
  match: "Q123",
  red_alliance: (teams: ("53D", "39Y"), score: 23),
  blue_alliance: (teams: ("20080X", "2011K"), score: 29),
  outcome: "Loss",
  auton: "Blue",
  awp: true,
  strategy: [
    - Have the drive team provide communications regarding open positive corners and undefended mobile goals.
    - We will play aggressively and score as many rings as possible on the wall stakes

  ],
  auton_notes: [
    - 2011K had a ring rush mechanism and disrupted the ring stack.
    - Our auton scored a wrong colored ring.

  ],
  match_notes: [
    - We controlled a positive corner early in the match.
    - We went for wall stakes and got 1 ring on each stake.
    - 39Y fought with 20080X over the other positive corner.
    - 2011K stole one of our mobile goals and placed it into a negative corner.
  ],
   subsystems: (
    overperformed: none,
    satisfactory: ("Intake", "Ladybrown","Drivetrain"),
    underperformed: "Clamp",
    disabled: none,
  )
)

#tournament-match(
  match: "Q139",
  red_alliance: (teams: ("9257Z", "53D"), score: 13),
  blue_alliance: (teams: ("7316R", "60883B"), score: 35),
  outcome: "Loss",
  auton: "Blue",
  awp: false,
  strategy: [
    - 9257Z will play aggressively by trying to control a positive corner as quickly as possible.
    - We will play defensively and prevent the blue alliance from scoring onto the wall stake.

  ],
  auton_notes: [
    - 60883B had a ring rush mechanism and disrupted the ring stack.
    - 60883B scored three rings onto a mobile goal.
    - We scored the wrong color ring, giving the opposing alliance the auton bonus.

  ],
  match_notes: [
    - We got 4 rings onto a mobile goal and placed it in a positive corner.
    - We tried and failed to descore their positive mobile goal.
    - We got one wall stake and blocked their wall stake attempts.
    - 7316R got a double wall stake when we were not looking.
    - A drivetrain motor was loose, preventing us from moving in the latter half of the match.
  ],
 subsystems: (
    overperformed: none,
    satisfactory: ("Ladybrown", "Intake", "Clamp"),
    underperformed: none,
    disabled: ("Drivetrain"),
  )
)

#tournament-match(
  match: "Q152",
  red_alliance: (teams: ("6210A", "6008G"), score: 6),
  blue_alliance: (teams: ("91142B", "53D"), score: 11),
  outcome: "Win",
  auton: "Red",
  awp: false,
  strategy: [
    - Score on the wall stakes in case the intake breaks again.
  ],
  auton_notes: [
    - We forgot to put on the chain so the intake did not work.
    - We scored on the alliance wall stake.

  ],
  match_notes: [
    - We could not score because the first stage intake was jammed.
    - 91142B filled up a mobile goal while we defended a positive corner.
    - Both alliances placed a full mobile goal into a positive corner.
    - Both alliances made a negative play for both full mobile goals that were in the positive corners. Their mobile goal was scored in the negative, but ours was not touching the ground, meaning it was not negative.

  ],
 subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain",  "Ladybrown"),
    underperformed:  "Clamp",
    disabled: "Intake",
  )
)


= Subsystem Reflection
#v(0.5em)
#box[
  == Drivetrain
  #subsystem-analysis(
    reflection: [
      The drivetrain held up pretty well throughout our matches. We were able to quickly move about the field and respond to changing situations. However, there was a point when one of the motors fell off, disabling the drivetrain and causing a difficult problem to solve.
    ],
    radius: 3,
    overperformed: 0,
    satisfactory: 6,
    underperformed: 0,
    disabled: 2
  )
]

#box[
  == Clamp
  #subsystem-analysis(
    reflection: [
      Although we have had issues with our mobile goal clamp in previous competitions, it almost worked perfectly at Kalahari. Aside from a few times where we needed to reclamp a mobile goal (which are inevitable), we did not have any issues with the clamp. We were able to securely hold on to mobile goals and sometimes even steal an opponent's mobile goal at times.
    ],
    radius: 3,
    overperformed: 0,
    satisfactory: 5,
    underperformed: 3,
    disabled: 0
  )
]

#box[
  == Intake
  #subsystem-analysis(
    reflection: [
      Our intake had numerous issues throughout this competition. We had many problems with the intake not functioning, which turned out to be a code issue with our autonomous. There was also a match where we forgot to put the first-stage intake chain back on after making repairs, but that was not an issue with the bot itself. When the intake did work, it either worked slow or only adequate compared to other teams.
    ],
    radius: 3,
    outer-label-radius: 130%,
    overperformed: 0,
    satisfactory: 3,
    underperformed: 4,
    disabled: 1
  )
]

#box[
  == Ladybrown
  #subsystem-analysis(
    reflection: [
     Although we did not get that many chances to utilize our ladybrown mechanism, it still came in very handy and worked well. When all the mobile goals were in use or defended, we could still score on the wall stakes, which made the winning difference in a lot of matches. We also used the ladybrown mechanism to extend our bot's reach when defending against other bots, especially when they were going for wall stakes themselves.
    ],
    radius: 3,
    overperformed: 0,
    satisfactory: 6,
    underperformed: 2,
    disabled: 0
  )
]

= Individual Reflections
== Ajibola
#h(1em) I think this competition went a lot better than our other ones, and we did a much better job about communicating and being prepared before matches. That said, we did need to switch our autons at the last minute sometimes, which makes me think that an auton switcher on the controller would be useful.

== Jin
#h(1em) Overall, I think we did really well in this tournament. Something that I noticed was that we need a corner sweeper. We had difficulties clearing a corner which caused us to struggle controlling the corners. I really want to work on a corner sweeper or a mobile goal rush mechanism before states.

== Ishika
#h(1em) Our autons did okay at this competition, but I think we need more time to perfect them before states. I want to make sure they are very reliable, and I think that different autons for qualification matches and elimination matches would be good. Additionally, I would like to incorporate any future ring/goal rush mechanisms into our autons, so that we can score as many points as possible.

== Makhi
#h(1em) As the driver, I can feel that our drive train has a lot of issues. Sometimes, the gears in our drivetrain would disengage with the motor, creating a lot of friction issues. I really want to fix the spacing in our drivetrain. Additionally, I need to troubleshoot the ladybrown. Sometimes, the rings on our ladybrown would slip off when we try to score on the wall stake.

== Eric
#h(1em) I think we can benefit with better communication with each other and with our alliance. In our first match, we forgot to replace the battery on our robot. This causes us to disconnect in the middle of the match. Additionally, we need to fix our intake because it keeps jamming.

== Rory
#h(1em) Our intake chains kept snapping off. We need to look at the spacing of our intake, as well as see if the chain link is too tight. I also think we can benefit from fixing the drivetrain. Our drivetrain motors keep coming loose.

== Anders
#h(1em) Overall, a good competition. It is a shame that we did not use our ladybrown often in the tournament. I want to add a ring rush mechanism onto our robot that will disrupt the ring stack during autonomous. We kept intaking the wrong color ring, causing us to loose auton bonus.
