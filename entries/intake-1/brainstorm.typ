#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v1",
  type: "brainstorm",
  date: datetime(year: 2024, month: 8, day: 31),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Eric",
  witnessed: "Jin",
)

#to-do(
  date: datetime(year: 2024, month: 8, day: 31),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Brainstorm intake ideas.", "Everyone"),
    (false, "Select the best intake idea using a decision matrix.", "Everyone"),
    (false, "Plan the implementation of the intake idea.", "Everyone"),
  )
)

Earlier in the season, we researched different intakes that other teams were using, as well as intakes that were popular in the Tipping Point season. We are confident in the ideas that we came up with and we used today's practice to crystallize those ideas before proceeding with the design process.

#pro-con(
  name: "Hook",
  image: image("brainstorm/Brainstorm-intake-idea 1.excalidraw.svg"),
  description: [
    The hook intake typically consists of a series of hooked or curved arms that are positioned to catch rings as the robot approaches them. As the rings are carried up the ramp, they gain potential energy due to the increase in height. The momentum generated from the robot's movement contributes to this process, effectively storing energy as the ring climbs. When the ring reaches the top of the ramp and approaches the mobile goal, the momentum it has built up can be directed toward pushing the ring into the goal.
  ],
  pros: [
    - *Power* - By leveraging the robot's momentum, the intake can carry rings smoothly up ramps and fire them straight into the mobile goal.
    - *Versatility* -The hook design allows for quick and effective engagement with game elements, making it easier to capture rings from various angles.
  ],
  cons: [
    - *High Jamming Frequency* - Since only one ring can be taken at a time, multiple rings could jam in our intake before the hooks are ready to collect more rings.
  ],
  notes: [
    - Extensive testing is necessary to optimize the design of a hook intake.
  ],
)

#pro-con(
  name: "Hood",
  image: image("brainstorm/Brainstorm-intake-idea-2.excalidraw.svg"),
  description: [
  The hood intake features a series of flex wheels that are strategically positioned to pull rings upward as the robot moves forward. These wheels are designed to grip the rings securely. At the top of the intake system, a hood is pivoted. This hood is designed to guide the rings as they reach the top of the intake. When the robot lifts a ring, the hood tilts down, effectively pushing the ring forward and directing it to the mobile goal.

  ],
  pros: [
    - *Speed* - The smooth transition between the initial flex wheels to the ramp increases the speed at which the intake can pick up rings.
  ],
  cons: [
    - *Complexity* - The mechanism's design can be more complex than simpler intake systems.
    - *Weight* - The hood intake may add extra weight to the robot compared to other intakes, which could affect its overall performance, speed, and ability to elevate in the endgame.
  ],
  notes: [
    - We would need to experiment with a range of angles to determine which allows for the best scoring.
  ],
)

#pro-con(
  name: "Hybrid",
  image: image("brainstorm/Brainstorm-intake-idea-3.excalidraw.svg"),
  description: [
    This hybrid design leverages the strengths of both systems to improve efficiency and performance. The hook intake captures rings using its hooked arms, securing them as the robot approaches. The hooks can engage the rings from various angles, providing flexibility in collection. At the top of the intake, the hood pivots down to push the rings into the mobile goal.


  ],
  pros: [
    - *Efficiency* - The integration of both systems can streamline the collection and scoring process, reducing the time taken to capture and place rings.
  ],
  cons: [
    - *Complexity* - Combining two mechanisms increases the complexity of the design.
    - *Weight* - The combined design may require more space on the robot, which could limit other functionalities or components.
  ],
  notes: [
    - Will probably be bulkier.
  ],
)