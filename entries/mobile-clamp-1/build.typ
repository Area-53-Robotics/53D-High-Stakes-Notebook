#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mobile Goal Clamp v1",
  type: "build",
  date: datetime(year: 2024, month: 8, day: 17),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric"),
  designed: "Jin",
  witnessed: "Makhi",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2024/08/17
#to-do(
  date: datetime(year: 2024, month: 8, day: 17),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Build the mobile goal clamp according to today's delegation.", "Everyone"),
  )
)

Now that we have the towers, we are ready to create the mobile goal clamp. The mobile goal clamp is essential for this season as it will help us take control of the crucial game elements. We hope to get this done as soon as possible. 

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Jin, Rory, Eric, Anders
    - *Manufacturing*: Jin, Rory, Eric, Anders
    - *Oversight & Quality Control*: Jin
    - *Initial Testing*: Not completed yet
    - *Programming*:  Ishika
  ],
  today: [
    - Assembling the mounts for the clamp: Rory, Eric
    - Assemble the pistons for the clamp: Jin, Anders 
  ]
)

#colbreak()

== Build Process
#grid(
  figure(
      image("build/2024.08.17-3.jpg", width: 190pt),
      caption: "////"
  ),
  [
    === Materials
    - x2 single-action pistons
    - x2 3x1x1 C-channel 
    - x1 12x2x1 C-channel
    - The rest of the materials can be found in the toolbox.
  ],
)

#grid(
  [
    === Assembly
    - With the 2 3x1x1 C-channels, we created a mount at the front of the drivetrain. 
      - This serves as the mounting point for where the clamp will pivot off of.
    - Attached the 12x2x1 C-channel to the mobile goal mount using a screw joint so that it can pivot freely.
    - Added pillow bearings to the upper C-channel.
    - Used screws, keps nuts, and a crown nut to keep the pistons secured to the top C-channel on the drivetrain towers.
      - Added the single-action pistons with spacers filling the gaps in between the pistons and the C-channel on the clamp.
  ],
  figure(
    image("build/2024.08.17-2.jpg", width: 190pt),
    caption: "////"
  ),
    figure(
    image("build/2024.08.17-3.jpg", width: 200pt),
    caption: "////"
  ),
  stack(
    spacing: 10pt,
    [
      === Troubleshooting
      - The bracing between the towers interfered with the clamp. We had to change the way we braced the towers from standoffs to C-channel.
        - The standoff brace that we had restricted the movement of the clamp
      - We shortened the arm of the clamp to 7 holes because it was sticking out 
    ],
    figure(
      image("build/2024.08.17-4.jpg", width: 200pt),
      caption: "////"
    ),
  )
)

= 2024/08/23
#to-do(
  date: datetime(year: 2024, month: 8, day: 23),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Build the mobile goal clamp according to today's delegation.", "Everyone"),
  )
)

Today we worked on adding the pneumatics to the robot. We decided to use single-action pistons and a single-action solenoid with a T-junction for both pistons. We also started with only one air tank, so we could always have the chance to add another one later.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: : Eric and Rory 
    - *Manufacturing*:  Jin, Anders, Eric, and Rory
    - *Oversight & Quality Control*: Jin
    - *Initial Testing*: Eric, Anders, and Rory
    - *Programming*:   Ishika and Ajibola
  ],
  today: [
    - Assemble the rubber stopper for the mobile goal clamp: Anders, Rory
    - Troubleshoot the mobile goal clamp angle: Eric and Jin
 ]
)

== Build Process
#grid(
  figure(
      image("build/2024.08.23-1.jpg", width: 190pt),
      caption: "////"
  ),
  [
    === Materials
    - x1 Pneumatic air cylinder 
    - Zip ties
    - x1 Double-action solenoid
    - Rubber bands
    - x1 T-junction
    - Pneumatic tubing
    - The remaining materials are in the toolbox
  ],
  [
    === Assembly
    - We attached the air tank to the side of the robot with zip ties and rubber bands.
      - This was the only space we could place the air tank
      - Problem: Having the air tank here could offset our center of gravity 
    - We cut pneumatic tubing and used it to connect the air tank to the double action solenoid.
      - We also connected the solenoid to the T-junction and then connected the T-junction to the top of the pistons.
    - We inflated the air tank and quickly tested the pneumatics.
  ],
  figure(
    image("build/2024.08.23-2.jpg", width: 190pt),
    caption: "////"
  ),
  figure(
    image("build/2024.08.23-3.jpg", width: 190pt),
    caption: "////"
  ),
  stack(
    spacing: 10pt,
    [
      === Troubleshooting
      - The clamp did not hold onto the mogo very securely and it also did not tilt it enough. 
      - First, we tried adding mesh to increase the grip on the mogo, however this did not work the best. 
      - Next, we tried changing the position of the rubber grips, which did improve the design greatly. 
      - We also wanted to switch the pistons to double-action but we had to postpone that to the next practice
    ],
    figure(
      image("build/2024.08.23-4.jpg", width: 100pt),
      caption: "////"
    ),
  )
)