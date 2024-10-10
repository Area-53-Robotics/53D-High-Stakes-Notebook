#import "../icons/icons.typ": *
#import "../globals.typ": frontmatter-page-counter, entry-page-counter, appendix-page-counter, entries, signature-type, page-number-offset
#import "../utils/entry-lists.typ": *

#let signature-metadata = (
  "Ajibola": (name: "Ajibola Ajani", signature: text(font: "Edwardian Script ITC", "Ajibola Ajani")),
  "Ishika": (name: "Ishika Saha", signature: text(font: "Freestyle Script", "Ishika Saha")),
  "Jin": (name: "Jin Cao", signature: text(font: "French Script MT", "Jin Cao")),
  "Makhi": (name: "Makhi Epps", signature: text(font: "Kunstler Script", "Makhi Epps")),
  "Eric": (name: "Eric Singer", signature: text(font: "Lucida Handwriting", "Eric Singer")),
  "Rory": (name: "Rory Cullum", signature: text(font: "Palace Script MT", "Rory Cullum")),
  "Anders": (name: "Anders Pyenson", signature: text(font: "Segoe Script", "Anders Pyenson")),
)

#let signature(name) = {
  if signature-type == 0 [
    #label(name)
  ] else if signature-type == 1 [
    #signature-metadata.at(name).name #label(name)
  ] else if signature-type == 2 [
    #signature-metadata.at(name).signature #label(name)
  ] else {
    panic("Invalid signature-type value")
  }
}

#let goals-constraints(goals: [], constraints: []) = {
  assert(goals != [], message: "No goals given for goals-constraints component")
  assert(constraints != [], message: "No constraints given for goals-constraints component")

  table(
    columns: (1fr, 1fr),
    rows: 2,
    align: left + top,

    table.header(table.cell(fill: green)[*Design Goals*], table.cell(fill: red)[*Design Constraints*]),
    
    goals,
    constraints,
  )
}

#let cad(
  folder: "",
  sheets: 1,
  add-views: none,
  date: none,
  designed: none,
  witnessed: none,
) = [
  // put a loc on here for index

  #let current-sheet = 1
  #let path = none

  #while current-sheet <= sheets {
    path = "/assets/cad/" + folder + "/sheet" + str(current-sheet) + ".png"

    page(
      paper: "us-letter",
      margin: (left: 5em, bottom: 11em, right: 5em),
      background: image(path),
      header: none,
      footer: {
        context {
          entry-page-counter.step()
          
          align(
            if calc.odd(here().page()) {
              right + bottom
            } else {
              left + bottom
            }
          )[
            #box(
              fill: yellow,
              outset: 5pt,
              radius: 1.5pt,
              height: auto,
              width: 20pt,
            )[#align(center + horizon)[#counter(page).display()]]
          ]
          v(1em)
        }
      },
      foreground: {
        align(bottom + left)[
          #move(dx: 6.4em, dy: -2.5em)[
            #grid(
              columns: (10.75em, 8.35em),
              rows: (1.2em, 1.2em),
              align: left + horizon,

              [#signature(designed)], grid.cell(align: center + horizon)[#date.display("[year]/[month]/[day]")],
              [#signature(witnessed)], grid.cell(align: center + horizon)[#date.display("[year]/[month]/[day]")],
            )
          ]
        ]
      }
    )[]

    current-sheet = current-sheet + 1
  }

  #pagebreak()

  #align(horizon)[
    #grid(
      columns: (50%, 50%),
      rows: (50%, 50%),

    ..for view in add-views {
        (image("/assets/cad/" + folder + "/" + str(view) + ".png"),)
      },
    )
  ]
]

