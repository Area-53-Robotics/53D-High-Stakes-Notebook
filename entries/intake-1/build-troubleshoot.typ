#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v1 - Troubleshooting",
  type: "build",
  date: datetime(year: 2024, month: 9, day: 21),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Anders",
  witnessed: "Makhi",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2024/09/21
#to-do(
  date: datetime(year: 2024, month: 9, day: 21),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Build the intake according to today's delegation.", "Everyone"),
  )
)

Today, we had a practice scrimmage consisting of three rounds. During the scrimmage our robot did very well scoring large amounts of rings and moving quickly. Half way into the third round our front and middle motors on the left side of the drivetrain fell out. Shortly after this, our mobile goal alignment axle was detached on one side by a collision. The rest of practice was spent repairing and taking preventative measures for the future. The scrimmage alerted us to potential points of failure on the robot, and this knowledge will help us in the future.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Anders, Eric, Rory
    - *Manufacturing*: Everyone
    - *Test Drive*: Makhi, Anders
    - *Programming*: Ishika
  ],
  today: [
    - Drive practice: Makhi
    - Backup drive practice: Anders, Eric
    - Further tuning: Everyone
  ]
)

== Build Process
#grid(
  [
    === Materials
    - Motors
    - Rubber bands
    - Zipties
    - Axle
    - The rest can be found in the tool box
  ],
  figure(
    image("build/2024.09.21-1.png", width: 170pt),
    caption: "The intake motor fell out"
  ),
)

#grid(
  [
    === Assembly
    - We noticed that the second stage intake was inconsistent: sometimes it would collect rings smoothly, and other times it would jam
      - The issue stemmed from misaligned rollers that were putting uneven pressure on the rings
    - After the middle left and front left drivetrain motors fell out due to disrepair in the final scrimmage round we reattached them with zipties and added rubber bands for extra security.
    - After the mobile goal alignment axle fell off in a scrimmage round we noticed a number of loose screws in the mobile goal clamp.
      - Subsequently, we tightened the screws and repaired the fallen axle.
  ],

  figure(
    image("build/2024.09.21-2.png", width: 190pt),
    caption: "Loose screws in the mobile goal clamp"
  ),

  [
    === Troubleshooting
    - We performed drive testing before the scrimmage, and determined that the robot was ready
    - The drivetrain showed signs of wear after multiple scrimmage rounds, such as slightly loosened keps nuts.
  ]
)