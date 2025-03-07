#import "/template/template.typ": *

#show: create-entry.with(
  title: "Overall Robot - Troubleshooting v3",
  type: "build",
  date: datetime(year: 2025, month: 2, day: 13),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Makhi",
  witnessed: "Jin",
)
#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2024/02/13

The main goal of today’s meeting was to get everything ready for the next few meetings. Since the state championship is rapidly approaching, we want to finish troubleshooting the robot. This includes issues caused by collisions, jams, and leaks.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Eric
    - *Manufacturing*: Eric
    - *Oversight & Quality Control*: Eric
    - *Initial Testing*: Eric
  ],
  today: [
    - Troubleshoot the intake: Eric 
    - Troubleshoot the ladybrown: Eric
    - Troubleshoot the ring rush mechanism: Eric
    - Troubleshoot the pneumatics: Eric
  ]
)

== Build Process
#grid(
  [
    === Materials
    - C-channel
    - Angles
    - 1x 90-degree Gussets
    - Pneumatic Tubing
    - 1x Single Action Solenoids
    - 1x Switch Valve
    - Pneumatic Junctions
    - Zipties
    - The rest of the materials can be found in the toolbox.
  ],
  figure(
    image("build-troubleshoot/2.13.25-1.png", width: 130pt),
    caption: "Fixed ladybrown brace"
  ),
)
#colbreak()
#grid(
  [
      === Assembly
      - #text(red)[Problem:] There was a severe bend in the upper ladybrown bracing.
        - #text(green)[Solution:] Replaced the C-channel and checked its length properly before mounting.
      - #text(red)[Problem:] There was a point of collision between the ladybrown and the intake.
        - #text(green)[Solution:] Fixed intake spacing errors to create even spacing.
          - Clamped the intake to undo the C-channel bending.
          - Fastened the intake properly.
          - Removed excess axle from the intake.
      - #text(red)[Problem:] The goal rush was colliding with the intake.
        - #text(green)[Solution:] Checked goal rush mechanism spacing.
          - Deconstructed the front beam due to spacing issues.
          - Clamped all parts of the goal rush to undo bending.
          - Implemented proper spacing for the top bar.
      - #text(red)[Problem:] Leaks in the pneumatic system were causing pressure loss.
        - #text(green)[Solution:] Created a system to check if leaks are before a point and vent air:
          - Start at the tank and check every junction and solenoid along the pneumatic system.
          - Isolate the leak.
          - Find what was causing the issue and replace it.

    ],
  stack(
    spacing: 10pt,

    figure(
    image("build-troubleshoot/2.13.25-2.png", width: 130pt),
    caption: "  Area of the pneumatic leak"
  ),
   [
      === Troubleshooting
      - Shook the ladybrown to test its stability and functionality before, during, and after repairing the upper ladybrown brace.
      - Moved the ladybrown up and down before, during, and after fixing the intake spacing.
      - Moved the first stage intake and goal rush mechanism up and down to see if they collide before, during, and after fixing the goal rush spacing.
      - Pumped up the pneumatic tank before, between, and after fixing sections of tubing.

    ],
  ),
 
)

= 2024/02/21

The purpose of today’s meeting was to troubleshoot any pneumatic leaks and build damages on our robot. We hope to quickly finish the troubleshooting process to maximize the time we have for auton testing.



== Delegation
#delegation(
  recurring: [
    - *Inventory*: Eric, Rory, Jin
    - *Manufacturing*: Eric, Rory
    - *Oversight & Quality Control*: Eric, Jin
    - *Initial Testing*: Everyone
  ],
  today: [
    - Change the solenoid: Eric
    - Change mobile goal rush mechanism spacing: Jin 
    - Replace mobile goal rush mechanism shaft with unbent metal: Jin
  ]
)

