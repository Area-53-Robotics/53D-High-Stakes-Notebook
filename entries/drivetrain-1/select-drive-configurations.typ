#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1 - Drive Configurations",
  type: "select",
  date: datetime(year: 2024, month: 6, day: 22),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Eric",
  witnessed: "Ishika",
)

After brainstorming different drive configurations, we had to pick one to begin building. This will be a very important decision as it will determine what we can build in the future. As such, we identified as much criteria as possible to make an accurate judgement.

#decision-matrix-criteria[
  - Speed - The maximum speed of the drivetrain configuration.
  - Acceleration - How fast the drivetrain accelerates.
  - Turning - The smoothness of the turns made with the drivetrain configuration.
  - Force - How much force the drivetrain configuration can generate.
  - Compactness - How little space the drivetrain configuration takes up.
  - Omni-Directionality - The ability of the drivetrain configuration to move in multiple directions.
  - Ease of Programming - How easy the drivetrain configuration is to program.
  - Ease of Driving - How easy the drivetrain configuration is to drive.
]

#double-decision-matrix(
  criteria: (
    ("Speed", 5),
    ("Acceleration",5),
    ("Turning", 4),
    ("Force", 4),
    ("Compactness", 3),
    ("Omni-Directionality", 2),
    ("Ease of Programming", 2),
    ("Ease of Driving", 2),
  ),
  choices: (
    ("Tank Drive", 3, 4, 3, 4, 4, 2, 4, 4),
    ("H-Drive", 3, 3, 3, 3, 2, 3, 3, 3),
    ("Holonomic", 4, 2, 4, 2, 2, 4, 2, 3),
  ),
)

#admonition(type: "select", title: "Final Selection")[
  A tank drive configuration meets the most of the criteria we identified for the what we need in a drive configuration. The flexibility it offers will be useful later in the season when we have to rebuild subsystems.
]