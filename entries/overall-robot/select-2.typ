#import "/template/template.typ": *

#show: create-entry.with(
  title: "Overall Robot Plan v2",
  type: "select",
  date: datetime(year: 2024, month: 8, day: 6),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric"),
  designed: "Ajibola",
  witnessed: "Jin",
)

After brainstorming the new overall robot ideas, we had to pick one to implement. To evaluate each overall robot idea, we used the same criteria that we used in our #entry-reference(type: "select", title: "Overall Robot Plan", date: datetime(year: 2024, month: 6, day: 15)).

#decision-matrix-criteria[
  - Durability - The ability to remain functional despite being faced with challenges and obstacles.
  - Mobility - To be able to move freely and efficiently.
  - Space Use - To utilize the space to the maximum ability.
  - Intake - The consideration and quality of the intake.
  - Clamp Ability -  How well the clamp functions in consideration to the rest of the robot.
  - Wall Stake Consistency - How consistently the robot can score rings on the wall stakes.
  - Climb Ability - How efficient the climb is.
]

#double-decision-matrix(
  criteria: (
    ("Durability", 5),
    ("Mobility", 5),
    ("Space Use", 3),
    ("Intake", 5),
    ("Clamp Ability", 5),
    ("Wall Stake Consistency", 5),
    ("Climb Ability", 3),
  ),
  choices: (
    ("Idea 1", 4, 4, 3, 3, 4, 4, 3),
    ("Idea 2", 4, 4, 4, 4, 4, 2, 3),
    ("Idea 3", 4, 4, 3, 3, 4, 2, 4),
  ),
  body: colbreak()
)

#admonition(type: "select", title: "Final Selection")[
  We chose Idea 1 because of its ability to stack two rings on a wall stake at a time. We believe that wall stakes are going to be tie breakers when both teams each control one positive corner. Additionally, the wall stakes will help even out the score when both positive corners are in the enemy's control.
]

= Implementation Plan
Our new overall robot idea can be broken down into the same overall components as our previous overall robot idea, so we can keep the work breakdown structure and gantt chart we made in our #entry-reference(title: "Overall Robot Plan v1", type: "plan", date: datetime(year: 2024, month: 6, day: 15)).