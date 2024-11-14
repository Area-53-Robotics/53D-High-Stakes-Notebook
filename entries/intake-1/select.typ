#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v1",
  type: "select",
  date: datetime(year: 2024, month: 9, day: 1),
  attendance: ("Ajibola", "Ishika", "Eric", "Jin", "Rory", "Makhi"),
  designed: "Rory",
  witnessed: "Ishika",
)

Continuing with the design process for the intake, we identified criteria that we could use to evaluate the intake ideas. Since the intake will be the most critical subsystem apart from the drivetrain, careful consideration was required.

#decision-matrix-criteria[
  - Efficiency - How much rotational force the gear ratio can generate.
  - Simplicity - How long the clamp can be in use before requiring maintenance.
  - Reliability - How little space the clamp takes up.
  - Smoothness - How reliable the clamp is at securing a mobile goal.
  - Durability - How often the clamp can activate before burning out or running out of air pressure.
  - Compactness - How little space the intake takes up.
]

#double-decision-matrix(
  criteria: (
    ("Efficiency", 5),
    ("Simplicity", 4),
    ("Reliability", 5),
    ("Smoothness", 4),
    ("Durability", 2),
    ("Compactness", 4),
  ),
  choices: (
    ("Hook", 4, 4, 4, 4, 3, 4),
    ("Hood", 4, 3, 4, 4, 3, 3),
    ("Hybrid", 3, 2, 1, 2, 3, 2),
  ),
  body: colbreak()
)

#admonition(type: "select", title: "Final Selection")[
  We chose the hook intake idea because of how reliable the hooks are at picking up rings from different positions and intaking them onto the mobile goal. From videos that we saw online, the hooks were able to score rings faster than a hood intake. Additionally, hook intakes are lighter than hood intakes, which keeps the door open for us to build an endgame climb mechanism in the future.
]