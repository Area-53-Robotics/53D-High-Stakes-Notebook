#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mobile Goal Clamp v2",
  type: "build",
  date: datetime(year: 2024, month: 10, day: 04),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric", "Anders"),
  designed: "Jin",
  witnessed: "Makhi",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2024/10/04
#to-do(
  date: datetime(year: 2024, month: 10, day: 04),
  monthly-schedule: "On",
  yearly-schedule: "Ahead",
  (
    (true, "Build the clamp according to today's delegation.", "Everyone"),
  )
)

Today we plan to rebuild the mobile goal clamp and troubleshoot based on what we learned in our #entry-reference(title: "Area 53 Scrimmage", type: "competition", date: datetime(year: 2024, month: 9, day: 28)). We replaced the joint and C-channel and started altering the gripping end of the clamp arm.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Eric, Anders
    - *Manufacturing*: Makhi, Rory, Anders, Eric
    - *Oversight & Quality Control*: Ajibola, Jin
    - *Initial Testing*: Everyone
    - *Programming*: Ishika, Ajibola
  ],
  today: [
    - Assemble the new fulcrum for the clamp: Eric, Rory
    - Assemble the new clamp arm: Jin, Makhi 
    - Assemble the pistons: Jin, Makhi 
  ]
)
== Build Process
#grid(
  figure(
    image("build/24.10.4-1.png", width: 150pt),
    caption: "The old clamp"
  ),
  [
    === Materials
    - x2 3x1x1 C-Channel
    - Zipties
    - Rubber stopper
    - The remaining materials can be found in the toolbox
  ],
  grid.cell(colspan: 2)[
    === Assembly
    - Created a new screw joint as a pivot for the new clamp
      - We added crowns to the end of the clamps C-channel walls to reduce the vibration of the screw.
    - Added the x2 3x1x1 C-channels to the bracing of the drivetrain.
      - This is the fulcrum of the clamp, as well as where the screw joint will be. 
    - Placed a rubber stopper at the outer end of the C-channel arm.
    - Added and modified placements of bearing blocks to be used for extra grip.
  ],
  figure(
    image("build/24.10.4-2.png", width: 130pt),
    caption: "The new clamp arm"
  ),
   figure(
    image("build/24.10.4-3.png", width: 120pt),
    caption: "The new clamp mount"
  ),
)
