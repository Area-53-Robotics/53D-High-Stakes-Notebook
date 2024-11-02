#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v1",
  type: "plan",
  date: datetime(year: 2024, month: 9, day: 2),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric"),
  designed: "Jin",
  witnessed: "Ajibola",
)

#to-do(
  date: datetime(year: 2024, month: 9, day: 2),
  monthly-schedule: "On",
  yearly-schedule: "Ahead",
  (
    (true, "Plan the implementation of the intake idea.", "Everyone"),
  )
)

= Work Breakdown Structure
#image("plan/intake-v1-wbs.excalidraw.svg")

#colbreak()

= Work Breakdown Gantt Chart
#image("plan/intake-v1-gantt-chart.png")

= CAD Model
We planned out our intake using CAD. The technical drawings begin on the next page.

#cad(
  folder: "intake-v1",
  sheets: 4,
  add-views: ("Isometric", "Front", "Top", "Side"),
  date: datetime(year: 2024, month: 9, day: 2),
  designed: "Jin",
  witnessed: "Ajibola",
)