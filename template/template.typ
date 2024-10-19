#import "entries.typ": *
#import "colors.typ": *
#import "icons/icons.typ": *
#import "components/components.typ": *
#import "utils/utils.typ": *

#let notebook(
  team: "",
  organization: "",
  count: (current: 1, total: 1),
  cover: [],
  year: "",
  season: "",
  body,
) = {
  // Styling rules
  set text(font: "Linux Libertine", size: 11pt)
  set page("us-letter")

  set footnote.entry(separator: none)

  show image: it => [
    #align(center)[ 
      #set text(font: "Virgil 3 YOFF")
      #it
    ]
  ]

  show link: it => [
    #text(fill: blue, [ _ #it _ ])
  ]

  show figure.caption: it => it.body

  show figure: it => align(center)[
    #it.body
    _ #it.caption _
  ]

  show raw.where(block: false): box.with(
    fill: gray.lighten(75%),
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
  )
  
  include "components/codly.typ"
  show: codly-init.with()

  // Headings
  show heading: it => nb-heading(it)

  set raw(theme: "/assets/vscode_light.tmTheme")

  // Content
  page(
    margin: (rest: 0.5in),
    background: image("/assets/cover.png")
  )[
    #align(center)[
      #set text(font: "Nasalization", size: 35pt, fill: yellow)
      #team Engineering Notebook \
      #count.current of #count.total \
      #image("/assets/logos/logo.svg")
      #year \
      VEX Robotics Challenge \
      #season
    ]
  ]

  appendix-entry-counter.update(_ => 1)
  frontmatter-page-counter.update(_ => 1)
  counter(page).update(_ => 0)
  
  pagebreak()
  pagebreak()
  
  print-frontmatter-entries()

  counter(page).update(_ => page-number-offset)

  pagebreak()
  pagebreak()

  print-entries()
  
  pagebreak()
  pagebreak()

  print-program-entries()

  pagebreak()
  pagebreak()

  print-appendix-entries()

  // signature-list(chronological: false)

  // entry-page-list()
}