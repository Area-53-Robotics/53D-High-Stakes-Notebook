#import "/template/template.typ": *

#show: create-entry.with(
  title: "Game Manual v2.0 Update",
  type: "identify",
  date: datetime(year: 2024, month: 9, day: 6),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric"),
  designed: "Jin",
  witnessed: "Ajibola",
)

#to-do(
  date: datetime(year: 2024, month: 9, day: 6),
  monthly-schedule: "On",
  yearly-schedule: "Ahead",
  (
    (true, "Identify changes made to the rules manual and how they affect our gameplay.", "Everyone"),
    (true, "Build the intake according to today's delegation.", "Everyone"),
  ),
)

#set table(
  columns: 2,
  fill: (_, y) =>
    if y == 0 {gray.lighten(20%)}
)

= Manual Changes
== Field Setup
#table(
  table.header([Change], [Significance]),

  [
    Changed the corners of the field from squares to triangles.
  ],
  [
    The size of the scoring section of the corner has been cut in half. It does not affect the rings point values.
  ],

  [
    Previously, the positive corners had a red ring on top of the stack and the negative corners had a blue corner on the top of the stack, regardless of which side you were on. Now, the opposite color ring is on top of the two stacks closest to each alliance.
  ],
  [
    Depending on how your robot worked, you would have gotten an advantage when playing as a certain color. Now that the rings are consistent, gameplay is fair.
  ]
)

== Scoring
#table(
  table.header([Change], [Significance]),

  [
    Previously, the mobile goal had to contact the corner to count as scored. Now, as long as the mobile goal is in the 3D shape formed by the corner, it can contact the floor or the white tape anywhere.
  ],
  [
    The bottom of the mobile goal is a convex surface. This means that the mobile goal is capable of hovering over the floor. Now, it will be easier to score mobile goals in the corner.
  ],

  [
    Mobile goals with rings on them can still be counted for points when they are knocked over.
  ],
  [
    In the previous manual, rings that touched the floor when a mobile goal is tipped got descored. This meant that a mobile goal that would normally be worth 8 points would only be worth 3 points if tipped over.
  ]
)

== Gameplay 
#table(
  table.header([Change], [Significance]),

  [
    Changed the positive corner protection time from the last 10 seconds to the last 15 seconds.
  ],
  [
    Teams have an extra 5 seconds at the end of the match to do a different task other than protecting their positive corner.
  ],
)

#colbreak()

== Important Q&As

#let qa-table(question: none, answer: none, significance: none) = {
  table(
    columns: 2,
    fill: (_, y) =>
      if calc.even(y) {gray.lighten(20%)},

    [Question], [Answer],
    table.cell(rowspan: 3, question), answer,
    [Significance],
    significance
  )
}

#qa-table(
  question: [
    “In our recent scrimmage event (first of the season for us) is that most climbing teams only attempted their climbs in end game, and robots that couldn't climb were seeking to play defensively. Some students felt that no-violation calls for preventing access to the ladder were controversial - this could be a misunderstanding because the previous year's game had a protected period for climbing. The rules don't supply any special protections to climbing late in the game, and the competitors should probably expect climbing to be more challenging late in the game as their opponents will be expecting them to make climbs then, after positive corner protection kicks in."
  ],
  answer: [
    “In your scenarios, if neither Robot meets the definition of Climbing, there cannot be an #vex-rule[SG9] Violation (major or minor)."
  ],
  significance: [
    Robots with an extended Climbing mechanism will only have the protection of #vex-rule[SG9] once they meet the definition of Climbing. This means that although risky, we can prevent a robot from touching the bar to climb. Once they have begun the climb, we cannot interfere. 
  ]
)

#qa-table(
  question: [
    “<SG11> protects mobile stakes in the positive corners during the last 15 seconds of a match. The Violation Notes on the rule states that Intentional, strategic, or egregious Violations will be considered Major Violations. During the last 15 seconds of a match, if a team tips over or removes a mobile goal from a protected corner but the score difference is not match affecting, is a major violation still warranted? Can it be assumed that both of these actions would fit the criteria of 'intentional' or 'strategic' and thus make this a major violation regardless of whether the action was match affecting?"
  ],
  answer: [
    “In every case we can think of\*, changing the score of a Protected Mobile Goal by tipping it over or removing it from the Corner will be part of an intentional, strategic, or egregious action. Per the Violation Note for #vex-rule[G11], these are automatically Major Violations and should result in a Disqualification. This note applies regardless of whether or not it is a Match Affecting Violation.

    \*We acknowledge that a Robot could, conceivably, accidentally tip over a precariously Placed Protected Mobile Goal through transitive or incidental contact that could result in the Mobile Goal no longer being Placed. In that and similar possibilities, the Violation probably isn't intentional or strategic. Have we seen it happen, or do we expect to? No."
  ],
  significance: [
    Regardless of the cause or intentions that result in removing a mobile goal from the positive corner in the last 15 seconds of the match, the action will result in a major violation.
  ]
)

#colbreak()

= Future Implications for the Robot
+ Positive corners have been cut in half, making it difficult to score a mobile goal. This means that we need a more effective way of sweeping the ring stack from the corner to ensure that our mobile goal is scored.
+ Tipping a mobile goal is no longer an offensive strategy because it no longer descores rings. However, we can tip our own mobile goals as a defense strategy. SInce tipped over mobile goals don't count for corners, an opposing robot would need to untipped our mobile goals and place it in the negative corner.