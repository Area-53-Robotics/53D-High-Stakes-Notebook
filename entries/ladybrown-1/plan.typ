#import "/template/template.typ": *

#show: create-entry.with(
  title: "Ladybrown v1",
  type: "plan",
  date: datetime(year: 2024, month: 10, day: 24),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric", "Anders"),
  designed: "Jin",
  witnessed: "Ajibola",
)

= Work Breakdown Structure
#image("plan/ladybrown-v1-wbs.excalidraw.svg")

= Work Breakdown Gantt Chart
#image("plan/ladybrown-v1-gantt-chart.png", width: 390pt)

= CAD Model
We planned out the ladybrown using CAD. The technical drawings begin on the next page.

#cad(
  folder: "ladybrown-v1",
  sheets: 3,
  add-views: ("Isometric", "Side", "Front", "Top"),
  date: datetime(year: 2024, month: 10, day: 24),
  designed: "Jin",
  witnessed: "Ajibola",
)