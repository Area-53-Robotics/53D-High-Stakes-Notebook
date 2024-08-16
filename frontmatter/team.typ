#import "/packages.typ": *
#import components: team-member

#create-frontmatter-entry.with(title: "Meet the Team")

#align(
  center,
)[
  #grid(
    columns: 2,
    rows: 3,
    gutter: 20pt,
    team-member(name: "Ajibola Ajani", picture: image(width: 90pt, height: 90pt, "/assets/members/ajibola.jpg"))[
      - Grade: 12
      - First Season: Tipping Point (2021-22)
      - Team Leader
      - Programmer
      - Notebooker
      - Designer
    ],
    team-member(name: "Jin Hao Cao", picture: image(width: 90pt, height: 90pt, "/assets/members/jin.jpg"))[
      - Grade: 12
      - First Season: Tipping Point (2021-22)
      - Builder
      - Notebooker
      - Designer
    ],
    team-member(name: "Ishika Saha", picture: image(width: 90pt, height: 90pt, "/assets/members/ishika.png"))[
      - Grade: 10
      - First Season: Over Under (2023-24)
      - Programmer
      - Notebooker
    ],
    team-member(name: "Makhi Epps", picture: image(width: 90pt, height: 90pt, "/assets/members/makhi.jpg"))[
      - Grade: 9
      - First Season: Tipping Point (2021-22)
      - Builder
      - Designer
      - Driver
    ],
    team-member(name: "Eric Singer", picture: image(width: 90pt, height: 90pt, "/assets/members/eric.png"))[
      - Grade: 10
      - First Season: Over Under (2023-24)
      - Builder
    ],
    team-member(name: "Rory Cullum", picture: image(width: 90pt, height: 90pt, "/assets/members/rory.jpg"))[
      - Grade: 10
      - First Season: Over Under (2023-24)
      - Builder
    ],
  )

  #colbreak()
  
]