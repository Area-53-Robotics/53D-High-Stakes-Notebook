#import "/template/template.typ": *

#show: create-entry.with(
  title: "Odometry v1 - Movement",
  type: "select",
  date: datetime(year: 2024, month: 11, day: 23),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Ajibola",
  witnessed: "Ishika",
)

// After brainstorming the autonomous implementations, we needed to select one to use. Because the signature event is in one week (2023/02/03), implementation time is going to be the most restrictive criteria.

#decision-matrix-criteria[
  - Implementation Time - How little time it takes to create the algorithms and functions necessary for the autonomous implementation.
  - Testing Time - How little time it takes to develop and test the autons made using the autonomous implementation.
  - Robustness - How many types of movements can be made using the auton implementation.
  - Consistency - How consistent the autons made using the autonomous implementation are.
]

#double-decision-matrix(
  criteria: (
    ("Implementation Time", 5),
    ("Testing Time", 5),
    ("Robustness", 3),
    ("Consistency", 4),
  ),
  choices: (
    ("Relative Movements", 4, 1, 2, 2),
    ("PID", 3, 3, 3, 3),
    ("Pure Pursuit", 1, 3, 4, 4),
  )
)

#admonition(type: "select", title: "Final Selection")[
  PID strikes the best balance between implementation & testing time and its resulting performance.
]

#admonition(type: "note")[
  Although we will be using PID for the majority of our autonomous movements, it is not exclusive with Pure Pursuit implementation. If possible, we would like to implement both movement options and use them as needed.
]