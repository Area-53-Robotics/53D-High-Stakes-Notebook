#import "/template/template.typ": *

#show: create-entry.with(
  title: "January Planning",
  type: "management",
  date: datetime(year: 2025, month: 1, day: 3),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Ajibola",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2025, month: 1, day: 3),
  monthly-schedule: "On",
  yearly-schedule: "Off",
  (
    (true, "Review our time and budget management during December.", "Everyone"),
    (true, "Plan out the January meetings by creating a Gantt chart & reviewing our budget.", "Everyone"),
    (true, "Troubleshoot the intake according to today's delegation.", "Everyone"),
  )
)

Today was our first January meeting, so we dedicated some time to planning out the upcoming month.

= December Management Review
== December Time Management
#gantt-chart-key(intended-color: rgb("fce4d6"))
#image("gantt-charts/december-post.png", width: 400pt)

We almost perfectly followed our planned schedule for December. We switched around some of the time allocated for troubleshooting the robot with time for building the intake v2, but overall we stuck with the schedule.

== December Budget & Materials Management
The construction of the intake v2 and overall robot troubleshooting did not require us to buy new parts. So our budget usage remains unchanged.

= January Time Management
We have a lot of competitions to attend during January, so we will not have much time for building and tuning our robot. We want to use the time we have to complete our intake v2 design cycle.

Keeping that in mind, we created this Gantt chart:

#image("gantt-charts/november-pre.png")