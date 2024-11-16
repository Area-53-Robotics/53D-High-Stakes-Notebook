#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v1",
  type: "build",
  date: datetime(year: 2024, month: 9, day: 6),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Jin",
  witnessed: "Makhi",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2024/09/06
Today we worked on the lower portion of the intake (the first stage intake). The flex wheels that grab the rings were fully installed and the intake axle was placed and motorized. Lastly, the conveyor upper axle was installed.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Eric, Anders
    - *Manufacturing*: Makhi, Rory
    - *Oversight & Quality Control*: Ajibola
    - *Initial Testing*: Makhi
    - *Programming*: Ishika, Ajibola
    - *Sorting Parts*: Eric, Anders, Rory
  ],
  today: [
    - Assemble the first stage of the intake: Eric, Anders
    - Assemble the rails: Jin, Makhi, Rory
    - Drill holes for the axles and insert them: Jin, Makhi
  ]
)

== Build Process
#grid(
  figure(
    image("build/2024.09.06-1.png", width: 170pt),
    caption: "Standoff rails to prevent rings from interfering with the drivetrain."
  ),
  [
    === Materials
    - 12x1x1 C-channel
    - 1x Motor
    - Axles
    - Chain
    - Flex wheels
    - The remaining materials can be found in the toolbox
  ],
  [
    === Assembly
    - Added standoffs as ring rails to the drivetrain.
      - This also prevents the mobile goal from getting on top of the drivetrain.
    - Mounted triangle braces from the C-channel towers.
      - This provides overall support to the towers, and is where we planned on attaching the flex wheel intake.
    - Mounted the motor onto the intake skeleton.
    - Mounted an axle onto the upper tower.
      - In the future, we plan to add flex wheels. This will increase the intake surface area that interacts with the rings when we are scoring them onto the mobile goals.
    - Mounted an axle onto the intake motor joint.
    - Placed chain across the axles in the first stage intake.
    - Installed a front axle and flex wheels.
  ],
  grid.cell(inset: (bottom: 10pt), figure(
    image("build/2024.09.06-2.png", width: 160pt),
    caption: "Close up of how the intake is mounted on the triangle brace."
  )),
  figure(
    image("build/2024.09.06-3.png", width: 190pt),
    caption: "The angle of the mobile goal when we clamp onto it."
  ),
  [
    === Troubleshooting
    - Activated the intake motor to test the lower intake portion.
    - Changed the chain length.
    - Tested the mobile goal clamp.
    - The angle of the mobile goal is crucial for maximizing scoring efficiency. An optimized angle can significantly reduce the force required to score rings.
  ]
)

#colbreak()

= 2024/09/07
#to-do(
  date: datetime(year: 2024, month: 9, day: 7),
  monthly-schedule: "On",
  yearly-schedule: "Ahead",
  (
    (true, "Build the intake according to today's delegation.", "Everyone"),
  )
)

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Rory, Eric, Anders, Makhi
    - *Manufacturing*: Rory, Eric, Makhi, Anders
    - *Oversight & Quality Control*: Makhi
    - *Initial Testing*: Rory, Eric, Anders, Makhi
    - *Programming*: Ishika, Ajibola
  ],
  today: [
    - Create the triangle brace for the C-channel towers: Rory, Eric, Anders
    - Create a ramp for the first stage intake: Eric, Makhi
    - Continue working on the first stage intake: Rory, Eric, Anders, Makhi
  ]
)

== Build Process
#grid(
  figure(
    image("build/2024.09.07-1.png", width: 140pt),
    caption: "The 12x1x1 C-channel we used as a triangle brace."
  ),
  [
    === Materials
    - Pneumatic tubing
    - x2 12x1x1 C-channel
    - Screws
    - Nylons
    - Polycarbonate
  ],
  [
    === Assembly
    - Replaced triangle bracing to the towers from standoffs to half-cut C-channel
      - Previously, we had standoffs as triangle braces. However, they were in the way of the intake. Instead, we wanted to replace the standoffs with 24x1x1 C-channel.
    - We cut ramps for the mobile goal out of polycarbonate
      - Drilled holes on the top corners to the ramp. Tied zipties to these corners to tension them up.
      - We cut a gap in the middle for space for the hooks 
    - Created a stopper for the intake
      - We want the intake to be pivoted above a specific height. Too low or too high and it will not contract the rings.
  ],
  figure(
    image("build/2024.09.07-2.png", width: 200pt),
    caption: "First stage of the intake."
  ),
)

#grid(
  grid.cell(colspan: 2)[
    === Troubleshooting
    - #text(red)[Problem:] The clamp pneumatic system was leaking. After investigating, we found out that around 20 PSI was leaking every 3 seconds from the air tank.
    - #text(green)[Solution:] We replaced the air tank with a newer one.
  ],
  grid.cell(inset: (top: 10pt, bottom: 10pt), figure(
    image("build/2024.09.07-3.png", width: 170pt),
    caption: "The pistons of our clamp before we solved the leak"
  )),
  grid.cell(inset: (top: 10pt, bottom: 10pt), figure(
    image("build/2024.09.07-4.png", width: 170pt),
    caption: "The completed clamp after we solved the leak"
  )),
)

#colbreak()

= 2024/09/13
#to-do(
  date: datetime(year: 2024, month: 9, day: 13),
  monthly-schedule: "On",
  yearly-schedule: "Ahead",
  (
    (true, "Build the intake according to today's delegation.", "Everyone"),
  )
)

