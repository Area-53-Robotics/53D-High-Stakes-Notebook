#import "/template/template.typ": *

#show: create-entry.with(
  title: "Ring Rush Mechanism v1",
  type: "understand",
  date: datetime(year: 2025, month: 02, day: 01),
  attendance: ("Ajibola", "Ishika", "Eric", "Rory", "Makhi", "Anders"),
  designed: "Jin",
  witnessed: "Rory",
)
It is important to understand the physics and mechanics of the ring rush mechanism to optimize the mechanism. By breaking the concept into digestible pieces, we feel more comfortable brainstorming a potential design.

#set grid(
  columns: (1fr, 1fr),
  gutter: 5pt,
)

#grid(
  align: (x, _) =>
    if x == 0 {center + horizon}
    else if x == 1 {left + top},

  grid.cell(colspan: 2, align: left + horizon)[
    = Inertia
    #v(15pt)
  ],
  image("understand/inertia.excalidraw.svg", width: 170pt),
  [
    == What is Inertia?
    Inertia is the tendency of an object to resist changes in its motion. It means that an object at rest will stay at rest, and an object in motion will keep moving at the same speed and in the same direction unless acted upon by an external force.

    == How does it relate to our robot?
    In the ring stack, the rings stay stacked until the ring rush mechanism applies force to disrupt them. The rings will not move on their own because of inertia, but once they are hit, they will keep moving unless friction or another force stops them.
  ],
)

#grid(
  align: (x, _) =>
    if x == 0 {left + top}
    else if x == 1 {center + horizon},

  grid.cell(colspan: 2)[
    = Pascal's principle
    #v(15pt)
  ],
  image("understand/pascal-principle.excalidraw.svg", width: 170pt),
  [
    == What is Pascal's principle?
    Pascal's Principle states that when pressure is applied to a confined fluid, the pressure is transmitted equally in all directions throughout the fluid.

    == How does it relate to the robot?
   The mechanism's pistons operate using compressed air. When air pressure is applied to one side of the piston, it pushes outward with equal force across the entire piston's surface area, causing it to extend. Similarly, when the air pressure shifts to the opposite side, the piston retracts.
  ],
  image("understand/pascal-formula.png", fit: "contain", height: 110pt),
   admonition(type: "equation")[
      If:
      - $P$ is pressure
      - $F#sub[1] and F#sub[2]$  are force applied at different points in the system.
      - $A#sub[1] and A#sub[2]$ are the areas of the surface where the force is applied.

      $ P = (F#sub[1]) / (A#sub[1]) = (F#sub[2]) / (A#sub[2]) $
    ]
)

#grid(
  align: (x, _) =>
    if x == 0 {left + top}
    else if x == 1 {center + horizon},

  grid.cell(colspan: 2)[
    = Impulse
    #v(15pt)
  ],
  stack(
    spacing: 10pt,
    image("understand/impulse-1.excalidraw.svg", width: 200pt),
    image("understand/impulse-2.excalidraw.svg", width: 200pt)
  ),
  [
    == What is Impulse?
    Impulse describes the change in momentum of an object. It is often denoted by the symbol J and is mathematically expressed as the product of force (F) and the time (Δt) over which the force is applied:
    #admonition(type: "equation")[
      If:
      - $J$ is the impulse (change in momentum) of an object
      - $F$ is the amount of force applied to an object
      - $#sym.Delta t$ is the time over which the force is applied

      $ J = F #sym.Delta t $

    ]
    == How does this relate to the robot?
    The ring rush mechanism utilizes impulse by applying a force over a short period to change the momentum of the rings. When the piston extends outward, it exerts a force on the ring stack, generating an impulse that causes the rings to move. The magnitude of this impulse determines how the rings behave. If the force is too high over a short time, the rings may scatter unpredictably, while a more controlled force application can guide them in a desired direction

  ],
)