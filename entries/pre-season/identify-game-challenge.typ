#import "/template/template.typ": *

#show: create-entry.with(
  title: "Game Challenge - Analysis",
  type: "identify",
  date: datetime(year: 2024, month: 4, day: 30),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Ajibola",
  witnessed: "Jin",
)

#to-do(
  date: datetime(year: 2024, month: 4, day: 30),
  (
    (true, "Analyze the game challenge rules to identify the game objectives for the season.", ("Everyone",)),
  )
)

VRC High Stakes is a 2024-2025 game that focuses significantly on collaboration, robot composition, and tactics.

= Rules Overview
#v(5pt)
#grid(
  columns: 2,
  row-gutter: 15pt,
  column-gutter: 20pt,

  grid.cell(colspan: 2)[
    == Robot
    + #vex-rule[R1] One Robot per Team
    + #vex-rule[R4] Robots must fit within an 18” x 18” x 18” volume
    + #vex-rule[R5] Robots may only expand horizontally in one direction
    + #vex-rule[R11] Let go of Scoring Objects (ring or mobile goal) after the Match
    + #vex-rule[R13] Motors are limited to a combined power of 88W
    + #vex-rule[R19] Robots may use custom plastic parts cut from a single 12” x 24” sheet, up to 0.070” thick.
    + #vex-rule[R23] Pneumatics are limited to a maximum of 2 pneumatic air reservoirs charged to a maximum of 100 psi.
  ],
  grid.cell(rowspan: 2)[
    == Specific Game Rules
    + #vex-rule[SG2] Horizontal expansion is limited to 24” in one X/Y direction
    + #vex-rule[SG3] Vertical expansion is limited to 2 levels of the Ladder (32.16” upwards when on the floor)
      + Level 0: 0”, the Floor tiles
      + Level 1: #sym.lt.eq 18.16”, from the Floor to the top of the black rung
      + Level 2: 18.17”-32.16”, from the top of the black rung to the top of the gray rung
      + Level 3: 32.17: to 46.16", from the top of the gray rung to the top of the yellow rung
      + Level 4: #sym.gt.eq 46.17", above the yellow rung
    + #vex-rule[SG5] Each Robot gets one Ring as a preload.
    + #vex-rule[SG6] Possession is limited to two Rings and one Mobile Goal.
    + #vex-rule[SG9] Don't remove opponents from the Ladder.
    + #vex-rule[SG10] Alliance Wall Stakes are protected.
    + #vex-rule[SG11] Positive corners are “safe” during the endgame (last 10 seconds).
  ],
  [
    == Tournament
    + #vex-rule[T3] The Drive Team is permitted to immediately appeal a Head Referee's ruling
    + #vex-rule[T6] Robots at the field must be ready to play
    + #vex-rule[T9] Each Elimination Alliance gets one Time Out
    + #vex-rule[T14] Each Team will have at least six Qualification Matches
  ],
  [
    == General Game Rules
    + #vex-rule[G6] Keep your Robots together.
    + #vex-rule[G7] Don't clamp your Robot to the Field.
    + #vex-rule[G13] Don't destroy other Robots.
    + #vex-rule[G14] Offensive Robots get the “benefit of the doubt.”
    + #vex-rule[G16] No Holding for more than a 5-count
  ],
)

#colbreak()

= Field
#image("/assets/field-elements/game-field.png", width: 70%)
- Area: 12ft x 12ft foam mat, surrounded by a perimeter, with a Ladder in the center of the field.
- Field Elements
  - 5 Mobile Goals, each with 1 Stake
  - 4 Wall Stakes, 1 per Alliance and 2 neutral
  - 1 Ladder, with three 3 Levels and 1 High Stake
  - 48 Rings, 24 of each color 
  - 2 Preloads
  - 22 Field
  - 4 Corners, 2 Positive and 2 Negative

#colbreak()

= Field Elements #footnote[All images and diagrams are sourced from #link("https://content.vexrobotics.com/docs/23-24/vrc-overunder/VRC-Manual-2324-1.1-Release.pdf")]

#v(5pt)

