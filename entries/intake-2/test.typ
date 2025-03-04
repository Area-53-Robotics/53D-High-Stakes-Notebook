#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v2",
  type: "test",
  date: datetime(year: 2024, month: 11, day: 15),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric", "Anders"),
  designed: "Eric",
  witnessed: "Rory",
)


The primary goal of testing the new intake is to evaluate how effectively it can manipulate rings. To ensure consistency and comparability, we conducted the same series of tests that we performed on the first intake.

= Speed
== Background
The intake should be fast when intaking rings. A fast intake allows us to score onto the mobile goal and load rings into the ladybrown quickly. Since we did not change the intake's RPM, we are not expecting a speed change compared to the first intake's test results.

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
    rows: 3,

    fill: (x, y) =>
      if (y == 0 and x > 0) or (x == 0 and y > 0) {gray.lighten(20%)},

    table.hline(y: 0, end: 1, stroke: none),
    table.vline(x: 0, end: 1, stroke: none),

    [], [Trial 1], [Trial 2], [Trial 3], [Trial 4], [Trial 5],
    [Time (s) (Intake v2)], [15.53], [16.72], [12.62], [14.82], [15.59],
    [Time (s) (Intake v1)], [40], [33], [28], [31], [30],
  )
]

#let speed-old-test-data = (40, 33, 28, 31, 30)
#let speed-new-test-data = (15.53, 16.72, 12.62, 14.82, 15.59)

#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics (Intake v2)*],
      [Mean], [#stats.mean(speed-new-test-data, digits: 2) s],
      [Median], [#stats.median(speed-new-test-data) s],
      [Range], [#stats.range(speed-new-test-data, digits: 1) s],
      [Variance], [#stats.variance(speed-new-test-data, digits: 4) s#super("2")],
      [Standard Deviation], [#stats.std-dev(speed-new-test-data, digits: 2) s],
    )
  ],

  {
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (9, 3),
        axis-style: "scientific-auto",

        legend: "north",
        // legend-style: (padding: 0.15, item: (spacing: 0.01)),

        x-label: "Trial #",
        x-tick-step: 1,

        y-label: "Time (s)",
        y-min: 0, y-max: 45,

        {
          plot.add(
            speed-new-test-data.enumerate(start:1),
            mark: "o",
            style: (stroke: none),
            label: "Intake v2 Time"
          )

          plot.add(
            speed-old-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Intake v1 Time"
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
We did not expect these results since we did not change the RPM of the intake. Because there was no jamming, the intake was able to fill the mobile goal faster. We are happy with the results.

= Jamming
== Background
During a match, intake jamming is extremely frustrating, as it prevents us from scoring and limits us to assisting our alliance partner by ramming game elements with the drivetrain. This slows down the pace of the game and makes it harder to win. Our previous intake experienced jamming between the first and second stage. We are confident that our new intake will be better.

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
    + Start filming using the camera.
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
    [Jammed Ring (Intake v2)], [4], [4], [4], [4], [4],
    [Jammed Ring (Intake v1)], [3], [4], [3], [2], [1],
  )
]

#colbreak()

#let old-jamming-test-data = (3, 4, 3, 2, 4)
#let new-jamming-test-data = (4, 4, 4, 4, 4)

#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
      [Mean], [#stats.mean(new-jamming-test-data, digits: 0)th ring],
      [Median], [#stats.median(new-jamming-test-data)th ring],
      [Range], [#stats.range(new-jamming-test-data, digits: 1) rings],
      [Variance], [#stats.variance(new-jamming-test-data, digits: 4) rings#super("2")],
      [Standard Deviation], [#stats.std-dev(new-jamming-test-data, digits: 2) rings],
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
            new-jamming-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Intake v2 Jammed Ring"
          )

          plot.add(
            old-jamming-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Intake v1 Jammed Ring"
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
Since the first stage of the intake has not changed, we expected the intake to jam after four rings. What is interesting is that the intake was more consistent and performed better than the previous intake. Shortening the intake helped us reduce the drag that the ring had when transitioning between the two stages.

= Consistency
== Background
To maximize our chances of scoring points, it is crucial that the feeding of rings from the intake to the mobile goal is smooth and consistent. To assess this, we are testing how frequently the rings either miss or successfully score on the mobile goal stake.

== Hypothesis
The intake will properly score 5 or more out of 6 rings onto the mobile goal.

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
    [Rings Scored (Intake v2)], [6], [6], [6], [6], [6], [6], [6], [6], [6], [6],
    [Rings Scored (Intake v1)], [6], [6], [5], [6], [5], [5], [6], [3], [5], [6],
  )
]

#let old-consistency-test-data = (6, 6, 5, 6, 5, 5, 6, 3, 5, 6)
#let new-consistency-test-data = (6, 6, 6, 6, 6, 6, 6, 6, 6, 6)


#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
      [Mean], [#stats.mean(new-consistency-test-data) rings],
      [Median], [#stats.median(new-consistency-test-data) rings],
      [Range], [#stats.range(new-consistency-test-data, digits: 1) rings],
      [Variance], [#stats.variance(new-consistency-test-data, digits: 4) rings#super("2")],
      [Standard Deviation], [#stats.std-dev(new-consistency-test-data, digits: 2) rings],
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
            new-consistency-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Intake v2 Scored Rings"
          )
          plot.add(
            old-consistency-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Intake v1 Scored Rings"
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
The smoother transition between the first two stages of the intake made the robot much more consistent at scoring rings onto the mobile goal. However, we wonder how effective this intake would be during real match play, as many factors, such as the angle at which the mobile goal is clamped and material stress, can reduce the effectiveness of our intake.
