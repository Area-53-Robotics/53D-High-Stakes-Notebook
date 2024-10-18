#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v1",
  type: "identify",
  date: datetime(year: 2024, month: 8, day: 30),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Ajibola",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2024, month: 8, day: 30),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Identify the design goals and constraints for the intake.", "Everyone"),
    (true, "Determine the mathematical and scientific concepts involved in the intake design.", "Everyone"),
  )
)

Today we had an online meeting, during which we discussed the implementation of an intake and identified the neeeds, goals, and constraints for this mechanism.

#figure(
  image("identify-intake.excalidraw.svg", width: 50%),
  caption: "The intake allows us to collect game elements from the field. It can grab, hold, and pull objects into the robot, making it easier to transport them for scoring. The intake enables us to quickly secure multiple game elements while maintaining control during movement."
)

#table(
  columns: (1fr),
  rows: 4,
  align: left + top,

  table.header(table.cell(fill: gray, align: center)[*Aspects of the Intake*]),

  [*Control* - A well-designed intake enables a robot to control a game element and manipulate it into the right place. This includes grabbing the game element, releasing the game element, and moving the game element to desired locations within the robot to fulfill functions. ],
  [*Speed* - A well-designed intake must be able to operate quickly to save as much time as possible for other tasks such as scoring rings on the neutral wall stakes. Speed is also required to be competitive as rings are limited and while not necessary, some strategies include competing for the enemy team’s rings.],
  [*Grip* - Grip is required as it gives more control over the game elements while in the robot, and easens the process of pulling them in and pushing them out. Additionally, any redirection of the game elements also requires grip.],
)

#goals-constraints(
  goals: [
    - The intake must easily and strongly grip the game rings.
    - The intake should be able to quickly grab and move game rings to maximize time for use on other tasks.
    - The intake must properly interact with the mobile goal clamp and the held mobile goals for proper scoring.
    - The intake should not interact with any other subsystems unless necessary to allow more space.
  ],
  constraints: [
    - #vex-rule[R4] Robots must fit within an 18” x 18” x 18” volume
    - #vex-rule[R13] Motors are limited to a combined power of 88W
      - The intake should only require one 11-watt motor to function properly, this is necessary to allow new motorized subsystems in the future.
    - #vex-rule[SG6] Possession is limited to two Rings and one Mobile Goal.
    - The intake must properly fit the rings to interact well and leave space for other subsystems.
  ],
)
