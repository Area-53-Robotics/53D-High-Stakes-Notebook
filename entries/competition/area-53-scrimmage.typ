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
  - *Rank:* 3/8
  - *Qualification Matches Wins/Losses/Ties:* 5/3/0
  - *Eliminated in:* Finals
]

= Competition Goals
- Verify that our subsystems are at a competitive level. 

= Matches
#tournament-match(
  match: "Q1",
  red_alliance: (teams: ("53D", "23382H"), score: 33),
  blue_alliance: (teams: ("20096G", "53B"), score: 20),
  won: true,
  auton: "Blue",
  awp: false,
  strategy: [
    - We are going to quickly gather the rings to fill up one mobile goal. Then we will hand our mobile goal to our teammate. Afterwards, we will play defense.
  ],
  auton_notes: [
    - 20096G attempted for a solo auto win point but failed to score a ring on the alliance wall stake. However, we still won the auton.
  ],
  match_notes: [
    - We managed to collect rings for the mobile goal in 10 seconds.
    - Our intake was inconsistent because we didn’t have the flaps to push the rings down.
    - 53B could not score any rings 
    - 23382H and 20096G were able to score on the wall stakes.
  ],
  subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain",
    underperformed: "Intake, Clamp",
    disabled: (),
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
    - Since 53E can’t score rings onto mobile goals, we plan to have them play defense. We will try to fill as much mobile goals as possible and pass it to 53E
  ],
  auton_notes: [
    - No auton
  ],
  match_notes: [
    - 53B and 53E can’t score mobile goals.
    - Our intake still didn’t have a flap so we couldn’t score rings 
    - We tried to pin 53C as much as we could from scoring in the positive corners
    - Both corners were occupied by the red alliance 

  ],
  subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain",
    underperformed: "Intake, Clamp",
    disabled: (),
  )
)

#tournament-match(
  match: "Q6",
  red_alliance: (teams: ("53D", "53A"), score: 28),
  blue_alliance: (teams: ("53E", "23382H"), score: 23),
  won: true,
  auton: "Blue",
  awp: false,
  strategy: [
    - We will focus more on defense for this match. 53A will focus more on collecting and scoring rings while we immediately secure a corner
  ],
  auton_notes: [
    - 23382H scored 1 ring on the mobile goal
  ],
  match_notes: [
    - 53E was stuck in the center of the field
    - 53A handed us a mobile goal with 3 rings on it
    - 53E tried to push a mobile goal into our corner
    - 23382H tried to score on the wall stakes, but was pushed off by 53A
    - 23382H tried to collect a mobile goal of our color and score it in the negative corner. However, we quickly grabbed it away from the corner.

  ],
  subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain ,Intake",
    underperformed: "Clamp",
    disabled: (),
  )
)

#tournament-match(
  match: "Q7",
  red_alliance: (teams: ("23382H", "53C"), score: 33),
  blue_alliance: (teams: ("53D", "53F"), score: 0),
  won: false,
  auton: "Blue",
  awp: false,
  strategy: [
    - Since the enemy alliance is confident in their ability to score rings, we are going to try to play defense
  ],
  auton_notes: [
    - 23382H scored 1 ring on the mobile goal
  ],
  match_notes: [
    - Since this is a back to back match, our drivetrain was overheating
    - We could not move much throughout the match
    - 53F’s motor came off from their intake
    - 53C and 23382H took advantage and score as much rings as possible
    - The chains in our intake broke off

  ],
  subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain , Intake",
    underperformed: "Clamp",
    disabled: (),
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
    - Since the enemy alliance is confident in their ability to score rings, we are going to try to play defense
  ],
  auton_notes: [
    - 23382H scored 1 ring on the mobile goal
  ],
  match_notes: [
    - Since this is a back to back match, our drivetrain was overheating
    - We could not move much throughout the match
    - 53F’s motor came off from their intake
    - 53C and 23382H took advantage and score as much rings as possible
    - The chains in our intake broke off

  ],
  subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain , Intake",
    underperformed: "Clamp",
    disabled: (),
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
    - We tried to keep track of time better and communicate with our team mate more.
    - In the end, we did very well in this match.


  ],
  auton_notes: [
    - Our auton failed to clamp on to the mobile goal and didn’t score.
    - We were the only bot with a semi-functioning auton.


  ],
  match_notes: [
    - At the start of the match 53B was the only team that didn’t clamp on to a mobile goal.
    - Instead, 53B pushed as many rings as possible into the positive corner.
    - This was an interesting strategy but didn’t do much in the end.
    - Our clamp caused some trouble at the start, but we figured it out.
    - While the other teams were preoccupied, we managed to score two mobile goals in the positive corner.
    - 53F’s intake was quite slow
    - 53A tried to put a mobile goal with 6 red rings into the negative corner, while 53B defended them. 
    - 53A succeeded, but was still met with opposition so they moved to the other negative corner.
    - Overall, this was a very good match for us.
    - Our intake also worked well, and we only failed to score one ring in the entire match.


  ],
  subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain , Intake",
    underperformed: "Clamp",
    disabled: (),
  )
)

