#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v2",
  type: "identify",
  date: datetime(year: 2024, month: 10, day: 25),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Anders",
  witnessed: "Eric",
)

#to-do(
  date: datetime(year: 2024, month: 10, day: 25),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Identify the design goals and constraints for the intake.", "Everyone"),
    (true, "Determine the mathematical and scientific concepts involved in intake design.", "Everyone"),
  )
)


#figure(
  circle(), 
  caption: "The Intake Mechanism is a core component of our robot. It allows us to gather scoring rings which are important because nearly all points gathered in the game involve usage of the scoring rings. The way that the intake works is that it uses wheels and/or hooks to gather rings and direct them to the mobile goal."
)

#table(
  columns: (1fr),
  rows: 4,
  align: left + top,

  table.header(table.cell(fill: gray, align: center)[*Aspects of the Intake*]),

  [*Speed* - There are plenty of rings on the field, so it is imperative to have a speedy intake to be able to pick up as many rings as possible.],
  [*Consistency* - The intake needs to be consistent to save time when intaking rings and make it easier for the driver to quickly intake multiple rings.],
  [*Grip* - Grip is a key component of consistency, and it is achieved using flex wheels that grip onto rings. Grip ensures that when our robot drives into a ring, it will smoothly go up the intake.],
  [*Control* - Control is crucial so that the driver can outtake rings that are the wrong color. This happens often in a match, so precise intake control saves time.]
)


#goals-constraints(
  goals: [
    - The intake speed should be at least 450 RPM to take in rings quickly.
    - Consistency intakes rings every single time, so our driver and auton can reach their full potentials.
    - Grips the rings tightly so we can score every ring we drive into.
    - Controllable by the driver to selectively intake higher up rings as well as ones on the ground.



  ],
  constraints: [
    - #vex-rule [R4] Robots must fit within an 18” x 18” x 18” volume
      - The intake cannot take up too much space, as we need to save space for other mechanisms.
    - #vex-rule [R13] Motors are limited to a combined power of 88W
      - 66W are being used by the drivetrain, and we will likely need 11W for the Ladybrown v1, leaving 11W for the intake.
    - #vex-rule [SG6] Possession is limited to two Rings and one Mobile Goal.
  ],
)
