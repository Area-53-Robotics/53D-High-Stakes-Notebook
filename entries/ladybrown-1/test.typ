#import "/template/template.typ": *

#show: create-entry.with(
  title: "Ladybrown v1",
  type: "test",
  date: datetime(year: 2024, month: 11, day: 15),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric", "Anders"),
  designed: "Eric",
  witnessed: "Rory",
)


With the ladybrown finished, we are ready to test its ability with scoring. We hope that the ladybrown will perform better overall than the redirect mechanism.

= Handling (Grip)
== Background
The ladybrown uses mesh to absorb the impact when the ring collides with it. Additionally, the amount of static friction the mesh generates between the rings and the mesh surface determines how far up the ladybrown the ring stops. Optimizing both of these variables will improve the ladybrown's ability to control the ring effectively.

== Hypothesis
The robot will be able to grip onto the ring at least 80% of the time.

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
    + Have the robot intake the ring.
    + Use the controller to move the ladybrown to its ring collecting position.
    + Record if the ladybrown successfully collected the ring.
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
    [Pass/Fail], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy],
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
      [Passes], [20 trials],
      [Failures], [0 trials],
    )
  ],

  pie-chart(
    radius: 3.2,
    data-type: "trials",
    (
      ("Passes", 20, green),
      // ("Failures", 0, red),
    ),
  ),
)

== Conclusion
We are happy with how efficient the ladybrown is at collecting rings. This is a much better result from the redirect mechanism.


= Scoring (Control)
== Background
The ladybrown functions by grabbing a ring directly from the apex of the intake to score it onto the wall stake. We chose to build the ladybrown because of its speed in scoring rings onto the wall stakes, and we estimate it will take approximately three seconds to score a ring onto a wall stake.

== Hypothesis
+ The robot will be able to score rings onto the wall stakes 80% of the time.
+ The ladybrown will take at most 3 seconds to redirect a ring.

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
    + Start the stopwatch when the ring reaches the apex of the intake.
    + Use the controller to move the ladybrown to its ring collecting position.
    + Score the ring onto the wall stake.
    + Stop the stopwatch once the ring has been scored.
    + Record whether the ring was successfully scored and how long it took the ring to be scored.
    + Repeat steps 1-7 for a total of 20 trials.
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
    [Pass/Fail], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy], [#sym.checkmark.heavy],
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
      [Passes], [20 trials],
      [Failures], [0 trials],
    )
  ],

  pie-chart(
    radius: 2.3,
    outer-label-radius: 125%,
    data-type: "trials",
    (
      ("Passes", 20, green),
      // ("Failures", 0, red),
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
    [Time], [4.33 s], [3.46 s], [2.78 s], [3.66 s], [2.51 s], [2.68 s], [2.59 s], [2.85 s], [2.61 s], [2.80 s],
    [], [Trial 11], [Trial 12], [Trial 13], [Trial 14], [Trial 15], [Trial 16], [Trial 17], [Trial 18], [Trial 19], [Trial 20],
    [Time], [2.97 s], [2.86 s], [2.71 s], [2.64 s], [2.78 s], [2.75 s], [2.73 s], [2.59 s], [2.81 s], [2.77 s],
  )
]

#let scoring-test-data = (4.33, 3.46, 2.78, 3.66, 2.51, 2.68, 2.59, 2.85, 2.61, 2.80, 2.97, 2.86, 2.71, 2.64, 2.78, 2.75, 2.73, 2.59, 2.81, 2.77)

#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
      [Mean], [#stats.mean(scoring-test-data, digits: 2) s],
      [Median], [#stats.median(scoring-test-data) s],
      [Range], [#stats.range(scoring-test-data, digits: 2) s],
      [Variance], [#stats.variance(scoring-test-data, digits: 4) s#super("2")],
      [Standard Deviation], [#stats.std-dev(scoring-test-data, digits: 2) s],
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
        y-min: 0, y-max: 4.5,

        {
          plot.add(
            scoring-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Scoring Time"
          )

          plot.add(
            domain: (1, 20),
            style: (stroke: (paint: green), fill: green.lighten(75%)),
            hypograph: true,
            label: "Target Scoring Time",
            x => {
              3
            }
          )
        }
      )
    })
  }
)

== Conclusion
We are happy with the results. Compared to the redirect mechanism, the ladybrown has a much higher success rate and faster scoring time. We are confident that the ladybrown will perform well in the upcoming tournament.

#colbreak()

= Range of Motion (Speed)
== Background
The main advantage of the ladybrown compared to the redirect mechanism is its speed. The ladybrown can complete a 180 degree rotation faster than other high stake mechanisms. This speed would allow the robot to score on the neutral wall stakes before it gets blocked or pushed.

== Hypothesis
The robot will make a full 180 degree rotation in 3 seconds or under. 

#grid(
  columns: (3fr, 7fr),
  rows: 1,
  column-gutter: 15pt,

  [
    == Materials
    #materials-table(
      (1, "Robot"),
      (1, "Controller"),
      (1, "Stopwatch"),
      (1, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Set the robot on the field with the four-bar down.
    + Set the ladybrown to its idle position.
    + Measure the time it takes for the ladybrown to make a 180 degree rotation.
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
    [Speed], [3.42 s],[3.54 s],[3.48 s],[3.52 s],[3.56 s],[3.46 s],[3.61 s],[3.53 s],[3.54 s],[3.63 s],
  )
]

#let range-of-motion-test-data = (3.42, 3.54, 3.48, 3.52, 3.56, 3.46, 3.61, 3.53, 3.54, 3.63,)


#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
      [Mean], [#stats.mean(range-of-motion-test-data, digits: 2) s],
      [Median], [#stats.median(range-of-motion-test-data) s],
      [Range], [#stats.range(range-of-motion-test-data, digits: 2) s],
      [Variance], [#stats.variance(range-of-motion-test-data, digits: 4) s#super("2")],
      [Standard Deviation], [#stats.std-dev(range-of-motion-test-data, digits: 2) s],
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

        y-label: "Speed (s)",
        y-min: 1, y-max: 4,

        {
          plot.add(
            range-of-motion-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Speed"
          )
          plot.add(
            domain: (1, 10),
            style: (stroke: (paint: green), fill: green.lighten(75%)),
            hypograph: true,
            label: "Target Speed",
            x => {
              3
            }
          )
        }
      )
    })
  }
)

== Conclusion
Although the ladybrown did not meet our hypothesis, we are still happy with the results. The ladybrown PID macro slowed the rotation slightly, but this is a necessary trade-off for efficiency. 