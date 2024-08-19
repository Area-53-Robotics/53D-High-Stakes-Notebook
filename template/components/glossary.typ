#import "../globals.typ": *

#let nb_glossary_entry(title: none, category: none, definition: none) = {
  if type(title) == none {
    panic("No glossary entry title")
  }

  if type(definition) == none {
    panic("No glossary entry definition")
  }

  glossary_entries.update(it => {
    it.push((title: title, category: category, definition: definition))
    it
  })
}