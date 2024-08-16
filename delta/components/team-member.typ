#import "../colors.typ": *
#import "../theme-packages.typ": showybox
#import showybox: *

#let team-member(name: "", picture: none, color: green, body) = [
  #showybox(
    title-style: (
      boxed-style: (
        anchor: (
          x: center,
          y: horizon
        ),
        radius: (top-left: 10pt, bottom-right: 10pt, rest: 0pt),
      ),
      weight: "bold"
    ),
    frame: (
      title-color: color.darken(40%),
      body-color: color.lighten(80%),
      border-color: color.darken(60%),
      radius: (top-left: 10pt, bottom-right: 10pt, rest: 0pt),
      inset: 20pt,
      width: 200pt,
      height: 170pt,
    ),
    title: name,
  )[
    #grid(
      columns: 2,
      gutter: 20pt,
      align(center, picture),
      align(left, body),
    )
  ]
]