#import "/template/template.typ": *

#show: create-entry.with(
  title: "Redirect Mech v1",
  type: "plan",
  date: datetime(year: 2024, month: 10, day: 10),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric", "Anders"),
  designed: "Jin",
  witnessed: "Ajibola",
)

= Work Breakdown Structure
#image("plan/redirect-mech-v1-wbs.excalidraw.svg")

= Work Breakdown Gantt Chart
#image("plan/redirect-mech-v1-gantt-chart.png", width: 390pt)

= CAD Model
We planned out the redirect mechanism using CAD. The technical drawings begin on the next page.

#cad(
  folder: "redirect-mech-v1",
  sheets: 4,
  add-views: ("Isometric", "Top", "Front", "Side"),
  date: datetime(year: 2024, month: 10, day: 3),
  designed: "Jin",
  witnessed: "Ajibola",
)