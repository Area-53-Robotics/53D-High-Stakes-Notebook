#import "/template/template.typ": *

#show: create-entry.with(
  title: "Redirect Mechanism v1",
  type: "test",
  date: datetime(year: 2024, month: 10, day: 18),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric", "Anders"),
  designed: "Eric",
  witnessed: "Rory",
)


We wanted to make sure that the redirect mechanism was ready for the Dulaney Royal Rumble tomorrow, so we tested it on the three “Aspects of the Redirect Mechanism" that we identified in our #entry-reference(title: "Redirect Mechanism v1", type: "identify", date: datetime(year: 2024, month: 10, day: 10)).

= Efficiency (Scoring)
== Background
Since High Stakes is a low-scoring game, it is crucial that the redirect mechanism can handle and score rings efficiently. From our previous tests, we believe that the redirect mechanism can score on the neutral alliance wall stake well. With this test, we specifically want to evaluate the redirect mechanism's basket.

== Hypothesis
The redirect mechanism will be able to score rings onto the neutral wall stakes at least 80% of the time.

#grid(
  columns: (3fr, 7fr),
  rows: 1,
  column-gutter: 15pt,

  [
    == Materials
    #materials-table(
      (1, "Robot"),
      (1, "Controller"),
      (20, "Rings"),
      (1, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Place a ring stationary on the field.
    + Allow the robot to intake the ring into the redirect mechanism's basket.
    + Attempt to score on the neutral wall stake.
    + Record whether the ring was successfully scored onto the stake.
    + Repeat steps 1-4 for a total of 20 trials.
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
    
    align: center + horizon,
    
    [Trial \#], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20],
    [Pass/Fail], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.crossmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.crossmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.crossmark.heavy], [#sym.checkmark.heavy], [#sym.crossmark.heavy],
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
      [Passes], [16 trials],
      [Failures], [4 trials],
    )
  ],

  pie-chart(
    radius: 3.2,
    data-type: "trials",
    (
      ("Passes", 16, green),
      ("Failures", 4, red),
    ),
  ),
)

== Conclusion
We are satisfied with the results. We suspect that the robot failed to score on the neutral wall stake in 4 of the trials because the driver did not align the robot properly. In the future, we plan to attach a guide to the redirect mechanism to help the driver position the robot for neutral wall stake scoring.


= Redirecting (Control)
== Background
The redirect mechanism works by intaking a ring past a certain height. Then, the robot reverses the intake's direction, and the ring is redirected into the four-bar. Since this is a complicated maneuver, this section will require the most troubleshooting. Additionally, how efficient the robot is at redirecting the rings directly correlates to the redirect mechanism's scoring capabilities, making this test important. 

== Hypothesis
The robot will be able to redirect the rings into the redirect mechanism 80% of the time. Additionally, the redirect mechanism will take at most 5 seconds to redirect a ring.

#grid(  
  columns: (3fr, 7fr),
  rows: 1,
  column-gutter: 15pt,

  [
    == Materials
    #materials-table(
      (1, "Robot"),
      (1, "Controller"),
      (20, "Rings"),
      (1, "Stopwatch"),
      (1, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Place a ring stationary on the field.
    + Have the robot intake the ring.
    + Start the stopwatch.
    + Once the rings pass the flaps, reverse the intake's direction.
    + Stop the stopwatch when the ring enters the basket.
    + Record whether the ring was successfully redirected and how long it took the ring to redirect.
    + Repeat steps 1-6 for a total of 20 trials.
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
    
    align: center + horizon,
    
    [Trial \#], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10], [11], [12], [13], [14], [15], [16], [17], [18], [19], [20],
    [Pass/Fail], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.crossmark.heavy], [#sym.crossmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.crossmark.heavy], [#sym.checkmark.heavy], [#sym.crossmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.crossmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.crossmark.heavy], [#sym.checkmark.heavy], [#sym.crossmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy],
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
      [Passes], [13 trials],
      [Failures], [7 trials],
    )
  ],

  pie-chart(
    radius: 2.55,
    outer-label-radius: 135%,
    data-type: "trials",
    (
      ("Passes", 13, green),
      ("Failures", 7, red),
    ),
  ),
)

