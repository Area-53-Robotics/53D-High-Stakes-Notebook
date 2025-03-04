#import "/template/template.typ": *

#show: create-entry.with(
  title: "Capital Beltway Challenge",
  type: "competition",
  date: datetime(year: 2024, month: 11, day: 16),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Jin",
  witnessed: "Ishika",
)

#admonition(type: "competition", title: "Competition Results")[
  - *Rank:* 14/34
  - *Qualification Matches Wins/Losses/Ties:* 4/2/0
  - *Eliminated in:* Round of 16
]

= Competition Goals
- Test that our robot is at a competitive level.
- Figure out the necessary changes to be made to the robot.

= Matches
#tournament-match(
  match: "Q1",
  red_alliance: (teams: ("53D", "53F"), score: 30),
  blue_alliance: (teams: ("929V", "23098A"), score: 12),
  won: true,
  auton: "Blue",
  awp: false,
  strategy: [
    - 23098A is not able to score rings on the mobile goal, so we will exploit this by playing aggressively to score a full mobile goal.
    - Later in the match, we plan to score on the wall stakes.
  ],
  auton_notes: [
    - Our auton's movements were reversed, messing up the auton.
    - 53F failed to clamp on a mobile goal.
    - The blue alliance scored two rings and won auton.
  ],
  match_notes: [
    - 53F and we both scored a full mobile goal.
    - 929V's intake got jammed, but they scored 4 rings onto a mobile goal.
    - We scored on one wall stake and failed to score on another.
    - 53F took the enemy alliance's full mobile goal into a negative corner.
  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Intake", "Clamp",),
    underperformed: ("Ladybrown"),
    disabled: none,
  )
)

#tournament-match(
  match: "Q7",
  red_alliance: (teams: ("53D", "5588B"), score: 19),
  blue_alliance: (teams: ("7135F", "76763B"), score: 6),
  won: true,
  auton: "Tie",
  awp: false,
  strategy: [
    - At the beginning of the match, we plan to focus on defense by holding ourselves in a positive corner.
    - Then we will switch places with 5588B after they gather a full mobile goal.
  ],
  auton_notes: [
    - Our intake hooks got stuck on the mobile goal, preventing us from scoring.
  ],
  match_notes: [
    - Since our intake was jammed, we hoarded the mobile goals in a corner to prevent enemy scoring.
    - Our alliance scored a full mobile goal in the positive corner.
    - We secured 2 empty mobile goals in our corner to prevent the enemy alliance from scoring on them.
    - The enemy alliance tried to steal a positive scored mobile goal after 15 seconds, which led to them getting a warning.
  ],
  subsystems: (
    overperformed: "Drivetrain",
    satisfactory: ("Ladybrown", "Clamp"),
    underperformed: "Intake",
    disabled: none,
  )
)

#tournament-match(
  match: "Q25",
  red_alliance: (teams: ("9080H", "9080C"), score: 21),
  blue_alliance: (teams: ("53D", "17760Z"), score: 7),
  won: false,
  auton: "Red",
  awp: false,
  strategy: [
    - The red alliance has better autons, so we will need to play aggressively in driver control to make up for the lost points.
    - In the last few seconds, we will score on the wall stakes.
  ],
  auton_notes: [
    - Failed to score a ring on auton.
    - 9080C scored two rings.
  ],
  match_notes: [
    - We struggled to get a full mobile goal.
    - Our clamp was positioned incorrectly which hindered scoring.
    - We lost a fight with 9080C for a positive corner.
    - 17760Z was stuck on a ring.
    - We failed to score on the wall stakes.
  ],
  subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain",
    underperformed: ("Intake", "Clamp", "Ladybrown"),
    disabled: none,
  )
)

#tournament-match(
  match: "Q30",
  red_alliance: (teams: ("17760Y", "89422A"), score: 3),
  blue_alliance: (teams: ("53D", "53A"), score: 15),
  won: true,
  auton: "Tie",
  awp: false,
  strategy: [
    - We plan to play aggressively in this match and secure as many points as possible.
    - 53A will play defensively and secure a positive corner for us.
  ],
  auton_notes: [
    - Only we had an auton, however we did not score any rings.
  ],
  match_notes: [
    - The clamp had a similar issue as the last match.
    - We refocused on wall stakes, scoring 3 rings on them.
    - 53A had clamp issues as well.
    - 53A tried to score on the alliance wall stakes but failed.
    - The opposite alliance incurred a <SG11> violation by trying to remove a protected mobile goal from the positive corner after 15 seconds were remaining.
  ],
  subsystems: (
    overperformed: "Ladybrown",
    satisfactory: ("Drivetrain", "Intake"),
    underperformed: "Clamp",
    disabled: none,
  )
)

#tournament-match(
  match: "Q43",
  red_alliance: (teams: ("53D", "1658T"), score: 27),
  blue_alliance: (teams: ("7135G", "20096G"), score: 22),
  won: true,
  auton: "Tie",
  awp: false,
  strategy: [
    - When preparing to clamp onto a mobile goal, we need to take the time to clamp properly.
    - We will play defensively while 1658T scores rings.
  ],
  auton_notes: [
    - Both alliances scored 1 ring.
    - Our auton failed.
  ],
  match_notes: [
    - We got four rings and our alliance filled a mobile goal.
    - We scored rings on two wall stakes.
    - 20096G scored on an alliance wall stake.
    - We succeeded in defending both positive corners from the opposing alliance.
  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Clamp", "Intake", "Ladybrown"),
    underperformed: none,
    disabled: none,
  )
)

