#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mobile Goal Clamp v2 - Troubleshooting",
  type: "build",
  date: datetime(year: 2024, month: 10, day: 05),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric", "Anders"),
  designed: "Jin",
  witnessed: "Makhi",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2024/10/05
#to-do(
  date: datetime(year: 2024, month: 10, day: 05),
  monthly-schedule: "On",
  yearly-schedule: "Ahead",
  (
    (true, "Build the clamp according to today's delegation.", "Everyone"),
    (true, "Test the clamp.", "Everyone"),
  )
)

Today, we wanted to finish building the clamp. We hope for this iteration of the clamp to create a deeper angle of the mobile goal when clamped. If the intake is unable to properly move the rings onto the mobile goal, then we may need to adjust the clamp.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials): Anders
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges):  Makhi, Rory, Anders
    - *Oversight & Quality Control*: Ajibola, Jin
    - *Initial Testing*: Makhi
    - *Programming*: Ishika, Ajibola
  ],
  today: [
    - Finish assembling the piston mounts of the clamp: Makhi
    - Troubleshoot the clamp: Jin, Eric, Rory, Anders
  ]
)
== Build Process
#grid(
  figure(
    image("build-troubleshoot-1/24.10.5-1.png", width: 150pt),
    caption: "finish construction of new mobile goal clamp"
  ),
  [
    === Materials
    - x1 2x2x1 C-channel
    - Zipties
    - Delrin
    - The remaining materials can be found in the toolbox
  ],
  [
    === Assembly
    - #text(red)[Problem:] The clamp did not have a full range of motion when the pistons were fully extended
    - #text(green)[Solution:] We moved the pistons up a hole. We added a 2x2x1 C-channel to the piston mount to do this.
    - Replaced the rubber stopper with a standoff
        - Metal standoffs could dig into the mobile goal, in contrast to the rubber bumper that morphs to the surface that it contacts.
    - Moved the bearing blocks to a more accessible location.
  ],
  figure(
    image("build-troubleshoot-1/24.10.5-2.png", width: 160pt),
    caption: "Picture of our new clamp during scrimmage"
  ),
   figure(
    image("build-troubleshoot-1/24.10.5-3.png", width: 160pt),
    caption: "The 2x2x1 C-channel for the pistons"
  ),
  [
    === Troubleshooting
    - Intaking rings onto the mobile goal was inconsistent.
    - We tested different mounts of the fulcrum, pistons, and stoppers.
    - Between changes, we filled the air tank and tested the pneumatic clamp, and a working solution was found near the end of practice.
  ]
)