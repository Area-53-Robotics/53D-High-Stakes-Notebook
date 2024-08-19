#import "./colors.typ": *
// Global State

#let frontmatter-page-counter = counter("frontmatter-page-counter")
#let entry-page-counter = counter("entry-page-counter")
#let appendix-page-counter = counter("appendix-page-counter")
#let program-page-counter = counter("program-page-counter")

#let frontmatter-entries = state("frontmatter-entries", ())
#let entries = state("entries", ())
#let appendix-entries = state("appendix-entries", ())
#let program-entries = state("program-entries", ())

#let glossary_entries = state("glossary_entries", ())

#let appendix_entry_counter = counter("appendix_entry_counter")

#let page-number-offset = 0

/*
  0 = Metadata
  1 = Text
  2 = Signature
*/
#let signature-type = 0;