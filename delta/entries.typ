#import "./colors.typ": *
#import "./icons/icons.typ"
#import "./components/components.typ" // Global import due to "unresolved import" error
#import "./components/title.typ": *
#import "./components/page.typ": *
#import "@local/notebookinator:1.0.1": utils
#import "./metadata.typ": type-metadata

#let cover = utils.make-cover(ctx => {
    align(center)[
      #set text(font: "Nasalization", size: 35pt, fill: yellow)
      \
      #ctx.team-name Engineering Notebook \
      #ctx.count.current of #ctx.count.total \
      #image("/assets/logo.svg")
      #ctx.year \
      VEX Robotics Challenge \
      #ctx.season
    ]
})


#let frontmatter-entry = utils.make-frontmatter-entry((ctx, body) => {
  show: page.with(
    header: title(ctx.title),
    footer: nb_frontmatter_footer(),
    background: nb_side_margin_color(color: gray)
  )
  body
})

#let body-entry = utils.make-body-entry((ctx, body) => {
  let metadata = type-metadata.at(ctx.type)
  show: page.with(
    header: title(
      beginning: image.decode(
        utils.change-icon-color(raw-icon: metadata.icon, fill: white),
        height: 1em,
      ),
      end: ctx.date.display("[year]/[month]/[day]"),
      color: metadata.color,
      ctx.title,
    ),
    footer: [
      #line(length: 100%)
      #align(
        left,
        [
          *Designed by:* #ctx.author #h(2pt) \
          *Witnessed by:* #ctx.witness
          #h(1fr) #context counter(page).display()
        ],
      )
    ],
    background: nb_side_margin_color(color: metadata.color)
  )
  body
})

#let appendix-entry = utils.make-appendix-entry((ctx, body) => {
  show: page.with(
    header: title(ctx.title),
    footer: nb_appendix_footer(color: gray, updated: none),
    background: nb_side_margin_color(color: gray)
  )

  body
})

#let program-entry = utils.make-program-entry((ctx, body) => {
  show: page.with(
    header: title(ctx.title),
    footer: nb_program_footer(color: blue),
    background: nb_side_margin_color(color: blue)
  )

  body
})
