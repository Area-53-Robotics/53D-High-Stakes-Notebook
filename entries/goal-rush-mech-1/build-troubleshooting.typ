#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mobile Goal Rush Mechanism - Troubleshooting v1",
  type: "build",
  date: datetime(year: 2025, month: 2, day: 14),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Makhi",
  witnessed: "Jin",
)
#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2024/02/14

We planned to finish troubleshooting the mobile goal rush mechanism today to give the programmers as much time as possible for auton testing. We started by looking at problems caused by friction and bending.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Eric, Rory, 
    - *Manufacturing*: Eric, Rory
    - *Oversight & Quality Control*: Eric, Rory
    - *Initial Testing*: Everyone
  ],
  today: [
    - Replace the piston attachment: Eric, Rory
    - Troubleshoot any problems with the mobile goal rush mechanism: Eric, Rory

  ]
)

== Build Process
#grid(
  [
    === Materials
    - 1x 90-degree Gussets
    - Pneumatic Tubing
    - 1x Single Action Solenoids
    - 1x Switch Valve
    - Zipties
    - Pneumatic Junctions
    - 1x Double-Acting Piston
    - The rest of the materials can be found in the toolbox.


  ],
  figure(
    image("build/goal-2.14.25-1.png", width: 100pt),
    caption: "The mobile goal rush mechanism in its initial position"
  ),
)
#grid(
  stack(
    spacing: 15pt,
    [
      === Assembly
      - #text(red)[Problem:] The ring rush mechanism was experiencing friction.
        - #text(green)[Solution:]: Loosened the screw joint slightly. This was possible since there was no nylon at the end of the screw joint. 
      - #text(red)[Problem:]: Air was leaking out of the pneumatics at about 1.5 PSI per second.
        - #text(green)[Solution:] Checked every junction that was connected to the mobile goal rush mechanism.
        - Replaced the double-acting solenoid.
      - #text(red)[Problem:]: The mobile goal rush mechanism had a hard time letting go of the mobile goal.
        - #text(green)[Solution:] Shortened the stand-offs at the end of the mobile goal rush mechanism.

    ],
    
    [
      === Troubleshooting
      - Tested how consistent the mobile goal rush mechanism was by driving into a mobile goal.
      - Tested the mobile goal rush mechanism’s friction by repeatedly activating the mechanism.
      - We found that some air was leaking from the robot.


    ],
  ),
  figure(
    image("build/goal-2.14.25-2.png", width: 100pt),
    caption: "The mobile goal rush mechanism in its deployed position"
  ),
)