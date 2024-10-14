#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1",
  type: "build",
  date: datetime(year: 2024, month: 7, day: 26),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric"),
  designed: "Jin",
  witnessed: "Makhi",
)

// #to-do(
//   date: datetime(year: 2024, month: 1, day: 1),
//   (
//     (true, ""),
//   )
// )

= 2024/07/26
The team wanted to start this season off with a running start. Since we had the CAD of the drivetrain earlier than we planned, we can make the drivetrain quicker, which will in turn allow us to start working on the more complex subsystems quicker. Learning from last year's mistakes, we are going to have our screw joints come out from the outside and box our drivetrain better to prevent any bending. 

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the drivetrain): Jin Hao, Ajibola, Eric 
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Eric
    - *Oversight & Quality Control*: Ajibola, Jin
    - *Initial Testing*: Everyone
    - *Programming*: Ajibola
  ],
  today: [
    - Ziptie the bearing blocks: Eric
    - Attach the motors and axles onto the drivetrain's c-channel: Jin Hao, Eric
    - Attach the wheels and the screw joints: Jin Hao, Eric
  ]
)

== Build Process
#grid(
  columns: (1fr, 1fr),

  // figure(
  //   image("build\2024.07.26-1.png")
  // )
)