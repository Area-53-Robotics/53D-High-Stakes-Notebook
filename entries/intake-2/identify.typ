#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v2",
  type: "identify",
  date: datetime(year: 2024, month: 10, day: 26),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Anders",
  witnessed: "Eric",
)

#to-do(
  date: datetime(year: 2024, month: 10, day: 26),
  monthly-schedule: "Off",
  yearly-schedule: "Ahead",
  (
    (true, "Identify the design goals and constraints for the intake.", "Everyone"),
  )
)

#pro-con(
  name: "Original Idea",
  image: image("identify/intake-old-design.excalidraw.svg"),
  description: [ ],
  pros: [
    - *Structural Stability* - The old intake was braced heavily from the clamp side.
    - *Intaking Ability* - Due to the intake's width, the second intake stage had an easy time intaking rings.
  ],
  cons: [
    - *Weight* - The extra width of our old intake required more materials to build, increasing the robot's total weight.
    - *Space* - The width of our intake prevented us from effectively making use of the available robot space, taking up space from other subsystems.
    - *Electronics* - Since the intake took up a lot of the robot space, we had to place our brain and battery in exposed areas.
  ]
)

#colbreak()

#pro-con(
  name: "New Idea",
  image: image("identify/intake-new-design.excalidraw.svg"),
  description: [ ],
  pros: [
    - *Compactness* - This version will be skinnier than the previous intake design.
    - *Electronics* -  We plan to place our brain inside our intake. This will be a secure spot for the brain.
    - *Weight* -  This version uses less materials than the previous version.
    - *Transmission* - Since the new version of the intake is lighter than the previous version, there is less strain on our gears and motors.
  ],
  cons: [
    - *Structural Stability* - There are a lot of vulnerable spots on our intake that will experience a lot of sheering.
  ]
)

= New Design Goals & Constraints
#goals-constraints(
  goals: [
    - The intake should be fast enough to score rings onto a mobile goal effectively.
      - We want to minimize the time it takes for us to collect a full mobile goal.
    - The first and second stages of the intake should smoothly move rings between each other.
    - The intake should be tall enough to score on the alliance wall stakes.
      - This would help us during autonomous and programming skills.
  ],
  constraints: [
    - #vex-rule[R4] Robots must fit within an 18" x 18" x 18" volume
      - The intake will likely stick out on one side of the robot, so we have to ensure it stays within the size limit.
    - #vex-rule[SG5] Each Robot gets one Ring as a preload.
      - We cannot load multiple rings into our intake before the start of the match.
  ],
)
