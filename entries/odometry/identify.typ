#import "/template/template.typ": *

#show: create-entry.with(
  title: "Odometry",
  type: "identify",
  date: datetime(year: 2024, month: 8, day: 14),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Anders",
  witnessed: "Eric",
)

#to-do(
  date: datetime(year: 2024, month: 8, day: 14),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Identify the design goals and constraints for the mobile goal clamp.", "Everyone"),
    (true, "Determine the mathematical and scientific concepts involved in clamp design.", "Everyone"),
  )
)

During the autonomous phase of a match, the robot can only move using pre-programmed commands and information provided by sensor data. An odometry system determines the 2-D position of the robot in real time during the match, allowing the robot to act on that information autonomously.

#admonition(type: "note")[
  "Odometry" and "position tracking" technically mean the same thing: estimating the change in position of the robot over time. However, we will define "position tracking" using the aforementioned definition, and define "odometry" as encompassing both "position tracking" and algorithms that operate using data produced by the position tracking system.
]

#figure(
  image("Identify-mogo-clamp.excalidraw.svg", width: 50%),
  caption: "A mobile goal clamp helps us quickly and reliably pick up mobile goals and transport them to scoring zones."
)

#table(
  columns: (1fr),
  align: left + top,

  table.header(table.cell(fill: gray, align: center)[*Aspects of Odometry*]),

  [*Absolute Information* - Using odometry, the horizontal position, vertical position, and orientation of the robot can be calculated as absolute values (based on their initial values at the beginning of the match) instead of relative values calculated as summations of the changes in these values throughout the match.],
  [*Movement* - Using the position data produced by a position tracking system, the robot can account for disturbances during matches (such as a robot or game element) that push the robot off-course.],
)

#colbreak()

#goals-constraints(
  goals: [
    - The clamp must securely hold the mobile goal without slipping or dropping it.
    - The clamp should not take up too much space or interfere with other systems (such as arms, lifts, or scoring mechanisms).
    - The clamp should be able to grab and release mobile goals quickly to minimize time spent on each task.
  ],
  constraints: [
    - #vex-rule[R4] Robots must fit within an 18” x 18” x 18” volume
    - #vex-rule[R15] No modifications to electronic or pneumatic components are allowed
    - #vex-rule[R27] Use a "Competition Template" for programming
  ],
)