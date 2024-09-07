#include "../colors.typ"

#let pro-con(name: none, image: [], image-width: 40%, pros: [], cons: [], description:[] , notes: []) = [
  #assert(name != none, message: "No name given")
  #assert(description !=[], message: "No description given")
  #assert(pros != [], message: "No pros recorded")
  #assert(cons != [], message: "No cons recorded")

  #if notes != [] {
    table(
      columns: (image-width, 1fr, 1fr),
      rows: 6,
      align: left + top,
      table.cell(align: center, fill: gray,colspan: 3)[*#name*],
      table.cell(align:center,colspan:3)[#description],
      table.cell(align: center + horizon, rowspan: 4)[#image],
      table.cell(fill: green)[*Pros*],
      table.cell(fill: red)[*Cons*],
      [
        #pros
      ],
      [
        #cons
      ],
      table.cell(colspan: 2, fill: gray)[*Notes*],
      table.cell(colspan: 2)[
        #notes
      ],
    )
  } else {
    table(
      columns: (image-width, 1fr, 1fr),
      rows: 4,
      align: left + top,

      table.cell(align: top, fill: gray, colspan: 3)[*#name*],
      table.cell(align:center,colspan:3)[*#description*],
      table.cell(align: center + horizon, rowspan: 2)[#image],
      table.cell(fill: green)[*Pros*],
      table.cell(fill: red)[*Cons*],
      [
        #pros
      ],
      [
        #cons
      ],
    )
  }
]