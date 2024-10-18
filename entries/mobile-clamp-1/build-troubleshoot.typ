#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mobile Goal Clamp v1 - Troubleshooting",
  type: "build",
  date: datetime(year: 2024, month: 8, day: 24),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric"),
  designed: "Jin",
  witnessed: "Makhi",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2024/08/24
#to-do(
  date: datetime(year: 2024, month: 8, day: 24),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Build the mobile goal clamp according to today's delegation.", "Everyone"),
  )
)

We did some more troubleshooting with the pneumatics to get our clamp working reliably. We decided to switch out the pistons back to single-action pistons so that we could conserve air for the climbing portion of our matches. Afterwards, we started designing the intake.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: :Anders and Rory
    - *Manufacturing*: Rory and Eric
    - *Oversight & Quality Control*: Jin
    - *Initial Testing*: Jin, Anders, Eric, and Rory
    - *Programming*:  Ishika and Ajibola
  ],
  today: [
    - Set up hard stop for the clamp: Rory and Eric 
    - Troubleshoot the clamp: Ander, Eric, Rory
 ]
)

== Build Process
#grid(
  figure(
    image("build/2024.08.24-1.jpg", width: 100pt),
    caption: "x2 2x2x1  C-channel"
  ),
  [
    === Materials
    - Mesh
    - x2 2x2x1 C-channel 
    - Single action solenoid
    - Everything else can be found in the toolbox
  ],
  [
    === Assembly
    - We secured mesh to the clamp with zip ties.
      - Since yesterday, the mesh has been slipping off, so this was an important fix.
    - We tested clamp strength and angle. The clamp should hold the mogo securely and tilt it approximately 20 degrees towards the tower.
      - Problem: We saw that the mobile goal would ride on the top of the drivetrain.
      - Solution: We added a C-channel to the side of the drivetrain to prevent the mobile goal from getting onto the drivetrain.
    - We removed the mesh and changed the angle of the piston attachment.
    - Then we performed an initial test of the clamp design with a mobile goal
  ],
  figure(
    image("build/2024.08.24-2.jpg", width: 200pt),
    caption: "The clamp at the end of the day"
  ),
    figure(
    image("build/2024.08.24-3.jpg", width: 200pt),
    caption: "First design of the mobile goal stop"
  ),
)
#grid(
    [
      === Troubleshooting
      - We noticed that air was leaking from our pneumatic system.
      - We had to listen for the location of the noise of air escaping to locate the leak. 
        - We found that the leak was occurring at the T-junction
        - After removing the T-junction, the air leak was fixed
      - We also worked on optimizing the clamp angle so that we could score rings more reliably. 
        - To do this we switched the pistons and solenoid to double-action so that we could have more grip. 
        - However, this used a lot more air so we did not decide to keep this design
    ],
    figure(
      image("build/2024.08.24-4.jpg", width: 200pt),
      caption: "Second design of the mobile goal stop"
    ),
)