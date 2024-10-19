#import "/template/template.typ": *

#show: create-entry.with(
  title: "Towers & Bracing",
  type: "build",
  date: datetime(year: 2024, month: 8, day: 16),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric"),
  designed: "Makhi",
  witnessed: "Rory",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2024/08/16
#to-do(
  date: datetime(year: 2024, month: 8, day: 16),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Build the mobile goal clamp according to today's delegation.", "Everyone"),
  )
)

At this meeting, we worked on building the main towers for the bot and bracing/boxing the towers with spacers and standoffs. These towers will serve as the mounting points for future subsystems such as the mobile goal clamp and intake. We used a triangle brace designed with a C-channel serving as the main crossbar and support.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Jin, Rory, Eric
    - *Manufacturing*: Eric, Jin, Rory
    - *Oversight & Quality Control*: Jin
    - *Initial Testing*: Jin, Eric
    - *Programming*:  Ajibola, Ishika
  ],
  today: [
    - Assemble the towers:  Eric, Rory
    - Properly brace the towers: Eric, Rory, Jin
 ]
)

== Build Process
#grid(
  figure(
    image("build/2024.08.16-1.jpg", width: 150pt),
    caption: "A front view of the towers. This is the space we will be working with for the mobile goal clamp"
  ),
  [
    === Materials
    - x2 24x2x1 C-channel
    - x1 16x2x1 C-channel
    - The rest of the materials can be found in the toolbox 
  ],
),

#grid(
  [
    === Assembly
    - Attached the 2 24x2x1 C-channels onto the full crossbar on the drivetrain 
      - We had the C-channel facing towards each other.
      - This leaves space for future subsystems.
    - Added cross bracing between towers
      - They are 18 holes above the initial mounting holes
      - This helps prevent the C-channel from bending as it is rigid support keeping the two C-channel towers in place.
    - Attached the pillow bearings onto the sides of the towers and drivetrain 
      - We will add the triangle brace on these pillow bearings 
      - With standoffs, we created the triangle brace.
  ],
  figure(
    image("build/2024.08.16-2.jpg", width: 140pt),
    caption: "A back view of the towers. This is the space we will be working with for the intake and other subsystems."
  ),
)