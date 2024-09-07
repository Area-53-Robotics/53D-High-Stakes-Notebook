#import "/template/template.typ": *

#show: create-entry.with(
  title: "Game Challenge - Strategy Analysis",
  type: "identify",
  date: datetime(year: 2024, month: 4, day: 30),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Ajibola",
  witnessed: "Jin",
)

= Theoretical Maximum Score
#show table.cell.where(y: 0): strong
#show table.cell.where(y: 13): strong

#table(
  columns: 3,
  fill: (_, y) =>
    if y == 0 {
      gray
    } else if y == 13 {
      gray.lighten(30%)
    },

  table.header([Objective], [Rings/Climb Level], [Points]),

  [Autonomous Bonus], [N/A], [6],
  [Alliance Wall Stake], [1 Ring], [3],
  [Wall Stake 1], [1 Ring], [3],
  [Wall Stake 2], [1 Ring], [3],
  [Mobile Goal 1], [6 Rings (Positive Modifier)], [16 (8 ring points doubled due to corner modifier)],
  [Mobile Goal 2], [6 Rings (Positive Modifier)], [16 (8 ring points doubled due to corner modifier)],
  [Mobile Goal 3], [6 Rings], [8],
  [Mobile Goal 4], [1 Rings], [3],
  [Mobile Goal 5], [1 Rings], [3],
  [Ladder Stake], [1 Ring], [3],
  [Robot Climb 1], [3rd Level], [14 (12 climb points + 2 ladder stake bonus points)],
  [Robot Climb 2], [3rd Level], [14 (12 climb points + 2 ladder stake bonus points)],
  [Total], [], [92]
)

#cetz.canvas({
  import cetz.draw: *
  import cetz.chart

  let data = (
    ("Auton Bonus", 6),
    ("Wall Stakes", 9),
    ("Mobile Goals", 30),
    ("Corner Modifiers", 16),
    ("Climb", 24),
    ("Ladder Stake", 7),
  ).sorted(key: (
    (name, value),
  ) => value)

  let colors = ()

  for (index, data-value) in data.enumerate() {
    let color = gradient.linear(..color.map.rainbow).sample(100% * ((index + 1) / data.len()))

    colors.push((
      fill: if index == data.len() - 1 {color}
        else {color.lighten(75%)},
      stroke: if index == data.len() - 1 {color.darken(50%) + 2pt}
        else {none}
    ))
  }

  chart.piechart(
    data,
    start: 90deg,
    stop: 450deg,
    gap: 1deg,
    value-key: 1,
    label-key: 0,
    radius: 3.5,
    slice-style: colors,
    inner-radius: 1,
    inner-label: (
      content: "%",
      radius: 110%
    ),
    outer-label: (
      content: (value, label) => {
        let string = label + " (" + str(value) + ")"
        string = string.replace(" ", "\n")
        align(center)[#string]
      },
      radius: 125%
    )
  )
})