#import "./format.typ"
#import "./colors.typ": *
#import "@local/notebookinator:1.0.1": utils
#import "../packages.typ": *

#let rules = utils.make-rules(doc => {
  set text(font: "Linux Libertine", size: 11pt)
  set page("us-letter")

  set footnote.entry(separator: none)

  // Enforce the correct font on Excalidraw drawings
  show image: it => [
    #align(center)[
      #set text(font: "Excalifont")
      #it
    ]
  ]

  show link: it => [
    #text(
      fill: blue,
      [ _ #it _ ],
    )
  ]

  // Line from last year's notebook
  show figure.caption: it => it.body

  show figure: it => align(center)[
    #it.body

    #if it.caption != none [
      _ #it.caption.body _
    ]
  ]

  set raw(theme: "./vscode_light.tmTheme")
  // show raw.where(block: false): format.raw-not-block
  // show raw.where(block: true): it => format.raw-block(it)

  include "./components/codly.typ"
  show: codly-init.with()

  show heading: format.heading
  //show table: format.table

  // Display the whole document
  doc
})
