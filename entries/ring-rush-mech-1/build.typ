#import "/template/template.typ": *

#show: create-entry.with(
  title: "Ring Rush Mechanism v1",
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
Today we began building the ring rush mechanism. This mechanism would allow us to grab rings faster and disrupt the ring stacks in auton. Additionally, the ring rush mechanism would be able to flip back mobile goals if they’re tipped over.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Anders, Rory, Eric
    - *Manufacturing*: Anders, Rory
    - *Oversight & Quality Control*: Jin
    - *Initial Testing*: Makhi, Ishika
  ],
  today: [
    - Cut metal pieces to length: Anders
    - Assemble the frame: Anders, Eric
    - Attach the frame to the robot: Anders, Eric

  ]
)

== Build Process
#grid(
  stack(
    spacing:10pt,
      [
        === Materials
        - 2x 18x1x1 C-channel
        - 1x 23x1x1 C-channel
        - 2x 90-degree angle gusset
        - 2x 2x2x1 C-channel
        - The rest of the materials can be found in the toolbox.

      ],
      [
      === Assembly
      - A pillow bearing was placed on the side of the robot. This served as the gusset of our ring rush mechanism.
      - We assembled the 2 18x1x1 C-channels and the 23x1x1 C-channel into a rectangular shape.
        - This shape is just long enough to grab a mobile goal when it is tipped over.
      - Attached the 90-degree angle gussets to the corners for support.
      - Attached the ring rush mechanism onto the pillow bearing.
        - A screw joint was used for the pivot link.
    ],
  ),
  stack(
    spacing: 10pt,
      figure(
      image("build/2.7.25-1.png", width: 120pt),
      caption: "Ring rush mechanism during construction"
    ),
      figure(
      image("build/2.7.25-2.png", width: 110pt),
      caption: "Ring rush mechanism during construction"
    ) 
  ),
)

#colbreak()
= 2024/02/08

Troubleshooting the ring rush mechanism was a priority because we wanted to have it ready for autonomous use. This would also allow us to have a working ring rush mechanism well before the state championship.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Rory, Anders
    - *Manufacturing*: Rory, Anders
    - *Oversight & Quality Control*: Jin
    - *Initial Testing*: Makhi
  ],
  today: [
    - Wiring the pneumatics: Eric
    - Testing the ring rush mechanism’s extra capabilities: Makhi, Anders
    - Tuning the ring rush mechanism’s rotation: Anders
  ]
)

== Build Process
#grid(
  [
    === Materials
    - 90-degree Gussets
    - Pneumatic Tubing
    - 1x Single-Acting Piston
    - 1x Single-Acting Pneumatic Solenoids
    - 1x Valve
    - The rest of the materials can be found in the toolbox.
  ],
  figure(
    image("build/2.8.25-1.png", height: 120pt),
    caption: "Ring rush mechanism in its resting position"
  ),
)
#grid(
  stack(
    spacing: 10pt,
    [
      === Assembly
      - #text(red)[Problem:] The spacing of the ring rush mechanism was off, causing a lot of friction and bending on the drivetrain.
        - #text(green)[Solution:] We removed a 1/8-inch spacer to change the spacing of the joints at the base of the ring rush mechanism.
      - #text(red)[Problem:] The arm did not extend as far down as we wanted.
        - #text(green)[Solution:] We changed the piston attachment point to be attached from the intake supports.
      - Began pneumatic wiring by creating two extra junctions, an extra solenoid, and a tube plug.

    ],
    [
      === Troubleshooting
      - Tested the ring rush mechanism by hand on the field.
    ],
  ),
  figure(
    image("build/2.8.25-2.png", width: 120pt),
    caption: "New spacing of the ring rush joint"
  ),
)

#colbreak()

= 2024/02/14

After completing the mobile goal rush mechanism earlier today, we used the remaining meeting time to continue building the ring rush mechanism. We planned on completing the ring rush mechanism this meeting so that we can troubleshoot the ring rush mechanism next meeting.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Anders, Eric, Rory, Makhi
    - *Manufacturing*: Eric
    - *Oversight & Quality Control*: Jin
    - *Initial Testing*: Everyone
  ],
  today: [
    - Attach the pneumatics for the ring rush mechanism: Jin
  ]
)

== Build Process
#grid(
  [
    === Materials
    - 1x Double-Acting Piston
    - Pneumatic Tubing
    - 1x Single-Action Solenoid
    - 1x Switch Valve
    - Zipties
    - Pneumatic Junctions
    - The rest of the materials can be found in the toolbox

  ],
  figure(
    image("build/2.14.25-1.png", width: 100pt),
    caption: "The ring rush mechanism when activated. "
  ),
)
#grid(
  stack(
    spacing: 10pt,
    [
      === Assembly
      - A double-acting piston was added to the side of our intake.
      - Since this mechanism will not be used often, and a double-acting piston is stronger than a single-acting piston, we can afford the heavy air usage of the double-acting piston.
      - The double-acting piston was attached to the intake’s gear system screw joint. 
      - The pneumatic tubing for the ring rush mechanism was set up.
    ],
    [
      === Troubleshooting
      - Tested the ring rush mechanism for any pneumatic leaks.
      - We discovered a leak in one of the piston’s valves.

    ],
  ),
  figure(
    image("build/2.14.25-2.png", width: 100pt),
    caption: "The ring rush mechanism’s piston."
  ),
)
