#import "/template/template.typ": *

#show: create-entry.with(
  title: "June Planning",
  type: "management",
  date: datetime(year: 2024, month: 6, day: 14),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Ajibola",
  witnessed: "Jin",
)

#to-do(
  date: datetime(year: 2023, month: 7, day: 14),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Plan out the Over Under season by creating a Gantt chart.", "Everyone"),
    (true, "Plan out the July meetings by creating a Gantt chart.", "Everyone"),
    (true, "Brainstorm match strategies to build our bot around.", "Everyone"),
    (true, "Select a match strategy to use for the first robot iteration.", "Everyone"),
  )
)

After planning out the season, we also took the time to plan out our work for June. We had to keep in mind that most of our members would miss some June meetings for their summer activities. Here is what we came up with:

// #image("./gantt-charts/july-pre-gantt-chart.png")