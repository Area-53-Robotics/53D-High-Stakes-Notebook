#import "/template/template.typ": *
#import "../packages.typ": showybox
#import showybox: showybox

#show: create-frontmatter-entry.with(
  title: "Meet the Team"
)

// TODO: move to template
#let team-member(name: "", picture: "", color: green, body) = [
  #showybox(
    title-style: (
      boxed-style: (
        anchor: (
          x: center,
          y: horizon
        ),
        radius: (top-left: 10pt, bottom-right: 10pt, rest: 0pt),
      ),
      weight: "bold"
    ),
    frame: (
      title-color: color.darken(40%),
      body-color: color.lighten(80%),
      border-color: color.darken(60%),
      radius: (top-left: 10pt, bottom-right: 10pt, rest: 0pt),
      title-inset: 10pt,
      body-inset: (x: 20pt, y: 10pt),
      width: 200pt,
      height: 170pt,
    ),
    title: name,
  )[
    #grid(
      columns: 2,
      gutter: 20pt,
      align(center, image(width: 90pt, height: 90pt, picture)),
      align(left, body),
    )
  ]
]

#align(
  center,
)[
  #grid(
    columns: 2,
    rows: 3,
    row-gutter: 20pt,
    column-gutter: 20pt,
    team-member(name: "Ajibola Ajani", picture: "/assets/members/ajibola.jpg")[
      - Grade: 12
      - First Season: Tipping Point (2021-22)
      - Team Leader
      - Programmer
      - Notebooker
      - Designer
    ],
    team-member(name: "Jin Hao Cao", picture: "/assets/members/jin.jpg")[
      - Grade: 12
      - First Season: Tipping Point (2021-22)
      - Builder
      - Notebooker
      - Designer
    ],
    team-member(name: "Ishika Saha", picture: "/assets/members/ishika.png")[
      - Grade: 10
      - First Season: Over Under (2023-24)
      - Programmer
      - Notebooker
    ],
    team-member(name: "Makhi Epps", picture: "/assets/members/makhi.jpg")[
      - Grade: 9
      - First Season: Tipping Point (2021-22)
      - Builder
      - Designer
      - Driver
    ],
    team-member(name: "Eric Singer", picture: "/assets/members/eric.jpg")[
      - Grade: 10
      - First Season: Over Under (2023-24)
      - Builder
    ],
    team-member(name: "Rory Cullum", picture: "/assets/members/rory.jpg")[
      - Grade: 10
      - First Season: Over Under (2023-24)
      - Builder
    ],
    team-member(name: "Anders Pyenson", picture: "/assets/members/anders.jpg")[
      - Grade: 9
      - First Season: High Stakes (2024-25)
      - Builder
    ],
  )
]