#import "/template/template.typ": *

#show: create-entry.with(
  title: "Goal Rush Mechanism v1",
  type: "plan",
  date: datetime(year: 2025, month: 02, day: 02),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric", "Anders"),
  designed: "Jin",
  witnessed: "Ajibola",
)

= Work Breakdown Structure
#image("plan/goal-rush-mech-v1-wbs.excalidraw.svg")

= Work Breakdown Gantt Chart
#image("plan/goal-rush-mech-v1-gantt-chart.png")

= CAD Model
We planned out the goal rush mechanism using CAD. The technical drawings begin on the next page.

#cad(
  folder: "goal-rush-mech-v1",
  sheets: 3,
  add-views: ("Isometric", "Side", "Front", "Top"),
  date: datetime(year: 2025, month: 02, day: 02),
  designed: "Jin",
  witnessed: "Ajibola",
)