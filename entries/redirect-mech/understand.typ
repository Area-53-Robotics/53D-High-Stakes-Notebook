#import "/template/template.typ": *

#show: create-entry.with(
  title: "Redirect Mechanism v1",
  type: "understand",
  date: datetime(year: 2024, month: 10, day: 10),
  attendance: ("Ajibola", "Ishika", "Eric", "Rory", "Makhi", "Anders"),
  designed: "Jin",
  witnessed: "Eric",
)

#set grid(
  columns: (1fr, 1fr),
  gutter: 5pt,
)

#grid(
  align: (x, _) =>
    if x == 0 {center + horizon}
    else if x == 1 {left + top},

  grid.cell(colspan: 2, align: left + horizon)[
    = Conservation of Energy
    #v(15pt)
  ],
  image("understand/conservation-of-energy.excalidraw.svg", width: 200pt),
  [
    == What is Conservation of Energy?
    The total energy within a closed system remains constant over time, meaning energy can neither be created nor destroyed, only transformed from one form to another.
    #admonition(type: "equation")[
      If:
      - $K#sub[1]$ is the initial kinetic energy
      - $U#sub[1]$ is the initial potential energy
      - $K#sub[2]$ is the final kinetic energy
      - $U#sub[2]$ is the final potential energy

      $ K#sub[1] + U#sub[1] = K#sub[2] + U#sub[2] $
    ]

    == How does it relate to our robot?
    The robot-ring system is an isolated system, meaning that no external forces take away energy from the system. Initially, as the ring travels up the robot's intake, there is only kinetic energy. As the ring is sorted into our redirect mechanism, the kinetic energy is transferred into potential gravitational energy.
  ],
)

#colbreak()

#grid(
  align: (x, _) =>
    if x == 0 {left + top}
    else if x == 1 {center + horizon},

  grid.cell(colspan: 2)[
    = Angular Displacement
    #v(15pt)
  ],
  [
    == What is angular displacement?
    The motion of an object along a curved path is known as curvilinear motion. The difference between the initial point and final point is termed as motion. The angle difference between the initial and final positions of a point that has rotated in a specified axis is angular displacement.

    == How does it relate to our robot?
    The redirect mechanism rotates in a circular path. Since the redirect mechanism moves as a system, we can represent it as a particle. This means that we can determine the angular displacement by looking only at its center of gravity, allowing us to control the net direction of travel as the redirect mechanism rotates up and down.
  ],
  stack(
    spacing: 10pt,
    image("understand/angular-displacement.excalidraw.svg", fit: "contain", height: 115pt),
    admonition(type: "equation")[
      If:
      - $theta$ is the angular displacement
      - $s$ is the distance traveled by the body
      - $r$ is the radius of the circle along which the body is moving

      $ theta = s / r $
    ]
  ),
)

#grid(
  align: (x, _) =>
    if x == 0 {left + top}
    else if x == 1 {center + horizon},

  grid.cell(colspan: 2)[
    = Tangential Velocity
    #v(15pt)
  ],
  [
    == What is tangential velocity?
    The tangential velocity is the measurement of the speed at any point tangent to a rotating wheel moving in circular motion. Alternatively described, tangential velocity is the component of the motion along the edge of a circle measured at any arbitrary point of time.

    == How does it relate to our robot?
    How fast the redirect mechanism moves is determined by its tangential velocity. Since the redirect mechanism rotates using a system of gears, the tangential velocity directly relates to the linear speed of the gear systems.
  ],
  stack(
    spacing: 10pt,
    image("understand/tangential-velocity.excalidraw.svg", fit: "contain", height: 125pt),
    admonition(type: "equation")[
      If:
      - $V#sub[r]$ is the tangential velocity
      - $r$ is the radius of the circular path
      - $omega$ is the angular velocity

      $ V#sub[r] = r omega $
    ]
  ),
)