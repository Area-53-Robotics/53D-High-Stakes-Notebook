#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mobile Goal Clamp v2",
  type: "test",
  date: datetime(year: 2024, month: 10, day: 5),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric", "Anders"),
  designed: "Eric",
  witnessed: "Anders",
)


We hope that the second version of the mobile goal clamp will perform better than the first version, especially because it makes better use of mechanical advantage. Additionally, a lot of high performing teams are using this type of clamp on their robot. We are going to use the same tests that we performed on the first version of the clamp in our #past-entry-reference(title: "Mobile Goal Clamp v1", type: "test", date: datetime(year: 2024, month: 8, day: 24)).

= Grip Strength
== Background
In High Stakes, mobile goals are an important and limited game element. This means that we need to know our robot's ability to hold on to the mobile goals and compete for other mobile goals. To test this, we pitted our robot against another, to see how long it could maintain its grip. If it lasted more than 15 seconds (enough time to escape), it would pass.

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
    + Set both robots on the field with their clamps facing toward eachother.
    + Place a mobile goal equidistant between the two robots.
    + Activate both robots' clamps.
    + Begin a 15-second timer.
    + Drive the opponent robot forward until the timer runs out.
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
    [Time (s)], [15.5], [16.9], [15.7], [16.8], [16.2],
    [Pass/Fail], [Pass], [Pass], [Pass], [Pass], [Pass],
  )
]

#let grip-strength-test-data = (15.5, 16.9, 15.7, 16.8, 16.2)

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

        y-label: "Time (s)",
        y-min: 7, y-max: 17,

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
The new clamp was successful for all the trials and performed much better than the previous clamp. We are really happy with this result because we now have a much stronger grip on the mobile goal.

= Consistency
== Background
Consistency is very important in machines and competitions, as we need to be able to predict how our robot will operate. In terms of the clamp, we need to be reasonably certain that it can successfully maintain a hold on a mobile goal. We define a successful clamping as one in which the mobile goal stake tilts towards the robot.

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
    [Pass/Fail], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.crossmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.crossmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.crossmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy],
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
      [Passes], [17 trials],
      [Failures], [3 trials],
    )
  ],

  pie-chart(
    radius: 3.3,
    data-type: "trials",
    (
      ("Passes", 17, green),
      ("Failures", 3, red),
    ),
  ),
)

== Conclusion
We are satisfied with the results of this test. This test is not perfectly representative of a game environment because in a match, we will have to clamp onto mobile goals with varying orientations. Regardless, we think the test results show that our clamp is very consistent.


= Endurance
== Background
During matches, it is often necessary to clamp, unclamp, and reclamp mobile goals for strategic reasons such as gathering points and getting unstuck. Due to this, we wanted to test how many times our clamp could clamp down and release in an ideal scenario before the pistons depleted all the gas in the air tank. Our previous clamp ran out of air quickly. We hope that this version of the clamp is more efficient with air usage.

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
    [Number of clamps (down)], [9], [8], [9], [9], [8],
    [Number of releases (up)], [9], [7], [8], [8], [7],
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
        ([3], 9, 8),
        ([4], 9, 8),
        ([5], 8, 7),
      )
    )
  })
]

== Conclusion
The second version of the clamp was more efficient with air usage than the first version. We noticed that using double-acting pistons with rubber bands helped with improving air efficiency.