#import "/template/entries.typ": *
#import "/template/components/components.typ": *
#import "../template/globals.typ"

#show: create_frontmatter_entry.with(
  title: "Table of Contents"
)

#let helper(type) = {
  let (state, markers) = if type == "frontmatter" {
    (
      globals.frontmatter-entries,
      query(
        selector(<notebook-frontmatter>),
      ),
    )
  } else if type == "body" {
    (
      globals.entries,
      query(
        selector(<notebook-entry>),
      ),
    )
  } else if type == "appendix" {
    (
      globals.appendix-entries,
      query(
        selector(<notebook-appendix>),
      ),
    )
  } else if type == "program" {
    (
      globals.program-entries,
      query(
        selector(<notebook-program>),
      ),
    )
  } else {
    panic("No valid entry type selected.")
  }

  let result = ()

  for (index, entry) in state.final().enumerate() {
    let page-number = counter(page).at(
      markers.at(index).location(),
    ).at(0)
    entry.page-number = page-number

    let location = markers.at(index).location()
    entry.position = location.position()

    result.push(entry)
  }
  return result
}

#context {
  let frontmatter-entries = helper("frontmatter")
  let body-entries = helper("body")
  let appendix-entries = helper("appendix")
  let program-entries = helper("program")

  nb_toc(
    frontmatter: frontmatter-entries,
    body: body-entries,
    program: program-entries,
    appendix: appendix-entries
  )
}