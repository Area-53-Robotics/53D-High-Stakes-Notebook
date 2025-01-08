#import "/template/template.typ": *

#show: create-entry.with(
  title: "Redirect Mechanism v1",
  type: "select",
  date: datetime(year: 2024, month: 10, day: 10),
  attendance: ("Ajibola", "Ishika", "Eric", "Jin", "Rory", "Makhi"),
  designed: "Rory",
  witnessed: "Ishika",
)

The redirect mechanism will be one of the most important aspects of our robot because of how low scoring this game is. The ability to control the stakes in this game can allow us to come back from a game, especially if we lose auton. Therefore, we need the best redirect mechanism design possible, which we determined using a decision matrix.

#decision-matrix-criteria[
  - Height - How high the redirect mechanism can lift while remaining stable.
  - Stability - How low the center of gravity is. A low center of gravity reduces tipping risks when the redirect mechanism is extended.
  - Durability - How well it can withstand repeated use and impacts during competition.
  - Reliability - How reliable it can pick up a ring and score on a stake.
  - Simplicity - How straightforward it is to build and test.
]

#double-decision-matrix(
  criteria: (
    ("Height", 3),
    ("Stability", 5),
    ("Durability", 4),
    ("Reliability", 5),
    ("Simplicity", 3),
  ),
  choices: (
    ("Six-bar", 4, 2, 4, 3, 3),
    ("Four-bar", 3, 3, 4, 4, 4),
    ("Pneumatics", 3, 4, 3, 2, 2),
  ),
  body: colbreak()
)

#admonition(type: "select", title: "Final Selection")[
  We chose the four-bar design inspired by 1010W's design. Not only will building the four-bar design be an excellent chance to mentor the novice buildings on four-bar linkage, but we are confident that we can build the four-bar quickly.
]