#import "/template/template.typ": *

#show: create-entry.with(
  title: "Goal Rush Mechanism v1",
  type: "select",
  date: datetime(year: 2025, month: 02, day: 02),
  attendance: ("Ajibola", "Ishika", "Eric", "Jin", "Rory", "Makhi"),
  designed: "Rory",
  witnessed: "Ishika",
)

The mobile goal rush mechanism will be a key factor in winning the autonomous win point because we need to collect 3 top rings on our side of the field. The ability to grab a mobile goal quickly from the auton line would also help us control more of the mobile goals on the field.

#decision-matrix-criteria[
  - Consistency - How reliable it is at disrupting the ring stack and grabbing rings. A higher score means it is more consistent.
  - Efficiency - How efficient it is at stealing rings. A higher score means it is more efficient.
  - Structure - How strong it is when it is deployed. A higher score means it can handle more stress.
  - Grip Strength - How strong it is at gripping onto a mobile goal. A higher score means it has a stronger grip and is less likely to let the mobile goal go when the robot is dragging it.
  - Weight - How light it is. A higher score means it is more light.
]

#double-decision-matrix(
  criteria: (
    ("Consistency", 5),
    ("Efficiency", 5),
    ("Structure", 4),
    ("Grip Strength", 5),
    ("Weight", 4)
  ),
  choices: (
    ("Idea 1", 4, 4, 3, 4, 4),
    ("Idea 2", 3, 2, 3, 3, 3),
    ("Idea 3", 4, 4, 3, 4, 2),
  ),
  body: colbreak()
)

#admonition(type: "select", title: "Final Selection")[
  Although Idea 1 won the decision matrix, we chose Idea 3 because of time constraints. Custom gussets require a lot of time to design, laser cut, and troubleshoot. We do not have the time to repeatedly troubleshoot the gusset design.
]