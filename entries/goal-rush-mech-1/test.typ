#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mobile Goal Rush Mechanism v1",
  type: "test",
  date: datetime(year: 2025, month: 2, day: 28),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric", "Anders"),
  designed: "Eric",
  witnessed: "Anders",
)


The primary goal of testing the mobile goal rush mechanism is to analyze how effective it is at grabbing mobile goals. The mobile goal rush mechanism is a crucial component to our auton and grabbing mobile goals from opponent’s robots.

= Consistency
== Background
The main purpose of the mobile goal rush mechanism is to grab a mobile goal at the beginning of the autonomous period. This would allow us to take control of 3 mobile goals before driver control starts. We wanted to test how consistently the mobile goal rush mechanism can grab a mobile goal.

== Hypothesis
The mobile goal rush mechanism will grab the mobile goal 80% of the time

#grid(
  columns: (3fr, 7fr),
  rows: 1,
  column-gutter: 15pt,

  [
    == Materials
    #materials-table(
      (1, "Robot"),
      (1, "Controller"),
      (1, "Mobile Goal"),
      (1, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Position the robot so that it is facing the mobile goal from 2 tiles away.
    + Activate the mobile goal rush mechanism.
    + Drive forward 2 tiles.
    + Drive backward 2 tiles.
    + Record if the robot was successful at grabbing the mobile goal.
    + Repeat steps 1-5 for a total of 5 trials.

  ],
)

== Results
#align(center)[
  #show table.cell.where(x: 0): strong
  #show table.cell.where(y: 0): strong

  #table(
    columns: 6,

    fill: (x, y) =>
      if (y == 0 and x > 0) or (x == 0 and y > 0) {gray.lighten(20%)},

    table.hline(y: 0, end: 1, stroke: none),
    table.vline(x: 0, end: 1, stroke: none),

    [], [Trial 1], [Trial 2], [Trial 3], [Trial 4], [Trial 5],
    [Success/Fail], [Success], [Success], [Success], [Success], [Success],
  )
]


#grid(
  columns: (1fr, 1fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Data Summary*],
      [Passes], [5 trials],
      [Failures], [0 trials],
    )
  ],

  pie-chart(
    radius: 3.1,
    data-type: "trials",
    (
      ("Passes", 5, green),
      ("Failures", 0, red),
    ),
  ),
)
== Conclusion
We are happy to see that the mobile goal rush mechanism is successful at grabbing the mobile goal. However, it appears that the mobile goal rush mechanism experiences a lot of bending over time. This would lower how effective the mobile goal rush mechanism is in the future. 

= Activation
== Background
The mobile goal rush mechanism would be used multiple times throughout a match. During auton, we will use the mobile goal rush mechanism to grab the mobile goal that is on the auton line. During driver control, we will use the mobile goal rush mechanism to grab a mobile goal from the enemy's robots. It is important for us to test how well it can activate and deactivate. 

== Hypothesis
The mobile goal rush will be able to activate and deactivate 10 times.

#grid(
  columns: (3fr, 7fr),
  rows: 1,
  column-gutter: 15pt,

  [
    == Materials
    #materials-table(
      (1, "Robot"),
      (1, "Controller"),
      (1, "Pneumatic Pump"),
      (1, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Fill the pneumatic tank up to 100 PSI.
    + Set the robot stationary on the field.
    + Activate the mobile goal rush mechanism.
    + Deactivate the mobile goal rush mechanism.
    + Repeat steps 3-4 until the robot runs out of air.
    + Record the number of successful activations.
    + Repeat steps 1-6 for a total of 5 trials.

  ],
)

== Results
#align(center)[
  #show table.cell.where(x: 0): strong
  #show table.cell.where(y: 0): strong

  #table(
    columns: 6,

    fill: (x, y) =>
      if (x == 0) or (y == 0) {gray.lighten(20%)},
    
    [Trial \#], [1], [2], [3], [4], [5],
    [Successful Activations], [15], [15], [14], [15], [15], 
  )
]

#let activation-test-data = (15, 15, 14, 15, 15)


#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
      [Mean], [#stats.mean(activation-test-data) ],
      [Median], [#stats.median(activation-test-data) ],
      [Range], [#stats.range(activation-test-data, digits: 1) ],
      [Variance], [#stats.variance(activation-test-data, digits: 4) ],
      [Standard Deviation], [#stats.std-dev(activation-test-data, digits: 2) ],
    )
  ],

  {
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (9, 4),
        axis-style: "scientific-auto",

        legend: "north",
        // legend-style: (padding: 0.15, item: (spacing: 0.01)),

        x-label: "Trial #",
        x-tick-step: 1,

        y-label: "Time (s)",
        y-min: 0, y-max: 16,

        {
          plot.add(
            activation-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Activation Attempts"
          )

          plot.add(
            domain: (1, 5),
            style: (stroke: (paint: green), fill: green.lighten(75%)),
            epigraph: true,
            label: "Target Successful Attempts",
            x => {
              10
            }
          )
        }
      )
    })
  }
)

== Conclusion
Although we can use the mobile goal rush mechanism a maximum of 15 times in isolation, this number is misleading. Our mobile goal clamp and ring rush mechanism also use air, decreasing the number of times we can use the mobile goal rush mechanism in a real match. Regardless, we believe that using the mobile goal rush mechanism 15 times is sufficient.

= Grip Strength
== Background
Besides grabbing the mobile goal that is on the auton line during auton, the mobile goal rush mechanism can also steal mobile goals from positive corners and enemy robots. 

== Hypothesis
The mobile goal rush mechanism will successfully grab a mobile goal from an enemy robot 80% of the time.

#grid(
  columns: (3fr, 7fr),
  rows: 1,
  column-gutter: 15pt,

  [
    == Materials
    #materials-table(
      (2, "Robot"),
      (2, "Controller"),
      (1, "Mobile Goal"),
      (6, "Rings"),
      (5, "Notetaking Materials"),
    ) 
  ],

  [
    == Procedures
    + Place all 6 rings onto the mobile goal.
    + Place the full mobile goal into the enemy robot’s clamp.
    + Place our robot 12 inches in front of the enemy robot so that it is facing the mobile goal.
    + Activate the mobile goal rush mechanism and hook onto the mobile goal.
    + Drive both robots backward, pulling away from each other.
    + After the two robots disengage, record whether our robot successfully obtained the mobile goal.
    + Repeat steps 2-6 for a total of 5 trials. 

  ],
)
#colbreak()
== Results
#align(center)[
  #show table.cell.where(x: 0): strong
  #show table.cell.where(y: 0): strong

  #table(
    columns: 6,

    fill: (x, y) =>
      if (x == 0) or (y == 0) {gray.lighten(20%)},
    
    [Trial \#], [1], [2], [3], [4], [5], 
    [Success/Fail], [Success], [Failure], [Failure], [Failure], [Success],
  )
]

#grid(
  columns: (1fr, 1fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Data Summary*],
      [Passes], [2 trials],
      [Failures], [3 trials],
    )
  ],

  pie-chart(
    radius: 2.9,
    data-type: "trials",
    (
      ("Passes", 2, green),
      ("Failures", 3, red),
    ),
  ),
)

== Conclusion
Even though the mobile goal rush mechanism failed to meet the hypothesis, we are still happy with the results. The mobile goal rush mechanism is a surprise factor, meaning that we can grab a mobile goal from the enemy’s robot if they are not paying attention. However, the mobile goal rush mechanism struggles to take the mobile goal if both robots are tugging for it, so we cannot use this as our main strategy. 
