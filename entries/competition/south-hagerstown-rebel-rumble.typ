#import "/template/template.typ": *

#show: create-entry.with(
  title: "South Hagerstown Rebel Rumble",
  type: "competition",
  date: datetime(year: 2024, month: 12, day: 14),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Jin",
  witnessed: "Ishika",
)

#admonition(type: "competition", title: "Competition Results")[
  - *Rank:* 17/40
  - *Qualification Matches Wins/Losses/Ties:* 4/2/0
  - *Eliminated in:* Semifinals
]

= Competition Goals
- Test that our robot is at a competitive level.
- Figure out the necessary changes to be made to the robot.

= Matches
#tournament-match(
  match: "Q9",
  red_alliance: (teams: ("53D", "16700C"), score: 3),
  blue_alliance: (teams: ("66852A", "9080S"), score: 19),
  outcome: "Loss",
  auton: "Blue",
  awp: false,
  strategy: [
    - Work together and secure positive corners early.
    - In the last 15 seconds, try to score on the   wall stakes.
  ],
  auton_notes: [
    - We scored a ring on our red alliance stake.
    - We accidentally scored a blue ring onto our mobile goal.
    - The blue alliance scored 2 rings on 2 mobile goals.
  ],
  match_notes: [
    - 16700C was stuck for the whole driver control period.
    - We tried, but failed, to score a full mobile goal.
    - We scored a mobile goal with 4 blue rings in a negative corner.
    - The blue alliance scored a full mobile goal in a positive corner
    - Our ladybrown missed the wall stakes when trying to score rings.
  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Intake", "Clamp",),
    underperformed: ("Ladybrown"),
    disabled: none,
  )
)

#tournament-match(
  match: "Q14",
  red_alliance: (teams: ("929V", "7135G"), score: 17),
  blue_alliance: (teams: ("53D", "96807A"), score: 29),
  outcome: "Win",
  auton: "Blue",
  awp: false,
  strategy: [
    - Score on mobile goals quickly and then switch to wall stakes.
  ],
  auton_notes: [
    - Our auton worked as intended, scoring the alliance wall stake and 2 rings.
    - However, we crashed into 96807A during auton.
    - 96807A scored 2 rings on a mobile goal.
  ],
  match_notes: [
    - We obtained a full mobile goal quickly.
    - 96807A parked in a positive corner, defending it for us.
    - We scored a full mobile goal into a positive corner.
    - We got tangled with 7135G until the last 15 seconds.
    - We scored 3 extra rings onto an empty mobile goal.
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory: ("Ladybrown", "Clamp", "Drivetrain"),
    underperformed: none,
    disabled: none,
  )
)

#tournament-match(
  match: "Q29",
  red_alliance: (teams: ("1727F", "53D"), score: 17),
  blue_alliance: (teams: ("1723A", "1723B"), score: 6),
  outcome: "Win",
  auton: "Blue",
  awp: false,
  strategy: [
    - Communicate while controlling positive corners to keep possession of them.
    - In the last 15 seconds, score onto the wall stakes.
  ],
  auton_notes: [
    - Our auton did not score on our alliance stake.
    - The blue alliance scored one point.
  ],
  match_notes: [
    - We struggled to get a mobile goal because our ladybrown was blocking our intake.
    - We scored 4 rings on a mobile goal and placed it in a positive corner.
    - 1723A tried to take the mobile goal that was in the positive corner.
    - In response, we took their full mobile goal and scored it in a negative corner.
    - Scored a ring on the wall stakes in the last second.
    - 1727F blocked 1723A from scoring a mobile goal with three rings into a positive corner.
    - 1727F only scored an extra 2 rings into their mobile goal.
  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Intake", "Clamp","Drivetrain"),
    underperformed: "Ladybrown",
    disabled: none,
  )
)

#tournament-match(
  match: "Q34",
  red_alliance: (teams: ("5588E", "5588B"), score: 29),
  blue_alliance: (teams: ("53D", "9012A"), score: 9),
  outcome: "Loss",
  auton: "Red",
  awp: false,
  strategy: [
    - Try to score a mobile goal in a positive corner and stay there.
    - Aim for wall stakes if mobile goals are taken.
  ],
  auton_notes: [
    - Our auton accidentally scored a red ring.
    - The red alliance scored one ring.
  ],
  match_notes: [
    - Our drivetrain wheels were jamming.
    - We forgot to pump air into our clamp before the match.
    - 9012A had a slow intake.
    - We scored one ring on the wall stakes.
    - 5588E scored a full mobile goal into a positive corner.
  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Ladybrown", "Intake"),
    underperformed: "Drivetrain",
    disabled: "Clamp",
  )
)

