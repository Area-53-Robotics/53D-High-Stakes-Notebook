#import "/template/template.typ": *

#show: create-entry.with(
  title: "Odometry - Hardware",
  type: "select",
  date: datetime(year: 2024, month: 2, day: 12),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Ajibola",
  witnessed: "Ishika",
)

After brainstorming odometry hardware setups, we needed to select one to use.

#decision-matrix-criteria[
  - Space Efficiency - How ef
  - Orientation Tracking - 
  - Vertical Tracking - 
  - Horizontal Tracking - 
]

#double-decision-matrix(
  criteria: (
    ("Space Efficiency", 5),
    ("Orientation Tracking", 5),
    ("Vertical Tracking", 5),
    ("Horizontal Tracking", 2),
  ),
  choices: (
    ("3 Tracking Wheels", 1, 4, 4, 4),
    ("2 Tracking Wheels & 1 IMU", 1, 4, 4, 4),
    ("1 Tracking Wheel & 1 IMU", 3, 4, 4, 0),
    ("Motor Encoders", 4, 2, 2, 0),
  ),
  body: colbreak()
)

#admonition(type: "select", title: "Final Selection")[
  A 1 tracking wheel and IMU odometry setup provides accurate vertical and orientation tracking, while also being space efficient. Because our drivetrain has traction wheels, we do not need the horizontal tracking provided by the other setups.
]