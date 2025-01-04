#import "/template/template.typ": *

#show: create-entry.with(
  title: "Ladybrown v1",
  type: "identify",
  date: datetime(year: 2024, month: 10, day: 23),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Anders",
  witnessed: "Eric",
)

#to-do(
  date: datetime(year: 2024, month: 10, day: 23),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Identify the design goals and constraints for the ladybrown.", "Everyone"),
    (true, "Determine the mathematical and scientific concepts involved in ladybrown design.", "Everyone"),
  )
)


#figure(
  circle(), 
  caption: "The ladybrown allows for versatility and speed in scoring and movement, it also allows for easy control by the driver giving better ability in different scenarios."
)

#table(
  columns: (1fr),
  rows: 4,
  align: left + top,

  table.header(table.cell(fill: gray, align: center)[*Aspects of the Lady Brown*]),

  [*Grip* - We need a good grip on the rings so that we don’t drop them during a match. This is important so that we don’t waste time trying to recover the ring we dropped.],
  [*Control* - We need ease of control for accuracy in grabbing, scoring, and releasing rings. This is imperative as the ability to score on wall stakes can earn large numbers of points, turning the outcome of a match.],
  [*Speed* - The ladybrown needs to be speedy for optimal ring scoring efficiency. The faster the ladybrown is, the more times we can use it in a match, allowing us to score more points.],
)


#goals-constraints(
  goals: [
    - The ladybrown should have a 180° range of motion
    - The ladybrown must fit the width of the rings (7 in.)
    - When fully extended, the ladybrown should reach above the top of the wall stakes (25.06 in.)

  ],
  constraints: [
    - #vex-rule [R4] Robots must fit within an 18” x 18” x 18” volume
    - #vex-rule [SG2] Horizontal expansion is limited to 24” in one X/Y direction
    - The ladybrown cannot extend more than 6” horizontally outside of the initial robot bounds.
    - #vex-rule [SG3] Vertical expansion is limited to 2 levels of the Ladder (32.16” upwards when on the floor)
      - The ladybrown cannot extend more than 14.16” vertically outside of the initial robot bounds.
    - #vex-rule [R13] Motors are limited to a combined power of 88W
      - 66W are being used by the drivetrain, and we will likely need 11W for the intake v3, leaving 11W for the ladybrown.
    - #vex-rule [SG6] Possession is limited to two Rings and one Mobile Goal
    - Must not interfere with other mechanisms

  ],
)
