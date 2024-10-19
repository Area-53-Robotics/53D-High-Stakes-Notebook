#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v1 - Practice and Troubleshooting",
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

Today, we had a practice scrimmage. At this scrimmage we learned many lessons that will help us in the future. During the scrimmage our robot did very well scoring large amounts and moving quickly, there were three rounds in which we played, half way into the third round our front and middle motors on the left side fell out. Shortly after this, our mobile goal alignment axle was detached on one side by a collision. The rest of practice was spent repairing and taking preventative measures for the future.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Anders, Eric, Rory
    - *Manufacturing*: Everyone
    - *Test Drive*: Makhi, Anders
    - *Programming*:  Ishika
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
    - Rubber-Bands
    - Zip-Ties
    - Axle
    - The rest can be found in the tool box

  ],
  figure(
      image("build/2024.09.21-1.png", width: 170pt),
      caption: "The intake's motor fell out."
  ),
  )
#grid(
  [
    === Assembly
    - We noticed that one of the intake mechanisms was inconsistent: sometimes it would collect rings smoothly, and other times it would jam
      - We realized the issue stemmed from misaligned rollers that were putting uneven pressure on the rings
    - After the middle left and front left motor fell out due to disrepair in the final scrimmage round we reattached them with zip-ties and added rubber-bands as extra security to stop the issue that caused the failure.
    - After the mobile goal alignment axle fell off from a round in the scrimmage we noticed a number of loose screws in the mobile-goal clamp, because of that we tightened these screws and repaired the fallen axle.


  ],

  figure(
      image("build/2024.09.21-2.png", width: 190pt),
      caption: "Loose screws in the mobile goal clamp."
  ),

  [
    === Troubleshooting
      - Drive testing before scrimmage
      - Scrimmage practice.
      - After the scrimmage test of the repaired robot.
      - The drivetrain showed signs of wear after multiple rounds. 


  ]
)