#import "/template/template.typ": *

#show: create-entry.with(
  title: "October Planning",
  type: "management",
  date: datetime(year: 2024, month: 10, day: 3),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Ajibola",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2024, month: 10, day: 3),
  monthly-schedule: "On",
  yearly-schedule: "Ahead",
  (
    (true, "Review our time and budget management during September.", "Everyone"),
    (true, "Plan out the October meetings by creating a Gantt chart & reviewing our budget.", "Everyone"),
    (true, "Identify improvements that can be made to the current clamp.", "Everyone"),
    (true, "Create a plan for the construction of the new clamp.", ("Ajibola", "Jin")),
  )
)

Today was our first October meeting, so we dedicated some time to planning out the upcoming month.

= September Management Review
== September Time Management
#gantt-chart-key()
#image("gantt-charts/september-post.png")

We were on track with our schedule until September 20 and September 21, as we needed to use those meetings to finish building and troubleshooting the intake. As a result, we completed the intake design cycle the day before the Area 53 Scrimmage. To prevent this from happening in the future, we may need to allocate more time to building.

// #colbreak()

== September Budget & Materials Management
Once again, we did not need to buy new materials to construct our mechanisms. However, the other squads in Area 53 are starting to ramp up their building at this time, so we will have to be wary of parts that need replacing or new purchases.

= October Time Management
October is the first month in the “mid-season,” and fittingly, the first official tournament for us this season occurs this month. The Dulaney Royal Rumble competition will be on October 19th, so we must complete our design cycles before then to be competition ready.

Keeping this information in mind, we created this Gantt chart:

#image("gantt-charts/october-pre.png")