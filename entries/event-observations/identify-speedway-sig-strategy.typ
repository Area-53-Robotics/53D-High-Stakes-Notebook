#import "/template/template.typ": *

#show: create-entry.with(
  title: "Speedway Signature Event - Strategy",
  type: "identify",
  date: datetime(year: 2024, month: 12, day: 13),
  attendance: ("Jin", "Rory", "Eric", "Anders", "Makhi"),
  designed: "Anders",
  witnessed: "Jin",
)

#to-do(
  date: datetime(year: 2024, month: 12, day: 13),
  monthly-schedule: "On",
  yearly-schedule: "Off",
  (
    (true, "Analyze strategies used in the Speedway Signature event.", "Everyone"),
  )
)

After observing the Speedway Tournament, we became interested in analyzing and documenting the strategies we witnessed. We took detailed notes on both autonomous routines and match strategies, identifying key tactics that could be beneficial for our future competitions.

= Autonomous Strategies
#grid(
  columns: (1fr, 1fr),
  column-gutter: 10pt,
  row-gutter: 10pt,

  grid.cell[
    #figure(
      image("identify-speedway-sig/12.6.24-1.png", width: 180pt),
      caption: [
        End result for R16 Autonomous \
        Red Alliance: 100A, 229V \
        Blue Alliance: 3293S, 6842K \
        Auton winner: Red
      ]
    )
  ],
  grid.cell[
    == What We Noticed
    - On the goal rush side, 100A had an arm that allowed them to steal the mobile goal before the opposing alliance could take them.
    - The 229V disrupted the ring stack by running into it.
      - This caused the blue alliance to accidentally intake a red ring.
    - It is more beneficial to score as many top rings as possible than to stack as many rings as possible on a single mobile goal.
    - We should try to score on the alliance wall stake because it will count as a top ring.
  ],
  grid.cell[
    #figure(
      image("identify-speedway-sig/12.6.24-2.png", width: 180pt),
      caption: [
        End result for Semifinals autonomous \
        Red Alliance: 99904B, 11101B \
        Blue Alliance: 2011K, 2011J \
        Auton winner: Blue
      ]
    )
  ],
  grid.cell[
    == What We Noticed
    - The 11101B had an arm that allowed them to steal the mobile goal. This would allow them to control more mobile goals during driver control.
    - The 99904B disrupted the ring stack by running into them.
      - This caused the blue alliance to accidentally intake a red ring.
    - The 2011K was able to sweep their positive corner.
    - 99904B's robot had a color sort that flings blue rings out of their intake.
    - 2001J's ladybrown was able to score on the alliance wall stake.
  ],
)

#colbreak()

= Driver Control Strategies
#grid(
  columns: (1fr,1fr),
  column-gutter: 10pt,
  row-gutter: 10pt,

  grid.cell[
    #figure(
      image("identify-speedway-sig/12.6.24-3.png"),
      caption: [
        End result for Finals 1 \
        Red Alliance: 2011K, 2011J \
        Blue Alliance: 100A, 229V \
        Winner: Red
      ]
    )
  ],
  grid.cell[
    == What We Noticed
    - When both positive corners are being guarded, teams can use this opportunity to score on the wall stakes.
    - A full mobile goal would have a higher center of gravity compared to an empty one. We saw the red alliance tip over one of the blue alliance's full mobile goals in the positive corner.
    - A corner sweeper allowed the blue alliance to completely clear the positive corner for them.
    - When both of the blue robots were fighting over a positive corner, 2011K used the time window to score more rings onto a mobile goal.
  ],
  grid.cell[
    #figure(
      image("identify-speedway-sig/12.6.24-4.png", width: 170pt),
      caption: [
        End result for Finals 2 \
        Red Alliance 2011K, 2011J \
        Blue Alliance: 100A, 229V \
        Winner: Blue
      ]
    )
  ],
  grid.cell[
    == What We Noticed
    - When both of the blue alliance members were guarding the positive corner and wall stake, 2011K used the window to score a red ring onto the mobile goal.
    - Since 2011K was in a positive corner and 2011J was in a negative corner, the blue alliance was able to score three rings onto the wall stake.
  ],
)

= Observations
- We should add a mobile goal rush mechanism. This would allow us to steal a mobile goal during auton without risking crossing the auton line.
- We should run into the ring stack during auton. This can upset the enemy alliance's auton.
- When both of the enemy alliances are in a stalemate, we should try to score onto the wall stake.
- We should not give up a negative corner.
  - In finals 2, since the red alliance gave up the negative corner in the last 15 seconds of the match, the blue alliance was able to retake their mobile goal and win the match. Had the red alliance stay in the negative corner, they would have won.