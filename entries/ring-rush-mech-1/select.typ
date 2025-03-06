#import "/template/template.typ": *

#show: create-entry.with(
  title: "Ring Rush Mechanism v1",
  type: "select",
  date: datetime(year: 2024, month: 02, day: 02),
  attendance: ("Ajibola", "Ishika", "Eric", "Jin", "Rory", "Makhi"),
  designed: "Rory",
  witnessed: "Ishika",
)

The ring rush mechanism will be primarily used for the auton. Since the theoretical maximum score in this game is not high (we calculated this in our [game analysis: strategy entry]) compared to previous games, winning the autonomous bonus is a priority. Therefore, selecting the right ring rush mechanism is important.

#decision-matrix-criteria[
  - Consistency - How reliable it is at disrupting the ring stack and grabbing rings. A higher score means it is more consistent.
  - Efficiency - How efficient it is at stealing rings. A higher score means it is more efficient.
  - Structure - How strong it is when it is deployed. A higher score means it can handle more stress.
  - Air Usage - How efficiently it can use air. A higher score means it is more efficient at using air.
  - Versatility - The mechanism’s ability to serve multiple functions. A higher score means that it can be used for more functions.
  - Weight - How light it is. A higher score means it is more light.
]

#double-decision-matrix(
  criteria: (
    ("Consistency", 5),
    ("Efficiency", 5),
    ("Structure", 4),
    ("Air Usage", 3),
    ("Versatility", 5),
    ("Weight", 3)
  ),
  choices: (
    ("Idea 1", 4, 4, 4, 3, 3, 3),
    ("Idea 2", 3, 2, 3, 4, 3, 3),
    ("Idea 3", 3, 2, 3, 3, 4, 3),
  ),
  body: colbreak()
)

#admonition(type: "select", title: "Final Selection")[
  We chose idea 1 mainly for its structure. We are worried that ideas 2 or 3 would bend over time because we will be ramming into the ring stack. The impulse from the collision between the ring rush mechanism and the ring stack will deform the mechanism over time. Additionally, we plan on making a mobile goal rush mechanism on the side of the ring rush mechanism.
]