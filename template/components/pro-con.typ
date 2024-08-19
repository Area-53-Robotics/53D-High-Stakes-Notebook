#include "../colors.typ"

#let nb_pro_con(name: none, image: [], image-width: 40%, pros: [], cons: [], notes: []) = [
  #assert(name != none, message: "No name given")
  #assert(pros != [], message: "No pros recorded")
  #assert(cons != [], message: "No cons recorded")

  #if notes != [] {
    table(
      columns: (image-width, 1fr, 1fr),
      rows: 4,
      align: left + top,

      table.cell(align: center, fill: gray)[*#name*],
      table.cell(fill: green)[*Pros*],
      table.cell(fill: red)[*Cons*],
      table.cell(align: center + horizon, rowspan: 3)[#image],
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
      rows: 2,
      align: left + top,

      table.cell(align: center, fill: gray)[*#name*],
      table.cell(fill: green)[*Pros*],
      table.cell(fill: red)[*Cons*],
      table.cell(align: center + horizon)[#image],
      [
        #pros
      ],
      [
        #cons
      ],
    )
  }
]