#grid(
  columns: (1fr, 1fr),
  row-gutter: 50pt,
  column-gutter: 50pt,
  [
    = Stakes
    - *Stake* #sym.dash.em A vertical ½” Schedule 40 PVC pipe (gray, red, or blue) with a compliant barb at the top, used for Scoring Rings.
    - There are 10 Stakes:
      - 5 neutral Stakes in Mobile Goals, which fit 6 Rings each
      - 2 Alliance Wall Stakes, one per Alliance, which fit 2 Rings each
      - 2 neutral Wall Stakes, which fit 6 Rings each
      - 1 neutral High Stake, which fits 1 Ring
    - #vex-rule[SC3] A Ring is considered Scored on a Stake if it meets the following criteria: 
      - a. The Ring is not contacting a Robot from the same color Alliance as the Ring.
      - b. The Ring is not contacting a gray foam tile.
      - c. Any part of the Stake is at least partially within the volume defined by the inner edges of the Ring.
      - Each Ring can only be counted for points once, even in cases where the Ring qualifies as Scored on multiple Stakes. If multiple Stakes are encircled by the same Ring, Top Rings will not be awarded for those Stakes. 
      - d. The Stake does not exceed its total permitted number of Rings. In the event of too many Rings on a Stake, the “highest” Rings will be removed.
  ],
  stack(
    spacing: 5pt,
    image("/assets/field-elements/neutral-wall-stake.png"),
    image("/assets/field-elements/alliance-wall-stake.png"),
  ),
  [
    = Rings
    - 48 Rings, 24 of each color
    - *Ring* #sym.dash.em A hollow red or blue torus-shaped plastic object with an outer diameter of 7”, an inner “hole” diameter of 3", and a thickness (or “tube diameter”) of 2”
    - #vex-rule[SC4] A Ring is considered a Top Ring if it meets the following criteria:
      - a. The Ring is Scored on a Stake (i.e., meets all criteria in #vex-rule[SC3]).
      - b. The Ring is the furthest Scored Ring from a given Stake's base (i.e., Mobile Goal base or Field Perimeter wall).
      - c. There is no minimum number of Rings required; if only one Ring is Scored on a Stake, then it is still considered Stake's Top Ring.
      - Note: A Ring that is considered a Top Ring does not also receive points for being Scored on a Stake; i.e., that Ring is worth 3 points, not a total of “3 + 1” points.
  ],
  image("/assets/field-elements/ring.png"),
  [
    == Mobile Goal
    - 5 Mobile Goals, each with 1 Stake
    - *Mobile Goal* #sym.dash.em One of 5 large Scoring Objects, each with a Stake in the center. Mobile Goals are hexagonal, with a maximal diameter of 10” and an overall height of 14.5”. The Stake is considered part of the Mobile Goal
    - #vex-rule[SC6] A Mobile Goal that has been Placed will result in the following Corner modifiers to its Scored Rings: 
      - a. Placed in a Positive Corner
        - i. Values of all Scored Rings on the Mobile Goal will be doubled. Scored Rings will receive 2 points, and Scored Top Rings will receive 6 points.
      - b. Placed in a Negative Corner
        - i. Values of all Scored Rings on the Mobile Goal will be set to zero points.
        - ii. For each Ring, an equivalent amount of points will be removed from that Alliance's other Scored Rings. Scored Rings will remove (1) point, and Scored Top Rings will remove three (3) points.
        - iii. This negator only applies to an Alliance's “Ring points.”
  ],
  image("/assets/field-elements/mobile-goal.png"),
  [
    = Ladder
    - *Ladder* #sym.dash.em A 36” x 36” x 46” structure located in the center of the field. The Ladder has four vertical posts, and three sets of horizontal rungs at 18”, 32”, and 46” to denote the three Climbing Levels. There is also a single High Stake atop the vertical post nearest the audience side of the Field, at the 180 degree mark on a GPS strip. All supporting structures, hardware, and the High Stake are considered part of the Ladder
    - #vex-rule[SC7] A Robot is considered to have Climbed to a Level if it meets the following criteria:
      - a. The Robot is contacting the Ladder.
      - b. The Robot is not contacting any other Field Elements, including the gray foam tiles.
      - c. The Robot is not contacting any Mobile Goals.
      - d. The Robot's lowest point is past that Level's minimum height from the gray foam tiles.
  ],
  image("/assets/field-elements/ladder.png"),
  [
    = Corners
    - *Corner* #sym.dash.em One of four 12” x 12” locations in which Mobile Goals can be Placed. The Corners are bounded by the inner edges of the Field Perimeter and the outer edge of the associated white tape lines. The Corner is defined as the foam tile and tape line themselves; it is not a 3-dimensional volume.
      - Negative Corner - A Corner of the field, designated by the “-” sign on the stickers applied to the top of the Field Perimeter.
      - Positive Corner - A Corner of the field, designated by the “+” sign on the stickers applied to the top of the Field Perimeter.
    - #vex-rule[SC5] A Mobile Goal is considered Placed in a Corner if it meets the following criteria: 
      - a. The Mobile Goal's base is contacting the Corner (i.e., the Floor and/or white tape line).
      - b. It is “upright.” For the purposes of this definition, a Mobile Goal is considered “upright” if no contact is being made between its Stake (and/or any Rings on this Stake) and the Floor or Field Perimeter.
      - c. Contact with a Robot is irrelevant, as long as all other criteria are met
    - Note: Only one Mobile Goal may be considered Placed in each Corner.
  ],
  stack(
    spacing: 5pt,
    image("/assets/field-elements/highlighted-negative-corner.png", width: 55%),
    image("/assets/field-elements/negative-corner.png", width: 55%),
    image("/assets/field-elements/positive-corner.png", width: 55%),
  ),
)

