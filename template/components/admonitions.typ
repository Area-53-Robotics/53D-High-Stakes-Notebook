#import "../colors.typ": *
#import "../icons/icons.typ": *
#import "../template-packages.typ": showybox
#import showybox: showybox

#let admonition(type: "", title: none, body) = {
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
}

#let nb_todo(date: none, monthly-schedule: none, yearly-schedule: none, attendance: none, body) = {
  if monthly-schedule != none {
    if ((monthly-schedule != "On") and (monthly-schedule != "Behind") and (monthly-schedule != "Ahead") and (monthly-schedule != "Off")) {
      panic("Invalid monthly schedule status")
    }
  }

  if yearly-schedule != none {
    if ((yearly-schedule != "On") and (yearly-schedule != "Behind") and (yearly-schedule != "Ahead") and (monthly-schedule != "Off")) {
      panic("Invalid yearly schedule status")
    }
  }

  admonition(type: "management", title: [To-Do: (#date.display("[year]/[month]/[day]"))])[
    #grid(
      columns: 2,
      align: left + horizon,
      inset: (x, _) => {(
        left: if x == 1 {3pt} else {0pt},
        rest: 0pt
      )},

      ..for (completed, task) in body {
        (
          {
            if completed == true {
              image("/template/tabler-icons/square-check-filled.svg", height: 1em)
            } else {
              image("/template/tabler-icons/square.svg", height: 1em)
            }
          },
          task
        )
      }
    )

    #if monthly-schedule != none or yearly-schedule != none or attendance != none [
      #line(length: 100%)
    ]

    #if monthly-schedule != none [
      - *Monthly Schedule Status:* #monthly-schedule Schedule
    ]

    #if yearly-schedule != none [
      #v(-3pt)
      #if yearly-schedule == "Ahead" [
        - *Yearly Schedule Status:* #yearly-schedule of Schedule
      ] else [
        - *Yearly Schedule Status:* #yearly-schedule Schedule
      ]
    ]

    #if attendance != none [
      #v(-3pt)
      - *Attendance:* #attendance
    ]
  ]
}

#let nb_matrix_criteria(body) = [
  #admonition(type: "select", title: "Decision Matrix")[
    *Ranking Criteria:*
    #body

    *Number Ranking Key:*
    #set text(size: 13pt)
    #table(
      rows: 2,
      columns: (1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,

      fill: (x, y) =>
        if x == 0 { green.lighten(10%) }
        else if x == 1 { yellow.lighten(10%) }
        else if x == 2 { red.lighten(10%) }
        else if x == 3 { red.darken(10%) }
        else if x == 4 { red.darken(40%) }
        else { white },

      [4], [3], [2], [1], [0],
      [Excellent], [Fair], [Poor], [Very Poor], [Incapable],
    )
  ]
]