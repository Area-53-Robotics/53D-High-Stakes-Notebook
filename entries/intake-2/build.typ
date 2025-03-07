#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v2",
  type: "build",
  date: datetime(year: 2024, month: 11, day: 01),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric", "Anders"),
  designed: "Anders",
  witnessed: "Makhi",
)

= 2024/11/01
#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

We built the first stage of the intake based on the CAD design. We also began constructing the second stage of the intake. Finally, we mounted the first stage onto the triangular bracing that connects the towers to the drivetrain.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials): Anders, Rory, Eric
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Anders, Rory, Eric
    - *Oversight & Quality Control*: Jin
    - *Initial Testing*: Makhi, Jin, Anders
    - *Programming*: Ishika, Ajibola
  ],
  today: [
    - Assemble the rollers for the intake - Rory
    - Assemble the first stage of the intake - Rory
  ]
)

== Build Process
#grid(
  stack(
    spacing: 10pt,
    [
      === Materials
      - High strength axle
      - 1x 20x2x1 C-channel
      - 2x 12x1x1 C-channel
      - 4x 2” flex wheels
      - 6-tooth sprockets
      - The rest of the materials can be found in the toolbox.
    ],
    [
      === Assembly
      - The 1x 20x2x1 C-channel was mounted perpendicular to our 12x1x1 C-channels at its end.
      - On a high strength axle, we attached 4 2” flex wheels with 1 inch worth of spacers in-between.
        - A 6-tooth sprocket was added at the end of the axle.
    ],
  ),
  stack(
    spacing: 10pt,
    figure(
      image("build/intake.11.1-1.png", width: 200pt),
      caption: "Intake stage 1 structure."
    ),
    figure(
      image("build/intake.11.1-2.png", width: 200pt),
      caption: "Intake stage 1 with flex wheels added."
    ),
  ),
)

#colbreak()

= 2024/11/02
We worked on the second stage of the intake, focusing on achieving an optimal speed and fine-tuning its performance. This involved adjusting the gear ratios and modifying the spacing to ensure the conveyor was properly centered. Additionally, we revisited our previous design to incorporate a mechanism that allows the intake to reverse and securely hook the chains. These improvements aimed to enhance the overall efficiency and reliability of the intake system.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Rory, Eric
    - *Manufacturing*: Makhi, Rory, Eric
    - *Oversight & Quality Control*: Jin, Ajibola
    - *Initial Testing*: Makhi, Jin
    - *Programming*: Ajibola
  ],
  today: [
    - Assemble the first stage onto the robot: Rory
    - Assemble the chainlink from the robot to the second stage of the intake: Rory
  ]
)

== Build Process
#grid(
  stack(
    spacing: 10pt,
    [
      === Materials
      - 1x 6-tooth gear
      - 2x 12-tooth gears
      - Polycarbonate
      - Chain
      - The rest of the materials can be found in the toolbox.
    ],
    [
      === Assembly
      - The first 180pt of the intake is attached by screw joints.
      - #text(red)[Problem:] The intake experienced a lot of vertical shaking. This can cause the intake to bend over time.
      - #text(green)[Solution:] We screwed in the screw joint. Additionally, we placed a crown on the screw so that it can spin freely.
      - Placed the two 12-tooth gears on the screw.
      - Connected the intake rollers to the 12-tooth gears with chain.
        - This will allow the gear system and the first stage intake to move with the same chain.
    ],
  ),
  stack(
    spacing: 10pt,
    figure(
      image("build/intake.11.2-1.jpg", width: 180pt),
      caption: "Intake first stage before mounting."
    ),
    figure(
      image("build/intake.11.2-2.png", width: 180pt),
      caption: "Intake first stage after mounting."
    ),
  )
)

#colbreak()

=== Troubleshooting
- The intake was running in the opposite direction of our hooks.
- We created a gear system to reverse the direction of the intake.
  - The first stage and the second stage of the intake have to be reversed to intake the rings.
- Our gears were also colliding with intook rings, so we had to move them outwards by 1/8".

= 2024/11/08
We attached the brain to the inner half cuts and began working on the intake. We successfully connected the first-stage intake to the second stage using gears, but the rotation is incorrect and still needs to be adjusted. After mounting the first-stage intake onto the robot, we also added a chain to make the intake functional.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Anders, Eric
    - *Manufacturing*: Makhi, Rory
    - *Oversight & Quality Control*: Jin
    - *Initial Testing*: Makhi
    - *Programming*: Ishika
  ],
  today: [
    - Assemble the second stage of the intake: Jin, Makhi, Eric, Rory, Anders
    - Attach the hooks: Eric, Rory, Anders
  ]
)

== Build Process
#grid(
  [
    === Materials
    - 2x 6-tooth gears
    - Chain
    - 3x low-strength axles
    - 8 2” flex wheels
    - The rest of the materials can be found in the toolbox.
  ],
  figure(
    image("build/intake.11.8-1.png", width: 160pt),
    caption: "The gear system that allows for transmission between the first and second intake stages."
  )
)

#grid(
  figure(
    image("build/intake.11.8-2.jpg", width: 150pt),
    caption: "Front view of the completed intake, where the brain is mounted between the chains."
  ),
  stack(
    spacing: 10pt,
    [
      === Assembly
      - On the apex of our intake, we added 2 of the 2” flex wheels.
      - On the bottom of our intake, we added a gear system.
        - The gear system allows us to control both intake systems with one motor.
        - This gear system is attached by two screw joints.
      - The top screw joint has a 36-tooth gear.
      - The second screw joint has a 12-tooth gear and a 6-tooth sprocket at the end.
        - This allows us to reverse the intake's direction.
    ],
    [
      === Troubleshooting
      - #text(red)[Problem:] The intake was turning in the wrong direction compared to the chain.
      - #text(green)[Solution:] We added an additional gear between the first and second stages of the intake.
    ],
  ),
)

#v(1em)

#figure(
  image("build/intake.11.8-3.jpg", width: 150pt),
  caption: "Side view of the intake."
)