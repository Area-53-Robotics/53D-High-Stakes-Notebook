#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mobile Goal Clamp v1",
  type: "brainstorm",
  date: datetime(year: 2024, month: 8, day: 15),
  attendance: ("Ajibola", "Ishika"),
  designed: "Ajibola",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2024, month: 8, day: 15),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Brainstorm mobile goal clamp ideas.", "Everyone"),
    (true, "Select the best mobile goal clamp idea using a decision matrix.", "Everyone"),
    (true, "Plan the implementation of the mobile goal clamp idea.", "Everyone"),
  )
)

Although the purpose of a mobile goal clamp is straightforward, there are various ways to implement it. We dedicated time today to brainstorming some of the possible clamp implementations we could use.

#pro-con(
  name: "Idea 1",
  image: image("brainstorm/clamp-idea-1.excalidraw.svg"),
  description: [
    This is a first-class lever (see our #entry-reference(title: "Mobile Goal Clamp v1", type: "understand")) The pistons for the clamp are mounted perpendicular to the tower's cross brace. When the pistons extend, they will apply force on the piston side of the fulcrum and push the clamp up. When the pistons retract, the clamp will apply force on the mobile goal end of the fulcrum.
  ],
  pros: [
    - *Space Efficiency* - This idea fits well with the shape of our robot, so it will not take up much space.
    - *Mechanical Advantage* - Easy to adjust torque by moving the fulcrum back or forth.
  ],
  cons: [
    - *Torque* - Since the pistons need to retract to push onto the mobile goal, this idea may not be able to generate enough torque to secure the mobile goal.
  ],
  notes: [
    - The pistons could get in the way of the hooks because they are on the towers.
  ],
)

#colbreak()

#pro-con(
  name: "Idea 2",
  image: image("brainstorm/clamp-idea-2.excalidraw.svg"),
  description: [
    The pistons are parallel to the drive halves. When these pistons extend out, the applied force is pushed into the bottom of the piston end of the clamp. This results in a force pushing downwards on the mobile clamp side.
  ],
  pros: [
    - *Compact* - Since the pistons are below the robot, it is more effective at using the space.
    - *Angled Force* - Since the piston is angled upwards, it will push the mobile goal upwards
    - *Torque* - Since the extension of the piston contributes to the force, there is more force at the load. 
  ],
  cons: [
    - *Positioning* - The pistons would be placed below the drivetrain, which could prevent us from placing other electronics in that area like the brain and tracking wheels.
  ],
  notes: [
    - According to our observations, this is the most popular clamp being used this season.
  ]
)

#pro-con(
  name: "Pure 3",
  image: image("brainstorm/clamp-idea-3.excalidraw.svg"),
  description: [
    There is a 5.5-watt motor on the side of the clamp. Similar to a traditional VRC catapult, there is a slip gear. When the gear reaches a slipped section, the clamp will force down to the mobile goal. Then the mobile goal clamp will travel up as the gears spin before it slips again.
  ],
  pros: [
    - *Clamp Speed* - Since it is motorized, when the gear reaches a slipped section, the clamp will quickly clamp down.
  ],
  cons: [
    - *Wattage Usage* - Since we have limited wattage usage, using a motor here will limit our options for using motors elsewhere on the robot.
    - *Slow Release Speed* - Since it is motorized, the clamp release time will be slower compared to a pneumatic clamp.
    - *High Space Usage* - A motor will take up a lot more space compared to a pneumatic mobile goal clamp
  ],
  notes: [
    - We would probably need to rubberband the clamp for more torque
  ]
)