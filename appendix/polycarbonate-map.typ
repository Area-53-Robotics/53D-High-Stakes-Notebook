#import "/template/template.typ": *

#show: create-appendix-entry.with(
  title: "Polycarbonate Map",
  updated: datetime(year: 2024, month: 10, day: 18)
)

// Below is a diagram of our polycarbonate usage:

#align(center + horizon, box(fill: blue.desaturate(80%), stroke: black + 1pt, image("/assets/appendix/polycarbonate-map.svg")))