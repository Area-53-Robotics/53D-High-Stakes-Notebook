#import "/template/template.typ": *

#show: create-entry.with(
  title: "Valley Mall",
  type: "competition",
  date: datetime(year: 2025, month: 01, day: 11),
  attendance: ("Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Jin",
  witnessed: "Ishika",
)

#admonition(type: "competition", title: "Competition Results")[
  - *Rank:* 16/45
  - *Qualification Matches Wins/Losses/Ties:* 3/2/1
  - *Eliminated in:* Quarterfinals
]

= Competition Goals
- Test that our robot is at a competitive level.
- Figure out the necessary changes to be made to the robot.

= Matches
#tournament-match(
  match: "Q5",
  red_alliance: (teams: ("4580C", "1723A"), score: 4),
  blue_alliance: (teams: ("53D", "934Z"), score: 31),
  outcome: "Win",
  auton: "Red",
  awp: true,
  strategy: [
    - Since one of the opposing robots cannot score rings, we need to prevent them from blocking the positive corners.
    - Additionally, we want to score one ring on each of the wall stakes since the red alliance cannot.
  ],
  auton_notes: [
    - We scored a ring on the alliance wall stake and touched the ladder.
    - However, we missed a mobile goal.
    - 934Z scored two top rings.
    - The red alliance scored 3 rings on a mobile goal.
  ],
  match_notes: [
    - Our intake chain snapped.
    - We could only score one ring.
    - To prevent the enemy alliance from taking control of the positive corners, we stuck ourselves into a positive corner.
    - 934Z scored a mobile goal with five rings into a positive corner.
    - 1723A tried to place a full mobile goal into a positive corner. We later took this mobile goal and placed it in a negative corner.
  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Ladybrown", "Clamp",),
    underperformed: none,
    disabled: ("Intake"),
  )
)

#tournament-match(
  match: "Q17",
  red_alliance: (teams: ("53D", "9080C"), score: 33),
  blue_alliance: (teams: ("929R", "9012B"), score: 14),
  outcome: "Win",
  auton: "Blue",
  awp: false,
  strategy: [
    - 9080C will rush for a mobile goal while we place top rings on the wall stakes.
  ],
  auton_notes: [
    - We scored one ring.
    - 9080C crossed the auton line, forfeiting the auton bonus to the blue alliance.
    - The enemy alliance did not have any autons.
  ],
  match_notes: [
    - Our alliance obtained a positive corner in the first 15 seconds.
    - We gave our mobile goal to 9080C.
    - We tried to place a blue mobile goal into a negative corner.
    - It got tipped over, so did not count as negative.
    - We scored one ring on the wall stakes.
  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Ladybrown", "Clamp", "Drivetrain", "Intake"),
    underperformed: none,
    disabled: none,
  )
)

#tournament-match(
  match: "Q26",
  red_alliance: (teams: ("9845B", "53D"), score: 23),
  blue_alliance: (teams: ("1727R", "21093A"), score: 40),
  outcome: "Loss",
  auton: "Blue",
  awp: false,
  strategy: [
    - 9845B will try to score one ring for the AWP.
    - During driver control, we will take control of the wall stakes.
  ],
  auton_notes: [
    - We scored one ring.
    - 1727R scored two rings on a mobile goal.
  ],
  match_notes: [
    - We scored a full mobile goal in the first 15 seconds.
    - 1727R also scored a full mobile goal in the first 15 seconds.
    - We blocked 1727R from getting to a positive corner.
    - We scored another full mobile goal.
    - The opposing alliance gained control of both positive corners.
    - We scored 1 ring on the wall stake.
    - Our intake chains broke, preventing us from scoring on the wall stakes in the last 10 seconds.
  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Ladybrown", "Clamp","Drivetrain"),
    underperformed: "Intake",
    disabled: none,
  )
)

