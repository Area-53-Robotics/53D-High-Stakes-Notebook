#import "/template/template.typ": *

#show: create-entry.with(
  title: "Ladybrown v1",
  type: "understand",
  date: datetime(year: 2024, month: 10, day: 23),
  attendance: ("Ajibola", "Ishika", "Eric", "Rory", "Makhi"),
  designed: "Jin",
  witnessed: "Rory",
)

The ladybrown mechanism utilizes friction in its grippers to securely hold onto the ring, ensuring it does not slip during motion. When the mechanism rotates, it relies on angular displacement to position the ring accurately, achieving a 180-degree turn to align with the wall stakes. During the scoring process, collision forces are carefully managed to ensure the ring is placed without damaging either the robot or the ring, maintaining precision and control.

#set grid(
  columns: (1fr, 1fr),
  gutter: 5pt,
)

#grid(
  align: (x, _) =>
    if x == 0 {center + horizon}
    else if x == 1 {left + top},

  grid.cell(colspan: 2, align: left + horizon)[
    = Friction
    #v(15pt)
  ],
    image("understand/Understand_ Friction.excalidraw.svg", width: 200pt),

  [
    == What is Friction?
    Friction is the force that resists an object’s motion on a surface. The object can either be stationary or in motion relative to the surface. Friction occurs where the object is in contact with the surface. In other words, it takes place between two surfaces, and hence, is a contact force.

    == How does it relate to the Ladybrown?

    For the ladybrown to grab a ring, there needs to be a contact force between the ladybrown and the ring. This contact force creates a friction force that prevents the ring from slipping out of the ladybrown. 

  ],
)

#grid(
  align: (x, _) =>
    if x == 0 {left + top}
    else if x == 1 {center + horizon},

  grid.cell(colspan: 2)[
    = Angular Displacement
    #v(15pt)
  ],  
  [
    == What is Angular Displacement?
    The motion of an object along a curved path is known as curvilinear motion. The difference between the initial point and the final point is termed ‘motion’. The angle difference between the initial and final positions of a point that has rotated along a specified axis is angular displacement. 
    == How does it relate to the ladybrown?
    The ladybrown mechanism rotates 180° as part of its scoring functionality. This precise rotation ensures that the mechanism can consistently align with the wall stakes to score rings. 
  ],
   image("understand/Understand angular displacement .excalidraw.svg"),
)

#colbreak()

#grid(
  align: (x, _) =>
    if x == 0 {left + top}
    else if x == 1 {center + horizon},

  grid.cell(colspan: 2)[
    = Collision
    #v(15pt)
  ],
  [
    == What is Collision?

   Collision is a reciprocal interaction between two masses for a very short interval wherein the momentum and energy of the colliding masses change.

    == How do they relate to to the ladybrown?
    When the ladybrown grabs a ring from the intake, a collision between the ladybrown’s gussets and the ring occurs. Therefore, the momentum and energy of the ring changes. 

  ],
    image("understand/Understand_ Collision.excalidraw.svg"),
 
)