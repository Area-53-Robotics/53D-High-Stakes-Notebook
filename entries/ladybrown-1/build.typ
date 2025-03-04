#import "/template/template.typ": *

#show: create-entry.with(
  title: "Ladybrown v1",
  type: "build",
  date: datetime(year: 2024, month: 11, day: 1),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Jin",
  witnessed: "Makhi",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2024/11/01
With the CAD completed, we are now ready to build the ladybrown. We are excited to build the new robot design because of its custom gussets. We made these gussets using CAD software and a laser cutter. Additionally, since the entire robot was CADed before building, the assembly process was more streamlined compared to earlier in the season.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Anders, Rory, Eric
    - *Manufacturing*: Anders, Rory, Eric
    - *Oversight & Quality Control*: Jin
    - *Initial Testing*: Jin, Makhi, Anders
    - *Programming*: Ishika, Ajibola
  ],
  today: [
    - Ladybrown support assembly: Jin, Anders, Rory
  ]
)

== Build Process
#grid(
  [
    === Materials
    - 2x 11x1x1 C-channel
    - 2x 33x2x1 C-channel
    - 2x Custom Gussets
    - 2x 5x1x1 C-channel
    - 2x 2x1x1 C-channel
    - The rest of the materials can be found in our toolbox.
  ],
  figure(
    image("build/24-11-1-1.png", width: 170pt),
    caption: "The bracing for the ladybrown. We have black gussets that allow us to attach the 11x1x1 C-channel to the ladybrown."
  ),
  stack(
    spacing: 10pt,
    [
      === Assembly
      - A 5x1x1 C-channel was added near the clamp side of our chassis.
        - The purpose of the placement is to have the ladybrown's support be as far back as possible. This will allow us to lower our support's angle, which lowers the robot's center of gravity.
      - The 33x2x1 C-channel was mounted at the end of the 5x1x1 C-channel.
        - This was done with a screw joint to maximize the support's strength and distribute stress.
      - At the intake side of our robot, we added a 2x1x1 C-channel on the inner side of the chassis.
        - We plan to attach the intake onto these 2x1x1 C-channels.
        - The 11x1x1 C-channels were mounted on these 2x1x1 C-channels. There were screw joints to help distribute the stress.
    ],
    [
      === Troubleshooting
      - We troubleshot the stress from the supports.
    ]
  ),
  figure(
    image("build/24-11-1-2.png", width: 170pt),
    caption: "The intake side of our robot. There is the 11x1x1 C-channel angled from the 2x1x1 C-channel."
  )
)

#v(10pt)

#grid(
  figure(
    image("build/24-11-1-3.excalidraw.svg"),
    caption: "Ladybrown stress diagram"
  ),
  [
    === Ladybrown Stress Diagram
    - #text(red)[Problem:] Our main worry about this version of the robot is the lack of support for our intake.
    - There is horizontal stress on the left and right of our intake support.
    - We need more horizontal support to distribute the stress.
  ],
)

#colbreak()

= 2024/11/02
#to-do(
  date: datetime(year: 2024, month: 11, day: 02),
  monthly-schedule: "On",
  yearly-schedule: "Off",
  (
    (true, "Build the ladybrown according to today's delegation.", "Everyone"),
    (true, "Build the intake according to today's delegation.", "Everyone"),
  )
)

We continued building the ladybrown, focusing primarily on the upper sections which had not yet been completed. We sanded down the metal, braced the towers, and updated the mountings for the ladybrown mechanism.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Eric, Rory
    - *Manufacturing*: Eric, Rory, Makhi
    - *Oversight & Quality Control*: Jin, Ajibola
    - *Initial Testing*: Jin, Makhi
    - *Programming*: Ajibola
  ],
  today: [
    - Ladybrown towers: Jin, Anders, Rory
    - Cross Brace Mounting: Makhi, Eric
  ]
)

== Build Process
#grid(
  [
    === Materials
    - 17x2x1 C-channel
    - 5.5W Motors
    - 60-tooth Gears
  ],
  figure(
    image("build/24-11-2-1.png", height: 240pt),
    caption: "Beginning of the ladybrown arm mounting."
  ),
  stack(
    spacing: 10pt,
    [
      === Assembly
      - Reinforced the screw joint of our ladybrown by adding a nylon on the end of our screw joint.
      - Shifted the ladybrown angle lower.
        - A lower center of gravity would allow us to be more stable.
      - Added the 17x2x1 C-channel across the ladybrown.
        - This serves as a crossbar, preventing the robot from bending inwards.
        - This was also boxed, increasing stability.
    ],
    [
      === Troubleshooting
      - No issues to troubleshoot because we CADed everything before building to ensure all the parts fit together.
    ],
  ),
  figure(
    image("build/24-11-2-2.png", width: 170pt),
    caption: "The screw joint on the end of the ladybrown support."
  ),
)

