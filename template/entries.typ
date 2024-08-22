#import "./colors.typ" : *
#import "./globals.typ": *
#import "./components/components.typ": *

#let create_entry(
  title: "",
  type: "",
  date: none,
  attendance: "",
  designed: "",
  witnessed: "",
  body
) = {
  if date == none {
    panic("No valid start date specified")
  }

  assert((designed == "Ajibola") or (designed == "Ishika") or (designed == "Jin") or (designed == "Makhi") or (designed == "Eric") or (designed == "Rory"), message: "Invalid \"Designed By\"")
  assert((witnessed == "Ajibola") or (witnessed == "Ishika") or (witnessed == "Jin") or (witnessed == "Makhi") or (witnessed == "Eric") or (witnessed == "Rory"), message: "Invalid \"Witnessed By\"")

  entries.update(x => {
    x.push((
      title: title,
      type: type,
      date: date,
      attendance: attendance,
      designed: designed,
      witnessed: witnessed,
      body: body,
    ))
    x
  })
}

#let print_entries() = {
  context {
    // make a second array for locations for toc linking?
    for entry in entries.final() {
      [
        #let info = type-metadata.at(entry.type)
        #let type = entry.type

        #set page(
          header: [
            #nb_title(
              color: info.color,
              beginning: [
                #nb_icon(label: type, size: 2.5em)
              ]
            )[
              #entry.title #h(1fr)
            ]
          ],

          footer: [
            #context {
              entry-page-counter.step()

              if calc.odd(here().page()) {
                table(
                  columns: (1fr, 1fr, 1fr, 1fr, 2fr, 35pt),
                  rows: 4,
                  align: left + horizon,
                  stroke: none,

                  table.hline(start: 0, end: 4, stroke: black + 1pt, y: 0),
                  table.hline(start: 0, end: 4, stroke: black + 1pt, y: 1),
                  table.hline(start: 0, end: 5, stroke: black + 1pt, y: 2),
                  table.hline(start: 0, end: 5, stroke: black + 1pt, y: 3),
                  table.hline(start: 0, end: 5, stroke: black + 1pt, y: 4),

                  table.vline(start: 0, end: 4, stroke: black + 1pt, x: 0),
                  table.vline(start: 3, end: 4, stroke: black + 1pt, x: 1),
                  table.vline(start: 0, end: 4, stroke: black + 1pt, x: 4),
                  table.vline(start: 3, end: 4, stroke: black + 1pt, x: 5),

                  table.cell(colspan: 4, align: center)[
                    #link((page: frontmatter-page-counter.final().at(0) + 2 - 1, x: 0pt, y: 0pt))[
                      #text(fill: black)[
                        _ #entry.title _
                      ]
                    ]
                  ],
                  table.cell(colspan: 2, rowspan: 3, align: center + horizon)[
                    #nb_icon_box(type: entry.type)
                  ],
                  table.cell(colspan: 4)[Designed By: #nb_signature(entry.designed)],
                  table.cell(colspan: 4)[Witnessed By: #nb_signature(entry.witnessed)],
                  table.cell(align: center)[#entry.date.display("[year]/[month]/[day]")],
                  table.cell(colspan: 4)[Attendance: #entry.attendance],
                  table.cell(align: center + horizon)[
                    #box(
                      fill: info.color,
                      outset: 5pt,
                      radius: 1.5pt,
                      height: auto,
                      width: 20pt,
                    )[#counter(page).display()]
                  ],
                )
              } else {
                table(
                  columns: (35pt, 2fr, 1fr, 1fr, 1fr, 1fr),
                  rows: 4,
                  align: left + horizon,
                  stroke: none,

                  table.hline(start: 2, end: 7, stroke: black + 1pt, y: 0),
                  table.hline(start: 2, end: 7, stroke: black + 1pt, y: 1),
                  table.hline(start: 2, end: 7, stroke: black + 1pt, y: 2),
                  table.hline(start: 1, end: 7, stroke: black + 1pt, y: 3),
                  table.hline(start: 1, end: 7, stroke: black + 1pt, y: 4),

                  table.vline(start: 3, end: 4, stroke: black + 1pt, x: 1),
                  table.vline(start: 0, end: 4, stroke: black + 1pt, x: 2),
                  table.vline(start: 3, end: 4, stroke: black + 1pt, x: 5),
                  table.vline(start: 0, end: 4, stroke: black + 1pt, x: 6),

                  table.cell(colspan: 2, rowspan: 3, align: center + horizon)[
                    #nb_icon_box(type: entry.type)
                  ],
                  table.cell(colspan: 4, align: center)[
                    #link((page: frontmatter-page-counter.final().at(0) + 2 - 1, x: 0pt, y: 0pt))[
                      #text(fill: black)[
                        _ #entry.title _
                      ]
                    ]
                  ],
                  table.cell(colspan: 4)[Designed By: #nb_signature(entry.designed)],
                  table.cell(colspan: 4)[Witnessed By: #nb_signature(entry.witnessed)],
                  table.cell(align: center + horizon)[
                    #box(
                      fill: info.color,
                      outset: 5pt,
                      radius: 1.5pt,
                      height: auto,
                      width: 20pt,
                    )[#counter(page).display()]
                  ],
                  table.cell(colspan: 4, align: right)[Attendance: #entry.attendance],
                  table.cell(align: center)[#entry.date.display("[year]/[month]/[day]")]
                )
              }
            }
          ],

          margin: (left: 5em, bottom: 11em, right: 5em),

          background: nb_side_margin_color(color: info.color)
        )

        #entry.body <notebook-entry>
        #counter(footnote).update(0)
      ]
    }
    
    counter(page).update(_ => 0)
  }
}

