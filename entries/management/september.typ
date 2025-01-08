#import "/template/template.typ": *

#show: create-entry.with(
  title: "September Planning",
  type: "management",
  date: datetime(year: 2024, month: 9, day: 1),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Ajibola",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2024, month: 7, day: 26),
  monthly-schedule: "On",
  yearly-schedule: "Ahead",
  (
    (true, "Review our time and budget management during July & August.", "Everyone"),
    (true, "Plan out the September meetings by creating a Gantt chart & reviewing our budget.", "Everyone"),
    (true, "Select the best intake idea using a decision matrix.", "Everyone"),
  )
)

Today was our first September meeting, so we dedicated some time to planning out the upcoming month.

= July & August Management Review
== July & August Time Management
#gantt-chart-key()
#image("gantt-charts/july-august-post-1.png")
#image("gantt-charts/july-august-post-2.png")

We finished our new overall robot plans earlier than we initially planned, which allowed us to get ahead on the drivetrain design cycle and the mobile goal clamp design cycle. Additionally, we were able to start the intake design cycle, which we had not even anticipated getting to when we made the initial gantt chart for July and August.

#colbreak()

== July & August Budget & Materials Management
Similar to the month of June, we did not need to buy any new materials to construct our mechanisms. However, as the season starts to transition out of the early season and into the mid-season, it will become increasingly likely that we need to buy new parts.

= September Time Management
September is the last month in our identification of the “early season," meaning that this will be our last month to make significant changes to the robot before we become restricted by competition deadlines. In addition, Area 53 is hosting a scrimmage on September 28th, so we will try to complete our design cycles before then.

Keeping this information in mind, we created this Gantt chart:

#image("gantt-charts/september-pre.png")