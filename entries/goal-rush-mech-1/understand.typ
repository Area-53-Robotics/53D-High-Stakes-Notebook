#import "/template/template.typ": *

#show: create-entry.with(
  title: "Goal Rush Mechanism v1",
  type: "understand",
  date: datetime(year: 2025, month: 02, day: 01),
  attendance: ("Ajibola", "Ishika", "Eric", "Rory", "Makhi", "Anders"),
  designed: "Jin",
  witnessed: "Rory",
)

We agree that the mobile goal rush mechanism should be a fairly simple mechanism to build and troubleshoot. Regardless, understanding how the mobile goal rush mechanism works helps speed up the building process and functions as a beneficial learning experience for the novice builders.

#set grid(
  columns: (1fr, 1fr),
  gutter: 5pt,
)

#grid(
  align: (x, _) =>
    if x == 0 {center + horizon}
    else if x == 1 {left + top},

  grid.cell(colspan: 2, align: left + horizon)[
    = Leverage
    #v(15pt)
  ],
  image("understand/clamp-levers.excalidraw.svg", width: 170pt),
  [
    == What is Leverage?
    Leverage is the mechanical advantage gained by using a lever to amplify force. A lever is a rigid bar that rotates around a fixed point called a fulcrum. By applying force at one point on the lever, one can move a load at another point with either increased force or increased distance, depending on the lever's setup.

    == How does it relate to our robot?
    When the piston extends, it applies a force near the pivot, causing the arm to drop down. Since force is being applied closer to the pivot rather than at the end, the arm's movement is quick and forceful. The longer the arm, the greater the sweeping reach and potential force exerted on the rings, making it more effective at disrupting stacks.
  ],
)

#grid(
  align: (x, _) =>
    if x == 0 {left + top}
    else if x == 1 {center + horizon},

  grid.cell(colspan: 2)[
    = Torque
    #v(15pt)
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

    == How does torque relate to the mechanism?
    The arms of a clamp act like levers, and the pivot point of these arms is the fulcrum. When a motor or actuator applies force to the arms, torque is generated. This torque causes the arms to rotate around the fulcrum and close around the object.
    The greater the torque, the more force the clamp can apply to grip the object.
  ],
  image("understand/torque.png")
)

#grid(
  align: (x, _) =>
    if x == 0 {left + top}
    else if x == 1 {center + horizon},

  grid.cell(colspan: 2)[
    = Boyle's Law
    #v(15pt)
  ],
  image("understand/boyles-law.excalidraw.svg"),
  [
    == What is Boyle's Law?
    Boyle's law states that the pressure of a given mass of gas is inversely proportional to its volume when the temperature is held constant. This means that if the volume of the gas increases, the pressure decreases, and vice versa:
    #admonition(type: "equation")[
      If:
      - $P#sub[1]$ first pressure
      - $P#sub[2]$ second pressure
      - $V#sub[1]$ first volume
      - $V#sub[2]$ second volume
      $ (P#sub[1]) (V#sub[1]) = (P#sub[2]) (V#sub[2]) $

    ]
    == How does this relate to the robot?
    The mobile goal rush mechanism is a mechanism that relies on pneumatics for activation. When the pneumatics extend, the volume of the cylinder decreases while the pressure increases. An increase in pressure helps prevent the piston from retracting back when pushed by enemy robots.
  ],
)