#v(10pt)

#grid(
  figure(
    image("build/24-11-2-3.excalidraw.svg"),
  ),
  [
    === Cross Brace Diagram
    - The cross brace of the ladybrown provides structural support by distributing forces inward toward the center of the brace.
    - This inward support effectively counteracts bending forces, ensuring that the structure remains stable and maintains its intended shape.
      - By reducing the stress and strain on individual components, the cross brace enhances the overall rigidity and durability of the mechanism.
  ],
)

#colbreak()

= 2024/11/08
#to-do(
  date: datetime(year: 2024, month: 11, day: 08),
  monthly-schedule: "On",
  yearly-schedule: "Ahead",
  (
    (true, "Build the ladybrown according to today's delegation.", "Everyone"),
    (true, "Build the intake according to today's delegation.", "Everyone"),
  )
)

Today, we focused on finalizing the second triangular brace, completing the main structural shape of the robot. During this process, we had to rework some of the half cuts to accommodate the brain mount, ensuring that it fit securely without compromising the overall design. Additionally, we adjusted the inner half cuts by shifting them outward slightly, allowing the mechanism to effectively grip onto the rings. Despite these modifications, we successfully completed the brace, bringing us closer to finishing the core structure.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Anders, Eric
    - *Manufacturing*: Anders, Eric
    - *Oversight & Quality Control*: Jin
    - *Initial Testing*: Makhi
    - *Programming*: Ishika
  ],
  today: [
    - Assemble the ladybrown arms: Jin, Makhi, Eric, Rory, Anders
    - Assemble the friction end of the ladybrown:  Makhi
    - Cut the gussets and gears for the ladybrown: Eric
  ]
)

== Build Process
#grid(
  [
    === Materials
    - 2x 25x2x1 C-channel
    - 2x 17x1x1 C-channel
    - 2x 5.5W Motors
    - 2x 12-tooth Motors
    - High Strength Axles
    - Mesh
    - Polycarbonate
    - Zipties
    - The rest of the materials can be found in the toolbox.
  ],
  figure(
    image("build/24-11-8-1.png", width: 165pt),
    caption: "Ladybrown side profile"
  ),
  stack(
    spacing: 10pt,
    [
      === Assembly
      - We added the 25x2x1 C-channels to the drivetrain
        - To brace the drivetrain, we added the 17x1x1 C-channels on the other side.
        - We used polycarbonate to create intersections between the two 17x1x1 C-channels.
      - The ladybrown gear was cut into 2/3s to make space for the motors.
      - Added the 12-tooth gears to the ladybrown.
        - These will serve as the drive gear of the robot.
      - We cut trapezoid shaped gussets.
        - The shape allows rings to be placed into our ladybrown easily.
    ],
    [
      === Troubleshooting
      - #text(red)[Problem:] The 17x1x1 C-channels were too close to each other, leaving no space for the brain.
      - #text(green)[Solution:] We moved the 17x1x1 C-channels outward, which meant we also had to shift some other structural elements outwards as well.
      - #text(red)[Problem:] The meshes on our clamp were too close, so the rings would not fit.
      - #text(green)[Solution:] We had to move the clamp's support closer.
      - We tested the ladybrown on its ability to score on the wall stakes.
    ],
  ),
  stack(
    spacing: 10pt,
    figure(
      image("build/24-11-8-2.png", width: 140pt),
      caption: "The mesh and gussets at the end of our ladybrown."
    ),
    figure(
      image("build/24-11-8-3.png", width: 140pt),
      caption: "The ladybrown scoring on the wall stakes."
    ),
  ),
)

#v(10pt)

#grid(
  figure(
    image("build/24-11-8-4.excalidraw.svg"),
  ),
  [
    === Gear Cutting for Ladybrown
    - To attach the 60-tooth gear onto our ladybrown, the top part of the gear needed to be cut down.
    - Additionally, the side of the 25x2x1 C-channel needed to be cut down for the gear to fit.
  ],
)