#tournament-match(
  match: "Q13",
  red_alliance: (teams: ("53C", "53A"), score: 20),
  blue_alliance: (teams: ("53D", "20096G"), score: 24),
  won: true,
  auton: "Blue",
  awp: true,
  strategy: [
    - One team member will stay mobile while the other vies for the positive corner.
    - We were unsure as to whether we would win autonomous from the start, so getting an AWP was a pleasant surprise.
    - 20096G had a much bulkier bot than us, so we expected them to fare better in offense.
    - We had to remember to not disturb the mobile goals in the positive corners when 15 seconds remain.

  ],
  auton_notes: [
    - 53D scored 1 ring
    - 20096G scored 2 rings
    - We got AWP
    - 53A had no auton
    - 53C had an auton and clamped on to a mogo, but failed to score.

  ],
  match_notes: [
    - We accidentally scored a red ring at the start.
    - 53C and 20096G fought for the positive corner closest to us.
    - Us (53D) and 53A fought for the far positive corner.
    - After not much happening, we decided to grab another mogo and attempt to score that way.
    - Our clamp was having some issues which made it hard to score
    - 53A was having trouble scoring in the positive corner, even after we left it undefended.
    - 53C and 20096G didn’t do much after they were both in the close positive corner.
    - At around 12 seconds remaining there was a mad dash away from the corners.
    - 20096G tried to unsuccessfully score on a wall stake.

  ],
  subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain , Intake",
    underperformed: "Clamp",
    disabled: (),
  )
)

#tournament-match(
  match: "Q16",
  red_alliance: (teams: ("53D", "20096G"), score: 27),
  blue_alliance: (teams: ("53A", "53C"), score: 11),
  won: true,
  auton: "Red",
  awp: false,
  strategy: [
    - We will have our alliance partner 20096G, grab as many rings as possible. Our job for this match is to play defense and secure a positive corner for the team.
  ],
  auton_notes: [
    - All teams except 53A had auton.
    - Only 20096G managed to score.
  ],
  match_notes: [
    - Our intake worked quite well. Increasing the speed helped a lot.
    - 20096G secured the positive corner quickly and held control.
    - We tried to place our mobile goal in the other positive corner, but our clamp failed us.
    - We were definitely the most active/agile bot in this match.
    - Our intake was a little unreliable during this match, but we expected this since it still needed tuning.
    - Makhi (our driver) did very well during this match. He saw opportunities and took them, leading to a large win for us.

  ],
   subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain , Intake",
    underperformed: "Clamp",
    disabled: (),
  )
)

#tournament-match(
  match: "Semifinals",
  red_alliance: (teams: ("53D", "53C"), score: 29),
  blue_alliance: (teams: ("53A", "53F"), score: 9),
  won: true,
  auton: "Blue",
  awp: false,
  strategy: [
    - We will have someone from the drive team announce in the last ten seconds when to play more aggressively. We noticed that since there is a mobile goal protection, we can prevent the other alliance from hanging.  
  ],
  auton_notes: [
    - Our alliance (blue) was the only one with auton.
    - 53C scored one ring

  ],
  match_notes: [
    - We were struggling to intake because our clamp was misaligned
    - Each alliance had control of a positive corner
    - Makhi did a good job of securing the positive corner when the blue alliance left it undefended.
    - We spend about half the match keeping our mobile goal in the positive corner.
    - While all the bots were fighting over the positive corners, 53A grabbed a mobile goal with 6 rings on it and brought it to the negative corner.
    - This reminded us that we need to keep track of what other bots are doing with all the corners, not just the positive ones.

  ],
  subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain , Intake",
    underperformed: "Clamp",
    disabled: (),
  )
)