== Build Process
#grid(
  stack(
    spacing: 10pt, 
  [
    === Materials
    - Single-Action Solenoids
    - Switch Valve
    - Zipties
    - Pneumatic Junctions
    - The rest of the materials can be found in the toolbox.
  ],
  [
      === Assembly
      - #text(red)[Problem:] The spacing on the traction wheels was incorrect, causing the traction wheel to disengage with the gears.
        - #text(green)[Solution:] We added a 1/4-inch spacer to the traction wheels.
      - #text(red)[Problem:] The washers on the gears’ axles were rubbing against the traction wheels. This caused friction in the drivetrain and produced a weird grinding noise.
        - #text(green)[Solution:] Removed the washer from the drivetrain’s gears.
      - #text(red)[Problem:] The double-acting solenoid was leaking.
        - #text(green)[Solution:] Replaced the double-acting solenoid.
      - #text(red)[Problem:] The ring rush mechanism was not working.
        - #text(green)[Solution:] We replaced the wires of the ring rush mechanism’s solenoid.
    ],
     [
      === Troubleshooting
      - We spun the drivetrain wheels to test the free spin. We saw that the friction from the drivetrain significantly improved after our fixes.
      - We used the pneumatic pump to measure the amount of air that was leaking from the robot.
        - There was a PSI loss greater than 0.5 PSI per second, confirming that there was a leak.
    ],
  ),
  stack(
    spacing: 15pt,
    figure(
    image("build-troubleshoot/2.21.25-1.png", width: 120pt),
    caption: "The broken double-acting solenoid. We replaced it because it was leaking air."
  ),
    
    figure(
    image("build-troubleshoot/2.21.25-2.png", width: 120pt),
    caption: "Troubleshooting the drivetrain by fixing the spacing."
  ),
  ),
 
)


= 2024/02/22

While testing auton, our mobile goal rush mechanism arm snapped. We had to reinforce the arm, losing some valuable auton time. Regardless, we still made good progress on the auton.
#colbreak() 
== Delegation
#delegation(
  recurring: [
    - *Inventory*: Eric, Rory, 
    - *Manufacturing*: Eric
    - *Oversight & Quality Control*: Jin, Makhi
    - *Initial Testing*: Everyone
  ],
  today: [
    - Change mobile goal rush mechanism spacing: Eric
    - Replace mobile goal rush mechanism shaft with unbent metal: Eric


  ]
)

== Build Process
#grid(
  [
    === Materials
    - 2x 18x1x1 C-channel
    - 2x 4x1x1 C-channel
    - Custom Gusset
    - Mallet 
  ],
  figure(
    image("build-troubleshoot/2.22.25-1.png", width: 100pt),
    caption: "We used a mallet to fix the bending from the robot."
  ),
)
#grid(

    [
      === Assembly
      - #text(red)[Problem:] The ring rush mechanism was experiencing friction.
        - #text(green)[Solution:]: Loosened the screw joint slightly. This was possible since there was no nylon at the end of the screw joint. 
      - #text(red)[Problem:] Air was leaking out of the pneumatics at about 1.5 PSI per second.
        - #text(green)[Solution:] Checked every junction that was connected to the mobile goal rush mechanism.
        - Replaced the double-acting solenoid.
      - #text(red)[Problem:] The mobile goal rush mechanism had a hard time letting go of the mobile goal.
        - #text(green)[Solution:] Shortened the stand-offs at the end of the mobile goal rush mechanism.

    ],
  stack(
    spacing: 10pt,
  figure(
    image("build-troubleshoot/2.22.25-2.png", width: 100pt),
    caption: "New spacer mount for the mobile goal rush mechanism’s piston."
  ),
  figure(
    image("build-troubleshoot/2.22.25-3.png", width: 100pt),
    caption: "Boxing the mobile goal rush mechanism’s arm."
  ),
  ),
  [
    === Troubleshooting
    - Repeatedly tested the mobile goal arm’s ability to withstand bending.
    - Although the arm bent over time, we were able to easily bend it back.
    - Tested the alignment mechanism by aligning the ladybrown with the wall stakes.
  ],
   figure(
    image("build-troubleshoot/2.22.25-4.png", width: 100pt),
    caption: "The alignment mechanism."
  ),
)