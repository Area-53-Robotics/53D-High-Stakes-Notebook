#import "/packages.typ": *
#import "delta/delta.typ": delta-theme, components

// applies the template
// the show rule essentially passes the entire document into the `notebook` function. 
#show: notebook.with(
  team-name: "53D",
  season: "High Stakes",
  year: "2024-2025",
  theme: delta-theme,
  count: (current: 1, total: 1),
  cover-background: image("/assets/cover.png"),
)

#include "./frontmatter/frontmatter.typ"

// #include "./entries/entries.typ"

// #include "./appendix.typ"