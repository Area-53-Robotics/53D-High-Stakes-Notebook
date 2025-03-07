#import "/template/template.typ": *

#show: create-entry.with(
  title: "Overall Robot v3 - Troubleshooting",
  type: "build",
  date: datetime(year: 2024, month: 12, day: 22),
  attendance: ("Eric", "Jin"),
  designed: "Anders",
  witnessed: "Jin",
)

= 2024/12/22
#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

#to-do(
  date: datetime(year: 2024, month: 12, day: 22),
  monthly-schedule: "On",
  yearly-schedule: "Off",
  (
    (true, "Troubleshoot the robot according to today's delegation.", ("Eric",)),
    (true, "Perform maintenance on the intake according to today's delegation.", ("Eric",)),
  )
)

We had Eric bring the robot home over winter break. He removed all wiring, pneumatic tubing, and electronics from the robot to prepare it for troubleshooting.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials): Eric
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Eric
    - *Oversight & Quality Control*: Eric
    - *Initial Testing*: Eric
  ],
  today: [
    - Remove the wires off the robot: Eric
    - Remove the pneumatics off the robot: Eric
    - Remove the electronics: Eric
  ]
)

== Build Process
#grid(
  stack(
    spacing: 10pt,
    [
      === Materials
      - Wiring
      - Pneumatic tubes
      - Brain
      - Pneumatic Tank
      - Battery
    ],
    [
      === Assembly
      - Cut the ziptie that tied the wires in one place.
        - This ziptie was previously here to help with wire management.
      - Unplugged and removed all wiring and tubing.
      - Removed pneumatic tank and batteries.
    ],
  ),
  stack(
    dir: ltr,
    spacing: 10pt,
    figure(
      image("build-troubleshoot/12.22.24-1.png", height: 170pt),
      caption: "Wires after removal"
    ),
    figure(
      image("build-troubleshoot/12.22.24-2.png", height: 170pt),
      caption: "Robot without wires"
    ),
  ),
)

#colbreak()

= 2024/12/31
#to-do(
  date: datetime(year: 2024, month: 12, day: 31),
  monthly-schedule: "On",
  yearly-schedule: "Off",
  (
    (true, "Troubleshoot the robot according to today's delegation.", ("Eric",)),
    (true, "Perform maintenance on the intake according to today's delegation.", ("Eric",)),
  )
)

With the new intake completed, Eric reattached the electronics. Before winter break, we gathered together to plan out where we wanted to place the brain and battery on the new robot.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials): Eric
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Eric
    - *Oversight & Quality Control*: Eric
    - *Initial Testing*: Eric
  ],
  today: [
    - Attach the new battery: Eric
    - Attach the new brain: Eric
    - Attach the new wiring: Eric
  ]
)

== Build Process
#grid(
  [
    === Materials
    - VEX Smart Cables
    - Pneumatic tubes
    - Zipties
    - Brain
    - Pneumatic tank
    - Battery
    - The rest of the materials can be found in the toolbox.
  ],
  figure(
    image("build-troubleshoot/12.31.24-1.png", width: 160pt),
    caption: "New brain mount"
  ),
)

#colbreak()

#grid(
  [
    === Assembly
    - Remounted the brain in a new place.
      - The brain was mounted vertically so that it could fit between the intake.
      - This was needed to make sure that the brain is safe when the intake is running.
      - We ensured that the intake hooks would not touch the brain in its new mounting spot.
    - Rewired the robot and ziptied the wires down.
    - Replaced the pneumatic tubes and tank.
    - Remounted the battery in a new place.
      - The battery was mounted behind the ladybrown.
      - This spot is secure and impossible for an enemy team to unplug during match play.

    === Troubleshooting
    - Activated all subsystems one at a time and checked whether or not wires got caught.
    - Made sure the battery is not affected when the ladybrown is moving.
  ],
  stack(
    spacing: 15pt,
    figure(
      image("build-troubleshoot/12.31.24-2.png", width: 160pt),
      caption: "New battery mount"
    ),
    figure(
      image("build-troubleshoot/12.31.24-3.png", width: 160pt),
      caption: "Finished robot after rewiring and final fixes."
    ),
  )
)