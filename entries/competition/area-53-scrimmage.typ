#import "/template/template.typ": *

#show: create-entry.with(
  title: "Area 53 Scrimmage",
  type: "competition",
  date: datetime(year: 2024, month: 9, day: 28),
  attendance: ("Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Jin",
  witnessed: "Ishika",
)

#admonition(type: "competition", title: "Competition Results")[
  - *Rank:* -/-
  - *Qualification Matches Wins/Losses/Ties:* 5/3/0
  - *Eliminated in:* Finals
]

= Competition Goals
- [Comp goal here]

= Matches
#tournament-match(
  match: "Q1",
  red_alliance: (teams: ("53D", "23382H"), score: 33),
  blue_alliance: (teams: ("20096G", "53B"), score: 20),
  won: true,
  auton: "Tie",
  awp: false,
  strategy: [
    - O
  ],
  auton_notes: [
    - O
  ],
  match_notes: [
    - O
  ],
  subsystems: (
    overperformed: none,
    satisfactory: none,
    underperformed: none,
    disabled: ("Drivetrain", "Intake", "Clamp"),
  )
)

#tournament-match(
  match: "Q3",
  red_alliance: (teams: ("53B", "53C"), score: 12),
  blue_alliance: (teams: ("53D", "53E"), score: 3),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [
    - O
  ],
  auton_notes: [
    - O
  ],
  match_notes: [
    - O
  ],
  subsystems: (
    overperformed: none,
    satisfactory: none,
    underperformed: none,
    disabled: ("Drivetrain", "Intake", "Clamp"),
  )
)

#tournament-match(
  match: "Q6",
  red_alliance: (teams: ("53D", "53A"), score: 28),
  blue_alliance: (teams: ("53E", "23382H"), score: 23),
  won: true,
  auton: "Tie",
  awp: false,
  strategy: [
    - O
  ],
  auton_notes: [
    - O
  ],
  match_notes: [
    - O
  ],
  subsystems: (
    overperformed: none,
    satisfactory: none,
    underperformed: none,
    disabled: ("Drivetrain", "Intake", "Clamp"),
  )
)

#tournament-match(
  match: "Q7",
  red_alliance: (teams: ("23382H", "53C"), score: 33),
  blue_alliance: (teams: ("53D", "53F"), score: 0),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [
    - O
  ],
  auton_notes: [
    - O
  ],
  match_notes: [
    - O
  ],
  subsystems: (
    overperformed: none,
    satisfactory: none,
    underperformed: none,
    disabled: ("Drivetrain", "Intake", "Clamp"),
  )
)

#tournament-match(
  match: "Q9",
  red_alliance: (teams: ("53D", "53E"), score: 0),
  blue_alliance: (teams: ("20096G", "53F"), score: 34),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [
    - O
  ],
  auton_notes: [
    - O
  ],
  match_notes: [
    - O
  ],
  subsystems: (
    overperformed: none,
    satisfactory: none,
    underperformed: none,
    disabled: ("Drivetrain", "Intake", "Clamp"),
  )
)

#tournament-match(
  match: "Q11",
  red_alliance: (teams: ("53B", "53F"), score: 3),
  blue_alliance: (teams: ("53A", "53D"), score: 35),
  won: true,
  auton: "Tie",
  awp: false,
  strategy: [
    - O
  ],
  auton_notes: [
    - O
  ],
  match_notes: [
    - O
  ],
  subsystems: (
    overperformed: none,
    satisfactory: none,
    underperformed: none,
    disabled: ("Drivetrain", "Intake", "Clamp"),
  )
)

#tournament-match(
  match: "Q13",
  red_alliance: (teams: ("53C", "53A"), score: 20),
  blue_alliance: (teams: ("53D", "20096G"), score: 24),
  won: true,
  auton: "Tie",
  awp: false,
  strategy: [
    - O
  ],
  auton_notes: [
    - O
  ],
  match_notes: [
    - O
  ],
  subsystems: (
    overperformed: none,
    satisfactory: none,
    underperformed: none,
    disabled: ("Drivetrain", "Intake", "Clamp"),
  )
)

#tournament-match(
  match: "Q16",
  red_alliance: (teams: ("53D", "20096G"), score: 27),
  blue_alliance: (teams: ("53A", "53C"), score: 11),
  won: true,
  auton: "Tie",
  awp: false,
  strategy: [
    - O
  ],
  auton_notes: [
    - O
  ],
  match_notes: [
    - O
  ],
  subsystems: (
    overperformed: none,
    satisfactory: none,
    underperformed: none,
    disabled: ("Drivetrain", "Intake", "Clamp"),
  )
)

#tournament-match(
  match: "Semifinals",
  red_alliance: (teams: ("53D", "53C"), score: 29),
  blue_alliance: (teams: ("53A", "53F"), score: 9),
  won: true,
  auton: "Tie",
  awp: false,
  strategy: [
    - O
  ],
  auton_notes: [
    - O
  ],
  match_notes: [
    - O
  ],
  subsystems: (
    overperformed: none,
    satisfactory: none,
    underperformed: none,
    disabled: ("Drivetrain", "Intake", "Clamp"),
  )
)

#tournament-match(
  match: "Finals",
  red_alliance: (teams: ("20096G", "23382H"), score: 28),
  blue_alliance: (teams: ("53D", "53C"), score: 18),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [
    - O
  ],
  auton_notes: [
    - O
  ],
  match_notes: [
    - O
  ],
  subsystems: (
    overperformed: none,
    satisfactory: none,
    underperformed: none,
    disabled: ("Drivetrain", "Intake", "Clamp"),
  )
)

#colbreak()

= Subsystem Reflection
#v(0.5em)
#box[
  == Drivetrain
  #subsystem-analysis(
    reflection: [Drivetrain],
    radius: 3,
    overperformed: 4,
    satisfactory: 2,
    underperformed: 1,
    disabled: 1
  )
]

#box[
  == Intake
  #subsystem-analysis(
    reflection: [Intake],
    radius: 3,
    overperformed: 0,
    satisfactory: 0,
    underperformed: 0,
    disabled: 0
  )
]

#box[
  == Clamp
  #subsystem-analysis(
    reflection: [Clamp],
    radius: 3,
    overperformed: 0,
    satisfactory: 0,
    underperformed: 0,
    disabled: 0
  )
]

#colbreak()

= Individual Reflections

== Jin 

== Ishika

== Makhi 

== Rory

== Eric