#import "/template/template.typ": *

#show: create-entry.with(
  title: "Goal Rush Mechanism v1",
  type: "build",
  date: datetime(year: 2025, month: 2, day: 7),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Makhi",
  witnessed: "Jin",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2025/2/7
We saw when observing signature events that having a mobile goal rush mechanism is important. Our mobile goal rush mechanism will be useful for auton and stealing mobile goals from other teams.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Anders, Eric
    - *Manufacturing*: Anders, Rory
    - *Oversight & Quality Control*: Jin
    - *Initial Testing*: Makhi
  ],
  today: [
    - Assemble the mobile goal rush mechanism arm: Eric, Jin
    - Attach the piston onto the mobile goal rush mechanism arm: Eric, Jin
  ]
)

== Build Process
#grid(
  stack(
    spacing:10pt,
      [
        === Materials
        - 1x 90-degree gusset
        - 1x 18x1x1 C-channel
        - 1x 9x1x1 C-channel
        - The rest of the materials can be found in the toolbox.


      ],
      [
      === Assembly
      - Since most of the metal in our shelves was too small, we had to cut the required C-channel from a 25x1x1 C-channel.
      - Using stand-offs, we attached the locking mechanism.
        - These stand-offs were 2 inches long and were attached at the 12th and 15th hole of the 18x1x1 C-channel.
        - The 9x1x1 C-channel was attached to these stand-offs. A 0.5-inch stand-off was attached at the end of the 9x1x1 C-channel.
      - Attached the mobile goal rush mechanism to the robot using the same pivot that the ring rush mechanism used.
      - Attached a single acting piston onto the mobile goal rush mechanism.
    ],
  ),
  stack(
    spacing: 10pt,
      figure(
      image("build/goal-2.7.25-1.png", width: 120pt),
      caption: "Mobile goal rush mechanism being pushed down"
    ),
      figure(
      image("build/goal-2.7.25-2.png", width: 110pt),
      caption: "Mobile goal rush mechanism in resting position"
    )
  ),
  [
    === Troubleshooting
    - Drove the robot with the mobile goal rush mechanism set down to see if it worked.
  ]
)

#colbreak()
= 2024/02/08

Today we finished the mobile goal rush mechanism wiring and tubing. Our next step is to test and troubleshoot the mobile goal rush mechanism.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Eric
    - *Manufacturing*: Eric
    - *Oversight & Quality Control*: Jin
    - *Initial Testing*: Makhi
  ],
  today: [
    - Wire the solenoid: Eric, Jin
    - Connect the pneumatic tubing: Eric
    - Change the piston retraction system mount: Eric, Rory

  ]
)

== Build Process
#grid(
  [
    === Materials
    - 1x Single-Acting Piston
    - 1x Single-Acting Pneumatic Solenoid
    - Pneumatic Tubing
    - Rubber Bands
    - The rest of the materials can be found in the toolbox.

  ],
  figure(
    image("build/goal-2.8.25-1.png", height: 120pt),
    caption: "New mobile goal rush mechanism piston mount and retraction band"
  ),
)
#grid(
    [
      === Assembly
      - Connected the solenoid after the new junction.
      - Connected wires from the brain to the solenoid and tube from the solenoid to the piston.
      - Changed the mounting points of the piston.
      - Created a piston slide on the mobile goal rush mechanism.
      - Replaced the rubber band due to the new piston mounting.
    ],
    [
      === Troubleshooting
      - Activated the mobile goal rush mechanism and attempted to use it on the field.
      - Used the mobile goal rush mechanism during auton testing.
    ],
)


