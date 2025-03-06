#import "/template/template.typ": *

#show: create-entry.with(
  title: "Ring Rush Mechanism v1",
  type: "brainstorm",
  date: datetime(year: 2025, month: 02, day: 02),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Eric",
  witnessed: "Jin",
)


Earlier this season, we took notes on the Speedway and Sugar Rush signature events. We used these notes to assist us in brainstorming different ways to build the ring rush mechanism. 

#pro-con(
  name: "Idea 1",
  image: image("brainstorm/ring-rush-idea-1.excalidraw.svg"),
  description: [
    This idea uses a square-shaped frame for disrupting and grabbing rings. At the initial position, the ring rush mechanism rests on top of the intake. Then, two pistons activate the ring rush mechanism, pushing the frame forward. Screw pivots are at the end of the ring rush mechanism that allow it to push the top rings and insert themselves into the bottom rings when the robot is disrupting the ring stack. 
  ],
  pros: [
    - *Versatility* -  The ring rush mechanism can also serve as a mobile goal-tipper mechanism.
    - *Consistency* - Because of its wide shape, this idea would be consistent at disrupting and stealing rings.
  ],
  cons: [
    - *Weight* - This idea uses the most amount of metal.
    - *Air Usage* - Since this idea uses 2 pistons, it would waste a lot of PSI.
  ],
  notes: [
    - Very popular idea in higher-level robotics
    - We can add a mobile goal rush mechanism at the side of the drivetrain. 
    - Since this idea cannot be used as a corner sweeper, it would only be deployed once per match.


  ],
)
#colbreak()

#pro-con(
  name: "Idea 2",
  image: image("brainstorm/ring-rush-idea-2.excalidraw.svg"),
  description: [
    This idea uses a “L” shaped arm to disrupt and grab rings. What is unique about this design is that the arm can be modified to sweep corners and grab mobile goals. There is a screw pivot at the end of the ring rush mechanism that allows it to push the top rings and insert itself into the bottom rings when the robot is disrupting the ring stack.
  ],
  pros: [
    - *Versatility* - The ring rush mechanism can be used to grab mobile goals and sweep corners. 
    - *Air Usage* - Since it uses only one piston, it would use less air than the other ideas.
  ],
  cons: [
    - *Ring Stealing Ability* - This idea can only steal one ring from the ring stack.
    - *Consistency* - Because of its shape, it may be inconsistent at doing its job. 
    - *Stability* - Since it is a “L” shape, it is not very stable and is weak at the end.
  ],
  notes: [
    - The L shape could make it awkward at sweeping corners.
    - Could add wall rollers at the end.

  ],
)

#pro-con(
  name: "Idea 3",
  image: image("brainstorm/ring-rush-idea-3.excalidraw.svg"),
  description: [
    Similar to idea 2, it uses a “L” shape to disrupt and grab rings. What is different is that there are two arms instead of one. There is a screw pivot at the end of the ring rush mechanism that allows it to push the top rings and insert itself into the bottom rings when the robot is disrupting the ring stack.
  ],
  pros: [
    - *Versatility* - The ring rush mechanism can be used to grab mobile goals and sweep corners.
  ],
  cons: [
    - *Consistency* - Because of its shape, it may be inconsistent at doing its job.
    - *Stability* - Since it is a “L” shape, it is not very stable and is weak at the end.
  ],
  notes: [
    - We would have the ability to use both arms to sweep a corner.
  ]
)