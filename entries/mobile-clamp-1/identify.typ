#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mobile goal clamp",
  type: "identify",
  date: datetime(year: 2024, month: 6, day: 16),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Ajibola",
  witnessed: "Ishika",
)

This season, the mobile goal was reintroduced, a game element that was in a previous season called Tipping Point. However, the base is circular and a lot shorter than the mobile goals from Tipping Point. The goal of the mobile goal clamp is to be able to clamp onto the mobile goal and position it in a way that makes it possible to reliably score the rings. 
#figure(
    image("Identify-mogo-clamp.excalidraw.svg", width: 50%),
  caption: "A mobile goal clamp help us quickly and reliably pick up mobile goals and transport them to scoring zones."
) 
#table(
  columns: (1fr),
  rows: 4,
  align: left + top,

  table.header(table.cell(fill: gray, align: center)[*Aspect of the Mobile Goal Clamp*]),
  [*Control* -     A well-designed mobile goal clamp allows the robot to place the goal with precision, whether it's stacking, positioning in a scoring zone, or strategically placing the goal for future access.],
  [*Grip* -    The mobile goal clamp is designed to grip a mobile goal firmly so the robot can lift, drag, or carry it across the field. ],
  [*Defense* -    Beyond offense, mobile goal clamps can be used defensively. By gripping a mobile goal, a robot can prevent opponents from accessing or scoring with it.],

)
#colbreak()

#goals-constraints(
  goals: [
    - The clamp must securely hold the mobile goal without slipping or dropping it. \
    - The clamp should not take up too much space or interfere with other systems (such as arms, lifts, or scoring mechanisms). \
    - The clamp should be able to grab and release mobile goals quickly to minimize time spent on each task.
  ],
  constraints:[
    - #vex-rule[R4] The clamp must fit within the size constraints of the robot
      - Length: 16 in
      - Width: 16 in
      - Height: 6 in
    - #vex-rule[R13] The clamp must follow the 88watts limits if motorized or follow Vex Robotics’s pneumatics rules.
    - #vex-rule[SG6] Only one mobile clamp in possession at a time and another mobile clamp cannot be manipulated. 
    - The design must be tailored to the specific dimensions and shapes of the mobile goals.
  ],
)
