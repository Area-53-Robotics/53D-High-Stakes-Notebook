#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mobile Goal Clamp v1",
  type: "select",
  date: datetime(year: 2024, month: 8, day: 15),
  attendance: ("Ajibola", "Ishika", "Eric", "Jin", "Rory", "Makhi"),
  designed: "Eric",
  witnessed: "Ishika",
)

// After brainstorming different robot ideas, we had to pick one to begin building. This will be a very important decision as it will influence the functionality of our robot and subsystems in the future. As such, we identified as much criteria as possible to make an accurate judgement of each idea.

#decision-matrix-criteria[
  - Torque - How much rotational force the gear ratio can generate.
  - Durability - How long the clamp can be in use before requiring maintenance.
  - Compactness - How little space the clamp takes up.
  - Consistency - How reliable the clamp is at securing a mobile goal.
  - Reusability - How often the clamp can activate before burning out or running out of air pressure.
]

#double-decision-matrix(
  criteria: (
    ("Torque", 5),
    ("Durability", 2),
    ("Compactness", 4),
    ("Reliability", 5),
    ("Reusability", 2),
  ),
  choices: (
    ("Idea 1", 3, 4, 3, 3, 3),
    ("Idea 2", 4, 4, 3, 4, 3),
    ("Idea 3", 2, 2, 1, 2, 4),
  ),
)

#admonition(type: "select", title: "Final Selection")[
  Although idea 2 won, we do not have the space for the pistons. Firstly, we would need to move the bottom cross brace forward to allow the pistons to reach the length needed. Secondly, when the pistons extend, the pistons would rub against the cross brace. Not only would this damage the piston over time, but it would decrease the efficiency of the piston. Until we can find a solution to this problem, we will implement idea 1.
]