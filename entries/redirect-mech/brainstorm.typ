#import "/template/template.typ": *

#show: create-entry.with(
  title: "Redirect Mech v1",
  type: "brainstorm",
  date: datetime(year: 2024, month: 10, day: 10),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Eric",
  witnessed: "Jin",
)

#to-do(
  date: datetime(year: 2024, month: 10, day: 10),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Brainstorm redirect mechanism ideas.", "Everyone"),
    (false, "Select the best redirect mech idea using a decision matrix.", "Everyone"),
    (false, "Plan the implementation of the redirect mech idea.", "Everyone"),
  )
)

We have brainstormed numerous different archetypes of the redirect mechanism, each with the possibility to succeed in wall stake scoring. Several solutions include a four-bar, six-bar, or a basic level arm that is capable of picking up rings directly from the floor. Having the ability to score on the wall stakes would give us a massive advantage over the majority of Maryland teams.

#pro-con(
  name: "Six-bar",
  image: image("brainstorm/six-bar-redirect-mech.excalidraw.svg"),
  description: [
    As the ring travels up the robot's intake, the robot can reverse the intake's direction to redirect the ring into the six-bar. The ring slides to the end of the six-bar and is held in place by lexan or rubber bands. The six bar can lift the ring for scoring on the stakes. 
  ],
  pros: [
    - *Height* - The six-bar offers the highest height when fully expanded.
  ],
  cons: [
    - *Stability* - The higher the six-bar is extended, the higher the robot's center of gravity becomes. A higher center of gravity means lower robot stability.
    - *Complexity* - A six-bar may be too complex for the novice builders to understand and build because it requires a six bar linkage. 
  ],
  notes: [
    - We have the chance to reach the ladder high stake with this design.
    - Uses a lot of materials to build.
  ],
)

#colbreak()

#pro-con(
  name: "Four-bar",
  image: image("brainstorm/four-bar-redirect-mech.excalidraw.svg"),
  description: [
    Similar to the six-bar design, the ring can be redirected into the four-bar by reversing the intake's direction. The four-bar can lift laterally to place the ring on a stake.
  ],
  pros: [
    - *Simplicity* - The four-bar is a common lifting mechanism in robotics. Some of the experienced builders know how to build one. 
    - *Weight* - A four-bar requires one less link compared to a six-bar lift, reducing material cost and weight.
  ],
  cons: [
    - *Height* - When fully extended, the lift would only be able to reach the wall stakes. 
    - *Stability* - The higher the four-bar is extended, the higher the robot's center of gravity becomes. A higher center of gravity means lower robot stability. 
  ],
  notes: [
    - Our stability would be better compared to the six-bar.
    - 1010W uses this design.
  ],
)

#pro-con(
  name: "Pneumatic Lift",
  image: image("brainstorm/pneumatic-lift-redirect-mech.excalidraw.svg"),
  description: [
    As the ring travels up the intake, a pneumatic system reverses the direction of the ring. The pneumatic system traps the ring in the end of the arm. The arm can be lifted to lift the ring onto a stake.
  ],
  pros: [
    - *Speed* - This design does not require the intake to reverse direction, so this design readies the ring for stake scoring the quickest.
    - *Weight* - This is the lightest option.
  ],
  cons: [
    - *Complexity* - This design requires a lot of rotating joints. Some of the novice builders may have difficulties building this mechanism.
  ],
  notes: [
    - We have not seen any teams with this design.
    - We have to design around the 100 PSI pneumatic pressure limit.
  ]
)