#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v2",
  type: "plan",
  date: datetime(year: 2024, month: 10, day: 26),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric", "Anders"),
  designed: "Jin",
  witnessed: "Ajibola",
)

= Work Breakdown Structure
#image("plan/intake-v2-wbs.excalidraw.svg")

= Work Breakdown Gantt Chart
#image("plan/intake-v2-gantt-chart.png", width: 390pt)

= CAD Model
We planned out the redirect mechanism using CAD. The technical drawings begin on the next page.

// #cad(
//   folder: "intake-v2",
//   sheets: 4,
//   add-views: ("Isometric", "Top", "Front", "Side"),
//   date: datetime(year: 2024, month: 10, day: 26),
//   designed: "Jin",
//   witnessed: "Ajibola",
// )