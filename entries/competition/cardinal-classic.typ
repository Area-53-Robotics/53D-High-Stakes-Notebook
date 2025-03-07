#import "/template/template.typ": *

#show: create-entry.with(
  title: "Cardinal Classic",
  type: "competition",
  date: datetime(year: 2025, month: 01, day: 18),
  attendance: ( "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Jin",
  witnessed: "Ishika",
)

#admonition(type: "competition", title: "Competition Results")[
  - *Rank:* 7/59
  - *Qualification Matches Wins/Losses/Ties:* 4/1/1
  - *Eliminated in:* Quarterfinals
]

= Competition Goals
- Test that our robot is at a competitive level.
- Figure out the necessary changes to be made to the robot.

= Matches
#tournament-match(
  match: "Q13",
  red_alliance: (teams: ("99009B", "7135R"), score: 19),
  blue_alliance: (teams: ("53D", "929S"), score: 26),
  outcome: "Win",
  auton: "Blue",
  awp: true,
  strategy: [
    - 929S will play defensive while we try to rush for the opposite side and stay in a positive corner.
    - We will hopefully get both of the positive corners.

  ],
  auton_notes: [
    - We scored two rings.
    - 929S scored three rings.
    - 7135R scored three rings but did not score on the alliance wall stake.

  ],
  match_notes: [
    - We intook two rings before our intake chain snapped.
    - We fought over the negative corner with 7135R.
    - We tried to go for wall stakes but failed. Our ring kept slipping off our ladybrown.
    - We played defensively to block wall stakes.


  ],
  subsystems: (
    overperformed: none,
    satisfactory: ( "Clamp", "Drivetrain"),
    underperformed: "Ladybrown",
    disabled: "Intake",
  )
)

#tournament-match(
  match: "Q21",
  red_alliance: (teams: ("53D", "5588R"), score: 14),
  blue_alliance: (teams: ("26648B", "5839B"), score: 10),
  outcome: "Win",
  auton: "Tie",
  awp: false,
  strategy: [
    - We will play offensively while 5588R sits in a positive corner. While they have the positive corner, we will pass mobile goals to them. 

  ],
  auton_notes: [
    - The wrong auton was selected, so we did not score anything
  ],
  match_notes: [
    - We scored three rings on a mobile goal and tried to score it in a positive corner.
    - We fought with 5839B over a positive corner, but neither team got the positive corner.
    - The opponents left a free mobile goal in a positive corner, allowing us to take it out of the corner.
    - We scored a full mobile goal into a positive corner. 
    - We tried to go for wall stakes at the end, but failed

  ],
  subsystems: (
    overperformed: none,
    satisfactory: ( "Clamp", "Drivetrain", "Intake"),
    underperformed: "Ladybrown",
    disabled: none,
  )
)

#tournament-match(
  match: "Q42",
  red_alliance: (teams: ("20096G", "7135T"), score: 21),
  blue_alliance: (teams: ("5525A", "53D"), score: 20),
  outcome: "Loss",
  auton: "Red",
  awp: false,
  strategy: [
    - We want to play defensive because we are likely going to lose the auton bonus.
    - We will secure a mobile goal into a positive corner. 
  ],
  auton_notes: [
    - Our auton had an unknown issue causing the robot to go in random directions.
    - 200906G missed the alliance stake but scored one ring on a mobile goal.
    - 7135T scored two rings onto their mobile goal.
  ],
  match_notes: [
    - We picked up a mobile goal with one opposite-colored ring.
    - We filled the mobile goal with rings and placed it in an undefended positive corner.
    - We clamped onto 7135T’s mobile goal and played "tug of war" with them.
    - 20096G climbed to level one.
    - 5525A filled a mobile goal in the last 15 seconds.
  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Ladybrown", "Clamp","Drivetrain", "Intake"),
    underperformed: none,
    disabled: none,
  )
)

