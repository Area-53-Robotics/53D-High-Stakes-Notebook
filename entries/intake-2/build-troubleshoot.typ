#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v2 - Troubleshooting",
  type: "build",
  date: datetime(year: 2025, month: 1, day: 3),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Jin",
  witnessed: "Makhi",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2025/01/03
#to-do(
  date: datetime(year: 2025, month: 1, day: 3),
  monthly-schedule: "On",
  yearly-schedule: "Off",
  (
    (true, "Troubleshoot the intake according to today's delegation.", "Everyone"),
  )
)

This meeting was dedicated to troubleshooting our intake. We are interested in testing how the new intake works with the other subsystems on our robot. When any problems occurred on the robot during autonomous, the build team made changes to the intake to help improve torque and ring collection.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Jin, Eric
    - *Manufacturing*: Eric
    - *Oversight & Quality Control*: Jin
    - *Initial Testing*: Eric
  ],
  today: [
    - Troubleshoot the intake: Jin, Eric
    - Cut any polycarbonate on the robot: Eric
  ]
)

== Build Process
#grid(
  [
    === Materials
    - x2 Low-Strength Axles
    - High-Strength 24-tooth Gear
    - Low-Strength 24-tooth Gear
    - Low-Strength 36-tooth Gear
    - Polycarbonate
    - The rest of the materials can be found in the toolbox.
  ],
  figure(
    image("build-troubleshoot/1.3.25-1.png", width: 120pt),
    caption: "The original gear ratio for the intake."
  ),
)

#colbreak()

#grid(
  stack(
    spacing: 10pt,
    [
      === Assembly
      - #text(red)[Problem:] Rings had a hard time getting up the ramp.
      - #text(green)[Solution:] Switched 24 and 36 tooth gears for higher torque.
      - Changed the intake to use a low strength 24-tooth gear.
        - This allowed us to make the intake's gearbox more compact. Before, we ran into the risk of the intake hitting the gears.
      - Replaced the intake ramp with a newly cut polycarbonate piece.
        - A heat gun was used to bend the ramp. A disk was used as the frame.
      - #text(red)[Problem:] The low strength 24-tooth gear had angled teeth. This means that the gear would slip when spinning with the 36 tooth gear.
    ],
    [
      === Troubleshooting
      - We ran rings through the intake ramp to check for intake efficiency.
    ],
  ),
  stack(
    spacing: 15pt,
    figure(
      image("build-troubleshoot/1.3.25-2.png", width: 140pt),
      caption: "Intake without guiding sled"
    ),
    figure(
      image("build-troubleshoot/1.3.25-3.png", width: 140pt),
      caption: "Intake with guiding sled"
    ),
  )
)

#colbreak()

= 2025/01/04
#to-do(
  date: datetime(year: 2025, month: 1, day: 4),
  monthly-schedule: "On",
  yearly-schedule: "Off",
  (
    (true, "Troubleshoot the intake according to today's delegation.", "Everyone"),
  )
)

We found unresolved issues with the intake during testing yesterday. More issues were found early today, meaning additional fixes had to be made during practice. We switched gear ratios and cut gears in half to adjust the spacing of the intake drive. This allowed us to start testing at the end of the day.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Jin, Eric
    - *Manufacturing*: Jin, Eric
    - *Oversight & Quality Control*: Jin
    - *Initial Testing*: Jin, Eric, Ishika
  ],
  today: [
    - Cut silver gear in half: Jin
    - Fix the slipping issue on intake first stage: Jin, Eric
    - Add C-channel support for intake first stage: Jin
  ]
)

== Build Process
#grid(
  [
    === Materials
    - High-Strength 24-tooth Gear
    - Low-Strength 24-tooth Gear
    - Low-Strength 36-tooth Gear
    - Hacksaw
    - x1 11x1x1 C-channel
    - The rest of the materials can be found in the toolbox.
  ],
  stack(
    dir: ltr,
    spacing: 10pt,
    figure(
      image("build-troubleshoot/1.4.25-1.png", width: 100pt),
      caption: "Cut metal 24-tooth gear"
    ),
    figure(
      image("build-troubleshoot/1.4.25-2.png", width: 100pt),
      caption: "The 11x1x1 C-channel support\nfor the intake first stage."
    ),
  ),
)

      === Assembly
      - #text(red)[Problem:] Rings were having a difficult time getting up the intake ramp.
      - #text(green)[Solution:] We switched the gears that were on the second stage's gear system so that it is now 300 RPM. This decreases the overall RPM of the intake in exchange for more torque.
      - #text(red)[Problem:] We could not use a high-strength 24-tooth gear because of spacing. Part of the gear would contact the intake's hooks, which would cause friction.
      - #text(green)[Solution:] A silver 24-tooth gear was cut in half.
      - #text(red)[Problem:] The first stage intake was cantilevered, causing the gears to slip at high RPM.
      - #text(green)[Solution:]
        - An 11x1x1 C-channel was mounted on the side to add extra support for the gear system.
        - The sprocket on our first stage intake was moved to the left to account for this change.

      === Troubleshooting
      - At the start of practice, we ran the intake with rings interfering to check the intake's torque.
      - Between and after intake changes, we ran the intake to test if it could pick up rings.