= Autonomous
#figure(
  image("/assets/field-elements/autonomous-field.png", width: 70%),
  caption: "An overhead view of the Field, with the Starting Lines highlighted green."
)
- 15 seconds long
- *Autonomous Period* #sym.dash.em A time period during which Robots operate and react only to sensor inputs and pre-programmed commands
- *Autonomous Line* #sym.dash.em The pair of white tape lines that run across the field, and the space between those lines.
- #vex-rule[SG7] Don't cross the Autonomous Line. During the Autonomous Period, Robots may not contact foam tiles, Scoring Objects, or Field Elements which are on the opposing Alliance's side of the Autonomous Line.
- #vex-rule[SC2] Scoring of the Autonomous Bonus is evaluated immediately after the Autonomous Period ends (i.e., once all Scoring Objects, Field Elements, and Robots on the Field come to rest). 
  - a. Climb points and Corner modifiers are not included in the calculation of an Alliance's score for the purposes of determining the Autonomous Bonus.
  - b. If the Autonomous Period ends in a tie, including a zero-to-zero tie, each Alliance will receive an Autonomous Bonus of 3 points.
- #vex-rule[SC8] An Autonomous Win Point is awarded to any Alliance that ends the Autonomous Period with the following tasks completed, and that has not broken any rules during the Autonomous Period:
  - 1. At least 3 Scored Rings of the Alliance's color
  - 2. A minimum of 2 Stakes on the Alliance's side of the Autonomous Line with at least 1 Ring of the Alliance's color Scored
  - 3. Neither Robot contacting / breaking the plane of the Starting Line
  - 4. At least 1 Robot contacting the Ladder
  - Note: Autonomous Win Point criteria will be slightly modified for events that qualify directly to the World Championship. The modified criteria will be released on September 3, 2024.

= Match Scoring Summary
#show table.cell.where(y: 0): strong
#table(
  columns: 2,
  fill: (_, y) =>
    if y == 0 {
      gray
    },

  table.header([Achievement], [Point Value]),
  
  [Autonomous Bonus], [6 Points],
  [Each Ring Scored on a Stake], [1 Point],
  [Each Top Ring on a Stake], [3 Points],
  [Ring Scored on High Stake], [2 additional points to each alliance robots successful climb],
  [Climb - Level 1], [3 Points],
  [Climb - Level 2], [6 Points],
  [Climb - Level 3], [12 Points],
  [Each Ring Scored on a Mobile Goal Stake that has been Placed in a Corner], [See #vex-rule[SC6>]],
)

= Robot Skills Challenge
#image("/assets/field-elements/skills-field.png", width: 70%)

== Robot Skills Challenge Rules
+ #vex-rule[RSC3] Robots must start the Robot Skills Match in a legal starting position for the red Alliance
+ #vex-rule[RSC4] Teams may only utilize the blue Rings as Top Rings on Stakes
+ #vex-rule[RSC5] Any red Ring Scored above a blue Ring on the same Stake will not have a point value
+ #vex-rule[RSC6] If any Ring is Scored on a Stake but does not have a point value based on rule #vex-rule[RSC4] or #vex-rule[RSC5], no Ring on that Stake will earn points as a Top Ring.
+ #vex-rule[RSC7] No Corner Modifiers. Each Mobile goal Placed in a Corner will receive 5 points.


