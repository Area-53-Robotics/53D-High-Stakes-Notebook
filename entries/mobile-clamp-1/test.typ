#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mobile Goal Clamp v1",
  type: "test",
  date: datetime(year: 2024, month: 8, day: 24),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric", "Anders"),
  designed: "Eric",
  witnessed: "Anders",
)


Now that we have a functioning mobile goal clamp, we want to test the key factors of its functionality. We decided that grip strength, consistency, and endurance were the most important factors for the clamp. We ran tests based on these requirements to understand how well the clamp functions and what about it can be improved.

= Grip Strength
== Background
In High Stakes, mobile goals are an important and limited game element. This means that we need to know our ability to hold on to the mobile goals and compete for other mobile goals. To test this, we pitted our robot against another, to see how long it could maintain its grip. If it lasted more than 15 seconds (enough time to escape), it would pass. 

== Hypothesis
The robot will be able to maintain its grip on the mobile goal for at least 15 seconds.

#grid(
  columns: (3fr, 7fr),
  rows: 1,
  column-gutter: 15pt,

  [
    == Materials
    #materials-table(
      (1, "Robot"),
      (1, "Controller"),
      (1, "Opponent Robot"),
      (1, "Mobile Goal"),
      (1, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Fill two robots' air tanks with 100 PSI of air.
    + Set both robots on the field with their clamps facing towards eachother.
    + Place a mobile goal equidistant between the two robots.
    + Activate both robots' clamps.
    + Begin a 15 second timer.
    + Drive the opponent robot forwards until the timer runs out.
    + Write down if the opponent's robot was able to pull the mobile goal off our robot.
    + Repeat steps 1-7 for a total of 5 trials.
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
    [Time (s)], [12.4], [15], [6.9], [11.7], [15.1],
    [Pass/Fail], [Fail], [Pass], [Fail], [Fail], [Pass],
  )
]

#let grip-strength-test-data = (12.4, 15, 6.9, 11.7, 15.1)

#colbreak()

#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
      [Mean], [#stats.mean(grip-strength-test-data) s],
      [Median], [#stats.median(grip-strength-test-data) s],
      [Range], [#stats.range(grip-strength-test-data, digits: 1) s],
      [Variance], [#stats.variance(grip-strength-test-data, digits: 4) s#super("2")],
      [Standard Deviation], [#stats.std-dev(grip-strength-test-data, digits: 2) s],
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

        y-label: "Speed (in/s)",
        y-min: 0, y-max: 16,

        {
          plot.add(
            grip-strength-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Grip Time"
          )

          plot.add(
            domain: (1, 5),
            style: (stroke: (paint: green), fill: green.lighten(75%)),
            epigraph: true,
            label: "Target Grip Time",
            x => {
              15
            }
          )
        }
      )
    })
  }
)

== Conclusion
The robot barely passed the test twice, and failed during the other 3 trials. Overall, we consider this test a failure.

= Consistency
== Background
Consistency is very important in machines and in competitions, as we need to be able to predict how our robot will operate. In terms of the clamp, we need to be reasonably certain that it can successfully maintain a hold onto a mobile goal. We define a successful clamping as one in which the mobile goal stake tilts towards the robot.

== Hypothesis
The robot will successfully clamp onto the mobile goal 70% of the time.

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
    + Fill the air tank on the robot up to 100 PSI.
    + Set the robot onto the field.
    + Place a mobile goal half an inch away from the clamp.
    + Activate the clamp.
    + Evaluate if the clamp action was successful.
    + Repeat steps 1-5 for a total of 20 trials.
  ],
)

== Results
#align(center)[
  #show table.cell.where(x: 0): strong
  #show table.cell.where(y: 0): strong

  #table(
    columns: 21,

    fill: (x, y) =>
      if (x == 0) or (y == 0) {gray.lighten(20%)},
    
    [Trial \#], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20],
    [Pass/Fail], [P], [P], [F], [F], [F], [F], [F], [P], [F], [F], [F], [F], [P], [P], [F], [F], [F], [P], [F], [F],
  )
]

#colbreak()

#grid(
  columns: (1fr, 1fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Data Summary*],
      [Passes], [6 trials],
      [Failures], [14 trials],
    )
  ],

  pie-chart(
    radius: 3.3,
    data-type: "trials",
    (
      ("Passes", 6, green),
      ("Failures", 14, red),
    ),
  ),
)

== Conclusion
This test was a failure as the mobile goal would often rest at off-angles, representing a large amount of inconsistency.

= Endurance
== Background
During matches it is often necessary to clamp, unclamp and reclamp to mobile goals for strategic reasons: gathering points, and getting unstuck. Due to this, we wanted to test how many times our clamp could clamp down and release before the pistons depleted all the gas in the air tank.

== Hypothesis
The clamp will be able to clamp down and release 7 times.

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
      (5, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Fill the air tank on the robot up to 100 PSI.
    + Set the robot onto the field.
    + Place a mobile goal half an inch away from the clamp.
    + Activate and deactivate the clamp repeatedly until the pressure runs out.
    + Write down how many activations and deactivations were performed.
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
    [Number of clamps (down)], [9], [8], [7], [9], [6],
    [Number of releases (up)], [9], [7], [7], [8], [5],
  )
]

#align(center)[
  #cetz.canvas({
    import cetz.draw: *

    chart.barchart(
      size: (11, auto),

      label-key: 0,
      value-key: (1, 2),
      mode: "clustered",

      legend: "north-east",
      legend-style: (padding: 0.15, item: (spacing: 0.01)),
      labels: ([Clamps], [Releases]),

      y-label: "Trial #",

      (
        ([1], 9, 9),
        ([2], 8, 7),
        ([3], 7, 7),
        ([4], 9, 8),
        ([5], 6, 5),
      )
    )
  })
]

== Conclusion
The majority of our trials were successful, with only 1 trial falling below our target. We are confident that the clamp will have enough air to be usable for an entire match.