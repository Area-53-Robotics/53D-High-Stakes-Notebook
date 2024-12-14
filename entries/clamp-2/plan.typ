#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mobile Goal Clamp v2",
  type: "plan",
  date: datetime(year: 2024, month: 10, day: 3),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric", "Anders"),
  designed: "Jin",
  witnessed: "Ajibola",
)

= Work Breakdown Structure
#image("plan/clamp-v2-wbs.excalidraw.svg")

= Work Breakdown Gantt Chart
#image("plan/mobile-goal-clamp-v2-gantt-chart.png", width: 390pt)

= CAD Model
We planned out the mobile goal clamp v2 using CAD. The technical drawings begin on the next page.

#cad(
  folder: "clamp-v2",
  sheets: 3,
  add-views: ("Isometric", "Side", "Front", "Back"),
  date: datetime(year: 2024, month: 10, day: 3),
  designed: "Jin",
  witnessed: "Ajibola",
)