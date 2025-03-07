#import "/template/template.typ": *

#show: create-entry.with(
  title: "Ring Rush Mechanism - Troubleshooting v1",
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

We did a lot of troubleshooting with different parts of the ring rush mechanism, including modifying the length of the screws, locating pneumatic leaks, and ensuring sufficient clearance between different parts.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Rory, Anders, Eric
    - *Manufacturing*: Eric, Anders
    - *Oversight & Quality Control*: Jin, Ajibola
    - *Initial Testing*: Everyone
  ],
  today: [
    - Change the ring rush mechanism spacing: Eric
    - Replace the ring rush mechanism shaft with unbent metal: Eric

  ]
)

== Build Process
#grid(
  [
    === Materials
    - 2.5-inch screws
    - 1/4-inch spacers
    - The rest of the materials can be found in the toolbox.

  ],
  figure(
    image("build-troubleshooting/2.15.25-1.png", height: 90pt),
    caption: "The ring rush mechanism grabbing two rings."
  ),
)
#grid(
  stack(
    spacing: 10pt,
    [
      === Assembly
      - Added two 1/4-inch screws on the collar of our ring rush mechanism.
        - On the 2x2x1 C-channel, there are collars that spin on a screw joint.
      - #text(red)[Problem:] When the ring rush mechanism activates, the screws get stuck. This is due to Newton’s first law, which states that an object in motion will continue moving at a constant speed in a straight line unless acted upon by an external force.
        - #text(green)[Solution:] We added zipties that prevent the screws from going too far. The screws will bounce off the zipties.


    ],
    [
      === Troubleshooting
      - The screws were too short, so we switched them for the longest ones (2.5 inch).
      - There was a slight pneumatic leakage, but its not fixed.
      - We had to space them out by 1/4 inch.

    ],
  ),
  figure(
    image("build/2.8.25-2.png", width: 120pt),
    caption: "build-troubleshooting/2.15.25-2.png"
  ),
)