#tournament-match(
  match: "Q38",
  red_alliance: (teams: ("53F", "34495B"), score: 14),
  blue_alliance: (teams: ("53D", "76752A"), score: 10),
  outcome: "Loss",
  auton: "Red",
  awp: false,
  strategy: [
    - 76752A cannot score well. Since they're much heavier than the enemy alliance, they will stay in a positive corner and wait for us to deliver goals to them.
  ],
  auton_notes: [
    - We missed the alliance wall stake.
    - 76752A did not have an auton.
    - 53F scored 2 rings.
  ],
  match_notes: [
    - 53F scored a mobile goal with 5 rings into a positive corner.
    - We scored a mobile goal with 6 rings into a positive corner.
    - We got 53F's mobile goal out of the positive corner.
    - Our intake gear slipped, preventing us from using the intake for the rest of the match.
    - We played defense.
    - 76752A scored a single ring into the mobile goal.
  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Ladybrown", "Clamp", "Drivetrain"),
    underperformed: none,
    disabled: "Intake",
  )
)

#tournament-match(
  match: "Q49",
  red_alliance: (teams: ("53D", "4580A"), score: 14),
  blue_alliance: (teams: ("47418B", "929T"), score: 14),
  outcome: "Loss",
  auton: "Tie",
  awp: false,
  strategy: [
    - We will play for wall stakes.
    - 4580A will play defense and block a positive corner.
  ],
  auton_notes: [
    - We and 929T each scored one ring on a mobile goal.
  ],
  match_notes: [
    - We scored three rings onto the mobile goal in the first 15 seconds.
    - 929T scored four rings on a mobile goal.
    - We placed our mobile goal into a positive corner.
    - We scored one ring onto a different mobile goal.
    - Our intake chain snapped.
  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Clamp", "Ladybrown"),
    underperformed: none,
    disabled: ("Intake") ,
  )
)

#tournament-match(
  match: "Q56",
  red_alliance: (teams: ("593C", "593A"), score: 8),
  blue_alliance: (teams: ("53D", "47418A"), score: 28),
  outcome: "Win",
  auton: "Blue",
  awp: false,
  strategy: [
    - 47418A will use their torque drivetrain to block the opposing alliance from one of the positive corners.
  ],
  auton_notes: [
    - We scored a ring on the alliance wall stake.
    - We scored another ring on a mobile goal.
  ],
  match_notes: [
    - We scored a full mobile goal and placed it into a positive corner.
    - 47418A blocked a positive corner.
    - 593A's battery fell out, disconnecting them from the match.
    - We placed the opposing alliance's full mobile goal into a negative corner.
    - We scored a ring onto the wall stake.
  ],
   subsystems: (
    overperformed: none,
    satisfactory: ("Intake", "Ladybrown", "Clamp","Drivetrain"),
    underperformed: none,
    disabled: none,
  )
)

#tournament-match(
  match: "Round of 16",
  red_alliance: (teams: ("53F", "53D"), score: 28),
  blue_alliance: (teams: ("76752A", "47418A"), score: 18),
  outcome: "Win",
  auton: "Blue",
  awp: false,
  strategy: [
    - We will obtain a full mobile goal and then score wall stakes.
    - 53F will play aggressively and score as many mobile goals as possible.
  ],
  auton_notes: [
    - Us and 53F both missed the mobile goals.
    - The opposing alliance scored one ring.
  ],
  match_notes: [
    - We scored 5 rings in the first 15 seconds.
    - We scored on two wall stakes but missed a couple of rings.
    - 53F obtained a full mobile goal.
    - 47418A scored 4 rings on a mobile goal.
    - We placed their mobile goal into a negative corner.
    - 76752A almost scored our mobile goal in a negative corner but 53F blocked it.
    - We kept missing wall stakes.
  ],
 subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Intake", "Clamp"),
    underperformed: ("Ladybrown"),
    disabled: none,
  )
)

