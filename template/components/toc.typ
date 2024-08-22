#import "../icons/icons.typ": *
#import "../colors.typ"

#let nb_toc(
  frontmatter: (),
  body: (),
  program: (),
  appendix: ()
) = {
  heading(level: 1)[Entries <notebook-toc>]

  let previous-date

  stack(
    dir: ttb,
    spacing: 0.3em,
    ..for entry in body {
      (
        link((page: entry.position.page, x: 0pt, y: 0pt))[
          #let info = type-metadata.at(entry.type)

          #let date = entry.date.display("[year]/[month]/[day]")
          
          #box(baseline: 15%, nb_icon(label: entry.type, size: 1em))
          #h(5pt)
          #if previous-date == entry.date [
            #h(25pt) _#text(fill: black)[|]_ #h(25pt)
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
    },
  )

  if (appendix.len() <= 0) {
    return
  }

  linebreak()

  heading(level: 1)[Program]
  
  stack(
    dir: ttb,
    spacing: 1em,
    ..for entry in program {
      (
        link((page: entry.position.page, x: 0pt, y: 0pt))[
          #text(fill: black)[
            _ #entry.title _
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
          #text(fill: black)[_ P-#entry.page-number _]
        ],
      )
    },
  )

  if (appendix.len() <= 0) {
    return
  }

  linebreak()

  heading(level: 1)[Appendix]
  
  stack(
    dir: ttb,
    spacing: 1em,
    ..for entry in appendix {
      (
        link((page: entry.position.page, x: 0pt, y: 0pt))[
          #text(fill: black)[
            _ #entry.title _
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
          #text(fill: black)[_ A-#entry.page-number _]
        ],
      )
    },
  )
}