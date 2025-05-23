#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mobile Goal Clamp v1",
  type: "understand",
  date: datetime(year: 2024, month: 8, day: 14),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Jin",
  witnessed: "Rory",
)

#set grid(
  columns: (1fr, 1fr),
  gutter: 5pt,
)

#grid(
  align: (x, _) =>
    if x == 0 {center + horizon}
    else if x == 1 {left + top},

  grid.cell(colspan: 2, align: left)[
    = Levers
  ],
  stack(
    spacing: 10pt,
    image("understand/first-class-lever.excalidraw.svg", width: 150pt),
    image("understand/second-class-lever.excalidraw.svg", width: 150pt),
    image("understand/third-class-lever.excalidraw.svg", width: 150pt),
    image("understand/mechanical-leverage.excalidraw.svg", width: 280pt)
  ),
  [
    == What are levers?
    Levers are simple machines that help make it easier to lift, move, or apply force to an object. They consist of a rigid bar that pivots around a fixed point called a fulcrum. By applying force (effort) at one point on the lever, you can move an object (the load) at another point, using the mechanical advantage to multiply the input force and make the task easier. There are three types of lever systems with different levels of mechanical advantages.

    == First Class Levers
    - Arrangement: The fulcrum is located between the effort and the load.
    - Examples: Seesaw, crowbar, scissors.
    - Mechanical Advantage: This can vary depending on where the fulcrum is placed. If the fulcrum is closer to the load, it provides more force. If it's closer to the effort, it provides more speed.

    == Second Class Levers
    - Arrangement: The load is located between the fulcrum and the effort.
    - Examples: Wheelbarrow, bottle opener, nutcracker.
    - Mechanical Advantage: Less effort is required to move a larger load.

    == Third Class Levers
    - Arrangement: The effort is located between the load and the fulcrum.
    - Examples: Tweezers, fishing rod, human arm.
    - Mechanical Advantage: It does not reduce the effort needed but increases the speed or range of motion.
  
    == How do levers relate to the clamp?
    In a clamp, a lever system is often used. The lever amplifies the force applied at one end, creating a stronger gripping force at the point of contact with the object at the other end.
  ],
)

#grid(
  align: (x, _) =>
    if x == 0 {left + top}
    else if x == 1 {center + horizon},

  grid.cell(colspan: 2, align: left)[
    = Torque
    #v(10pt)
  ],
  [
    == What is Torque?
    Torque is a measure of the rotational force applied to an object around an axis. It is a vector quantity, meaning it has both magnitude and direction.

    #admonition(type: "equation")[
      If:
      - #sym.tau is the exerted torque (rotational force)
      - $r$ is the distance from the fulcrum 
      - $F$ is the force that is applied

      #text(size: 15pt)[
        $ #sym.tau = r F $
      ]
    ]
     
    == How does torque relate to the clamp?
    The arms of a clamp act like levers, and the pivot point of these arms is the fulcrum. When a motor or actuator applies force to the arms, torque is generated. This torque causes the arms to rotate around the fulcrum and close around the object.
    The greater the torque, the more force the clamp can apply to grip the object.
  ],
  image("understand/torque.png")
)

#grid(
  align: (x, _) =>
    if x == 0 {center + horizon}
    else if x == 1 {left + top},

  grid.cell(colspan: 2, align: left)[
    = Equilibrium
  ],
  image("understand/equilibrium.excalidraw.svg"),
  [
    == What is Equilibrium?
    Equilibrium, in the context of physics and mechanics, refers to a state in which an object or a system experiences a balance of forces and torques.

    == How does equilibrium relate to the clamp?
    In a clamp, equilibrium is achieved when the gripping forces applied by the clamp's arms are equal and opposite to the reaction forces exerted by the object being clamped. If these forces are balanced, the object stays in place without moving or slipping. If they are unbalanced, the object may either slip out of the clamp (if the gripping force is too low) or be damaged (if the gripping force is too high).
  ]
)