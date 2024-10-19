#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mobile Goal Clamp v1",
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

This season reintroduced the mobile goal, a game element that was in the 2021-22 VRC Tipping Point season. However, the base is circular and a lot shorter than the mobile goals from Tipping Point. The purpose of the mobile goal clamp is to be able to clamp onto the mobile goal and position it in a way that makes it possible to reliably score the rings.

#figure(
  image("Identify-mogo-clamp.excalidraw.svg", width: 50%),
  caption: "A mobile goal clamp helps us quickly and reliably pick up mobile goals and transport them to scoring zones."
)

#table(
  columns: (1fr),
  rows: 4,
  align: left + top,

  table.header(table.cell(fill: gray, align: center)[*Aspects of the Mobile Goal Clamp*]),

  [*Control* - A well-designed mobile goal clamp allows the robot to place the goal with precision, whether it's stacking, positioning in a scoring zone, or strategically placing the goal for future access.],
  [*Grip* - The mobile goal clamp is designed to grip a mobile goal firmly so the robot can lift, drag, or carry it across the field. ],
  [*Defense* - Beyond offense, mobile goal clamps can be used defensively. By gripping a mobile goal, a robot can prevent opponents from accessing or scoring with it.],

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
    - #vex-rule[R13] Motors are limited to a combined power of 88W
      - Our other subsystems will need power, so we will preliminarily limit the mobile goal clamp's power draw to 11W.
    - #vex-rule[R23b] Pneumatic devices may be charged to a maximum of 100 psi.
    - #vex-rule[SG6] Possession is limited to two Rings and one Mobile Goal.
    - The design must be tailored to the specific dimensions and shapes of the mobile goals.
  ],
)