#tournament-match(
  match: "Finals",
  red_alliance: (teams: ("20096G", "23382H"), score: 28),
  blue_alliance: (teams: ("53D", "53C"), score: 18),
  won: false,
  auton: "Red",
  awp: false,
  strategy: [
    - Similar strategy to semi-finals, however we want to play more aggressively since they are most likely going to win the auton bonus.
  ],
  auton_notes: [
    - All of the bots had an auton, however only 20096G and 53C managed to score two and one ring respectively.
  ],
  match_notes: [
    - We immediately went for a positive corner. However, we struggled to clear the corner for our mobile goal.
    - We also misscored two red rings onto a mobile goal.
    - We launched a blue ring out of the field by our unreliable intake
    - In the future we will improve our intake and possibly add ring rejection for the opposite team’s rings.
    - Overall, this was not our best match, but it was still not terrible especially considering how advanced our opponents’ robots were.

  ],
 subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain , Intake",
    underperformed: "Clamp",
    disabled: (),
  )
)

// #colbreak()

// = Subsystem Reflection
// #v(0.5em)
// #box[
//   == Drivetrain
//   #subsystem-analysis(
//     reflection: [Drivetrain],
//     radius: 3,
//     overperformed: 0,
//     satisfactory: 10,
//     underperformed: 0,
//     disabled: 0
//   )
// ]

// #box[
//   == Intake
//   #subsystem-analysis(
//     reflection: [Intake],
//     radius: 3,
//     overperformed: 0,
//     satisfactory: 8,
//     underperformed: 2,
//     disabled: 0
//   )
// ]

// #box[
//   == Clamp
//   #subsystem-analysis(
//     reflection: [Clamp],
//     radius: 3,
//     overperformed: 0,
//     satisfactory: 0,
//     underperformed: 10,
//     disabled: 0
//   )
// ]

// #colbreak()

// = Individual Reflections

// == Jin 
// - The challenges with the intake and clamp serve as reminders that even small design elements can significantly impact performance. Going further, I want to place a stronger emphasis on planning and CADding. 

// == Ishika
// -  Our standing in the Scrimmage reflects how much our team has grown over the past year. The intake performed well, quickly gathering and scoring rings, although it occasionally got stuck on a wire, highlighting the need for better wire management. The clamp needs tuning for more consistent performance, as it impacted our autonomous mode, which functioned but struggled to clamp the goal effectively. Additionally, our autonomous routine could improve, as the quick version used wasn’t fully troubleshooted. I believe our driver showed great skill, but as a team, we need to discuss strategy to ensure backup drivers and the rest of the drive team understand matchplay better. Overall, the scrimmage was a valuable learning experience that helped identify our weak spots.

// == Makhi 
// - Overall I think we did quite well, a few things we need to improve on include communication and handling stress and time. We also need to have any changes completed before competitions in the future to allow as much time as possible to repair and strategize during the event itself. Getting driver practice and seeing what other teams are doing was helpful in the game. Getting 3rd in squad and second in alliances shows that we are doing much better this year than at this time last year.

// == Rory
// - Overall we did pretty well at the scrimmage, getting second place, getting the auton working for one round, and just getting some real practice in before a real competition. Although we did well, we did have some issues. We stressed about the auton, and at one point we were building an entire new mechanism before the scrimmage started. We did have the opportunity to see how teams outside of the 53 teams were performing and the opportunity to practice with another team. We also realized that out clamp is sometimes inconsistent during a match.

// == Eric
// - Our standing in the Scrimmage reflects significant growth for our team over the past year. The intake performed well, quickly gathering and scoring rings, though it occasionally got stuck on a wire, underscoring the need for better wire management to keep our workspace organized and minimize distractions. Additionally, the clamp requires tuning for more consistent performance, as it impacted our autonomous mode, which functioned but struggled to clamp the goal effectively, leading to missed opportunities during crucial moments. Our autonomous routine also needs improvement; the quick version we used wasn’t fully troubleshooted, resulting in unexpected behavior during matches. These insights will guide us in refining our mechanisms and enhancing our strategic discussions as we prepare for future competitions.