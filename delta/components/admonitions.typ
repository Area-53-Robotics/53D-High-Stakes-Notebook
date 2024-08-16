#import "../colors.typ": *
#import "../icons/icons.typ"
#import "@local/notebookinator:1.0.1": utils
#import "../metadata.typ": *
#import "/packages.typ": showybox
#import showybox: *

#let admonition = utils.make-admonition((type, title, body) => {
  let info = type-metadata.at(type)

  if title == none {
    title = info.name
  }

  box(
    grid(
      columns: (3em, 1fr),
      align(center + horizon)[#box(baseline: 30%, image.decode(info.icon, height: 2em))],
      showybox(
        frame:(
          border-color: info.color,
          body-color: info.color.lighten(80%),
          thickness: (left: 4pt/*, right: 4pt, top: 4pt, bottom: 4pt*/),
          radius: 1.5pt,
        )
      )[
        #text(
          size: 15pt,
          fill: {if info.color != yellow {
            info.color
          } else {
            let title-color = info.color.darken(20%)
            title-color
          }}
        )[
          *#title*
        ]
        \
        #body
      ]
    )
  )
})