#colbreak()

= 2025/01/09
#to-do(
  date: datetime(year: 2025, month: 1, day: 9),
  monthly-schedule: "On",
  yearly-schedule: "Off",
  (
    (true, "Troubleshoot the intake according to today's delegation.", "Everyone"),
  )
)

During practice, we identified problems with the new intake ramp and a skipping issue with the transmission between the two stages of the intake. We re-cut and mounted a new intake ramp. At the end of the day we looked at new possibilities for building the transmission.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Eric, Rory, Anders
    - *Manufacturing*: Jin, Eric, Rory
    - *Oversight & Quality Control*: Jin
    - *Initial Testing*: Ishika, Ajibola, Eric, Anders
  ],
  today: [
    - Redo the ramp: Jin, Eric
    - Reduce the spacing on the top of the intake: Eric, Anders, Rory
  ]
)

== Build Process
#grid(
  [
    === Materials
    - Polycarbonate
    - Zipties
    - High-Strength Axle
    - The rest of the materials can be found in the toolbox.
  ],
  figure(
    image("build-troubleshoot/1.9.25-1.png", width: 120pt),
    caption: "Ramp & stoppers in the redone intake"
  ),
  figure(
    image("build-troubleshoot/1.9.25-2.png", width: 120pt),
    caption: "The apex of our intake. The spacing was changed to reduce bending."
  ),
  stack(
    spacing: 10pt,
    [
      === Assembly
      - Removed the previous intake plate
        - The rings were having trouble going up the ramp. The angle needed to change.
      - Cut a new intake plate
        - Bored holes in the new plate.
        - Placed the plate in place and attached it to support axles using zipties.
      - Tightened the zipties.
      - Added fasteners halfway down and tightened them to induce bending on the polycarbonate.
      - #text(red)[Problem:] The top of our intake was bending a little.
      - #text(green)[Solution:] Reduced the spacing by 1/8 inch.
    ],
    [
      === Troubleshooting
      - Drove the robot between robot adjustments to find and test intake issues.
    ],
  ),
)

#colbreak()

= 2025/01/10
#to-do(
  date: datetime(year: 2025, month: 1, day: 10),
  monthly-schedule: "On",
  yearly-schedule: "Off",
  (
    (true, "Troubleshoot the intake according to today's delegation.", "Everyone"),
  )
)

After finalising a fix for the intake transmission, the old intake transmission was removed. The new support structure was added and the axles were placed back in for a properly functioning intake.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Eric, Jin
    - *Manufacturing*: Eric, Jin
    - *Oversight & Quality Control*: Jin, Ajibola
    - *Initial Testing*: Jin, Eric
  ],
  today: [
    - Fix the cantilevered gears on the side of the intake: Jin
    - Troubleshooting: Jin, Eric
  ]
)

== Build Process
#grid(
  [
    === Materials
    - Axles
    - High-Strength 36-tooth Gear
    - Low-Strength 36-tooth Gear
    - The rest of the materials can be found in the toolbox.

    #v(30pt)

    === Troubleshooting
    - Activated the intake for an extended period of time while collecting rings to test power and consistency.
  ],
  figure(
    stack(
      dir: ltr,
      spacing: 10pt,
      image("build-troubleshoot/1.10.25-1.png", width: 110pt),
      image("build-troubleshoot/1.10.25-2.png", width: 110pt)
    ),
    caption: "New bracing of the transmission between the first and second stages of the intake."
  ),
)

=== Assembly
- Removed the axles and screw joints of the transmission to begin replacement.
- The axle was experiencing some stress because the rotation of the chain would slowly bend the axle downwards.
- A 11x1x1 C-channel was used as the front brace, reducing stress.
- Replaced the axle and added another in place of the screw joint along with new bearings for smoother intake rotation.
- Reconnected the chain to the first stage.