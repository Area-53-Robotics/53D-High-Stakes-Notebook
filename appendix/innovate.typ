#import "/template/entries.typ": *
#import "/template/globals.typ": page-number-offset

#show: create_appendix_entry.with(
  title: "Innovate Award Submission Information Form",
  updated: datetime(year: 2024, month: 1, day: 26)
)

// https://kb.roboticseducation.org/hc/en-us/articles/17319258476439

#text(size: 14pt)[*Full Team Number: 53D*]

= Brief Description
-

= Documentation Page Numbers
/*
#context {
  heading(level: 3)[Kicker]

  let valid_entries = entries.final().enumerate()

  valid_entries = valid_entries.filter(
    entry => {
      (entry.last().title.match("Kicker") != none) or ((entry.last().title.match("Outtake #2") != none) and (entry.last().type.match("understand") != none))
    }
  )

  let entry = valid_entries.first()
  let info = type-metadata.at(entry.last().type)
  let headings = query(selector(<notebook-entry>))

  for (index, entry) in valid_entries {
    let page_number = counter(page).at(headings.at(index).location()).at(0)
    // let page_number = entry-page-counter.at(headings.at(index).location()).at(0) + 1
    let date = entry.date.display("[year]/[month]/[day]")

    let info = type-metadata.at(entry.type)

    let frontmatter_count = frontmatter-page-counter.final().at(0)

    [
      #box(baseline: 15%, nb_icon(label: entry.type, size: 1em))
      #h(5pt)
      #box(fill: info.color.lighten(30%), radius: 1pt, height: 1em, baseline: 15%)[
        #align(center + horizon)[
          #link((page: {frontmatter_count + page_number + 2 - page-number-offset}, x: 0pt, y: 0pt))[
            #text(fill: black)[
              _#h(2pt) #date #sym.dash.em #info.name: #entry.title #h(2pt)_
            ]
          ]
        ]
      ]#h(5pt)
      #box(width: 1fr, line(length: 100%, stroke: (dash: "dotted")))
      #page_number \
    ]
  }
}
*/