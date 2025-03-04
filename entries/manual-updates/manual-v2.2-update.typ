#import "/template/template.typ": *

#show: create-entry.with(
  title: "Game Manual v2.0 Update",
  type: "identify",
  date: datetime(year: 2024, month: 12, day: 14),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric", "Anders"),
  designed: "Jin",
  witnessed: "Ajibola",
)

There have been new changes to the game manual that will have a significant effect on matchplay.

#set table(
  columns: 2,
  fill: (_, y) =>
    if y == 0 {gray.lighten(20%)}
)

= Manual Changes
== Match Change
#table(
  table.header([Change], [Significance]),

  [
    The mobile goal base must contact the floor or the white tape in the positive corner to be scored.
  ],
  [
    A tipped mobile goal would not have its points doubled by the positive corner because it would not count as scored. This is also true for negative corners.
  ],
)

== Skills Change
#table(
  table.header([Change], [Significance]),

  [
    Any mobile goal removed from the field during a skills match must be returned to the autonomous line. Any blue ring that was on the mobile goal when it was removed must remain on the mobile goal.
  ],
  [
    You cannot descore a blue ring on a mobile goal by removing the mobile goal from the field during skills.
  ],
)


== Important Q&As
#qa-table(
  question: [
    “The definition of Climb in Game-Specific Definitions is as follows: A Robot action. A Robot is considered to be Climbing if it has intentionally grasped, grabbed, or attached itself to the bottom/black rung of the Ladder and/or a higher point of the Ladder. In most cases, this means a Robot mechanism will be reacting against multiple sides of a rung or vertical section in an effort to latch, clamp, or hook onto the Ladder. See #vex-rule[SC7] for the criteria for a Robot to be considered to have Climbed to a Level.

    At a recent tournament, the RED1 robot, which had an arm on top and one side of the bottom rung of the ladder, was not given the protection of #vex-rule[SG9] (a)(i) when the BLUE1 robot, which was not Climbing or attempting to Climb, drove into the RED1 robot. No violation was issued to BLUE1. It was stated that because the RED1 robot's arm was not being mechanically driven by a motor or pneumatic, it did not qualify as a mechanism.

    Can you clarify the definition of a mechanism in relation to the definition of Climbing and #vex-rule[SG9]? In this scenario, should RED1 have received the protection of #vex-rule[SG9] and BLUE1 issued a Minor or Major Violation?”
  ],
  answer: [
    “It is impossible to issue a blanket answer beyond what is written in the game manual that encompasses all possible situations based on a snapshot description of a hypothetical Robot or mechanism.
    However, there is no requirement that a mechanism used for Climbing be mechanically driven by a motor or pneumatic system. Passive mechanisms that are used for Climbing should receive the same consideration as powered mechanisms under rule #vex-rule[SG9].
    If a Robot has intentionally grasped, grabbed, or attached itself to the black rung or any higher point on the Ladder, it should receive the protection of rule #vex-rule[SG9]. However, incidental or accidental (i.e., not intentional) contact with multiple sides of a rung is not enough to meet the definition of Climb. If, in the Head Referee's judgment, the Robot does not meet the definition of Climb, it cannot receive the protection of rule #vex-rule[SG9].”
  ],
  significance: [
    The response reinforces that for a robot to be considered Climbing, it must have intentionally grasped, grabbed, or attached itself to the Ladder. Merely making contact with multiple sides of a rung does not automatically qualify as Climbing. The Head Referee has the discretion to determine if a robot truly meets this definition.
  ]
)

#qa-table(
  question: [
    “In rule #vex-rule[SC8] regarding the scoring of Autonomous Win Points, one of the criteria is given as "has not broken any rules during the Autonomous Period". In #vex-rule[SG4], the title of "Keep Scoring Objects in the field" suggests that the removal of any ring from the field results in the loss of the AWP by SC8, but the text of the rule never mentions rings of the offending robot's own alliance, which suggests that the removal of a ring of the same alliance should not result in the loss of the AWP. We have had it ruled both ways at different competitions so far.

    If a robot on the red alliance removes a red ring from the field, does that result in an automatic loss of AWP by #vex-rule[SC8] and #vex-rule[SG4]?”
  ],
  answer: [
    “Removing a Ring of your own Alliance color is not a Violation of #vex-rule[SG4], which applies only to Mobile Goals and to Rings of the opposing Alliance color. If a Robot on the red Alliance removes a red Ring from the Field, no rule has been broken.”


    \*We acknowledge that a Robot could, conceivably, accidentally tip over a precariously Placed Protected Mobile Goal through transitive or incidental contact that could result in the Mobile Goal no longer being Placed. In that and similar possibilities, the Violation probably isn't intentional or strategic. Have we seen it happen, or do we expect to? No."
  ],
  significance: [
    The response explicitly states that #vex-rule[SG4] only applies to Mobile Goals and Rings of the opposing alliance color, meaning that teams can legally remove their own alliance's Rings from the field without penalty.
  ]
)