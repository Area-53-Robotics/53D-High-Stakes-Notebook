#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mobile Goal Clamp v1",
  type: "plan",
  date: datetime(year: 2024, month: 8, day: 15),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric"),
  designed: "Jin",
  witnessed: "Ajibola",
)

= Work Breakdown Structure
#image("plan/mobile-goal-clamp-v1-wbs.excalidraw.svg")

= Work Breakdown Gantt Chart
#image("plan/mobile-goal-clamp-v1-gantt-chart.png")

= CAD Model
We planned out the mobile goal clamp using CAD. The technical drawings begin on the next page.

#cad(
  folder: "clamp-v1",
  sheets: 3,
  add-views: ("Isometric", "Side", "Front", "Back"),
  date: datetime(year: 2024, month: 8, day: 15),
  designed: "Jin",
  witnessed: "Ajibola",
)