#tournament-match(
  match: "Q57",
  red_alliance: (teams: ("53D", "36407C"), score: 16),
  blue_alliance: (teams: ("960B", "9080H"), score: 0),
  outcome: "Win",
  auton: "Red",
  awp: false,
  strategy: [
    - Score as many rings as possible because the opposing alliance cannot score any rings onto the mobile goals.

  ],
  auton_notes: [
    - 9080H crossed the auton line, causing us to win the auton bonus even though they messed up our auton.

  ],
  match_notes: [
    - We accidentally scored a blue ring, and filled the rest of the mobile goal with red rings.
    - We scored a mobile goal in a positive corner but 9080H removed it.
    - We got entangled with another mobile goal, causing double possession. However, since we unclamped our mobile goal, we did not get disqualified.
    - 9080H placed one of our mobile goals into a negative corner.
    - Our top rings on our other mobile goals helped us win the match.

  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Ladybrown", "Clamp", "Drivetrain", "Intake"),
    underperformed: none,
    disabled: none,
  )
)

#tournament-match(
  match: "Q67",
  red_alliance: (teams: ("53D", "929R"), score: 8),
  blue_alliance: (teams: ("929T", "26648W"), score: 8),
  outcome: "Tie", 
  auton: "Blue",
  awp: false,
  strategy: [
    - Play defensively. Since we were most likely going to lose auton, we will play for wall stakes instead to make up the point difference.

  ],
  auton_notes: [
    - 929R pushed our robot, messing up our auton.

  ],
  match_notes: [
    - The intake gearing was changed before this match so that the intake had more speed but much less torque. This made scoring rings almost impossible because the rings could not travel up our intake ramp.
    - We scored a 2 ring mobile goal in a positive corner.
    - We grabbed an opponent’s 2 ring mobile goal and pushed it into a negative corner.

  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Clamp", "Ladybrown"),
    underperformed: ("Intake") ,
    disabled: none,
  )
)

#tournament-match(
  match: "Q77",
  red_alliance: (teams: ("9039R", "12699B"), score: 0),
  blue_alliance: (teams: ("53D", "5588B"), score: 18),
  outcome: "Win",
  auton: "Blue",
  awp: true,
  strategy: [
    - Since the opponents cannot reliably score rings onto the mobile goals, we will score as many rings as possible.
    - It is important that we do not let them push our mobile goals into the negative corners.

  ],
  auton_notes: [
    - Our auton was misaligned.
    - 5588B had a solo AWP auton that scored three top rings and touched the ladder.

  ],
  match_notes: [
    - Our drivetrain was sticking a little at the start of the match.
    - We blocked a full red mobile goal from getting scored.
    - 5588B pulled a full red mobile goal to a negative corner.
    - We tried to go for wall stakes but kept failing.
    - We accidentally sent a red ring out of the field, getting us a minor violation.
    - 5588B got a minor violation for touching a positive corner during the last 15 seconds, but nothing moved so it was not major.
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
  red_alliance: (teams: ("53C", "53D"), score: 26),
  blue_alliance: (teams: ("960Z", "960Y"), score: 22),
  outcome: "Win",
  auton: "Blue",
  awp: false,
  strategy: [
    - 53C will play defensively and try to secure a positive corner.
    - We will play for wall stakes and go on the offense. We need to prevent the opponents from scoring on the wall stakes.
  ],
  auton_notes: [
    - Our auton scored on the wall stake but messed up the rest of the auton routine.
    - 53C crossed the auton line, giving the opponents the auton bonus.
  ],
  match_notes: [
    - Us and 960Z fought over a positive corner. We both had a mobile goal with one ring.
    - We got our mobile goal placed in a positive corner while 53C scored a 4-ring mobile goal in the other positive corner.
    - We tried to go for wall stakes, but 960Y kept blocking us.
    - In the last 15 seconds, we grabbed a 4-ring blue mobile goal and tried to place it in a negative corner, but it did not count because the mobile goal’s base did not break the plane of the corner.
    - One of our mobile goals did not count as in a positive corner because it was on top of a ring.



  ],
 subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Intake", "Clamp", "Ladybrown"),
    underperformed: none,
    disabled: none,
  )
)

