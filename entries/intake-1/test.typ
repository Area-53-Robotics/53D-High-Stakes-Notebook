#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v1",
  type: "test",
  date: datetime(year: 2024, month: 9, day: 27),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric", "Anders"),
  designed: "Ajibola",
  witnessed: "Makhi",
)


With the intake complete, we took the opportunity to test it to make sure that it worked well and would be ready for use in the Area 53 Scrimmage tomorrow.

= Speed
== Background
The intake of our robot must be fast so that we can minimize ring pickup time and score as many points as possible. So, we set up a test to measure the speed of our robot at picking up rings with the intake and scoring them onto mobile goal stakes.

== Hypothesis
The robot will score six rings onto the mobile goal stake in 30 seconds or faster.

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
      (6, "Rings"),
      (1, "Stopwatch"),
      (1, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Fill the air tank on the robot up to 100 PSI.
    + Place the robot on the field.
    + Place the mobile goal in the clamp and activate the clamp.
    + Place six rings in a straight line in front of the robot, each a quarter inch apart.
    + Start the stopwatch.
    + Activate the intake while driving forward.
    + Stop the stopwatch after the last ring has been scored onto the stake.
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
    [Time (s)], [40], [33], [28], [31], [30],
  )
]

#let speed-test-data = (40, 33, 28, 31, 30)

#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
      [Mean], [#stats.mean(speed-test-data) s],
      [Median], [#stats.median(speed-test-data) s],
      [Range], [#stats.range(speed-test-data, digits: 1) s],
      [Variance], [#stats.variance(speed-test-data, digits: 4) s#super("2")],
      [Standard Deviation], [#stats.std-dev(speed-test-data, digits: 2) s],
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
        y-min: 0, y-max: 45,

        {
          plot.add(
            speed-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Intake Time"
          )

          plot.add(
            domain: (1, 5),
            style: (stroke: (paint: green), fill: green.lighten(75%)),
            hypograph: true,
            label: "Ideal Intake Time",
            x => {
              30
            }
          )
        }
      )
    })
  }
)

== Conclusion
The intake times were over what we expected, but aside from changing the gear ratio of the intake, there is not much we can do to increase the intake speed. We also noticed some jamming of rings in the intake, which could be due to the spacing at which the rings were placed. To resolve this issue we are considering adding more hooks to the intake.

= Jamming
== Background
During a match, intake jamming is extremely frustrating, as it prevents us from scoring and limits us to assisting our alliance partner by ramming game elements with the drivetrain. This slows down the pace of the game and makes it harder to win.

Given the jamming that we saw in Experiment 1, we created this experiment to test how many rings in quick succession it takes to jam the intake.

== Hypothesis
The intake will jam after the fourth ring has been fed into it.

#grid(
  columns: (3fr, 7fr),
  rows: 1,
  column-gutter: 15pt,

  [
    == Materials
    #materials-table(
      (1, "Robot"),
      (1, "Controller"),
      (6, "Rings"),
      (1, "Camera"),
      (1, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Place the robot on the field.
    + Start filming using the camera
    + Activate the intake.
    + Feed the rings one by one into the intake.
    + If the intake jams, check the footage to see which ring caused it.
    + Repeat steps 2-5 for a total of 5 trials, with a 3-minute break in between each trial to let the intake motor cool down.
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
    [Jammed Ring], [3], [4], [3], [2], [4],
  )
]

#let jamming-test-data = (3, 4, 3, 2, 4)

#colbreak()

#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
      [Mean], [#stats.mean(jamming-test-data, digits: 0)rd ring],
      [Median], [#stats.median(jamming-test-data)rd ring],
      [Range], [#stats.range(jamming-test-data, digits: 1) rings],
      [Variance], [#stats.variance(jamming-test-data, digits: 4) rings#super("2")],
      [Standard Deviation], [#stats.std-dev(jamming-test-data, digits: 2) rings],
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

        y-label: "Jammed Ring",
        y-min: 0, y-max: 6,
        y-tick-step: 1,

        {
          plot.add(
            jamming-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Jammed Ring"
          )

          plot.add(
            domain: (1, 5),
            style: (stroke: (paint: green), fill: green.lighten(75%)),
            label: "Predicted Jammed Ring",
            x => {
              4
            }
          )
        }
      )
    })
  }
)

== Conclusion
Jamming typically occurs when the intake handles three or four rings at once, which means we should avoid overloading the robot with too many rings. Based on video analysis, one possible solution is to increase the RPM of the hooks, which could increase the frequency at which the rings are grabbed and reduce the chance of jamming.

= Consistency
== Background
To maximize our chances of scoring points, it is crucial that the feeding of rings from the intake to the mobile goal is smooth and consistent. To assess this, we are testing how frequently the rings either miss or successfully score on the mobile goal stake.

== Hypothesis
5 or more out of 6 rings will be properly scored onto the mobile goal.

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
      (6, "Rings"),
      (1, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Place the robot on the field.
    + Place a mobile goal at the clamp point and activate the clamp.
    + Activate the intake.
    + Feed the rings one by one into the intake.
    + Write down the number of rings that were successfully scored.
    + Repeat steps 2-5 for a total of 10 trials, with a 3-minute break in between each trial to let the intake motor cool down.
  ],
)

#colbreak()

== Results
#align(center)[
  #show table.cell.where(x: 0): strong
  #show table.cell.where(y: 0): strong

  #table(
    columns: 11,

    fill: (x, y) =>
      if (x == 0) or (y == 0) {gray.lighten(20%)},

    [Trial \#], [1], [2], [3], [4], [5], [6], [7], [8], [9], [10],
    [Rings Scored], [6], [6], [5], [6], [5], [5], [6], [3], [5], [6]
  )
]

#let consistency-test-data = (6, 6, 5, 6, 5, 5, 6, 3, 5, 6)

#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
      [Mean], [#stats.mean(consistency-test-data) rings],
      [Median], [#stats.median(consistency-test-data) rings],
      [Range], [#stats.range(consistency-test-data, digits: 1) rings],
      [Variance], [#stats.variance(consistency-test-data, digits: 4) rings#super("2")],
      [Standard Deviation], [#stats.std-dev(consistency-test-data, digits: 2) rings],
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

        y-label: "Rings",
        y-min: 0, y-max: 6,
        y-tick-step: 1,

        {
          plot.add(
            consistency-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Scored Rings"
          )

          plot.add(
            domain: (1, 10),
            style: (stroke: (paint: green), fill: green.lighten(75%)),
            epigraph: true,
            label: "Ideal Scored Rings",
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
The intake was inconsistent at scoring all six rings onto the mobile goal, but it was consistent at scoring at least 5 rings, satisfying our hypothesis. We believe that the intake is reliable enough for autonomous programming.