#tournament-match(
  match: "Q42",
  red_alliance: (teams: ("53D", "9080R"), score: 16),
  blue_alliance: (teams: ("9012E", "7135T"), score: 12),
  outcome: "Win",
  auton: "Blue",
  awp: false,
  strategy: [
    - Take their mobile goals and move them to the negative corners if the opportunity arises.
    - We will play more aggressively in this match compared to previous ones.
  ],
  auton_notes: [
    - Our auton missed a red ring again.
    - We crossed the autonomous line, giving the auton bonus to the blue alliance.
  ],
  match_notes: [
    - The drivetrain could not turn backward.
    - Our clamp and intake were jammed.
    - 9080R scored an enemy top ring in their mobile goal.
    - 9080R scored 3 rings onto another mobile goal.
    - The enemy alliance did not have robots that could reliably score onto mobile goals.
  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Ladybrown"),
    underperformed: none,
    disabled: ("Drivetrain", "Clamp", "Intake"),
  )
)

#tournament-match(
  match: "Q56",
  red_alliance: (teams: ("12699A", "19800A"), score: 26),
  blue_alliance: (teams: ("53D", "23098B"), score: 15),
  outcome: "Win",
  auton: "Red",
  awp: false,
  strategy: [
    - Communicate with 76763A about open positive corners. We want to take control of a positive corner as quickly as possible.
  ],
  auton_notes: [
    - 76763A's auton did not score any rings because their clamp failed.
    - The red alliance scored a ring on their alliance wall stake.
  ],
  match_notes: [
    - Our drivetrain could not reverse.
    - We struggled to clamp.
    - Our robot disconnected temporarily.
    - The enemy alliance had a full goal and placed it in a positive corner.
    - The enemy alliance had double possession, causing them to get disqualified.
    - 19800A had a tier one hang.
  ],
   subsystems: (
    overperformed: none,
    satisfactory: ("Intake", "Ladybrown"),
    underperformed: "Clamp",
    disabled: "Drivetrain",
  )
)

#tournament-match(
  match: "Round of 16",
  red_alliance: (teams: ("929V", "53D"), score: 25),
  blue_alliance: (teams: ("7135W", "7135G"), score: 0),
  outcome: "Win",
  auton: "Red",
  awp: false,
  strategy: [
    - Play aggressively and secure a positive corner as quickly as we can.
    - Switch to wall stakes after 15 seconds.
  ],
  auton_notes: [
    - Our alliance scored two rings.
    - The blue alliance only scored one ring.
  ],
  match_notes: [
    - Our intake struggled to score rings. The rings were flying off our intake.
    - Our clamp was slow at clamping.
    - 929V scored three rings on mobile goals while we played defense.
    - We scored two rings on the wall stakes.
    - Our alliance placed 4 rings into a positive corner.
    - The blue alliance placed 3 rings into the other positive corner.
  ],
 subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Ladybrown"),
    underperformed: ("Clamp", "Intake"),
    disabled: none,
  )
)

#tournament-match(
  match: "Quarterfinals",
  red_alliance: (teams: ("5588E", "5588B"), score: 0),
  blue_alliance: (teams: ("929V", "53D"), score: 7),
  outcome: "Win",
  auton: "Red",
  awp: false,
  strategy: [
    - Coordinate our auton routine with 929V to maximize our scoring and get an early points advantage.
  ],
  auton_notes: [
    - We crossed the autonomous line, giving the auton bonus to the red alliance.
  ],
  match_notes: [
    - Our intake was having issues scoring at the start.
    - 929V scored a full mobile goal in a positive corner.
    - They tried to go for wall stakes but 5588E defended against it.
    - We tried to score a red mobile goal in a negative corner.
    - The red alliance got disqualified.
  ],
 subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Ladybrown", "Clamp"),
    underperformed:  "Intake",
    disabled: none,
  )
)