#let create_frontmatter_entry(title: "", body) = {
  frontmatter-entries.update(x => {
    x.push((
      title: title,
      body: body,
    ))
    x
  })
}

#let create_appendix_entry(title: "", updated: none, body) = {
  appendix-entries.update(x => {
    x.push((
      title: title,
      updated: updated,
      body: body,
    ))
    x
  })
}

#let create_program_entry(title: "", body) = {
  program-entries.update(x => {
    x.push((
      title: title,
      body: body,
    ))
    x
  })
}

#let print_frontmatter_entries() = {
  context {
    for entry in frontmatter-entries.final() {
      [
        #set page(
          margin: (left: 5em, right: 5em),
          background: nb_side_margin_color(color: gray),
          header: [
            #nb_title[#entry.title]
          ],
          footer: nb_frontmatter_footer()
        )

        #entry.body <notebook-frontmatter>
        #counter(footnote).update(0)
      ]
    }
  }
}

#let print_appendix_entries() = {
  context {
    for entry in appendix-entries.final() {
      [
        #set page(
          margin: (left: 5em, right: 5em),
          background: nb_side_margin_color(color: gray),
          header: [
            #nb_title(
              beginning: [Appendix #context appendix_entry_counter.display("A"):],
              beginning-fill: gray
            )[#entry.title]
          ],
          footer: nb_appendix_footer(updated: entry.updated)
        )

        #entry.body <notebook-appendix>
        #counter(footnote).update(0)
        #appendix_entry_counter.step()
      ]
    }
  }
}

#let print_program_entries() = {
  context {
    // make a second array for locations for toc linking?
    for entry in program-entries.final() {
      [
        #set page(
          margin: (left: 5em, right: 5em),
          background: nb_side_margin_color(color: blue),
          header: [
            #nb_title(
              color: blue,
              beginning: [Program:],
              beginning-fill: blue
            )[#entry.title]
          ],
          footer: nb_program_footer()
        )

        #entry.body <notebook-program>
        #counter(footnote).update(0)
      ]
    }
    
    counter(page).update(_ => 0)
  }
}