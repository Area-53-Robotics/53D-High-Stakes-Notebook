#import "/template/template.typ": *

#show: create-entry.with(
  title: "Game Manual v3.0 Update",
  type: "identify",
  date: datetime(year: 2024, month: 1, day: 27),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric", "Anders"),
  designed: "Jin",
  witnessed: "Ajibola",
)

Update 3.0 has been the biggest change to the game manual since the start of this season. It is important to take note of the changes made in update 3.0 because they will significantly change our game strategy.

#set table(
  columns: 2,
  fill: (_, y) =>
    if y == 0 {gray.lighten(20%)}
)

= Manual Changes
== Matchplay Change
#table(
  table.header([Change], [Significance]),

  [
    For a mobile goal to be counted in a corner, the base of the mobile goal must break the plane of the corner.
  ],
  [
    There are now stricter rules for checking if the mobile goal is counted in a corner. Before, the top piece of the mobile goal could break the plane and the mobile goal would still be counted as in the corner.
  ],
)
#table(
  table.header([Change], [Significance]),

  [
    Removed the requirement that you cannot be touching a mobile goal in order to be counted as climbing.
  ],
  [
    Teams can carry a mobile goal to shift their center of gravity when climbing. This would make climbing easier. Additionally, enemy teams cannot steal your mobile goal when you are climbing.
  ],
)
#table(
  table.header([Change], [Significance]),

  [
    The positive corner protection is now the last 30 seconds of the match
  ],
  [
    There will be less time during matches where teams are just sitting in corners. This also means more time for teams to score on the wall stakes, hang, and/or make strategic plays. 
  ],
)

== Rule Change
#table(
  table.header([Change], [Significance]),

  [
    Removed the requirement that you must be the winner of the match for any major match violations to affect you.
  ],
  [
    Previously, there was a strategy where, if you were losing, you could break as many rules as possible to close the score gap. Then, you could call out the winning alliance for a match-affecting play. Now, however, you will be disqualified regardless of whether you win the match or not.
  ],
)


== Important Q&As
#qa-table(
  question: [
    “#vex-rule[RSC1]
    
    According to #vex-rule[RSC1] Violation Notes, ‘In a Robot Skills Match, Scoring a Ring or Placing a Mobile Goal into a Corner while in Violation of Possession limits will be considered a Score Affecting Violation and will result in a score of 0 for that Match.’

    Does this mean that the final score is to be 0 if 3 rings are possessed during the run, or just the mobile goal that is placed or rings that were scored while in possession?

    For example, during a skills programming run, a team scores 3 rings and has placed a goal into a corner, and then attempts to place a second goal but possesses 3 rings at once causing the violation. Is the overall score for that run 0 or does the placed goal and rings scored before the violation still count?

    Thank you!”

  ],
  answer: [
    “Any Score Affecting Violation in a Robot Skills Challenge Match, including Scoring a Ring or Placing a Mobile Goal while in Violation of rule #vex-rule[SG6], should result in a final score of 0 for that Skills Match unless a rule has other specific guidance.”

  ],
  significance: [
    The answer specifies that even if some rings were scored or a mobile goal was placed correctly before a rule violation occurs, the entire skills score is nullified. This means that prior valid actions do not count if a violation happens at any point during the skills run.
  ]
)

#qa-table(
  question: [
    “Post 2432 asked about holding and the GDC responded to it citing a specific scenario. I would like to see an expansion to that answer to cover different scenarios. The original scenario is: a blue robot holding a mobile goal in a corner, the red robot is blocking retreat in one direction and a second mobile goal is blocking retreat in a second direction (below on left)

    The specific response from the GDC was ‘Our answer will assume that the blue Robot is attempting to remove a Mobile Goal filled with blue Rings from a Negative Corner.’ Based on that, the red robot is holding. You add ‘Our answer only applies in that specific scenario, and Head Referees must use their judgment and the context of the Match to determine whether this logic applies in any other scenario.’

    In almost every scenario we have encountered, a robot is defending a mobile goal with its colored rings in the positive corner (blue robot with blue rings, red robot with red rings). We have been ruling that if the blue robot is defending a mobile goal with blue rings on it in the positive corner, it is not trying to escape and red cannot be holding. Blue has a clear avenue of escape if it released the mobile goal, but is guarding the mobile goal. It is the defensive robot in that scenario. Is this a correct interpretation?”

  ],
  answer: [
    “Generally speaking, in a scenario when multiple Robots are playing defensively (like both scenarios in your question), any Robot that isn't directly interacting with a Ring or Mobile Goal should be considered ‘more defensive’ and given ‘less benefit of the doubt.’

    Because the red Robot in both of your scenarios does not have Rings or a Mobile Goal, it is playing ‘more defensively’ than the blue Robot, which is actively interacting with a Mobile Goal.

    In your first scenario, because BLUE1 is not trying to escape there is no Holding/Trapping.

    In your second scenario, we'd generally consider this Holding/Trapping, but the final determination must be made by the Head Referee within the larger context of the Match and considering all contributing factors (like which Alliance put the Mobile Goal in that position).”

  ],
  significance: [
    The answer distinguishes between offensive and defensive play, emphasizing that robots not directly interacting with rings or mobile goals are considered more defensive. This helps referees and teams understand the context in which holding or trapping might occur.
  ]
)