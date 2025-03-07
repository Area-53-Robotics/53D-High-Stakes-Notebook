#import "/template/template.typ": *

#show: create-entry.with(
  title: "Goal Rush Mechanism v1",
  type: "identify",
  date: datetime(year: 2025, month: 02, day: 01),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Eric",
  witnessed: "Anders",
)

From our previous observations in our #entry-reference(title: "Speedway Signature Event Observations", type: "identify", date: datetime(year: 2024, month: 12, day: 06)) and #entry-reference(title: "Sugar Rush Observations", type: "identify", date: datetime(year: 2025, month: 01, day: 05)), we saw that many teams had a mobile goal rush mechanism. This mechanism is useful during auton because it allows us to have early control of a positive corner, and useful during driver control to clear positive and negative corners.

#figure(
  image("identify-goal-rush.excalidraw.svg", width: 50%),
  caption: "In the above image, (1) the robot starts at the initial position with the mobile goal rush mechanism extended. Then the robot goes forward and rushes for the mobile goal that is on the autonomous line. (2) The robot drags the mobile goal to their side of the field with the mobile goal rush mechanism and releases it. (3) The robot travels to a corner and sweeps it.

  The mobile goal rush mechanism allows us to steal a mobile goal and clear the ring stack that is found in the corner.
 "
)

#table(
  columns: (1fr),
  rows: 4,
  align: left + top,

  table.header(table.cell(fill: gray, align: center)[*Aspects of the Ring Rush Mechanism*]),

  [*Reach* - The mobile goal rush mechanism extends outwards by using pneumatic pistons. This increased reach would allow the box to grab mobile goals and reach corners faster.
  ],
  [*Control* - The mobile goal rush mechanism would allow the robot to control game elements more easily. These game elements include mobile goals, rings, and positive and negative corners.
  ],
  [*Versatility* - The mobile goal rush mechanism can be used outside of its intended purpose of clearing corners. It can be used to grab and knock over mobile goals.
  ],
)

#goals-constraints(
  goals: [
    - The mobile goal rush mechanism should have a locking mechanism to steal a mobile goal
    - The mobile goal rush mechanism should be able to clear a ring stack consisting of 4 rings.
    - If possible, the mobile goal rush mechanism should be able to flip goals.
      - Flipping goals is a defensive measure that prevents mobile goals from being counted towards negative corners.


  ],
  constraints: [
    - #vex-rule[R4] Robots must fit within an 18” x 18” x 18” volume
    - #vex-rule[SG2] Horizontal expansion is limited to 24” in one X/Y direction
      - The mobile goal rush mechanism cannot extend more than 6” horizontally outside of the initial robot bounds.
    - #vex-rule[SG3] Vertical expansion is limited to 2 levels of the Ladder (32.16” upwards when on the floor)
      - The mobile goal rush mechanism cannot extend more than 14.16” vertically outside of the initial robot bounds.
    - #vex-rule[SG6] Possession is limited to two Rings and one Mobile Goal
    - Must not interfere with other mechanisms
  ],
)