#let gantt-chart-key(
  intended-color: color.rgb(207,226,243,255),
  is-vertical: false
) = {
  align(center)[
    #if is-vertical == false {
      table(
        columns: 5,
        rows: 2,
        align: center + horizon,

        fill: (col, row) => {
          if row == 1 {
            if col == 0 {intended-color}
            else if col == 1 {color.rgb(204,0,0,255)}
            else if col == 2 {color.rgb(241,194,50,255)}
            else if col == 3 {color.rgb(106,168,79,255)}
            else if col == 4 {color.rgb(20,51,83,255)}
            else {white}
          }
        },

        table.cell(colspan: 5)[Key],
        [Intended Schedule],
        [Behind Schedule],
        [On Schedule],
        [Ahead of Schedule],
        [Off Schedule]
      )
    } else {
      table(
        columns: 2,
        rows: 6,
        align: center + horizon,

        fill: (col, row) => {
          if col == 1 {
            if row == 1 {intended-color}
            else if row == 2 {color.rgb(204,0,0,255)}
            else if row == 3 {color.rgb(241,194,50,255)}
            else if row == 4 {color.rgb(106,168,79,255)}
            else if row == 5 {color.rgb(20,51,83,255)}
            else {white}
          }
        },

        table.cell(colspan: 2)[Key],
        [Intended Schedule], [],
        [Behind Schedule], [],
        [On Schedule], [],
        [Ahead of Schedule], [],
        [Off Schedule], [],
      )
    }
  ]
}

// ! You can only have two entry references in an entry without getting the "did not converge" error
#let entry-reference(
  date: none,
  type: none,
  title: none,
  body: [entry on],
) = {
  context {
    let valid-entries = entries.final().enumerate()

    if date != none {
      valid-entries = valid-entries.filter(
        entry => {
          entry.last().date.display("[year]/[month]/[day]").match(date.display("[year]/[month]/[day]")) != none
        }
      )
    }

    if type != none {
      valid-entries = valid-entries.filter(
        entry => {
          entry.last().type.match(type) != none
        }
      )
    }

    if title != none {
      valid-entries = valid-entries.filter(
        entry => {
          entry.last().title.match(title) != none
        }
      )
    }

    assert(valid-entries.len() > 0, message: "No entries meet the given attributes")
    assert(valid-entries.len() <= 1, message: "More than one entry meet the given attributes")

    let entry = valid-entries.first()
    let info = type-metadata.at(entry.last().type)
    let page = counter(page).at(query(selector(<notebook-entry>)).at(entry.first()).location()).at(0)

    [
      #box(baseline: 15%, nb_icon(label: entry.last().type, size: 1em))
      #h(1pt)
      #highlight(fill: info.color.lighten(30%))[
        #link((page: {frontmatter-page-counter.final().at(0) + page + 2 - page-number-offset}, x: 0pt, y: 0pt))[
          #text(fill: black)[
            _#h(2pt) #entry.last().date.display("[year]/[month]/[day]") #sym.dash.em #info.name: #entry.last().title #h(2pt)_
          ]
        ]
      ]
      #body pg. #page #h(-0.15em)
    ]
  }
}

// ! You can only have two entry references in an entry without getting the "did not converge" error
#let past-entry-reference(
  date: none,
  type: none,
  title: none,
  body: [entry on],
) = {
  context {
    let valid-entries = full-entry-list

    if date != none {
      valid-entries = valid-entries.filter(
        entry => {
          entry.date.display("[year]/[month]/[day]").match(date.display("[year]/[month]/[day]")) != none
        }
      )
    }

    if type != none {
      valid-entries = valid-entries.filter(
        entry => {
          entry.type.match(type) != none
        }
      )
    }

    if title != none {
      valid-entries = valid-entries.filter(
        entry => {
          entry.title.match(title) != none
        }
      )
    }

    assert(valid-entries.len() > 0, message: "No entries meet the given attributes")
    assert(valid-entries.len() <= 1, message: "More than one entry meet the given attributes")

    let entry = valid-entries.first()
    let info = type-metadata.at(entry.type)
    let page = entry.body

    [
      #box(baseline: 15%, nb_icon(label: entry.type, size: 1em))
      #h(1pt)
      #highlight(fill: info.color.lighten(30%))[
        #h(2pt) #entry.date.display("[year]/[month]/[day]") #sym.dash.em #info.name: #entry.title #h(2pt)
      ]
      #body pg. #page #h(-0.2em)
    ]
  }
}