#tournament-match(
  match: "Quarterfinals",
  red_alliance: (teams: ("53C", "53D"), score: 21),
  blue_alliance: (teams: ("99009A", "99009B"), score: 36),
  outcome: "Loss",
  auton: "Blue",
  awp: false,
  strategy: [
    - Since 53C’s auton was most likely going to cross over the auton line again, both 53C and us will play aggressively.
  ],
  auton_notes: [
    - Our auton got the alliance wall stake and then messed up the rest of the auton routine.
  ],
  match_notes: [
    - Our intake got stuck on the top of a mobile goal’s umbrella and could not outtake. We were jammed.
    - 53C scored a full mobile goal in a positive corner, but it got knocked over.
    - We tried to push one of the opponents’ mobile goals into a negative corner, but could not.
    - 53C scored while we could not do anything.

  ],
 subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain",  "Clamp", "Ladybrown"),
    underperformed:  none,
    disabled: "Intake",
  )
)


= Subsystem Reflection
#v(0.5em)
#box[
  == Drivetrain
  #subsystem-analysis(
    reflection: [
      Our drivetrain had friction issues on the left side. This caused us to have acceleration issues. Additionally, some of our motors were loose, causing the gears to not be spinning with the motors.

    ],
    radius: 3,
    overperformed: 0,
    satisfactory: 7,
    underperformed: 0,
    disabled: 0
  )
]

#box[
  == Clamp
  #subsystem-analysis(
    reflection: [
      We did not run into any issues with our clamp. Our clamp was able to consistently clamp onto the mobile goals. However, our intake got caught on a mobile goal because we clamped too far.
    ],
    radius: 3,
    overperformed: 0,
    satisfactory: 7,
    underperformed: 0,
    disabled: 0
  )
]

#box[
  == Intake
  #subsystem-analysis(
    reflection: [
      Our intake jammed for some of our matches, causing us to be disabled for the rest of the match. We faced issues with our intake’s chain snapping, getting caught on a mobile goal, or torque issues.
    ],
    radius: 3,
    outer-label-radius: 130%,
    overperformed: 0,
    satisfactory: 4,
    underperformed: 1,
    disabled: 2
  )
]

#box[
  == Ladybrown
  #subsystem-analysis(
    reflection: [
      When using the ladybrown, the rings often slipped off. Additionally, the intake was jammed for the majority of our matches, disabling our ladybrown. We need to troubleshoot our ladybrown after this competition.
    ],
    radius: 3,
    overperformed: 0,
    satisfactory: 6,
    underperformed: 2,
    disabled: 0
  )
]

= Individual Reflections

== Jin
#h(1em) Since our wheels don’t have nylons at the end of their screw joints, we have a lot of friction problems. We need to find a way to add nylons at the end of the screwjoints, as well as check for any problems with the chassis. We may have to replace the chassis with better metal.

== Ishika
#h(1em) I hope that we will be able to improve our ladybrown mechanism, since it is a great idea and with some more tuning, it will help us improve our scoring greatly. I also think our autons need more tuning and time before we use them again. 

== Makhi
#h(1em)  We need more focus on our autonomous. I think we should put an autonomous selector on our robot to prevent us from picking the wrong auton. Additionally, I need to troubleshoot the friction fit of our ladybrown because the ring kept slipping off.

== Eric
#h(1em) Our squad performed well overall. Although we lost a lot of our qualifying matches, we identified key areas for improvement in our robot. Despite the setbacks, we still advanced to the elimination stage. One crucial takeaway for the future is the need to better track both our robot and our teammates. There were multiple instances where we were unsure of the robot’s location or the whereabouts of key team members, including the drive team.

== Rory
#h(1em) I believe this tournament went significantly better than some of our previous ones. However, we faced a lot of stress between matches due to various issues, such as our autonomous not working and our robot moving on its own. Additionally, some matches had very little time between them, which made it difficult to troubleshoot problems or even switch our license plates before getting back on the field.


== Anders
#h(1em) Our intake kept jamming, causing us to miss out on a lot of easy wins. Going further, I want to troubleshoot the problem that is causing our chain to snap. If we can get our intake to be more consistent, then we would have no problem maximizing our score for future matches.
