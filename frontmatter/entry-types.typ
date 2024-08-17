#import "/template/entries.typ": *
#import "/template/components/components.typ": *
#import "@preview/tablex:0.0.8"

#show: create_frontmatter_entry.with(
  title: "Notebook Entry Types"
)

Entries all have 1 out of 10 types displayed in the top left corner, labeled at the bottom, and shown in the table of contents. The 7 types with a black border are part of the engineering design process.

#align(center)[
  #set text(size: 14pt)
  #gridx(
    columns: (auto, auto, auto),
    rows: 8,
    gutter: 8pt,
    align: (center + horizon),
    
    vlinex(start: 0, end: 1, stop-pre-gutter: true, stroke: 2pt, x: 0),
    vlinex(start: 2, end: 8, stop-pre-gutter: true, stroke: 2pt, x: 0),

    nb_icon(label: "identify", size: 3em),
    [*Identify the Problem*],
    nb_icon_box(type: "identify"),

    nb_icon(label: "understand", size: 3em),
    [*Understand the Concepts*],
    nb_icon_box(type: "understand"),

    nb_icon(label: "brainstorm", size: 3em),
    [*Brainstorm Solutions*],
    nb_icon_box(type: "brainstorm"),

    nb_icon(label: "select", size: 3em),
    [*Select the Best Solution*],
    nb_icon_box(type: "select"),

    nb_icon(label: "plan", size: 3em),
    [*Plan the Solution*],
    nb_icon_box(type: "plan"),

    nb_icon(label: "build", size: 3em),
    [*Build the Solution*],
    nb_icon_box(type: "build"),

    nb_icon(label: "program", size: 3em),
    [*Program the Solution*],
    nb_icon_box(type: "program"),

    nb_icon(label: "test", size: 3em),
    [*Test the Solution*],
    nb_icon_box(type: "test"),

    nb_icon(label: "management", size: 3em),
    [*Team Management*],
    nb_icon_box(type: "management"),

    nb_icon(label: "competition", size: 3em),
    [*Competition Reflection*],
    nb_icon_box(type: "competition"),
  )
]