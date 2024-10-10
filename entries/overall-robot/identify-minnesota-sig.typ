#import "/template/template.typ": *

#show: create-entry.with(
  title: "The Minnesota Signature Event Observations",
  type: "identify",
  date: datetime(year: 2024, month: 08, day: 06),
  attendance: ("Jin", "Ishika", "Eric"),
  designed: "Jin",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2024, month: 08, day: 06),
  (
    (true, "Identify the meta robot builds in the Minnesota Signature Event", "Everyone"),
  )
)
= Event 
- Tournament name: Minnesota Signature Event 
- Location: Mall of America® 
  - 60 East Broadway
  - Bloomington, Minnesota 55425
  - United States
- Date: 1-Aug-2024 - 3-Aug-2024
- Capacity: 100 teams
- Overview: The Minnesota Signature Event is a high level competition VEX robotics tournament. The event is designed to challenge teams with a high level of competition, pushing them to innovate and perform at their best. Success in this event can also help teams qualify for the VEX Robotics World Championship. The winners were 11101B and 100A. 


= Team Observations
#table(
  columns: (1fr,1fr),

  table.cell(colspan:2, align:center )[
    11101B Barcbots \   
    Won finals 2-1
  ],

   table.cell[ #image("minnesota signature event/Minnesota-picture 1.png") 
      *Them intaking three rings during auton*
   ],
   table.cell[
      *Auton*: They immediately go for the Mobile Goal that is in front of the stack of rings. Then, they intake the rings quickly so that if an enemy robot tries to intake, they will either accidentally intake their rings or mess up their auton.
   ],
    table.cell[
      #image("minnesota signature event/Minnesota-picture 2.png", width:170pt)
    ],
    table.cell[
    *Drivetrain*: They use 6 motors with a 450 RPM drivetrain on 3.25” wheels. They also use all Omnis for better drifting. \
    *Tracking wheels*: They have two tracking wheels, horizontal and vertical, at the bottom of their drivetrain. They have a Delrin
    based design that is banded down.\
    ],
    table.cell[
    #image("minnesota signature event/Minnesota-picture 3.png", width:180pt)
    #image("minnesota signature event/Minnesota-picture 4.png", width:180pt)
    #align(center)[
      From their pits and parts interview
    ]
    ],
    table.cell[
    *Intake*: Their intake consists of a lexan ramp in order to get the rings up. At their transition from the flex wheels to the hook, they have a plastic piece that tension their ring down in order to be hooked onto the intake. For the first part of their intake, they use flex wheels in order to get a quicker pick up of the rings. Flex wheels gives more surface area to pick up the rings.
    ],
    table.cell[
    #image("minnesota signature event/Minnesota-picture 5.png", width:165pt)
    #image("minnesota signature event/Minnesota-picture 6.png", width:170pt)
    #align(center)[
    From their pits and parts interview
    ]
    ],
    table.cell[
   *Lift up odom*: Their tracking wheels and their lift has to work together in order to get the wheels up. Since their tracking wheels are rubberband downed, there is a pulley that pulls up the tracking wheels. \ 
    *Climb*: Their specific shape of the climb is important. The driver can drive at various speeds and still work. Additionally, they used Delrin and Polycarbonate to brace the climb to improve stability.

    ]
)
#table(
  columns: (1fr,1fr),

  table.cell(colspan:2, align:center )[
    229V ACE Robotics \   
    Round of 16 31-35
  ],
  table.cell[
    #image("minnesota signature event/Minnesota-picture 7.png")
    #align(center)[
      Round 1-16
    ]
  ],
  table.cell[
    *Auton*: The robot collected a Mobile Goal and intake two rings. Then they collected a ring from the negative corner. Lastly, they rush to the middle of the field. 
  ],
  table.cell[
    #image("minnesota signature event\Minnesota-picture 8.png")
    #align(center)[
    Pits and parts interview
    ]
  ],
  table.cell[
    *Mobile Goal Clamp*: They used 25mm pistons and were assisted with a rubber band. In order to grip the Mobile Goal, they use small bent standoffs. Additionally, they have funnels to guide the Mobile Goal to the clamp.
  ],
  table.cell[
    #image("minnesota signature event/Minnesota-picture 9.png")
    #align(center)[
    Pits and parts interview
    ]
  ],
  table.cell[
    *Intake*: They have three layers of flex wheels. One at the beginning, another towards the middle and the last set at the hood. The flex wheels help with consistency with intaking. 
    *Hood*: The hood allows them to intake rings onto their mobile goal no matter the offset. The hood helps push the rings onto the Mobile Goal.
  ],
  table.cell[
    #image("minnesota signature event/Minnesota-picture 10.png")
    #align(center)[
    Pre-Minnesota Signature Event reveal
    ]
    #image("minnesota signature event/Minnesota-picture 11.png")
    #image("minnesota signature event/Minnesota-picture 12.png")
    #align(center)[
    Pits and parts interview
    ]
  ],
  table.cell[
    *Claw*: They have a two-piston pivot on their intake, rather than on a separate secondary arm. They can deploy the claw with a macro. They can pick up a ring and jolt their claw in an upward movement. The purpose of the movement is to bring a ring to the claw and out of the way of the intake. \
    *Dunk*: They use an optical sensor to keep the ring from falling. Every time the ring falls back from their arm, the sensor makes sure that it stays at the same spot by outtaking. \
    *Lift*: They use a rotational sensor to track the position of the lift as it goes up and down. It uses a proportional loop to control the height of the lift and the degree depending on the height of the stake. \ 


  ]
)
#table(
  columns: (1fr,1fr),

  table.cell(colspan:2, align:center )[
    1010W TenTon Robotics \
    Quarterfinals 34-41
  ],
  table.cell[
    #image("minnesota signature event/Minnesota-picture 13.png")
    #align(center)[
    Quarterfinals:Them rushing for the mobile goal
    ]
  ],
  table.cell[
    *Auton*: They rush for one of the central Mobile Goals. Afterward, they travel to the ring stack and intake the top ring. 
  ],
  table.cell[
    #image("minnesota signature event/Minnesota-picture 14.png")
     #align(center)[
    Pre-season reveal video
     ]
  ],
  table.cell[
    *Intake*: Their robot uses the flex wheel intake that was popular in the season OverUnder. They have their flex wheels in a specific pattern to maximize the surface area in which they grabbed the ring.\
    Additionally, they have Delrin strips that help tension the ringdown when intaking. This is to help the hooks grab onto the ring.

  ],
  table.cell[
    #image("minnesota signature event/Minnesota-picture 15.png")
     #align(center)[
     Pre-season reveal video
     ]
  ],
  table.cell[
    Arm: Firstly, they have Delrin that is pivoted from the arm. This behaves like a trap door, ring and enter through the Delrin but can't exit out
    When the ring tries to exit the Delrin trap door, it will be pushed onto the arm. There it will slide and form a stack at the end of the arm.
  ],
)
#table(
  columns: (1fr,1fr),

  table.cell(colspan:2, align:center )[
    2145Z Pink Shinee Unicorns \
    Round of 16 28-40
  ],
  table.cell[
    #image("minnesota signature event/Minnesota-picture 16.png")
     #align(center)[
    Round of 16 Auton
     ]
  ],
  table.cell[
    *Auton*: They rush for the Mobile Goal nearest to the neutral wall stakes and intake one ring. They drop it to their positive corner and grab another Mobile Goal. The unique aspect of their auton is that they prioritize securing Mobile Goals than scoring.
  ],
  table.cell[
    #image("minnesota signature event/Minnesota-picture 17.png")
     #align(center)[
    Pre-season Reveal
    ]
  ],
  table.cell[
    *Intake*: They have a flex wheel intake similar to 1010W. However, they have a piston that lifts up the first stage of their intake in order to intake the first ring of a stack
  ],
  table.cell[
    #image("minnesota signature event/Minnesota-picture 18.png")
    #image("minnesota signature event/Minnesota-picture 19.png")
    #align(center)[
      Pre-season reveal
    ]
  ],
  table.cell[
    *Intake*: They have a flex wheel intake similar to 1010W. However, they have a piston that lifts up the first stage of their intake in order to intake the first ring of a stack.
  ]
)
= Final Observations
1. We noticed that a lot of teams were camping in the positive corners in order to prevent the enemy alliance from placing their mobile goal in the positive corner. Puppy guarding is having one teammate guard a positive corner with the Mobile Goals, preventing the enemy from stealing them
2. Towards the last ten seconds of the round is the climax. All robots are active, either trying to grab their opponents Mobile Goals from the positive corner, placing as much rings on the wall stakes as possible or climbing.
3.Going for the highstakes is a waste of time as it isn’t worth the additional points gained. Instead, the wall stakes are more valuable. Since most of the game caps around 40 points, scoring on the wall stakes can be the tie breaker. 
\
= ---