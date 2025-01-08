#import "template/template.typ": *
#include "frontmatter/frontmatter-entries.typ"
#include "entries/entries.typ"
#include "appendix/appendix-entries.typ"
#include "program/program-entries.typ"


#show: notebook.with(
  team: "53D",
  organization: "Area 53",
  count: (current: 1, total: 1),
  cover: circle(align(center + horizon)[#image("/assets/logos/logo.svg", width: 110%)], fill: black),
  year: "2024 - 2025",
  season: "High Stakes",
  innovate: (
    date: datetime(year: 2024, month: 1, day: 8),
    event: "Kalahari Classic",
    description: "Our hook intake features a novel design that efficiently secures rings with minimal force, using a specially shaped hook mechanism to ensure a reliable grip and reduce the risk of missed rings. What sets it apart is its ability to share a motor with the flex wheel first stage intake. By utilizing a gear system to reverse rotation, the same motor powers both mechanisms, optimizing space and power usage. This innovative approach minimizes the motor count while allowing smooth transitions between the hook and flex wheel stages, enhancing the robot's efficiency and performance.",
    approach: "Our intake is the most efficient intake for conserving momentum because of its ability to effortlessly transition from the first stage intake to the second stage intake. Additionally, as the ring rotates around the circular flywheel, the velocity of the ring is tangential to the surface of the flywheel. As the ring deposits from the intake, the intake uses the ring's momentum to fire the ring onto the mobile goal's stake.",
    pages: [
      #set text(size: 12pt)
      #context {
        let valid-entries = entries.final().enumerate()

        valid-entries = valid-entries.filter(
          entry => {
            entry.last().title.match("Intake v1") != none
          }
        )

        let markers = query(selector(<notebook-entry>))

        for (temp-index, (absolute-index, entry)) in valid-entries.enumerate() {
          let page-number = counter(page).at(
            markers.at(absolute-index).location(),
          ).at(0)
          entry.page-number = page-number

          let location = markers.at(absolute-index).location()
          entry.position = location.position()

          valid-entries.at(temp-index) = entry
        }

        let sliced-mini-toc(
          list,
          start: 0,
          end: 6,
          shorten-names: false
        ) = {
          let previous-date

          for entry in list.slice(start, end) {
            (
              link((page: entry.position.page, x: 0pt, y: 0pt))[
                #let info = type-metadata.at(entry.type)

                #let date = entry.date.display("[year]/[month]/[day]")

                #if shorten-names and info.name.len() + 2 + entry.title.len() > 26 {entry.title = entry.title.slice(0, 18) + "..."}
                
                #box(baseline: 15%, nb_icon(label: entry.type, size: 1em))
                #h(5pt)
                #if previous-date == entry.date [
                  #h(27pt) _#text(fill: black)[|]_ #h(27pt)
                ] else {
                  box(fill: info.color.lighten(30%), radius: 1pt, height: 1em, baseline: 15%)[
                    #align(center + horizon)[
                      #text(fill: black)[
                        _#h(2pt) #date #h(2pt)_
                      ]
                    ]
                  ]
                }
                #box(fill: info.color.lighten(30%), radius: 1pt, height: 1em, baseline: 15%)[
                  #align(center + horizon)[
                    #text(fill: black)[
                      _#h(2pt) #info.name: #entry.title #h(2pt)_
                    ]
                  ]
                ]
                #box(
                  width: 1fr,
                  line(
                    length: 100%,
                    stroke: (
                      dash: "dotted",
                    ),
                  ),
                )
                #text(fill: black)[_ #entry.page-number _]
              ],
              previous-date = entry.date
            )
          }
        }

        if valid-entries.len() <= 6 {
          stack(
            dir: ttb,
            spacing: 0.27em,
            ..sliced-mini-toc(valid-entries, start: 0, end: valid-entries.len())
          )
        } else if valid-entries.len() <= 12 {
          grid(
            columns: 2,
            inset: (x, _) => if calc.even(x) {
              return (right: 5pt, rest: 0pt)
            } else {
              return (left: 5pt, rest: 0pt)
            },
            grid.vline(x: 1, stroke: black + 1pt),
            stack(
              dir: ttb,
              spacing: 0.27em,
              ..sliced-mini-toc(valid-entries, start: 0, end: 6, shorten-names: true)
            ),
            stack(
              dir: ttb,
              spacing: 0.27em,
              ..sliced-mini-toc(valid-entries, start: 6, end: valid-entries.len(), shorten-names: true)
            )
          )
        }
      }
    ]
  )
)
