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
  monthly-schedule: "Off",
  yearly-schedule: "Ahead",
  (
    (true, "Identify the design goals and constraints for the ladybrown.", "Everyone"),
    (true, "Determine the mathematical and scientific concepts involved in ladybrown design.", "Everyone"),
  )
)

The design goals for the ladybrown should be similar to the Redirect mechanism because they have the same function of scoring onto wall stakes. Therefore, based on our experience designing and building the redirect mechanism, we have a good idea of what to expect when designing the ladybrown.

#figure(
  image("identify-ladybrown.excalidraw.svg", width: 50%),
  caption: "In the above image, (1) the robot intakes a ring. (2) Once the ring has made it to the top of the intake, the ladybrown can prepare to pick it up. (3) The ladybrown has picked up the ring and rotated 180°. (4) The ladybrown can score the ring onto the wall stakes.

  The ladybrown allows us to directly collect rings from our intake and place them onto a wall stake. By using lateral movement, the ladybrown can effortlessly score rings."
)

#colbreak()

#table(
  columns: (1fr),
  rows: 4,
  align: left + top,

  table.header(table.cell(fill: gray, align: center)[*Aspects of the Ladybrown*]),

  [*Grip* - One of the main features of the ladybrown is its ability to grip onto the ring once the ring has reached the top of the intake. How well the ladybrown can grip onto a ring would affect its scoring and handling ability.],
  [*Control* - The ladybrown needs ease of control for accurate grabbing, scoring, and releasing of rings. This is imperative, as the ability to score on wall stakes can earn many points, potentially changing the outcome of a match.],
  [*Speed* - Another main feature of the ladybrown is how quickly it can score rings onto the wall stakes. It is important to have a quick acceleration when scoring to minimize the time we are vulnerable to getting blocked.],
)

#goals-constraints(
  goals: [
    - The ladybrown should have a 180#sym.degree range of motion.
    - The ladybrown must fit the width of the rings (7 in.).
    - When fully extended, the ladybrown should reach above the top of the wall stakes (25.06 in.).
  ],
  constraints: [
    - #vex-rule[R4] Robots must fit within an 18" x 18" x 18" volume
    - #vex-rule[SG2] Horizontal expansion is limited to 24" in one X/Y direction
      - The ladybrown cannot extend more than 6" horizontally outside of the initial robot bounds.
    - #vex-rule[SG3] Vertical expansion is limited to 2 levels of the Ladder (32.16" upwards when on the floor)
      - The ladybrown cannot extend more than 14.16" vertically outside of the initial robot bounds.
    - #vex-rule[R13] Motors are limited to a combined power of 88W
      - 66W are being used by the drivetrain, and we will likely need 11W for the intake v3, leaving 11W for the ladybrown.
    - #vex-rule[SG6] Possession is limited to two Rings and one Mobile Goal
    - Must not interfere with other mechanisms.
  ],
)
