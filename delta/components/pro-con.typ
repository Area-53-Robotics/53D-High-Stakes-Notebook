#import "../colors.typ": *
#import "@local/notebookinator:1.0.1": utils

#let pro-con = utils.make-pro-con((pros, cons) => {
  let cell = rect.with(
    width: 100%,
    inset: 5pt,
  )

  grid(
    columns: (1fr, 1fr),
    column-gutter: 4pt,
    cell(
      fill: green,
      radius: (top: 1.5pt),
    )[*Pros*],
    cell(
      fill: red,
      radius: (top: 1.5pt),
    )[*Cons*],
    cell(
      fill: green.lighten(80%),
      radius: (bottom: 1.5pt),
      pros,
    ),
    cell(
      fill: red.lighten(80%),
      radius: (bottom: 1.5pt),
      cons,
    ),
  )
})
