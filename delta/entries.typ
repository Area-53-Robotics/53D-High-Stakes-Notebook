#import "./colors.typ": *
#import "./icons/icons.typ"
#import "./components/components.typ"
#import "./components/title.typ": *
#import "@local/notebookinator:1.0.1": utils
#import "./metadata.typ": type-metadata

#let cover = utils.make-cover(ctx => {
    align(center)[
      #set text(font: "Nasalization", size: 35pt, fill: yellow)
      \
      #ctx.team-name Engineering Notebook \
      // #ctx.count-current of #ctx.count-total \
      #image("/assets/logo.svg")
      #ctx.year \
      VEX Robotics Challenge \
      #ctx.season
    ]
})


#let frontmatter-entry = utils.make-frontmatter-entry((ctx, body) => {
  show: page.with(
    header: title(ctx.title),
    footer: align(right, context counter(page).display("i")),
  )
  body
})

#let body-entry = utils.make-body-entry((ctx, body) => {
  let metadata = entry-type-metadata.at(ctx.type)
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
  )
  body
})

#let appendix-entry = utils.make-appendix-entry((ctx, body) => {
  show: page.with(
    header: title(ctx.title),
    footer: align(right, context counter(page).display()),
  )

  body
})
