#import "/template/template.typ": *

#show: create-entry.with(
  title: "November Planning",
  type: "management",
  date: datetime(year: 2024, month: 11, day: 1),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Ajibola",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2024, month: 11, day: 01),
  monthly-schedule: "On",
  yearly-schedule: "Off",
  (
    (true, "Review our time and budget management during October.", "Everyone"),
    (true, "Plan out the November meetings by creating a Gantt chart & reviewing our budget.", "Everyone"),
    (true, "Build the ladybrown according to today's delegation.", "Everyone"),
    (true, "Troubleshoot the drivetrain according to today's delegation.", "Everyone"),
    (true, "Build the intake according to today's delegation.", "Everyone"),
  )
)

Today was our first November meeting, so we dedicated some time to planning out the upcoming month.

= October Management Review
== October Time Management
#gantt-chart-key()
#image("gantt-charts/october-post-1.png", width: 400pt)
#image("gantt-charts/october-post-2.png", width: 460pt)

After the Dulaney Royal Rumble competition, we decided to replace the redirect mechanism with the ladybrown instead of creating the odometry system to improve our scoring during the driver control period. We were also able to have two more meetings than we had planned for at the beginning of October. As a result, the meetings after the Dulaney Royal Rumble competition ended up containing different tasks than we originally planned.

== October Budget & Materials Management
We built the ladybrown without buying any new materials, and we were able to reuse parts from the redirect mechanism when building the ladybrown. So far this season, we have not spent any money to buy new materials, showing that our designs have been cost-efficient.

= November Time Management
Because we qualified for the state championship at the Dulaney Royal Rumble, we do not have to rush our build process before tournaments to worry about state qualifications. We want to use this month to finish our ladybrown & intake design cycles and start the odometry design cycle that we were unable to start in October.

Keeping this information in mind, we created this Gantt chart:

#image("gantt-charts/november-pre.png")