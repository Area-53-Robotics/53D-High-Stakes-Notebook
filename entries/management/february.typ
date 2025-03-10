#import "/template/template.typ": *

#show: create-entry.with(
  title: "February Planning",
  type: "management",
  date: datetime(year: 2025, month: 2, day: 1),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Ajibola",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2025, month: 2, day: 1),
  monthly-schedule: "On",
  yearly-schedule: "Off",
  (
    (true, "Review our time and budget management during January.", "Everyone"),
    (true, "Plan out the February meetings by creating a Gantt chart & reviewing our budget.", "Everyone"),
    (true, "Identify the design goals and constraints for the ring rush mechanism.", "Everyone"),
    (true, "Determine the math and scientific concepts involved in ring rush mech design.", "Everyone"),
    (true, "Identify the design goals and constraints for the goal rush mechanism.", "Everyone"),
    (true, "Determine the math and scientific concepts involved in goal rush mech design.", "Everyone"),
  )
)

Today was our first February meeting, so we dedicated some time to planning out the upcoming month.

= January Management Review
== January Time Management
#gantt-chart-key(intended-color: rgb("bfbfbf"))
#image("gantt-charts/january-post-1.png", width: 400pt)
#image("gantt-charts/january-post-2.png", width: 460pt)

We managed to nearly perfectly follow our schedule in January, which will set us up nicely for our design cycles in February.

== January Budget & Materials Management
The construction of the intake v2 and overall robot maintenance did not require us to buy new parts. So our budget usage remains unchanged.

= February Time Management
This is our last full month of meetings before the states championship, so we will need to finalize our robot. We want to build both a ring rush mechanism and a goal rush mechanism this month, so we will need to speed up the design cycles for both mechanisms.

Keeping this information in mind, we created this Gantt chart:

#image("gantt-charts/february-pre-1.png")
#image("gantt-charts/february-pre-2.png")