#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mobile Goal Clamp v2 - Troubleshooting",
  type: "build",
  date: datetime(year: 2024, month: 11, day: 18),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Jin",
  witnessed: "Makhi",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2024/11/18
During our last competition, we observed that we needed to update the model of the mobile goal clamp. We moved the pivot point one hole backward and moved the pistons accordingly.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Anders, Eric
    - *Manufacturing*: Makhi, Eric, Anders, Rory
    - *Oversight & Quality Control*: Jin, Eric
    - *Initial Testing*: Makhi
  ],
  today: [
    - Mount pistons: Jin, Makhi
    - Assemble the mobile goal clamp mechanism: Eric, Rory, Anders
  ]
)

== Build Process
#grid(
   stack(
    spacing: 10pt,
    [
      === Materials
      - 2x Single-Acting Pneumatic Pistons
      - The rest of the materials can be find in the toolbox
    ],
    [
      === Assembly
      - Remade the mobile goal clamp joint
        - We added a screw joint that went through the mobile goal clamp's pivot point.
        - This screw joint helped improve the clamp's structural integrity and reduce friction.
      - #text(red)[Problem:] The piston would sometimes overextend, causing a reduction in torque.
      - #text(green)[Solution:] Mounted the pneumatic pistons in a new location between the drivetrain motors. This allowed the mobile goal clamp to fully leverage the pistons' arm length.
        - Moved the pivot point of the clamp one hole back.
    ],
  ),
  stack(
    spacing: 10pt,
    figure(
      image("build-troubleshoot-2/11-18-24.png", width: 170pt),
      caption: "The clamp at the end of today's meeting."
    ),
    [
      === Troubleshooting
      - We turned the clamp on and off and readjusted the pivot each time to maximize torque.
    ]
  )
)

= 2024/11/19
Continuing from the previous meeting, we modified the back of the clamp. This modification allowed us to brace the side stronger and improve the angle of the mobile goal clamp when it is clamping on the mobile goal. Lastly, we planned to add guides for our mobile goal clamp.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Anders, Rory
    - *Manufacturing*: Makhi, Eric, Anders, Rory
    - *Oversight & Quality Control*: Jin
    - *Initial Testing*: Eric
  ],
  today: [
    - Mount pistons: Jin, Makhi
    - Drill holes for the high strength axle: Eric
  ]
)

== Build Process
#grid(
  stack(
    spacing: 10pt,
    [
      === Materials
      - High strength axle.
      - x2 3x1x1 C-channel
      - The rest of the materials can be found in the toolbox.
    ],
    [
      === Assembly
      - Two holes from the high strength axle. A hole was drilled at the end of each side
      - #text(red)[Problem:] At the end of the drivetrain, the drive halves were bowing inwards, contributing to the drivetrain's friction.
      - #text(green)[Solution:] Attached the high strength axle to prevent bowing.
        - Additionally, this high strength axle acts as a pivot for the mobile goal. This deepens the angle when the mobile goal is clamped down.
      - Added the 3x1x1 C-channels to the side of the mobile goal clamp.
        - This allowed us to increase the distance that the mobile goal can clamp down.

    ],
  ),
  stack(
    spacing: 10pt,
    [
      === Troubleshooting
      - We tested how consistent the mobile goal clamp was by repeatedly clamping the mobile goal clamp.
      - This allowed us to adjust the brace accordingly.
    ],
    figure(
      image("build-troubleshoot-2/11-19-24.png", width: 120pt),
      caption: "The clamp at the end of today's meeting."
    ),
  )
)

#grid(
  figure(
    image("build-troubleshoot-2/11-19-24-system-diagram.excalidraw.svg"),
  ),
  [
    === Physics of Clamp
    - Both the clamp and the mobile goal-high strength axle system can be treated as individual levers.
    - For the clamp, the pistons contribute to a load force, while a weight force pushes down onto the mobile goal.
    - In the mobile goal-high strength axle system, the high strength axle is treated as a pivot.
    - Since no external forces are applied to either of the levers, both levers can be treated as a system.
  ],
)