Today we finished the first stage intake to prepare our robot for scoring rings at the next scrimmage. There were a few issues, but we found the cause of the problems and remedied them.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Anders, Eric, Rory
    - *Manufacturing*: Rory, Eric, Makhi
    - *Oversight & Quality Control*: Jin
    - *Initial Testing*: Eric, Makhi, Rory, Anders
    - *Programming*: Ajibola, Ishika
  ],
  today: [
    - Create the gear system for the intake: Jin, Makhi
    - Assemble flaps for the intake: Eric, Rory
  ]
)

== Build Process
#grid(
  grid.cell(colspan: 2)[
    === Materials
    - x1 17x3x1 C-channel
    - Flex wheels
    - High strength axle
    - The remaining materials can be found in the toolbox
  ],
  grid.cell(inset: (top: 10pt, bottom: 10pt), figure(
    image("build/2024.09.13-1.jpg", width: 140pt),
    caption: "The flap for the intake"
  )),
  grid.cell(inset: (top: 10pt, bottom: 10pt), figure(
    image("build/2024.09.13-3.png", width: 160pt),
    caption: "Side view of the intake"
  )),
  grid.cell(colspan: 2)[
    === Assembly
    - Attached the connecting 17x3x1 C-channel to the first stage intake's two parallel C-channels with standoffs, screws, and nylons.
      - Attached a hinge at the bottom of the 17x3x1 C-channel
    - Cut a flap for the intake
      - This is to prevent rings from reaching too far up when intook. The flap will push the rings down. 
    - Placed flex wheels onto the high strength axle and attached it to the intake.
  ],
  grid.cell(inset: (top: 10pt, bottom: 10pt), figure(
    image("build/2024.09.13-4.png", width: 200pt),
    caption: "Top rollers for the hooks."
  )),
  grid.cell(inset: (top: 10pt, bottom: 10pt), figure(
    image("build/2024.09.13-2.png", width: 200pt),
    caption: "Bottom roller for the hooks."
  )),
)

#grid(
  [
    === Troubleshooting
    - #text(red)[Problem:] The drivetrain was getting stuck during the drive test.
    - First, we thought some screws or nylons were stuck in between the drivetrain gears, so we shook the robot.
    - Next, we tested each wheel at a time to figure out the cause of the problem.
    - #text(green)[Solution:] The nuts on the wheels and gears in the drivetrain were getting too tight. We will loosen them before and after each match in the future.
  ],
  figure(
    image("build/2024.09.13-5.png", width: 140pt),
    caption: "Drivetrain was stuck during testing"
  )
)

#colbreak()

= 2024/09/14
#to-do(
  date: datetime(year: 2024, month: 9, day: 14),
  monthly-schedule: "On",
  yearly-schedule: "Ahead",
  (
    (true, "Build the intake according to today's delegation.", "Everyone"),
    (true, "Participate in the in-house scrimmage.", "Everyone"),
  )
)

Today we improved our intake and mobile goal clamp designs. Subsequently, we participated in a small-scale scrimmage. Since some robots were not fully functional, our coach came up with a new game challenge that only required controlled driving.

== Scrimmage
*The Rules Summary*: 
There were two teams, each consisting of two robots.
The objectives were to move as many rings as possible onto your team's side of the field and to move mobile goals to your side, rings were one point, mobile-goals were five points.
No pinning other robots and no parts or pieces outside the field.

*The Game*: 
In the first round our team won by creating a strategy to sweep the majority of rings on to our side while grabbing mobile-goals. The second and third round followed suit.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Eric, Anders, Rory
    - *Manufacturing*: Anders, Rory, Makhi
    - *Oversight & Quality Control*: Ishika
    - *Initial Testing*: Makhi
    - *Programming*: Ishika
  ],
  today: [
    - Attach the front lexan plate: Everyone 
  ]
)

== Build Process
#grid(
  figure(
    image("build/2024.09.14-1.png", width: 135pt),
    caption: "Lexan ring guider"
  ),
  [
    === Materials
    - Polycarbonate
    - The remaining materials can be found in the toolbox

    === Assembly
    - We used polycarbonate, screws, spacers, and nylons to avoid the jamming of rings in the core of our robot and properly orient them.

    // === Troubleshooting
    // - Intake testing after polycarbonate improvements were mounted
  ],
)

#colbreak()

= 2024/09/20
#to-do(
  date: datetime(year: 2024, month: 9, day: 20),
  monthly-schedule: "On",
  yearly-schedule: "Ahead",
  (
    (true, "Build the intake according to today's delegation.", "Everyone"),
  )
)

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Anders, Eric
    - *Manufacturing*: Makhi, Anders, Eric
    - *Oversight & Quality Control*: Jin
    - *Initial Testing*: Makhi
    - *Programming*: Ajibola, Ishika
  ],
  today: [
    - Fixing hook alignment: Jin, Makhi, Eric, Ajibola
    - Add rubber bands to the intake: Anders, Rory, Ishika
  ]
)

== Build Process
#grid(
  figure(
    image("build/2024.09.20-1.png", width: 200pt),
    caption: "Front of the intake"
  ),
  [
    === Materials
    - Polycarbonate
    - Rubber bands
    - Zipties
    - The remaining materials can be found in the toolbox
  ],
  [
    === Assembly
    - Changed the lower and upper conveyor axle spacing
      - This is to center the hooks
    - Added rubber bands to the ring guiding polycarbonate
      - This will push the rings outward when we intake into the mobile goals
      - The umbrella of the mobile goal would push the rings inwards into the bot, causing it to get stuck in the space between the robot and the mobile goal
  ],
  figure(
    image("build/2024.09.20-2.png", width: 200pt),
    caption: "The lexan rings' plates"
  ),
  grid.cell(colspan: 2)[
    === Troubleshooting
    - Intake testing after polycarbonate improvements were mounted
  ],
)