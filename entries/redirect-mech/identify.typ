#import "/template/template.typ": *

#show: create-entry.with(
  title: "Redirect Mechanism v1",
  type: "identify",
  date: datetime(year: 2024, month: 10, day: 10),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Eric",
  witnessed: "Anders",
)

#to-do(
  date: datetime(year: 2024, month: 10, day: 10),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Identify the design goals and constraints for the redirect mechanism.", "Everyone"),
    (true, "Determine the math and scientific concepts involved in the redirect mech design.", "Everyone"),
  )
)

#figure(
  image("Identify-redirect-mech.excalidraw.svg", width: 50%),
  caption: "The redirect mechanism allows us to take the rings that are collected by the intake and redirect them to score onto the wall stakes. It can score rings, lift rings, and allow the robot to climb the ladder. This enables us to get a few extra points that are very strictly needed, especially in such a low-scoring game. "
)

#table(
  columns: (1fr),
  rows: 4,
  align: left + top,

  table.header(table.cell(fill: gray, align: center)[*Aspects of the Intake*]),

  [*Scoring* - Most importantly, a redirect mechanism allows for the possibility of scoring on the wall stakes. Due to matches often having low scores, even one point can make a difference in determining who wins. This aspect is also necessary for the autonomous win point, which requires scoring an alliance ring onto the alliance stake. 
  ],
  [*Control* - A well-designed redirect mechanism allows the robot to precisely control rings by picking up rings, moving them across the field, and scoring them onto the wall stakes. 
  ],
  [*Lift* - A redirect mechanism must have the ability to reach the wall stakes. This aspect must be precise and quick, otherwise it risks dropping the ring. Lift can also potentially allow the robot to climb the ladder. 
  ],
)

#goals-constraints(
  goals: [
    - The redirect mechanism must be able to quickly take in the redirected rings.
    - The redirect mechanism must be able to efficiently lift the rings to the level of the wall stakes.
    - The redirect mechanism must precisely and accurately score the rings onto the wall stakes.
    - The redirect mechanism must be strong enough to lift the robot above the ladder.
  ],
  constraints: [
    - #vex-rule[R4] Robots must fit within an 18” x 18” x 18” volume
    - #vex-rule[R13] Motors are limited to a combined power of 88W
      - The redirect mechanism should only require 11 watts to save power for new motorized subsystems in the future.
    - #vex-rule[SG6] Possession is limited to two Rings and one Mobile Goal.
  ],
)