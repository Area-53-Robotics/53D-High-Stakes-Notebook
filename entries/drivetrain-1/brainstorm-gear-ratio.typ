#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1 - Gear Ratio",
  type: "brainstorm",
  date: datetime(year: 2024, month: 6, day: 28),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Ajibola",
  witnessed: "Eric",
)

#to-do(
  date: datetime(year: 2024, month: 6, day: 28),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Brainstorm possible gear ratios for the tank drive.", "Everyone"),
    (false, "Select the best gear ratio for the tank drive using a decision matrix.", "Everyone"),
    (false, "Create a plan for the construction of the drivetrain using CAD.", ("Ajibola", "Jin")),
  )
)

The last important factor that goes into a drivetrain is the gear ratio that is used. Gear ratios affect the torque and speed output of a subsystem, and is a critical part of drivetrain creation. We used a publicly available spreadsheet #footnote([#link("https://docs.google.com/spreadsheets/d/1RSoLv3tnpiCgFyHb0QayxK-42r9MgVRD_4QQmeFM618/edit#gid=0")]) to help us collect the data needed for each gear ratio.

#admonition(type: "equation")[
  $"Gear Ratio" = "# Driven Gear Teeth"/"# Driving Gear Teeth" = "Driven : Driving"$
]

#admonition(type: "equation")[
  $"Output RPM" = "Motor RPM" * "Gear Ratio"$
]

#table(
  columns: 6,
  rows: (auto, 7em, 7em, 7em, 7em),
  align: center + horizon,
  
  table.header(table.cell(fill: gray)[*Gear Ratio*], table.cell(fill: gray)[*Motor Cartridge*], table.cell(fill: gray)[*Gear Ratio*], table.cell(fill: gray)[*RPM*], table.cell(fill: gray)[*Wheel Size*], table.cell(fill: gray)[*in/sec*]),

  [#image("./brainstorm-gear-ratio/60.30 4 inch 200 RPM.png")], [200 RPM (Green Cartridge)], [60:36 Gear Ratio\ 5:3 Ratio], [333 RPM], [4 Inch Wheels], [71.995 in/sec],
  [#image("./brainstorm-gear-ratio/36.60 4 inch 600 RPM.png")], [600 RPM (Blue Cartridge)], [36:60 Gear Ratio\ 3:5 Ratio], [360 RPM], [4 Inch Wheels], [77.754 in/sec],
  [#image("./brainstorm-gear-ratio/60.36 3.25 200 RPM.png")], [200 RPM (Green Cartridge)], [60:36 Gear Ratio\ 5:3 Ratio], [333 RPM], [3.25 Inch Wheels], [56.723 in/sec],
  [#image("./brainstorm-gear-ratio/36.60 3.25 600 RPM.png")], [600 RPM (Blue Cartridge)], [36:60 Gear Ratio\ 3:5 Ratio], [360 RPM], [3.25 Inch Wheels], [61.261 in/sec],
)