#import "/template/template.typ": *

#show: create-entry.with(
  title: "Ladybrown v1",
  type: "select",
  date: datetime(year: 2024, month: 10, day: 24),
  attendance: ("Ajibola", "Ishika", "Eric", "Jin", "Rory", "Makhi"),
  designed: "Makhi",
  witnessed: "Ishika",
)

Like our previous redirect mechanism, the ladybrown will play a pivotal role in our robot. The ability to score on the wall stakes can counteract the points lost if we lose auton, especially if no one else on the field can score wall stakes. Therefore, we require the most efficient redirect mechanism design, which we identified through a decision matrix.

#decision-matrix-criteria[
  - Stability -  How stable it is. A higher score means it is more stable.
  - Efficiency - How efficient it is at grabbing and scoring onto the wall stakes. A higher score means it is more efficient.
  - Grip -  Its ability to grab a ring from the intake. A higher score means it has a better grip on the ring.
  - Speed - How quick it is at scoring. A higher score means it is more quick.
  - Structure -  How structurally secure it would be. A higher score means it requires less bracing.
  - Weight -  How light it is. A higher score means it is more light.
]

#double-decision-matrix(
  criteria: (
    ("Stability", 5),
    ("Efficiency", 4),
    ("Grip", 4),
    ("Speed", 3),
    ("Structure", 5),
    ("Weight", 4),
  ),
  choices: (
    ("Angled Ladybrown", 4, 4, 4, 3, 3, 3),
    ("Straight-up Ladybrown", 3, 4, 4, 3, 4, 3),
    ("Ladybrown Hooks", 2, 3, 2, 4, 4, 3),
  ),
  body: colbreak()
)

#admonition(type: "select", title: "Final Selection")[
  Even though the angled and straight-up ladybrown tied, we decided to do the angled ladybrown because of its lower center of gravity. We can easily secure the ladybrown by using custom gussets as support. Additionally, the angled ladybrown has a slightly longer reach because of how far out the supports are, allowing for more efficient wall stake scoring capabilities.
]