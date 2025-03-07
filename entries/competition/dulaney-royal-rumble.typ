#import "/template/template.typ": *

#show: create-entry.with(
  title: "Dulaney Royal Rumble",
  type: "competition",
  date: datetime(year: 2024, month: 10, day: 19),
  attendance: ("Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Jin",
  witnessed: "Ishika",
)

#admonition(type: "competition", title: "Competition Results")[
  - *Rank:* 25/34
  - *Qualification Matches Wins/Losses/Ties:* 2/4/0
  - *Eliminated in:* Round of 16
]

= Competition Goals
- Test that our robot is at a competitive level.
- Figure out the necessary changes to be made to the robot.

= Matches
#tournament-match(
  match: "Q5",
  red_alliance: (teams: ("1893J", "929T"), score: 7),
  blue_alliance: (teams: ("53D", "1727A"), score: 29),
  outcome: "Win",
  auton: "Blue",
  awp: false,
  strategy: [
    - We wanted to secure a full ring as quickly as possible.
    - Since we did not think we could win the auton, we wanted to play as aggressively as possible. We planned to use our redirect mechanism to get us the needed points to win this match.
  ],
  auton_notes: [
    - Our auton did not score any rings.
    - The opposing alliance's auton accidentally scored a ring for us, winning us the auton bonus.
  ],
  match_notes: [
    - Our clamp had a difficult time clamping a mobile goal for the first few seconds of the match.
    - 1727A scored 3 rings onto a mobile goal.
    - After we grabbed a mobile goal, we scored 3 rings. However, we ended up accidentally scoring an enemy color ring.
    - 1727A successfully blocked 929T from scoring on the wall stakes.
    - 1893J could not score well because they had a 2 motor drivetrain.
  ],
  subsystems: (
    overperformed: "Drivetrain",
    satisfactory: "Redirect Mechanism",
    underperformed: ("Intake", "Clamp"),
    disabled: none,
  )
)

#tournament-match(
  match: "Q14",
  red_alliance: (teams: ("53D", "1893A"), score: 11),
  blue_alliance: (teams: ("929V", "1658T"), score: 21),
  outcome: "Loss",
  auton: "Blue",
  awp: false,
  strategy: [
    - Since we were not confident with our intaking ability, we planned on playing more defensive.
    - We planned for 1893A to score as many rings as possible onto a mobile goal while we guard a positive corner.
  ],
  auton_notes: [
    - Our auton missed the mobile goal.
    - They scored one ring.
  ],
  match_notes: [
    - 929V scored three rings immediately at the start of the match.
    - While we were intaking rings, our intake jammed. We only scored 4 rings.
    - 1893A was only able to score 1 ring.
    - We pushed 1 of their mobile goals out of the positive corner.
    - Our alliance tried to score the half-filled up mobile goal into a positive corner.
    - We attempted to score onto the wall stakes but failed.
  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Clamp"),
    underperformed: ("Intake", "Redirect Mechanism"),
    disabled: none,
  )
)

#tournament-match(
  match: "Q20",
  red_alliance: (teams: ("53F", "53D"), score: 7),
  blue_alliance: (teams: ("929S", "9080S"), score: 16),
  outcome: "Loss",
  auton: "Blue",
  awp: false,
  strategy: [
    - Since our auton was not working, we did not expect to win auton.
    - We planned on playing aggressively and preventing the opposing alliance from scoring any mobile goals in the positive corners.
  ],
  auton_notes: [
    - We forgot to preload a ring
    - The other alliance scored two rings
  ],
  match_notes: [
    - At the start of the match, we completely filled a mobile goal with rings.
    - Afterwards, our intake got jammed.
    - Then, we prevented the other alliance from placing their mobile goal into a positive corner.
    - The other alliance only scored three rings onto their mobile goal.
    - 9080S tried to hang but we prevented them from touching the ladder.
  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Intake", "Clamp", "Redirect Mechanism"),
    underperformed: none,
    disabled: none,
  )
)