#tournament-match(
  match: "Semifinals",
  red_alliance: (teams: ("929V", "53D"), score: 28),
  blue_alliance: (teams: ("1658T", "1727K"), score: 34),
  outcome: "Loss",
  auton: "Blue",
  awp: false,
  strategy: [
    - Aim for early positive corner possession and then have 929V defend while we score on wall stakes.
  ],
  auton_notes: [
    - Our auton did not work at all.
    - The blue alliance scored 3 rings onto a mobile goal.
  ],
  match_notes: [
    - We filled up a mobile goal and tried to secure it in a positive corner.
    - 1727K tried to stop us, so we scored on two wall stakes.
    - The blue alliance got a full mobile goal in a positive corner.
    - They got another full mobile goal while our alliance was defending wall stakes.
  ],
 subsystems: (
    overperformed: "Ladybrown",
    satisfactory: ("Drivetrain", "Clamp", "Intake"),
    underperformed: none,
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
      Although we normally have no issues with our drivetrain, this competition was the exception. Our drivetrain had two instances of not being able to reverse, which severely impacted our match performance. We have an idea of the cause of this problem but will investigate further at the next practice.
    ],
    radius: 3,
    overperformed: 0,
    satisfactory: 6,
    underperformed: 1,
    disabled: 2
  )
]

#box[
  == Clamp
  #subsystem-analysis(
    reflection: [
      Most of the time, our clamp performed well, and there were no issues. However, during a few matches, our clamp took multiple tries to correctly secure a mobile goal. This led to lost time that could have been used for scoring, and substantially hindered our match performance. We will reevaluate our clamp design at our match practice, to hopefully resolve these issues with reliability.
    ],
    radius: 3,
    overperformed: 0,
    satisfactory: 5,
    underperformed: 2,
    disabled: 2
  )
]

#box[
  == Intake
  #subsystem-analysis(
    reflection: [
      Overall, our intake was satisfactory in this competition. Most of the time, we intaked rings easily, and could quickly score onto wall stakes or mobile goals. Ignoring the match where our entire robot disconnected, our intake only had one occurrence of underperforming. This was due to a mechanical issue that we forgot to remedy, and not an intrinsic problem with our intake, so we can safely say that our design is adequate for our needs.
    ],
    radius: 3,
    outer-label-radius: 130%,
    overperformed: 1,
    satisfactory: 5,
    underperformed: 2,
    disabled: 1
  )
]

#box[
  == Ladybrown
  #subsystem-analysis(
    reflection: [
      We did not use our ladybrown mechanism that much in this competition, mainly because our driver was still getting used to it and figuring out the optimal times to go for wall stakes. The main issue we encountered was alignment with the wall stakes, which took time and allowed the opposing alliance to come over and push us away. We will attempt to solve this issue with a passive alignment mechanism, which should make scoring a lot easier.
    ],
    radius: 3,
    overperformed: 1,
    satisfactory: 6,
    underperformed: 2,
    disabled: 0
  )
]

#colbreak()

= Individual Reflections
== Ajibola
#h(1em) Based on this competition, I think our autons need improvement. If we could create a reliable auton that consistently gets us the autonomous win point, it would improve our rankings and help us get the autonomous bonus more often as well. Additionally, I am a bit disappointed in how our drivetrain and clamp performed this tournament, especially because the drivetrain is normally fairly consistent. We could reduce the chance of encountering issues like this in future competitions by participating in practice scrimmages the day before the competition.

== Jin
#h(1em) I think this competition went well, but we need to improve our communication within our team and with other teams. We were often unprepared for matches, and needed to switch out license plates at the last minute, which was not a good look for our team.

== Ishika
#h(1em) I think that we need to work on our clamp, because it is necessary for scoring on mobile goals, which is how we get most of our points. I think we should study other team's designs, and then combine their ideas to create the most reliable clamp possible.

== Makhi
#h(1em) I think that I, as our driver, need more practice with the ladybrown mechanism. Aligning it with the wall stakes is difficult, and if I could master that, it would let us score points even if all the other mobile goal are taken.

== Eric
#h(1em) I wish that we could have used our ladybrown mechanism more, because we were one of the few teams that had one at this competition. It would have definitely given us an advantage over other teams, so if we could get some driver practice with it that would be great.

== Rory
#h(1em) I am glad that our intake worked reliably in this competition, since we had earlier issues with it working inconsistently. Our improvements to the chain definitely seem to have helped, and it has allowed us to score even more points and make it all the way to the semifinals.

== Anders
#h(1em) I think that the drivetrain issues definitely need to be taken care of as soon as possible, because without our drivetrain we cannot do anything. I think that the issue might be due to the crown nuts over-tightening on the drivetrain screws, which we should investigate.