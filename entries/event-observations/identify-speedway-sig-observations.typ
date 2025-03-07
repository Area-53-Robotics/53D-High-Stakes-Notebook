#import "/template/template.typ": *

#show: create-entry.with(
  title: "Speedway Signature Event - Observations",
  type: "identify",
  date: datetime(year: 2024, month: 12, day: 07),
  attendance: ("Jin", "Rory", "Eric", "Anders", "Makhi"),
  designed: "Anders",
  witnessed: "Jin",
)
= Objective
  - Observe mechanisms that could be helpful for our robot.

= Event Information
- Tournament name: Speedway Signature Event
- Location: Dallara IndyCar Factory
  // -  Speedway
  // - Indiana 46224
  // - United States
- Date(s): 2024/11/22 - 2024/11/23
- Capacity: 93 teams

= Overview
 The Speedway Signature Event is a high-level competition VEX Robotics tournament designed to challenge teams to innovate and perform at their best. Success in this event can also help teams qualify for the VEX Robotics World Championship. The winners were 100A and 229V.

= Team Observations
#table(
  columns: (1fr,1fr),

  table.header(
    repeat: false,
    table.cell(colspan: 2, align: center, fill: gray.lighten(20%))[
      *229V ACE Robotics \
      Final Winners*
    ],
  ),

  table.cell[
    #figure(
      image("identify-speedway-sig/ace-1.png", width: 150pt),
      caption: "229V about to score on the wall stake"
    )
  ],
  table.cell[
    - *Auton*: 229V scored 2 rings on a mobile goal, then scored a ring on a wall stake, and then finally made an unsuccessful attempt at scoring a ring on an alliance stake.
  ],
  table.cell[
    #figure(
      image("identify-speedway-sig/ace-2.png", width: 150pt),
      caption: "A picture of ACE's clamp. They are lining themselves up with the mobile goal."
    )
  ],
  table.cell[
    - *Mobile Goal Clamp*: ACE's clamp uses 2 pistons that are mounted on a top beam. These pistons extend, allowing the clamp to push down on a mobile goal. This is a third class lever.
  ],
)

#table(
  columns: (1fr,1fr),

  table.header(
    repeat: false,
    table.cell(colspan: 2, align: center, fill: gray.lighten(20%))[
      *100A Jugglenauts \
      Final Winners*
    ],
  ),

  table.cell[
      #image("identify-speedway-sig/100A-1.png", width: 150pt)
  ],
  table.cell[
    - *Drivetrain*: They have anti-tip wheels on their drivetrain that are free spinning. When they trying to climb and the robot tips over, the anti-tip wheels counterbalance the robot's weight. This allows the robot to stabilize when it is climbing.
  ],
  table.cell[
    #image("identify-speedway-sig/100A-2.png", width: 150pt)
  ],
  table.cell[
    *Hang Mechanism*: There is a locking mechanism that locks the ladybrown once it rotates a certain angle. On the side of the ladybrown, there are custom gussets that wrap around the ladder's bars when they ram into the ladder.
  ],
)

= Final Observations
1. Most teams now have refined autons, including ring and goal rush strategies to disrupt opponents' scoring. To stay competitive, we need a fast ring/goal mech and an automated color-sorting function to reject opposing rings.
2. Last-minute goal switches and goal tipping remain unpredictable, highlighting the need for strong alliance coordination.
3. Build quality differs across teams, but most now use ladybrown mechanisms for fast wall stake scoring. Despite this, drivetrain and intake reliability remain key to success. Mobile goal scoring is still dominant, so we will optimize our bot while exploring advanced tactics like climbing and descoring.
