#import "../icons/icons.typ": *

#let nb_toc(
  frontmatter: (),
  body: (),
  program: (),
  appendix: ()
) = {
  heading(level: 1)[Entries]

  let previous-date

  stack(
    dir: ttb,
    spacing: 0.3em,
    ..for entry in body {
      (
        [
          #let info = type-metadata.at(entry.type)

          #let date = entry.date.display("[year]/[month]/[day]")
          
          #box(baseline: 15%, nb_icon(label: entry.type, size: 1em))
          #h(5pt)
          #if previous-date == entry.date [
            #h(25pt) | #h(25pt)
           ] else {
            box(fill: info.color.lighten(30%), radius: 1pt, height: 1em, baseline: 15%)[
              #align(center + horizon)[
                #h(2pt) #date #h(2pt)
              ]
            ]
          }
          #box(fill: info.color.lighten(30%), radius: 1pt, height: 1em, baseline: 15%)[
            #align(center + horizon)[
              _#h(2pt) #info.name: #entry.title #h(2pt)_
            ]
          ]
          #h(5pt)
          #box(
            width: 1fr,
            line(
              length: 100%,
              stroke: (
                dash: "dotted",
              ),
            ),
          )
          #entry.page-number
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
        [
          #entry.title
          #box(
            width: 1fr,
            line(
              length: 100%,
              stroke: (
                dash: "dotted",
              ),
            ),
          )
          P-#entry.page-number
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
        [
          #entry.title
          #box(
            width: 1fr,
            line(
              length: 100%,
              stroke: (
                dash: "dotted",
              ),
            ),
          )
          A-#entry.page-number
        ],
      )
    },
  )
}