/*
#gridx(
  columns: (1fr, 1fr),
  rows: auto,
  gutter: 50pt,
  [
    == Triballs
    - 60 total Triballs can be in play
    - 2 Alliance Triballs per team
    - 22 Match Load Triballs per alliance
    - 12 Field Triballs
    - 6.18” tall
    - Weight of 103-138g
    - Abnormal shape (Reuleaux triangle/Tetrahedral Sphreroform)

    #tablex(
      columns: 2,

      cellx(fill: gray)[*Achievement*], cellx(fill: gray)[*Point Value*],
      [Each Triball Scored in a Goal], [5 points],
      [Each Triball Scored in an Offensive Zone], [2 points]
    )
  ],
  [#image("/assets/field-elements/triball.png", height: 20em)],
  [#image("/assets/field-elements/elevation-bar.png")],
  [
    == Elevation Bar
    - *Elevation Bar* - The Alliance-colored PVC pipes, two red and two blue, at either end of the Barrier.
    - *Elevation Bar Cap* - The yellow plastic piece at the top of each set of Elevation Bars. The Elevation Bar Cap is a separate field element and is not considered part of the Elevation Bar.
    - *Elevation Tier* - A status that represents an Elevated Robot's height off of the field at the end of the Match. They go from A tier to J tier as the highest
    - 1 set of Elevation Bars per alliance
  ],
  [
    == Goal
    - *Goal* - The Alliance-colored, netted structure on either side of the field, one red and one blue, into which Triballs can be scored for points.
    - Two (2) goals, one (1) per Alliance
    - Total length - 47.13 inches 
    - Gap length - 39.37 inches
    - Width - 19.20 inches
    - Height (exclude net) - 5.78 inches
    - Degree of net - 14.27 degrees
  ],
  [#image("/assets/field-elements/goal1.png")],
  [#image("/assets/field-elements/load-zone.png")],
  [
    == Match Load Zones
    - *Match Load Bar* - The Alliance-colored structure, made up of 2” Schedule 40 PVC pipe (with a 2.375” outer diameter) and associated connectors/hardware, that connects diagonally across a corner of the Field.
    - Four Match Load Bars / Match Load Zones, two per Alliance
    - Length - 30 inches
    - Height - 2.38 inches
    - Distance away from corner - 17.33 inches 
    - Angle - 45 degrees
  ],
  [
    == Robot Skills Challenge
    - One minute long Matches in an effort to score as many points as possible.
    - These Matches consist of Driving Skills Matches, which are entirely driver-controlled, and Autonomous Coding Skills Matches, which are autonomous with limited human interaction.
    - Teams will be ranked based on their combined score in the two types of Matches.
    - The two (2) Blue Alliance Triball Preloads will not be used
    - All of the forty-four (44) Match Load Triballs will be located in the red Alliance Station
  ],
  [#image("/assets/field-elements/skills-field.png")],
)

== Robot Sizing Restrictions
- #vex-rule[R4] Robot must fit within an 18” x 18” x 18” volume
- #vex-rule[SG2] Horizontal expansion is limited to 36”
- There is NO limit on vertical expansion

#grid(
  columns: 2,
  rows: 1,

  [
    == Autonomous
    - *Autonomous Period* - A time period during which Robots operate and react only to sensor inputs and commands pre-programmed by the Students into the Robot control system.
      - Fifteen (15) seconds long
    - *Neutral Zone* - One of two areas of the field bordered by white tape lines, the Barrier, and the field perimeter. The Neutral Zone is defined as the gray foam tiles themselves; it is not a 3-dimensional volume.
    - #vex-rule[SC2] Scoring of the Autonomous Bonus is evaluated immediately after the Autonomous Period ends (i.e., once all Triballs, Field Elements, and Robots on the field come to rest).
      - Elevation Tier points are not included in the calculation of an Alliance's score for the purposes of determining the Autonomous Bonus.
      - If the Autonomous Period ends in a tie, including a zero-to-zero tie, each Alliance will receive an Autonomous Bonus of four (4) points.
    - #vex-rule[SG1] Each robot must begin the match on their alliance's starting tiles that are adjacent to their alliance robot
    - #vex-rule[SG9] Stay in your starting Zone during Autonomous: During the Autonomous Period, Robots may not contact foam tiles, Triballs, or Field Elements on the opposing Alliance's side of the Neutral Zone, or in the opposite Offensive Zone from which they began the Match.
    - #vex-rule[SC7] Autonomous Win Point Conditions:
      - Removed the triball from the Alliance's Match Load Zone that coincides with their Starting Tiles
      - Scored at least one Alliance Triball in the Alliance's own Goal
      - Ended the Autonomous Period with at least one Robot contacting their own Elevation Bar
    - Autonomous Bonus: 8 Points
  ],
  image("/assets/field-elements/neutral-zones.png")
)

#admonition(type: "note")[
  #vex-rule[SG9] makes a solo autonomous win point impossible to achieve unless you can consistently score into your goal from across the field. We strongly believe that teams will not be able to do this, especially at the beginning of the season.
]

== Match Scoring

#tablex(
  columns: (1fr, 1fr),
  rows: 8,
  align: center + horizon,
  header-rows: 1,

  cellx(fill: gray)[*Achievement*], cellx(fill: gray)[*Point Value*],
  [Autonomous Bonus], [8 Points],
  [Each Triball Scored in a Goal], [5 Points],
  [Each Triball Scored in an Offensive Zone], [2 Points],
  [Elevation - Top Tier], [20 Points],
  [Elevation - 2nd Tier], [15 Points],
  [Elevation - 3rd Tier], [10 Points],
  [Elevation - 4th Tier], [5 Points]
)

#admonition(type: "note")[
  We will be going on summer break hiatus until July.
]
*/