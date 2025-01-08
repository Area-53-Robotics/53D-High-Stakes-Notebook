#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mobile Goal Clamp v3",
  type: "identify",
  date: datetime(year: 2024, month: 10, day: 26),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Anders",
  witnessed: "Eric",
)

#to-do(
  date: datetime(year: 2024, month: 10, day: 26),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Identify the design goals and constraints for the mobile goal clamp.", "Everyone"),
    (true, "Determine the mathematical and scientific concepts involved in mobile goal clamp design.", "Everyone"),
  )
)


#figure(
  circle(), 
  caption: "The mobile goal (mogo) clamp is an important part of the robot responsible for grappling the mobile goals so that the robot can score rings on them. These mobile goals are where the majority of points are scored in a High Stakes match, making the clamp crucial for success."
)

#table(
  columns: (1fr),
  rows: 4,
  align: left + top,

  table.header(table.cell(fill: gray, align: center)[*Aspects of the Mobile Goal Clamp*]),

  [*Grip* - The clamp needs to have a good grip to keep the clamps in our possession and not drop them or have them stolen by another robot.],
  [*Consistency* - The clamp needs to consistently grasp the mobile goals in the same position, otherwise, the intake will be unable to properly dispense the rings onto the mobile goals.],
  [*Endurance* - The clamp must be able to work multiple times per match to score mobile goals and recover mobile goals stolen by the opposing alliance.],
)


#goals-constraints(
  goals: [
    - High grip ability
    - Enough air for a long time
    - Consistent clamping



  ],
  constraints: [
    - #vex-rule [R4] Robots must fit within an 18" x 18" x 18" volume
      - The clamp will likely stick out on one side of the robot, so we have to ensure it stays within the size limit
    - The clamp cannot use motors so that we can save them for other mechanisms
    - #vex-rule [R23b] Pneumatic devices may be charged to a maximum of 100 psi
      - This limits the number of times the pneumatics on the clamp can be activated.
    - #vex-rule [SG6] Possession is limited to two Rings and one Mobile Goal
      - This means that the clamp should only be able to grasp one mobile goal at a time.
  ],
)
