#import "/template/template.typ": *

#show: create-entry.with(
  title: "December Planning",
  type: "management",
  date: datetime(year: 2024, month: 12, day: 6),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Ajibola",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2024, month: 12, day: 6),
  monthly-schedule: "On",
  yearly-schedule: "Off",
  (
    (true, "Review our time and budget management during November.", "Everyone"),
    (true, "Plan out the December meetings by creating a Gantt chart & reviewing our budget.", "Everyone"),
    (true, "Test the odometry system.", "Everyone")
  )
)

Today was our first December meeting, so we dedicated some time to planning out the upcoming month.

= November Management Review
== November Time Management
#gantt-chart-key()
#image("gantt-charts/november-post-1.png", width: 460pt)
#image("gantt-charts/november-post-2.png", width: 460pt)

After the Capital Beltway Challenge, we were able to have two extra practices that we had not planned for at the beginning of the month. This allowed us to get significantly ahead on our odometry design cycle.

== November Budget & Materials Management
We built the ladybrown without buying any new materials, and we were able to reuse parts from the redirect mechanism when building the ladybrown. The odometry hardware did not require many building materials, so we were able to use the materials we have from past VEX seasons. So far this season, we have not spent any money to buy new materials, showing that our designs have been cost-efficient.

= December Time Management
Due to us getting ahead during November, we will be able to dedicate our few meetings in December towards robot maintenance and preparation for the competitions in January.

#image("gantt-charts/december-pre.png")