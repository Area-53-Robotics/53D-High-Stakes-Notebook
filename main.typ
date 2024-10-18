#import "template/template.typ": *
#include "frontmatter/frontmatter-entries.typ"
#include "entries/entries.typ"
#include "appendix/appendix-entries.typ"
#include "program/program-entries.typ"

#show: notebook.with(
  team: "53D",
  organization: "Area 53",
  count: (current: 1, total: 2),
  cover: circle(align(center + horizon)[#image("/assets/logos/logo.svg", width: 110%)], fill: black),
  year: "2024 - 2025",
  season: "High Stakes"
)