#tournament-match(
  match: "Q51",
  red_alliance: (teams: ("68186A", "98719A"), score: 14),
  blue_alliance: (teams: ("53D", "23098B"), score: 6),
  won: false,
  auton: "Red",
  awp: false,
  strategy: [
    - Since our mobile goal clamp still has clamping issues, we need to position our robot more precisely.
    - We will play more aggressively and score on wall stakes.
  ],
  auton_notes: [
    - Our clamp failed.
    - The opposing alliance scored one ring, winning them auton.
  ],
  match_notes: [
    - Our intake jammed, preventing us from scoring any rings on mobile goals.
    - Our ladybrown kept slipping off wall stakes.
    - 23098B scored 4 rings on mobile goals.
    - 98719A scored a 3-ring mobile goal in the positive corner.
  ],
   subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Ladybrown"),
    underperformed: ("Clamp", "Intake"),
    disabled: none,
  )
)

#tournament-match(
  match: "Round of 16",
  red_alliance: (teams: ("5588B", "5588E"), score: 9),
  blue_alliance: (teams: ("53D", "53E"), score: 3),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [
    - We will play aggressively and try to collect a full mobile goal as fast as we can.
    - We will pass the mobile goal to 53E, who will place it in a positive corner.
  ],
  auton_notes: [
    - We were the only team with an auton.
    - We failed to clamp onto a mobile goal.
  ],
  match_notes: [
    - Our intake jammed, preventing us from scoring any rings.
    - We tried to prevent the red alliance from scoring rings.
    - 53E could not intake any rings, and they got stuck on a ring, effectively disabling them.
    - 5588E scored two rings onto their mobile goal.
    - The red alliance placed a mobile goal into a positive corner, winning them the match.
  ],
 subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Ladybrown"),
    underperformed: ("Clamp", "Intake"),
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
      There was some friction on the left side of our drivetrain. Additionally, we experienced overheating in several of our qualification matches.
    ],
    radius: 3,
    overperformed: 1,
    satisfactory: 6,
    underperformed: 0,
    disabled: 0
  )
]

#box[
  == Clamp
  #subsystem-analysis(
    reflection: [
      The clamp only worked if it clamped a mobile goal at an angle. If the mobile goal was at its side, then the clamp would clamp too far, causing our intake to overshoot the rings when trying to score them on the mobile goal stake.
    ],
    radius: 3,
    overperformed: 0,
    satisfactory: 3,
    underperformed: 4,
    disabled: 0
  )
]

#box[
  == Intake
  #subsystem-analysis(
    reflection: [
      We noticed in our #entry-reference(title: "Intake v2", type: "test", date: datetime(year: 2024, month: 11, day: 15)) #h(0.25em) that the intake could score onto the mobile goal perfectly when given ideal conditions. However, our intake struggled to collect rings during a real match and would frequently jam.
    ],
    radius: 3,
    outer-label-radius: 130%,
    overperformed: 0,
    satisfactory: 3,
    underperformed: 4,
    disabled: 0
  )
]

#box[
  == Ladybrown
  #subsystem-analysis(
    reflection: [
      Our ladybrown allowed us to win several matches because we were one of the few teams who had a wall stake mechanism. However, we need more practice with positioning our ladybrown for scoring.
    ],
    radius: 3,
    overperformed: 1,
    satisfactory: 4,
    underperformed: 2,
    disabled: 0
  )
]

= Individual Reflections
== Ajibola
#h(1em) Overall we did well this tournament, but the clamp and intake need to be improved in the near future to make our scoring faster and more consistent. Additionally, we need to improve our autons so that we can get auton point bonuses and head starts for scoring in matches. I was impressed by the performance of the ladybrown macro, as it consistently worked throughout the tournament and made scoring with the ladybrown smooth.

#colbreak()

== Jin
#h(1em) Our intake and clamp needs work. I want to redesign the clamp so that it has a locking mechanism. This locking mechanism would allow us to clamp onto the mobile goal regardless of where the robot is approaching the mobile goal. Additionally, our intake jams frequently. I want to lift the pivot of our intake by a hole higher. However, I am happy with how are robot currently.

== Ishika
#h(1em) The tournament went well; I think we were able to definitely see our strengths from this tournament. I enjoyed seeing our ladybrown put to work, as it was a subsystem we had never used before. I think after this tournament there were definitely a lot of things the team realized needed to be fixed and a lot of things we could make even better. Regarding Auton, I think we need to tune PID and make consistent autons so that we aren't losing matches due to auton difference.

== Makhi
#h(1em) When I the teamwas driving the robot, I felt that the left side of our drivetrain had a lot of friction issues. I think  could benefit by taking apart the drivetrain to fix the free spin. Additionally, I am very happy with the performance today. Even though the intake didn't work during the round of 16, I think we learn a lot with how to improve the robot.

== Eric
#h(1em) We did well through the competition, we are definitely keeping our progress when comparing with other teams. During the competition there was a lack of organization as people were unclear on roles, times, or necessities throughout the day, coming up with clearer assignments than simply driver and drive team for future competitions.

== Rory
#h(1em) I think the tournament went well overall, except for a few issues. Our intake broke during one of the elimination rounds, which caused some problems, but we still won that round. We faced a lot of challenges between matches that we had to fix quickly, which created a lot of stress. As a result, we had to make repairs fast, but they weren't always done as well as we would have liked. Our final standing in the elimination rounds was 14th, which didn't qualify us for the Excellence Award. That was disappointing, but it was still fine.

== Anders
#h(1em) Out of all our subsystems, our macro worked the best. It performed flawlessly most of the time and never broke. Our other systems worked well too, but the intake broke multiple times, the clamp was inconsistent toward the end, and at the beginning, the drivetrain had a lot of friction issues. We were able to fix the friction issues before the matches started, though. The Beltway Battle was a great learning experience, especially for ensuring that all our subsystems work reliably before each match.