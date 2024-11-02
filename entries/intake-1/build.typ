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
#to-do(
  date: datetime(year: 2024, month: 9, day: 6),
  monthly-schedule: "On",
  yearly-schedule: "Ahead",
  (
    (true, "Build the intake according to today's delegation.", "Everyone"),
  )
)

Today we worked on the lower portion of the intake. Standoffs were added as rails. The flex wheels that grab the rings were fully installed and the intake axle was placed and motorized. Lastly, the conveyor upper axle was also installed and the chain was run across.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Eric, Anders
    - *Manufacturing*: Makhi, Rory
    - *Oversight & Quality Control*: Ajibola
    - *Initial Testing*: Makhi
    - *Programming*:  Ishika, Ajibola
    - *Sorting Parts*: Eric, Anders, Rory
  ],
  today: [
    - Assemble the first stage of the intake: Eric, Anders
    - Assemble the rails: Jin Hao, Makhi, Rory
    - Drill holes for the axles and insert them: Jin Hao, Makhi
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
    - Axles
    - Chain
    - Flex-Wheels
    - The rest of the material can be find in the tool box
  ],
  [
    === Assembly
    - Added standoffs as ring rails
      - This prevents the mobile goal from getting on top of the drivetrain.
    - Mount triangle braces from the C-channel towers.
      - Not only does this provide more support, but it is also where we planned on attaching the flex wheel intake.
    - Mounted motor on intake skeleton
    - Mounted axle on upper tower.
      - In the future, we plan to add flex wheels. This will increase surface area that the rings will receive when it is shooting in the mobile goal.
    - Mounted axle on Intake motor joint.
    - Placed chain across axles.
    - Installed front axle and flex wheels.
  ],
   figure(
    image("build/2024.09.06-2.png", width: 160pt),
    caption: "Close up of how the intake is mounted on the triangle brace."
  ),

  figure(
    image("build/2024.09.06-3.png", width: 190pt),
    caption: "The angle of the mobile goal when we clamp onto it."
  ),

  [
    === Troubleshooting
    - Ran Intake motor to test the lower intake portion.
    - Changed chain length.
    - Tested mobile goal clamp.
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
    - *Programming*:  Ishika, Ajibola
  ],
  today: [
    - Create the triangle brace for the C-channel towers: Rory, Eric, Anders
    - Create ramp for the first stage of the intake: Eric, Makhi
    - Continue working on first stage: Rory, Eric, Anders, Makhi
  ]
)



== Build Process
#grid(
  figure(
    image("build/2024.09.07-1.png", width: 170pt),
    caption: "The finished clamp."
  ),
  [
    === Materials
    - Pneumatic tubing
    - X2 12x1x1 C-channel
    - Screws
    - Nylons
    - Polycarbonate
  ],
  [
    === Assembly
    - Replaced triangle bracing to the towers from standoffs to half-cut C-channel
      - Previously, we had standoffs as triangle braces. However, they were in the way of the intake. Instead, we wanted to replace the standoffs with 24x1x1 C-channel.
    - We cut ramps for the mobile goal out of polycarbonate
      - Drilled holes on the top corners to the ramp. Tied zip ties to these corners to tension them up.
      - We cut a gap in the middle for space for the hooks 
    - Created a stopper for the intake
      - We want the intake to be pivoted above a specific height. Too low or too high and it will not contract the rings.
  ],
  figure(
    image("build/2024.09.07-2.png", width: 190pt),
    caption: "First stage of intake."
  ),
  figure(
    image("build/2024.09.07-3.png", width: 130pt),
    caption: "The 12x1x1 C-channel we used as triangle brace."
  ),
  figure(
    image("build/2024.09.07-4.png", width: 140pt),
    caption: "The pistons of our clamp. We experienced leaking."
  ),
  [
    === Troubleshooting
    - Problem: The clamp pneumatics were leaking, so we had to find the leak and fix it by cutting the tubing to be straighter.
    - Solution: We saw that the air was leaking from the tank. It was leaking around 20 PSI every 3 seconds. We replaced the tank. That seemed to have fixed the problem.
  ],
)

#colbreak()

= 2024/09/13
#to-do(
  date: datetime(year: 2024, month: 9, day:13),
  monthly-schedule: "On",
  yearly-schedule: "Ahead",
  (
    (true, "Build the intake according to today's delegation.", "Everyone"),
  )
)

At this practice we finished the bottom of our intake to prepare for scoring at the next scrimmage. There were a few issues, but we found the cause of the problems and remedied the issues.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Anders, Eric, and Rory
    - *Manufacturing*: Rory, Eric, and Makhi
    - *Oversight & Quality Control*: Jin
    - *Initial Testing*:Eric, Makhi, Rory, and Anders
    - *Programming*: Ajibola and Ishika
  ],
  today: [
    - Create gear system for the intake: Jin Hao, Makhi
    - Assemble flaps for the intake: Eric, Rory
  ]
)



