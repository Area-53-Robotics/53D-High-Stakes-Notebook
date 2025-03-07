#import "/template/template.typ": *

#show: create-entry.with(
  title: "Ring Rush Mechanism v1",
  type: "identify",
  date: datetime(year: 2025, month: 02, day: 01),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Eric",
  witnessed: "Anders",
)

#to-do(
  date: datetime(year: 2025, month: 02, day: 01),
  monthly-schedule: "On",
  yearly-schedule: "Off",
  (
    (true, "Identify the design goals and constraints for the ring rush mechanism.", "Everyone"),
    (true, "Determine the math and scientific concepts involved in the ring rush design.", "Everyone"),
    (true, "Brainstorm ring rush ideas.", "Everyone"),
    (true, "Select the best ring rush idea using a decision matrix.", "Everyone"),
    (true, "Plan the implementation of the ring rush mech idea.", "Everyone"),
  )
)

From our previous observations in our #entry-reference(title: "Speedway Signature Event - Observations", type: "identify", date: datetime(year: 2024, month: 12, day: 07)) and our #entry-reference(title: "Sugar Rush Signature Event - Observations", type: "identify", date: datetime(year: 2025, month: 01, day: 05)), we saw that a lot of teams had a ring rush mechanism. The purpose of the ring rush mechanism is to disrupt the ring stack during auton and steal two rings.

#figure(
  image("identify-ring-rush.excalidraw.svg", width: 50%),
  caption: "In the above image, (1) the robot activates the ring rush mechanism during autonomous and rush for the ring stack. The ring stack is disrupted. (2) The ring rush mechanism steals two rings from the ring stack.\n
  The ring rush mechanism allows us to upset the enemy alliance's auton, as well as collect rings from the auton line without crossing."
)

#colbreak()

#table(
  columns: (1fr),
  rows: 4,
  align: left + top,

  table.header(table.cell(fill: gray, align: center)[*Aspects of the Ring Rush Mechanism*]),

  [*Reach* - The ring rush mechanism extends outwards in front of the robot to reach the ring stack before the enemy alliance. If the ring rush mechanism can disrupt the ring stack faster than the opposing alliance can get to it, then they may pick up a wrong color ring.],
  [*Control* - When the ring rush mechanism disrupts the ring stack, it also pulls rings toward our side of the field. The ability to manipulate rings would allow us to score more rings during auton.],
  [*Stability* - Since the ring rush mechanism is on a pivot, the ring rush must be stabilized when it is fully activated. Instability would mess up the consistency of the ring rush mechanism.],
)

#goals-constraints(
  goals: [
    - The ring rush mechanism should be able to grab two rings.
    - The ring rush mechanism should be able to disrupt the ring stack during autonomous.
    - The ring rush should stay deactivated during driver control
    - If possible, the ring rush mechanism should be able to unflip mobile goals.
  ],
  constraints: [
    - #vex-rule[R4] Robots must fit within an 18” x 18” x 18” volume
    - #vex-rule[SG2] Horizontal expansion is limited to 24” in one X/Y direction
      - The ring rush mechanism cannot extend more than 6” horizontally outside of the initial robot bounds.
    - #vex-rule[SG3] Vertical expansion is limited to 2 levels of the Ladder (32.16” upwards when on the floor)
      - The ring rush mechanism cannot extend more than 14.16” vertically outside of the initial robot bounds.
    - #vex-rule[SG6] Possession is limited to two Rings and one Mobile Goal
    - Must not interfere with other mechanisms
  ],
)