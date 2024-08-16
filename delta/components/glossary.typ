#import "@local/notebookinator:1.0.1": utils

#let glossary = utils.make-glossary(glossary => {
  columns(2)[
    #for entry in glossary {
      box[
        == #entry.word
        #entry.definition
        \
      ]
    }
  ]
})