#tournament-match(
  match: "Q33",
  red_alliance: (teams: ("233282H", "9080C"), score: 19),
  blue_alliance: (teams: ("53B", "53D"), score: 13),
  outcome: "Loss",
  auton: "Blue",
  awp: false,
  strategy: [
    - Similar to the previous match, we planned to play as aggressively as we could.
    - 53B could not intake rings well, so they planned to play defensively.
  ],
  auton_notes: [
    - We won auton because the opposing alliance crossed the auton line.
  ],
  match_notes: [
    - We clamped a mobile goal and started to intake rings.
    - We managed to collect two full mobile goals.
    - The enemy alliance managed to secure a full mobile goal in the positive corner.
    - In the last 10 seconds, the enemy alliance placed one of our mobile goals into the negative corner.
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory: ("Drivetrain", "Redirect Mechanism", "Clamp"),
    underperformed: none,
    disabled: none,
  )
)

#tournament-match(
  match: "Q39",
  red_alliance: (teams: ("53D", "1727R"), score: 24),
  blue_alliance: (teams: ("53E", "53A"), score: 25),
  outcome: "Loss",
  auton: "Tie",
  awp: false,
  strategy: [
    - We knew that no one in this match would have an auton, so we planned to score on the wall stakes.
    - We expected this to give us an advantage because the opposing alliance would not have a way to counter it.
  ],
  auton_notes: [
    - No one had an auton.
  ],
  match_notes: [
    - We immediately got a full mobile goal.
    - 53E prevented us from scoring our mobile goal into a positive corner.
    - 53A collected a full mobile goal.
    - We passed our mobile goal to 1727R and scored 2 rings onto the wall stake.
    - 1727R scored 3 rings onto a mobile goal.
  ],
  subsystems: (
    overperformed: ("Intake", "Redirect Mechanism"),
    satisfactory: ("Drivetrain", "Clamp"),
    underperformed: none,
    disabled: none,
  )
)

#tournament-match(
  match: "Q51",
  red_alliance: (teams: ("53D", "68186A"), score: 35),
  blue_alliance: (teams: ("79666A", "55618A"), score: 4),
  outcome: "Win",
  auton: "Tie",
  awp: false,
  strategy: [
    - Since one of the opposing teams did not have a scoring mechanism, we planned to score rings onto the wall stake.
    - We planned for 68186A to score rings into the positive corner.
  ],
  auton_notes: [
    - No one had an auton.
  ],
  match_notes: [
    - We scored a full mobile goal at the beginning of the match, and passed it to 68186A.
    - We scored 3 rings onto the wall stakes.
    - The opposing alliance only scored 2 rings into a mobile goal.
    - Our alliance collected another full mobile goal.
  ],
   subsystems: (
    overperformed: ("Redirect Mechanism", "Intake"),
    satisfactory: ("Drivetrain", "Clamp"),
    underperformed: none,
    disabled: none,
  )
)

#tournament-match(
  match: "Round of 16",
  red_alliance: (teams: ("9080C", "53C"), score: 27),
  blue_alliance: (teams: ("53D", "53F"), score: 20),
  outcome: "Loss",
  auton: "Red",
  awp: false,
  strategy: [
    - We needed to play aggressively in this match and score on the wall stakes because we did not have an auton.
    - We planned to target 9080C because they were a huge threat.
  ],
  auton_notes: [
    - The enemy alliance scored 3 rings.
    - We did not have auton.
  ],
  match_notes: [
    - Both alliances secured a full mobile goal into a positive corner.
    - We scored 1 ring onto the wall stake.
    - When we tried to score another ring onto the wall stake, 53C pushed us.
    - We scored 5 rings onto another mobile goal.
    - The opposing alliance had another full mobile goal.
  ],
 subsystems: (
    overperformed: "Intake",
    satisfactory: ("Drivetrain", "Clamp", "Redirect Mechanism"),
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
      We did not run into any significant problems other than our motors overheating.
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
      At the beginning of the tournament, our clamp was very inconsistent. When it grabbed a mobile goal on its side, it would clamp too much. This also caused our intake to jam. As a temporary fix, we had to clamp onto the corners of the mobile goals.
    ],
    radius: 3,
    overperformed: 0,
    satisfactory: 6,
    underperformed: 1,
    disabled: 0
  )
]

