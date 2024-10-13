#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1",
  type: "test",
  date: datetime(year: 2024, month: 8, day: 10),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric"),
  designed: "Jin",
  witnessed: "Makhi",
)


// To ensure that the second iteration of our drivetrain was functioning that the level that we wanted, we tested the drivetrain on two of the "Aspects of a Drivetrain" that we identified in our #entry-reference(date: datetime(year: 2023, month: 7, day: 15), type: "identify").

= Speed Test (Mobility)
#v(0.5em)
#grid(
  columns: (2fr, 5fr),
  rows: 1,
  column-gutter: 1em,

  [
    == Materials
    #materials-table(
      (1, "Robot"),
      (1, "Controller"),
      (1, "Tape"),
      (1, "Stopwatch"),
      (1, "Notebook"),
      (1, "Pen"),
    )
  ],

  [
    == Procedures
    + Clear the game elements on the field to ensure a flat and obstacle-free surface.
    + Mark the starting and ending points of the distance. The distance will be 3 meters.
    + Place the front of the robot behind the starting point
    + Drive the robot forward until the front of it crosses the end line
    + Record the time it takes for the robot to cross the end line
    + Repeat steps 3-5 for a total of 5 trials
  ],
)

== Results
#align(center)[
  #table(
    columns: 6,
    rows: 2,

    fill: (x, _) =>
      if x == 0 {gray.lighten(20%)},

    [Trial \#], [Trial 1], [Trial 2], [Trial 3], [Trial 4], [Trial 5],
    [Time (s)], [1.83], [1.82], [1.82], [1.84], [1.82],
    [Speed (in/s)], [64.96], [64.80], [64.80], [65.04], [64.80],
  )
]

#grid(
  columns: 2,
  align: center + horizon,

  [
    #let data = (64.96, 64.80, 64.80, 65.04, 64.80)

    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[Statistics],
      [Average], [#stats.mean(data)],
      [Range], [#stats.range(data)],
      [Variance], [#stats.variance(data)],
      [Standard Deviation], [#stats.std-dev(data)],
    )
  ],

  {
    cetz.canvas({
      import cetz.draw: *
      import cetz.plot

      plot.plot(
        size: (9, 4),
        axis-style: "scientific-auto",

        legend: "legend.north",

        x-label: "Trial #",
        x-tick-step: 1,
        // x-min: 0, x-max: 10,
        // x-ticks: (1, 2, 4, 9),

        y-label: "Speed (in/s)",
        // y-tick-step: none,
        y-min: 72, y-max: 78,
        // y-ticks: ((1, [One]), (2, [Two])),
        {
          plot.add(
            ((1, 73.2), (2, 73.2), (3, 74), (4, 73.6), (5, 73.2)),
            mark: "o",
            style: (stroke: none),
            label: "Speed"
          )

          plot.add-hline(
            76.6,
            style: (stroke: (paint: red, dash: "dashed")),
            label: "Expected Speed"
          )

        }
      )
    })
  }
  // box(stroke: 2pt)[#image("./test/Drivetrain Speed.svg")]
)

#colbreak()

== Conclusion
Our new drivetrain is slightly faster than the previous version. In addition, we noticed that the time and speed were consistent during this test. This observation was supported by the small range, variance, and standard deviation of the data we collected. We believe that the reason for this consistency is due to the compact structure of the drivetrain. It is much more well-braced than the previous design. 

= Pushing Test (Foundation)
#v(0.5em)
#grid(
  columns: 2,
  rows: 1,
  column-gutter: 1em,

  [
    == Materials
    - Robot
    - Box
    - Set of weights
    - Measuring tape
    - Stopwatch
    - Notebook and pen for recording data
  ],

  [
    == Procedures
    + Set the robot flat on the field against the field perimeter
    + Place a box with 5 lb worth of weights in front of the robot
    + Drive the robot forward for 10 seconds
    + Measure the distance between the front of the box at its starting point and the front of the box at its end point
    + Write down the distance
    + Repeat steps 3-5 with 5 lb more weight for a total of 5 trials 
  ],
)

== Results
#align(center)[
  #table(
    columns: 6,
    rows: 2,

    fill: (x, _) =>
      if x == 0 {gray.lighten(20%)},

    [Trial \#], [Trial 1], [Trial 2], [Trial 3], [Trial 4], [Trial 5],
    [Weight (lb)], [5], [10], [15], [20], [25],
    [Distance (ft)], [13.56], [11.22], [8.76], [7.12], [6.52],
  )

  // #box(stroke: 2pt)[#image("./test/Distance (ft) vs. Trial.svg", height: 30%)]
]

== Conclusion
Compared to the previous drivetrain, our new drivetrain's push power is slightly lower. This is expected because when gearing the drivetrain for a higher speed, torque is sacrificed as a result. However, wee are not worried because the torque loss is negligible.