#tournament-match(
  match: "Quarterfinals",
  red_alliance: (teams: ("53F", "53D"), score: 19),
  blue_alliance: (teams: ("9292", "929T"), score: 30),
  outcome: "Loss",
  auton: "Blue",
  awp: false,
  strategy: [
    - Communicate about undefended mobile goals and corners so we can get double positive corner possession and possibly negate an opponent's mobile goals.
  ],
  auton_notes: [
    - Our auton missed the mobile goal.
    - 53F scored one ring onto a mobile goal.
    - 929T scored three rings onto a mobile goal.
  ],
  match_notes: [
    - We filled up a mobile goal but did not manage to get it in a positive corner.
    - The opposing alliance got double positive corner possession but their mobile goals only had a few rings on them.
    - We snuck a full mobile goal of our own in while they were not looking, but sadly it tipped over.
    - 53F filled up another mobile goal and tried to replace the tipped one, but theirs also fell over.
    - We tried to steal one of their mobile goals for a negative play, but they took it back.
    - We scored 2 rings on a wall stake.
    - 929T tried to climb, but was unsuccessful.
  ],
 subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Intake", "Clamp", "Ladybrown"),
    underperformed:  none,
    disabled: none,
  )
)

#colbreak()

= Subsystem Reflection
#v(0.5em)
#box[
  == Drivetrain
  #subsystem-analysis(
    reflection: [
      Our intake worked well during this competition, and our earlier issues were completely resolved. We solved our previous problems by loosening the crown nuts on our drivetrain after each drive practice or match. This meant that they would not overtighten, and our drivetrain could spin freely at all times.
    ],
    radius: 3,
    overperformed: 0,
    satisfactory: 8,
    underperformed: 0,
    disabled: 0
  )
]

#box[
  == Clamp
  #subsystem-analysis(
    reflection: [
      There was not much that was notable with our clamp during this competition. Overall, it worked well, and we did not have any issues. The problems at the South Hagerstown competition appear to be resolved, mainly because of our modifications to the clamp.
    ],
    radius: 3,
    overperformed: 0,
    satisfactory: 8,
    underperformed: 0,
    disabled: 0
  )
]

#box[
  == Intake
  #subsystem-analysis(
    reflection: [
      Our intake did not work very well at this competition. Our intake chain snapped during many different matches, completely disabling our ability to intake. This meant we could not score at all, and had to play defensively while our alliance scored. The location of our first-stage intake is likely the cause of this, because other robots can inadvertently snap our chain.
    ],
    radius: 3,
    outer-label-radius: 130%,
    overperformed: 0,
    satisfactory: 4,
    underperformed: 1,
    disabled: 3
  )
]

#box[
  == Ladybrown
  #subsystem-analysis(
    reflection: [
      Our ladybrown was very unreliable during this competition. In some matches, it worked great, and we managed to easily score on wall stakes. However, at other times, it was very difficult to score on wall stakes, and the ladybrown mechanism did not hold onto rings. We will try to modify our ladybrown to resolve these issues.
    ],
    radius: 3,
    overperformed: 0,
    satisfactory: 7,
    underperformed: 1,
    disabled: 0
  )
]

#colbreak()

= Individual Reflections
== Jin
#h(1em) We communicated a lot more at this past competition, which has helped with our team cooperation and performance. Earlier, we had problems with being unprepared for matches, like having the wrong license plates on. I am happy to say that we have been much more prepared at these past matches than before.

== Ishika
#h(1em) I hope that we will be able to improve our ladybrown mechanism, since it is a great idea and with some more tuning, it will help us improve our scoring greatly.

== Makhi
#h(1em) I have gotten much more practice with driving the bot since the past competition, which has helped our matches. I am feeling more comfortable with the bot's controls, and our strategy has definitely improved as well.

== Eric
#h(1em) Our intake needs some major fixes to be match-ready in the future. In its current state, it has caused us to lose many matches, which needs to be addressed. Hopefully we will find a new position for the chain, so that it doesn't snap so much.

== Rory
#h(1em) I am very glad that our clamp is functional. It is much more reliable now, mostly due to our improvements to the shape and grip. This is great news for our competition scoring, and has definitely helped us make it to quarterfinals at Valley Mall.

== Anders
#h(1em) Our drivetrain issues were completely resolved, which is amazing and it has helped us tremendously in this past competition. Now that there is almost no friction on the drivetrain, we can easily accelerate to high speeds, allowing us to traverse the field quickly and react to changes.