#box[
  == Intake
  #subsystem-analysis(
    reflection: [
      Although our intake jammed in the first two matches, it performed well later on. We noticed that there was a ziptie getting caught in the intake that caused it to jam. After we fixed this issue, the intake became efficient and quick.
    ],
    radius: 3,
    outer-label-radius: 130%,
    overperformed: 4,
    satisfactory: 2,
    underperformed: 1,
    disabled: 0
  )
]

#box[
  == Redirect Mechanism
  #subsystem-analysis(
    reflection: [
      Although slow, the redirect mechanism won us many matches. We were pleased with its performance, but we want to brainstorm a new solution for faster wall stake scoring potential.
    ],
    radius: 3,
    overperformed: 2,
    satisfactory: 4,
    underperformed: 1,
    disabled: 0
  )
]

= Individual Reflections
== Ajibola
#h(1em) I am a bit disappointed in our performance at this tournament. I expected us to get a points advantage in our matches by using the redirect mechanism to score points on the wall stakes. After this tournament, we should look into improving our wall stake scoring method, by either improving the structure or programming of the redirect mechanism, or building a new wall stake scoring mechanism. On a more positive note, I am very proud that we won the Design Award. It reflects the significant amount of work we have put into our documentation, and I believe that we can maintain this momentum throughout the season.

== Jin
#h(1em) One of the best birthday wishes I could ask for: spending time with some of my favorite people and winning the design award. However, I believe our clamp can be improved. During the match, we frequently had to reclamp or ram the mobile goal into a corner to properly secure it. I want to redesign the clamp using the new VEX pistons. Their shorter reach will prevent over-clamping when securing the mobile goal's corner.

== Ishika
#h(1em) The tournament went well; most of our subsystems performed very effectively. However, we did encounter a few issues, such as the intake getting caught on the wires. Additionally, we were unable to get the redirect mechanism working for all the matches. The gameplay highlighted the importance of the few extra points that auton contributes to the team's score. Moving forward, we should focus on developing a better auton. I also believe our drivers and drive team should have more practice time to become fully accustomed to the robot and its subsystems. In many matches, we seemed to be unlucky with our alliance partners and the opponents we faced. Overall, this was a valuable learning experience, and I am confident that our team will apply these lessons to improve in the next competition.

== Makhi
#h(1em) I think we did fine at the tournament. As the driver, I really want to try using three omni-wheels instead of two for faster acceleration. Additionally, I wasn't too happy with how the redirect mechanism feels. It's too slow and very easy to defend against. I saw online a new method for scoring wall stakes called the 'Lady Brown.' This method is much simpler because it only requires a simple rotating motion to score the ring onto the wall stake.

== Eric
#h(1em) I believe our squad performed well overall. While we lost four out of six qualifiers, this is not ideal, but it gave us valuable insights on how to improve our robot moving forward. Despite the losses, we still managed to reach the elimination stage. One key takeaway for the future is to better track both our teammates and the robot. There were several instances when we weren't sure where the robot or our teammates, including drive team members, were located. Additionally, our squad received the Design Award, which is a testament to the effort we've put into our notebook and interview this year. I hope we can maintain this momentum and continue to improve both our notebook and robot in the future.

== Anders
#h(1em) Overall, I think we did pretty well at Dulaney. Although we lost 2 of our 6 qualification matches, we still managed to improve our robot's durability and enhance communication both within our team and with other teams. We also made significant progress with our auton, and with a little more tuning, we could potentially score 2 rings and achieve a wall stake. Even though we lost our first elimination match, we were still awarded the Design Award based on our notebook and interview. I think we're all really proud of this accomplishment, as our notebook is one of our team's strengths, and we've put a lot of work into it.
