#import "../template-packages.typ": cetz

#let pie-chart(data-type: "", colors: (), data) = {
  if colors.len() > 0 {
    assert(
      colors.len() = data.len,
      message: "Number of colors does not equal amount of data"
    )
  }

  cetz.canvas({
    import cetz.draw: *
    import cetz.chart

    data = data.sorted(key: (
      (name, value),
    ) => value)

    if colors.len() == 0 {
      for (index, data-value) in data.enumerate() {
        let color = gradient.linear(..color.map.rainbow).sample(100% * ((index + 1) / data.len()))

        colors.push((
          fill: if index == data.len() - 1 {color}
            else {color.lighten(75%)},
          stroke: if index == data.len() - 1 {color.darken(50%) + 2pt}
            else {none}
        ))
      }
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
        radius: 100%
      ),
      outer-label: (
        content: (value, label) => {
          let string = label + " (" + str(value)
          string = string.replace(" ", "\n")
          string = string + " " + data-type + ")"
          align(center)[#string]
        },
        radius: 125%
      )
    )
  })
}
