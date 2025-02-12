#import "/template/template.typ": *

#show: create-entry.with(
  title: "Overall Robot Plan v3",
  type: "identify",
  date: datetime(year: 2024, month: 10, day: 25),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Makhi",
  witnessed: "Rory",
)


#to-do(
  date: datetime(year: 2024, month: 10, day: 25),
  monthly-schedule: "Off",
  yearly-schedule: "Ahead",
  (
    (true, "Identify the new design goals and constraints for the overall robot.", "Everyone"),
    (true, "Plan the implementation of the new overall robot idea.", "Everyone"),
  )
)

The redirect mechanism on the old robot was too heavy and inefficient. Our new idea, the ladybrown, would allow us to score rings on the wall stakes faster, giving us a significant advantage during match play. The ladybrown will make up a significant portion of the overall robot, so we compared the strengths and weaknesses of the new overall robot plan to those of the old overall robot plan.

#pro-con(
  name: "Original Idea",
  image: image("identify/overall-old-design.excalidraw.svg"), 
  description: [ ],
  pros: [
    - *Ring Scoring* - Able to score two rings at a time.
  ], 
  cons: [
    - *Efficiency* - Very slow at intaking rings into the redirect mechanism.
    - *Speed* - The redirect mechanism was slow at scoring the rings onto the wall stake.
    - *Weight* - The redirect mechanism took up most of the robot's space. The extra weight decreased our acceleration.
  ]
)

#colbreak()

#pro-con(
  name: "New Idea",
  image: image("identify/overall-new-design.excalidraw.svg"), 
  description: [ ],
  pros: [
    - *Center of Gravity* - Due to the placement of the ladybrown's support towers, the robot will have a better center of gravity.
    - *Speed* - Since the ladybrown can collect rings directly from the intake, it eliminates the time needed for the rings to position themselves into the basket.
    - *Weight* - More simple and requires less materials to build.
  ], 
  cons: [
    - *Ring Scoring* - Can only score one ring at a time.
    - *Resource Management* - The pivot for the ladybrown will require us to cut a gear in half. This will cause permanent damage to the gear.
  ]
)

= New Design Goals & Constraints
#goals-constraints(
  goals: [
    - The robot should weigh less than 14 pounds. A lighter robot would allow us to accelerate faster.
    - The robot should have the ability to score on the alliance wall stakes. This is important for auton win points.
    - The ladybrown can score on the wall stakes more efficiently than the redirect mechanism
  ],
  constraints: [
    - #vex-rule[R4] Robots must fit within an 18" x 18" x 18" volume
    - #vex-rule[R13] Motors are limited to a combined power of 88W
    - #vex-rule[SG6] Possession is limited to two Rings and one Mobile Goal
  ],
)