#align(center)[
  #show table.cell.where(x: 0): strong
  #show table.cell.where(y: 0): strong
  #show table.cell.where(y: 2): strong

  #table(
    columns: 11,
    rows: 4, 

    fill: (x, y) =>
      if (x > 0 and calc.even(y)) or (x == 0 and calc.odd(y)) {gray.lighten(20%)},

    table.hline(y: 0, end: 1, stroke: none),
    table.vline(x: 0, end: 1, stroke: none),
    table.vline(x: 0, start: 2, end: 3, stroke: none),

    [], [Trial 1], [Trial 2], [Trial 3], [Trial 4], [Trial 5],[Trial 6], [Trial 7], [Trial 8], [Trial 9], [Trial 10],
    [Time], [6.92 s], [6.42 s], [#sym.crossmark.heavy], [#sym.crossmark.heavy], [6.21 s], [7.92 s], [#sym.crossmark.heavy], [6.92 s], [#sym.crossmark.heavy], [8.23 s], 
    [], [Trial 11], [Trial 12], [Trial 13], [Trial 14], [Trial 15], [Trial 16], [Trial 17], [Trial 18], [Trial 19], [Trial 20],
    [Time], [6.45 s], [#sym.crossmark.heavy], [6.93 s], [6.83 s], [7.15 s], [#sym.crossmark.heavy], [7.01 s], [#sym.crossmark.heavy], [7.92 s], [7.48 s]
  )
]

#let redirecting-test-data = (6.92, 6.42, 6.21, 7.92, 6.92, 8.23, 6.45, 6.93, 6.83, 7.15, 7.01, 7.92, 7.48)

#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
      [Mean], [#stats.mean(redirecting-test-data, digits: 2) s],
      [Median], [#stats.median(redirecting-test-data) s],
      [Range], [#stats.range(redirecting-test-data, digits: 2) s],
      [Variance], [#stats.variance(redirecting-test-data, digits: 4) s#super("2")],
      [Standard Deviation], [#stats.std-dev(redirecting-test-data, digits: 2) s],
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
        y-min: 0, y-max: 9,

        {
          plot.add(
            (
              (1, 6.92),
              (2, 6.42),
              (5, 6.21),
              (6, 7.92),
              (8, 6.92),
              (10, 8.23),
              (11, 6.45),
              (13, 6.93),
              (14, 6.83),
              (15, 7.15),
              (17, 7.01),
              (19, 7.92),
              (20, 7.48)
            ),
            mark: "o",
            style: (stroke: none),
            label: "Redirect Time"
          )

          plot.add(
            domain: (1, 20),
            style: (stroke: (paint: green), fill: green.lighten(75%)),
            hypograph: true,
            label: "Target Redirect Time",
            x => {
              5
            }
          )
        }
      )
    })
  }
)

== Conclusion
Unfortunately, the redirect mechanism failed to meet both of our hypotheses. Out of the 20 trials, the robot was able to successfully redirect a ring 65% of the time. Additionally, the robot struggled to redirect the ring in some of the successful attempts. We believe it is because the flaps do not create a steep enough ramp for the ring to slide down from.

#colbreak()

= Range of Motion (Lift)
== Background
In our  #entry-reference(title: "Redirect Mechanism v1", type: "select", date: datetime(year: 2024, month: 10, day: 10)), we chose to use a four-bar lift because of its simplicity and height. It is important that our four-bar lift can consistently reach its highest height. Before we tested the redirect mechanism, we measured its maximum height of 28.56 inches.

== Hypothesis
We believe that the redirect mechanism will consistently reach 26 inches. 

#grid(
  columns: (3fr, 7fr),
  rows: 1,
  column-gutter: 15pt,

  [
    == Materials
    #materials-table(
      (1, "Robot"),
      (1, "Controller"),
      (1, "Measuring Tape"),
      (1, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Set the robot on the field with the four-bar down.
    + Lift the four-bar as high as possible.
    + Measure the height from the field floor to the top point on the four-bar.
    + Repeat steps 1-3 for a total of 10 trials.
  ],
)

== Results
#align(center)[
  #show table.cell.where(x: 0): strong
  #show table.cell.where(y: 0): strong

  #table(
    columns: 11,

    fill: (x, y) =>
      if (x == 0) or (y == 0) {gray.lighten(20%)},
    
    [Trial \#], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10],
    [Height], [26.45 in], [26.43 in], [26.45 in], [26.44 in], [26.45 in], [26.46 in], [26.45 in], [26.44 in], [26.45 in], [26.4 in]
  )
]

#let range-of-motion-test-data = (26.45, 26.43, 26.45, 26.44, 26.45, 26.46, 26.45, 26.44, 26.45, 26.4)

#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
      [Mean], [#stats.mean(range-of-motion-test-data, digits: 2) in],
      [Median], [#stats.median(range-of-motion-test-data) in],
      [Range], [#stats.range(range-of-motion-test-data, digits: 2) in],
      [Variance], [#stats.variance(range-of-motion-test-data, digits: 4) in#super("2")],
      [Standard Deviation], [#stats.std-dev(range-of-motion-test-data, digits: 2) in],
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

        y-label: "Height (in)",
        y-min: 26.38, y-max: 26.48,

        {
          plot.add(
            range-of-motion-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Height"
          )
        }
      )
    })
  }
)

== Conclusion
We are very pleased with the results. From the ground, the wall stakes are 26 inches tall. We have more than enough clearance to score rings on the wall stake. It is important to note that for the robot to score on the wall stakes, we need to lower the four-bar when the ring is hovering over the wall stake.