== Build Process
#grid(
  figure(
      image("build/2024.09.13-1.jpg", width: 170pt),
      caption: "The flap for the intake."
  ),
  [
    === Materials
    - x1 17x3x1 C-channel
    - Flex wheels
    - High strength axle
    - The rest of the materials can be found in the tool box
  ],
  [
    === Assembly
    - (NOTE: Most assembly was completed during the previous meeting or during the week)
    - Attached the connecting 17x3x1 C-channel to the first stage intake's two parallel C-channels with standoffs, screws, and nylons.
      - Attached a hinge at the bottom of the 17x3x1 C-channel
    - We cut a flap for the intake
      - This is to prevent rings from reaching too far up when intake. The flap will push the rings down. 
    - Place flex-wheels on the high-strength axle and attach to the intake.
  ],
  figure(
    image("build/2024.09.13-2.png", width: 200pt,),
    caption: "Bottom roller for the hooks."
  ),
)

#grid(
  figure(
    image("build/2024.09.13-3.png", width: 130pt),
    caption: "Side view of the intake."
  ),
  figure(
    image("build/2024.09.13-4.png", width: 150pt),
    caption: "Top rollers for the hooks."
  ),
  [
    === Troubleshooting
    - Problem: The drivetrain was getting stuck during the drive test.
    - We shook the bot because at first we thought some screws or nylons were stuck in between the gears. Next, we tested each wheel at a time to figure out the cause of the problem.
    - Solution: The nuts on the wheels and gears in the drivetrain were getting too tight. We will loosen them before and after each match in the future.
  ],
  figure(
      image("build/2024.09.13-5.png", width: 140pt),
      caption: "Drivetrain was stuck during testing"
  )
)

= 2024/09/14
#to-do(
  date: datetime(year: 2024, month: 9, day:14),
  monthly-schedule: "On",
  yearly-schedule: "Ahead",
  (
    (true, "Build the intake according to today's delegation.", "Everyone"),
  )
)

On the 14th of September we added on to our intake and mobile-goal design and followed this up with an in-team scrimmage. Since some robots weren't fully functional, so, to increase driver practice, the coach came up with a new game that only required controlled driving.

*The Rules Summary*: 
There are two teams, each consisting of two robots.
The objectives of the game are to move as many rings as possible onto your team's side of the field and to move mobile goals to your side, rings were one point, mobile-goals were five points.
No pinning any robots, no parts or pieces outside the field, be respectful.

*The Game*: 
In the first round our team one by creating a strategy to sweep the majority of rings on to our side while grabbing mobile-goals. (Makhi Drove)
The second and third round followed suit. (Driven by Makhi and Eric respectively)

#colbreak()

== Delegation
#delegation(
  recurring: [
    - *Inventory*:  Eric, Anders, Rory
    - *Manufacturing*:  Anders, Rory, Makhi
    - *Test Drive*: Anders, Eric, Makhi
    - *Oversight & Quality Control*: Ishika
    - *Initial Testing*:Makhi
    - *Programming*: Ishika
  ],
  today: [
    - Attach the front lexan plate: Everyone 
  ]
)



== Build Process
#grid(
  [
    === Materials
    - Polycarbonate
    - The rest of the materials can be found in the toolbox
  ],
 
  [
    === Assembly
    - We used polycarbonate, screws, spacers, and nylons to avoid the jamming of ring pieces in the core of our robot and to realign them to the proper location to be scored.
  ],
)
#grid(
  figure(
    image("build/2024.09.14-1.png", width: 200pt,),
    caption: "Lexan ring guider"
  ),

  [
    === Troubleshooting
    - Intake testing after polycarbonate improvements were mounted
    - Non-real game (driver practice and robot testing)
  ],
)

#colbreak()
= 2024/09/20
#to-do(
  date: datetime(year: 2024, month: 9, day:20),
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
    - *Manufacturing*:  Makhi, Anders, Eric
    - *Oversight & Quality Control*: Jin
    - *Initial Testing*:Makhi
    - *Programming*:Ajibola, Ishika
  ],
  today: [
    - Fixing hook alignment: Jin, Makhi, Eric, Ajibola
    - Add rubber bands to intake: Anders, Rory, Ishika
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
    -Polycarbonate
    - Rubber Bands
    - Zip Ties
    - The rest of the materials can be found in the tool box
  ],
 
  [
    === Assembly
    - Changed lower conveyor axle spacing
      - This is to center the hooks
    - Changed upper conveyor axle spacing
      - This is to center the hooks
    - Add rubber bands to ring guiding polycarbonate
      - This will push the rings outward when we intake into the mobile goals
      - The umbrella of the mobile goal would push the rings inwards into the bot, causing it to get stuck in the space between the robot and the mobile goal.
  ],
  figure(
    image("build/2024.09.20-2.png", width: 200pt,),
    caption: "The lexan rings plates"
  ),
  [
    === Troubleshooting
    - Intake testing after polycarbonate improvements were mounted
    - Non-real game (driver practice and robot testing)
  ],
)