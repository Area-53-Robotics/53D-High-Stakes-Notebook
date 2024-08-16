// #import "/packages.typ": *
// #import components: tablex
#import "./colors.typ": *

#let table(it) = {
  /* Commented due to "surface-2" error
  tablex(
    columns: it.columns,
    auto-lines: false,
    inset: 10pt,
    fill: (_, row) => {
      if calc.odd(row) {
        surface-3
      }
      if calc.even(row) {
        surface-1
      }
    },
    hlinex(stroke: (cap: "round", thickness: 2pt)),
    ..for child in it.children {
      ([#child],)
    },
    hlinex(stroke: (cap: "round", thickness: 2pt)),
  )
  */
}

#let heading(it) = {
  // TODO: move highlight to a single spot, rn I have like 5 of them
  let highlight(color: none, body, width: auto, bottom-border-size: 0pt, bottom-color: color) = {
    box(
      fill: color,
      outset: 5pt,
      radius: 1.5pt,
      height: auto,
      width: width,
      stroke: {
        if bottom-border-size != 0pt {(bottom: bottom-border-size + bottom-color)}
      }
    )[
      #align(horizon)[#body]
    ]
  }
  
  if it.level == 1 {
      set text(size: 15pt)
      highlight(color: gray.lighten(60%), bottom-border-size: 3pt, bottom-color: gray)[
        #box(baseline: 130%, it.body)
      ]
  } else if it.level == 2 {
      set text(size: 13pt)
        highlight(color: gray.lighten(70%), bottom-border-size: 0pt, bottom-color: gray)[
        #box(baseline: 130%, it.body)
      ]
  } else if it.level == 3 {
      set text(size: 12pt)
      it.body
  }
  v(3pt)
}

#let raw-not-block = box.with(
  fill: gray, // changed from "surface-2" to "gray" due to errors
  inset: (x: 3pt, y: 0pt),
  outset: (y: 3pt),
  radius: 2pt,
)

#let raw-block(it) = {
  set par(justify: false)
  // the line counter
  let i = 0
  let box-radius = 1.5pt

  let detail-radius = 1.5pt
  if (it.lang != none) {
    grid(
      columns: (100%, 100%),
      column-gutter: (-100%),
      block(
        width: 100%,
        inset: 1em,
        {
          for line in it.text.split("\n") {
            box(width: 0pt, align(right, str(i + 1) + h(2em)))
            hide(line)
            linebreak()
            i = i + 1
          }
        },
      ),
      block(
        radius: box-radius,
        fill: surface-1,
        width: 100%,
        inset: 1em,
        {
          place(
            top + right,
            box(fill: surface-3, radius: detail-radius, outset: 3pt, it.lang),
          )
          it
        },
      ),
    )
  } else {
    block(radius: box-radius, fill: surface-2, width: 100%, inset: 1em, it)
  }
}
