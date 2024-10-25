#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mobile Goal Clamp v1",
  type: "test",
  date: datetime(year: 2024, month: 8, day: 24),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Rory", "Eric", "Anders"),
  designed: "Eric",
  witnessed: "Anders",
)


Now that we have a functioning mobile goal clamp we want to test the key factors of its functionality. We decided that grip strength, consistency and endurance were the most important factors for the clamp and ran tests based on these requirements to understand how well it functions and what can be improved.

= Grip Strength
== Background
In this game mobile goals are an important and limited game element. This means that we need to know our ability to hold on to the mobile goals and compete for other mobile goals. To test this, we pitted our robot against another, to see how long it could maintain its grip. If it lasted more than 15 seconds (enough time to escape), it would pass. 

== Hypothesis
The robot will be able to maintain its grip on the mobile goal

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
    + Set the two robots on the field facing away from each other.
    + Fill both robots with 100 PSI of air.
    + Bring a mobile goal to our robot and clamp down on it.
    + Have the opponent’s robot clamp to the other side of mobile goal.
    + Set a timer for 15 seconds and examine if the opponent’s robot was able to pull the mobile goal off our robot.
    + Repeat experiment for 5 trials.
  ],
)

== Results
#align(center)[
  #show table.cell.where(x: 0): strong
  #show table.cell.where(y: 0): strong

  #table(
    columns: 6,

    fill: (x, y) =>
      if y == 0 and x > 0 {gray.lighten(20%)},

    table.hline(y: 0, end: 1, stroke: none),
    table.vline(x: 0, end: 1, stroke: none),

    [], [Trial 1], [Trial 2], [Trial 3], [Trial 4], [Trial 5],
    [Pass/Fail], [Fail], [Success], [Fail], [Fail], [Success],
    [Time (s)], [12.4], [15], [6.9], [11.7], [15],
  )
]

// #grid(
//   columns: (1fr, 2fr),
//   align: center + horizon,

//   [
//     #table(
//       columns: 2,
//       align: center + horizon,

//       table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
//       [Mean], [#stats.mean(speed-test-data) in/s],
//       [Median], [#stats.median(speed-test-data) in/s],
//       [Range], [#stats.range(speed-test-data, digits: 1) in/s],
//       [Variance], [#stats.variance(speed-test-data, digits: 4) in#super("2")/s#super("2")],
//       [Standard Deviation], [#stats.std-dev(speed-test-data, digits: 2) in/s],
//     )
//   ],

//   {
//     cetz.canvas({
//       import cetz.draw: *
//       import cetz.plot

//       plot.plot(
//         size: (9, 4),
//         axis-style: "scientific-auto",

//         legend: "north",
//         legend-style: (padding: 0.15, item: (spacing: 0.15)),

//         x-label: "Trial #",
//         x-tick-step: 1,

//         y-label: "Speed (in/s)",
//         y-min: 72, y-max: 77,

//         {
//           plot.add(
//             speed-test-data.enumerate(start: 1),
//             mark: "o",
//             style: (stroke: none),
//             label: "Speed"
//           )

//           plot.add(
//             domain: (1, 5),
//             style: (stroke: (paint: green), fill: green.lighten(75%)),
//             epigraph: true,
//             label: "Ideal Speed",
//             x => {
//               76.6
//             }
//           )
//         }
//       )
//     })
//   }
// )

== Conclusion
This was an overall failure, the robot failed more than it succeeded and broke once during testing.

#colbreak()

= Consistency
== Background
Consistency is very important in machines and in competitions. If you cannot predict how your robot will operate within reason then that is not consistent and will almost certainly become a problem.

== Hypothesis
The robot will clamp consistently about 70% of the time

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
    + Fill the robot with 100 PSI of air.
    + Set our robot on the field.
    + Place a mobile goal at some location on the field.
    + Drive the robot to grab the mobile goal. 
    + Repeat for a total of 20 trials.
  ],
)

== Results
#align(center)[
  #show table.cell.where(x: 0): strong
  #show table.cell.where(y: 0): strong

  #table(
    columns: 11,

    fill: (x, y) =>
      if calc.even(y) {gray.lighten(20%)},

    
[],
[T1],
[T2],
[T3],
[T4],
[T5],
[T6],
[T7],
[T8],
[T9],
[T10],
[Pass/Fail],
[P],
[P],
[F],
[F],
[F],
[F],
[F],
[P],
[F],
[F],
[],
[T11],
[T12],
[T13],
[T14],
[T15],
[T16],
[T17],
[T18],
[T19],
[T20],
[Pass/Fail],
[F],
[F],
[P],
[P],
[F],
[F],
[F],
[P],
[F],
[F],
  )
]


