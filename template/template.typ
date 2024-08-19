#import "./entries.typ": *
#import "./colors.typ": *
#import "./icons/icons.typ": *
#import "./glossary.typ": *
#import "./components/components.typ": *

#import "/appendix/resources.typ": *
#import "/appendix/innovate.typ": *

#let notebook(
  team: "",
  organization: "",
  count: (current: 1, total: 1),
  cover: [],
  year: "",
  season: "",
  innovate-form: false,
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

  // show raw.where(block: false): nb_raw_not_block
  
  include "./components/codly.typ"
  show: codly-init.with()

  // Headings
  show heading: it => nb_heading(it)

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

  appendix_entry_counter.update(_ => 1)
  frontmatter-page-counter.update(_ => page-number-offset)
  
  pagebreak()
  pagebreak()
  
  print_frontmatter_entries()

  counter(page).update(_ => 0)

  pagebreak()
  pagebreak()

  print_entries()
  
  pagebreak()
  pagebreak()

  print_program_entries()

  pagebreak()
  pagebreak()

  print_appendix_entries()

  // signature-list()

  // entry_page_list()
}