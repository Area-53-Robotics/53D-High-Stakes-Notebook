#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v2 - Maintenance",
  type: "build",
  date: datetime(year: 2024, month: 12, day: 22),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Jin",
  witnessed: "Makhi",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2024/12/22
Before winter break, we used the CAD technical drawings in our #entry-reference(title: "Intake v2", type: "plan", date: datetime(year: 2024, month: 10, day: 26)) to determine the parts Eric would need to build the new intake changes. He made a loose-fit model of the intake to help with planning and noted problems that needed to be fixed in the future.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Eric
    - *Manufacturing*: Eric
    - *Oversight & Quality Control*: Eric
    - *Initial Testing*: Eric
  ],
  today: [
    - Plan out the robot: Everyone
    - Prepare the intake frame: Eric
    - Troubleshoot and fix any loose items on the robot: Eric
  ]
)

== Build Process
#grid(
  [
    === Materials
    - Angles
    - Axles
    - Motor
    - The rest of the materials can be found in the toolbox.
  ],

  figure(
    image("build-maintenance/12.22.24-1.png", width: 120pt),
    caption: "Robot before intake removal and part collection."
  ),
  stack(
    spacing: 10pt,
    [
      === Assembly
      - Before winter break, the intake's frame was planned and modeled through CAD.
        - These materials were collected for the winter rebuild.
      - We had a virtual meeting to discuss where we want to place the electronics and wiring.
    ],
    [
      === Troubleshooting
      - Loose fitting of the intake frame onto the robot to make sure it would fit properly.
    ],
  ),
  figure(
    image("build-maintenance/12.22.24-2.png", width: 110pt),
    caption: "The intake side of our robot. There is the 11x1x1 C-channel angled from the 2x1x1 C-channel."
  ),
)

#colbreak()

= 2024/12/29
We mounted the previously made parts onto the robot and straightened any bent parts using pressure.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Eric
    - *Manufacturing*: Eric
    - *Oversight & Quality Control*: Eric
    - *Initial Testing*: Eric
  ],
  today: [
    - Assemble the new intake: Eric
    - Straighten any metal that was bending on the robot: Eric
  ]
)

== Build Process
#grid(
  [
    === Materials
    - Angles
    - Low Strength Axles
    - 11W Speed Motor
    - The rest of the materials can be found in the toolbox.
  ],
  figure(
    image("build-maintenance/12.29.24-1.png", height: 150pt),
    caption: "Robot after narrowing the intake."
  ),
  stack(
    spacing: 10pt,
    [
      === Assembly
      - The intake's chassis was removed and replaced after bending the metal back in place.
        - The 3x1x1 C-channels for the intake's mount were pushed inwards. This decreased the length of the intake by 3 holes.
      - The polycarbonate was removed and remade.
      - New screw joints were made for the intake's supports. This will help stabilize the intake when it is running and picking up rings.
    ],
    [
      === Troubleshooting
      - Attempted to manually run the intake motor to see if any issues arose.
        - Thankfully, everything seemed fine.
    ],
  ),
  figure(
    image("build-maintenance/12.29.24-2.png", width: 130pt),
    caption: "Robot after narrowing the intake and removing the polycarbonate"
  ),
)

#colbreak()

= 2024/12/31
Since the intake motor and gear were cantilevered, the motor was loosening as we used the intake, harming the intake's performance. To fix this, we replaced the motor and ziptied it down.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Eric
    - *Manufacturing*: Eric
    - *Oversight & Quality Control*: Eric
    - *Initial Testing*: Eric
  ],
  today: [
    - Troubleshoot the problem with the intake's motor: the whole team
    - Troubleshoot the intake's motor: Eric
    - Replace the intake motor: Eric
  ]
)

== Build Process
#grid(
  [
    === Materials
    - 11W Speed Motor
    - Low Strength Axles
    - Zipties
    - Polycarbonate
    - The rest of the materials can be found in the toolbox.
  ],
  figure(
    image("build-maintenance/12.31.24-1.png", width: 120pt),
    caption: "Intake at the start of 12/31/2024"
  ),
  stack(
    spacing: 10pt,
    [
      === Assembly
      - #text(red)[Problem:] The intake was slipping and loosening over time. Since the intake axle was cantilevered, the axle was bending due to the weight and stress.
      - #text(green)[Solution:] Added supports for the intake motor and replaced the intake motor's axle.
      - Readjusted the intake motor's position.
      - Replaced the intake axles.
      - Cut polycarbonate into proper shapes to use for the intake ramp.
    ],
    [
      === Troubleshooting
      - Ran the intake motors to check for chain skipping and intake jamming.
    ],
  ),
  figure(
    image("build-maintenance/12.31.24-2.png", width: 120pt),
    caption: "Intake motor mounting by end of 12/31/2024"
  )
)