// #grid(
//   columns: (1fr, 2fr),
//   align: center + horizon,

//   [
//     #table(
//       columns: 2,
//       align: center + horizon,

//       table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
//       [Mean], [#stats.mean(weight-test-data, digits: 2) ft.],
//       [Median], [#stats.median(weight-test-data) ft.],
//       [Range], [#stats.range(weight-test-data, digits: 2) ft.],
//       [Variance], [#stats.variance(weight-test-data, digits: 3) ft#super("2")],
//       [Standard Deviation], [#stats.std-dev(weight-test-data, digits: 3) ft.],
//     )
//   ],

//   {
//     cetz.canvas({
//       import cetz.draw: *
//       import cetz.plot

//       plot.plot(
//         size: (9, 4),
//         axis-style: "scientific-auto",

//         legend: "north",
//         legend-style: (padding: 0.15, item: (spacing: 0.15)),

//         x-label: "Weight (lbs)",
//         x-tick-step: 5,

//         y-label: "Distance (ft)",
//         y-min: 6, y-max: 14,

//         {
//           plot.add(
//             weight-test-data.enumerate(start: 1).map(data => {
//               (data.at(0) * 5, data.at(1))
//             }),
//             mark: "o",
//             style: (stroke: none),
//             label: "Distance"
//           )

//           plot.add(
//             domain: (0, 25),
//             style: (stroke: (paint: green), fill: green.lighten(75%)),
//             epigraph: true,
//             label: "Target Ratio",
//             x => {
//               x * 0.75
//             }
//           )
//         }
//       )
//     })
//   }
// )

== Conclusion
This test was a failure as the mobile goal would rest at off-angles and was hardly consistent and this consistency allowed for some error, making this outcome even worse overall.

#colbreak()

= Endurance
== Background
During the game it is often necessary to attach, detach and reattach to mobile goals for strategic reasons: gathering more points, and getting unstuck. Due to this, we wanted to test how many times it could detach and reattach in a best case scenario.

== Hypothesis
The mobile goal will be able to cycle from free to clamped and back to free 10 times on average.

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
    + Fill the robot with 100 PSI of air.
    + Set our robot on the table
    + Place a mobile goal in front of the clamp of the robot
    + Activate and deactivate, counting how many activations and deactivations before pressure runs out.
    + Repeat for a total of 5 trials.
  ],
)


== Results
#align(center)[
  #show table.cell.where(x: 0): strong
  #show table.cell.where(y: 0): strong

  #table(
    columns: 6,

    fill: (x, y) =>
      if y == 0 and x > 0 {gray.lighten(20%)},

    
[],
[Trial 1],
[Trial 2],
[Trial 3],
[Trial 4],
[Trial 5],
[Number of clamps (down)],
[9],
[8],
[7],
[9],
[6],
[Number of releases (up)],
[9],
[7],
[7],
[8],
[4],


  )
]

// #grid(
//   columns: (1fr, 2fr),
//   align: center + horizon,

//   [
//     #table(
//       columns: 2,
//       align: center + horizon,

//       table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
//       [Mean], [#stats.mean(turning-test-data, digits: 2) in.],
//       [Median], [#stats.median(turning-test-data) in.],
//       [Range], [#stats.range(turning-test-data) in.],
//       [Variance], [#stats.variance(turning-test-data, digits: 2) in#super("2")],
//       [Standard Deviation], [#stats.std-dev(turning-test-data, digits: 2) in.],
//     )
//   ],

//   {
//     cetz.canvas({
//       import cetz.draw: *
//       import cetz.plot

//       plot.plot(
//         size: (9, 4),
//         axis-style: "scientific-auto",

//         legend: "north",
//         legend-style: (padding: 0.15, item: (spacing: 0.15)),

//         x-label: "Trial #",
//         x-tick-step: 1,

//         y-label: "Turning Radius (in)",
//         y-min: 0, y-max: 20,

//         {
//           plot.add(
//             turning-test-data.enumerate(start: 1),
//             mark: "o",
//             style: (stroke: none),
//             label: "Speed"
//           )

//           plot.add(
//             domain: (1, 5),
//             style: (stroke: (paint: green), fill: green.lighten(75%)),
//             hypograph: true,
//             label: "Target Radius",
//             x => {
//               5
//             }
//           )
//         }
//       )
//     })
//   }
// )

== Conclusion
While the majority of results were over the line, many were on the edge and some fell below. Given this and the large variations we do not entirely trust the endurance of this clamp as it functions.

#colbreak()