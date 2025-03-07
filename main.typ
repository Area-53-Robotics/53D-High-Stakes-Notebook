#import "template/template.typ": *
#include "frontmatter/frontmatter-entries.typ"
#include "entries/entries.typ"
#include "appendix/appendix-entries.typ"
#include "program/program-entries.typ"


#show: notebook.with(
  team: "53D",
  organization: "Area 53",
  count: (current: 3, total: 4),
  cover: circle(align(center + horizon)[#image("/assets/logos/logo.svg", width: 110%)], fill: black),
  year: "2024 - 2025",
  season: "High Stakes",
  innovate: (
    date: datetime(year: 2025, month: 3, day: 8),
    event: none,
    description: "The ladybrown is designed to rotate up to 180" + sym.degree + " to score on both alliance and neutral stakes. It is mounted at an angle on the side of our chassis, which helps maintain a lower center of gravity compared to mounting it vertically. The ladybrown grabs rings at the intake's apex. It uses mesh to absorb the rings' energy upon collision, preventing them from slipping out. Initially, our team manually set up the ladybrown before matches, which took time and introduced human error. We automated the process by using a rotation sensor, making pickup and scoring more efficient.",
    approach: "Most ladybrown programs use default VEX motor movement functions to rotate the ladybrown motors. This often causes the ladybrown to overshoot or undershoot its target angle. Our ladybrown uses a Proportional-Integral-Derivative (PID) controller to adjust the speed of the ladybrown motors every 10 milliseconds based on how far away the ladybrown is from its target angle, ensuring consistent and smooth movement.",
    pages: [
      #set text(size: 12pt)
      #context {
        let valid-entries = entries.final().enumerate()

        valid-entries = valid-entries.filter(
          entry => {
            entry.last().title.match("Ladybrown v1") != none
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

                #if shorten-names and info.name.len() + 2 + entry.title.len() > 23 {
                  let available-chars = 23 - info.name.len() - 2 - 3
                  entry.title = entry.title.slice(0, available-chars) + "..."
                }

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
