#import "/template/template.typ": *

#show: create-entry.with(
  title: "Ladybrown v1",
  type: "brainstorm",
  date: datetime(year: 2024, month: 10, day: 24),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Eric",
  witnessed: "Jin",
)

#to-do(
  date: datetime(year: 2024, month: 10, day: 24),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Brainstorm ladybrown ideas.", "Everyone"),
    (false, "Select the best ladybrown idea using a decision matrix.", "Everyone"),
    (false, "Plan the implementation of the ladybrown idea.", "Everyone"),
  )
)

We got together to brainstorm ladybrown designs and research successful ladybrowns on YouTube. We are eager to start the build process for the ladybrown because we believe it will be more efficient at scoring on the wall stakes than the Redirect mechanism.

#pro-con(
  name: "Angled Ladybrown",
  image: image("brainstorm/Brainstorm angled lady brown.excalidraw(1).svg"),
  description: [
   The support for the ladybrown is at the intake side of the robot. There is a gusset on the drivetrain’s gusset, which allows us to control the angle of the ladybrown. This design would save space on the intake side of the robot. 
  ],
  pros: [
    - *Stability* - Since the ladybrown supports are close to the robot’s center of gravity, it is stable.
    - *Structure* - The angled ladybrown creates a triangle shape once fully mounted. The triangle shape resists deformities, strengthening the ladybrown’s structure.
  ],
  cons: [
    - *Bracing* - - Since the ladybrown’s support is angled, there can only be a single screw joint supporting the ladybrown at the bottom. Extra support is needed.
  ],
  notes: [
    - Very popular design. 
  ],
)

#colbreak()

#pro-con(
  name: "Straight-up Ladybrown ",
  image: image("brainstorm/Brainstorm straight-up lady brown.excalidraw.svg"),
  description: [
    The support for the ladybrown is at the intake side of the robot. There is a 2-wide C-channel on top of the drivetrain chassis where the ladybrown is mounted. 
  ],
  pros: [
    - *Simplicity* - This design does not require any special gussets because the ladybrown is mounted straight up.
  ],
  cons: [
    - *Arm Length* - WThis version of the ladybrown has a shorter arm length. This would require us to be closer to the wall stakes for scoring. 
    - *Center of Gravity* - The ladybrown is far from the robot’s center of gravity, lowering stability.
  ],
  notes: [
    - We have the space in our drivetrain needed to make this design. 
  ],
)

#pro-con(
  name: "Ladybrown Hooks",
  image: image("brainstorm/Brainstorm Lady brown Hook.excalidraw.svg"),
  description: [
    When the ring makes it to the top of the intake, the ladybrown’s hook will grab onto the ring. Once secured, it will fire the ring onto the wall stake.  


  ],
  pros: [
    - *Speed* - For ladybrown to score on the ring, the robot flings the ring onto the wall stake.
    - *Simplicity* - This design is easy to troubleshoot because it does not use friction to grab rings.
  ],
  cons: [
    - *Grip* - The ladybrown does not use friction to hold onto the ring. Instead, it hooks onto the ring and swiftly places it onto the wall stake.
    - *Accuracy* - Since the ring would fall off if the ladybrown stopped moving, there is not much time to align the ladybrown with the wall stake when scoring rings. 
  ],
  notes: [
    - Very popular for beginner teams. 
  ]
)