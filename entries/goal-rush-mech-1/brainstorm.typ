#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mobile Goal Rush Mechanism v1",
  type: "brainstorm",
  date: datetime(year: 2025, month: 02, day: 02),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Eric",
  witnessed: "Jin",
)


Earlier this season, we took notes on the Speedway and Sugar Rush signature events. We used these notes to assist us in brainstorming different ways to build the mobile goal rush mechanism.

#pro-con(
  name: "Idea 1",
  image: image("brainstorm/goal-rush-idea-1.excalidraw.svg"),
  description: [
    This idea uses a custom gusset that slides into the mobile goal. This gusset can then allow the mobile goal rush mechanism to let go of the mobile goal when the mobile goal rush mechanism retracts. There is an additional gusset that helps when clearing corners.
  ],
  pros: [
    - *Strength* -  Because it uses lexan, it's very durable.
    - *Weight* - Since it uses custom lexan, it is significantly lighter than a mobile goal rush mechanism that uses C-channel or metal.
  ],
  cons: [
    - *Time* - Making custom gussets takes a lot of time to design and laser cut.
  ],
  notes: [
    - The mobile goal rush mechanism can be used as a corner sweeper.
      - We may not have the time to try this idea.



  ],
)

#pro-con(
  name: "Idea 2",
  image: image("brainstorm/goal-rush-idea-2.excalidraw.svg"),
  description: [
    Unlike ideas 1 and 3 that insert between the mobile goal, this idea uses the rubber bumper to slam into the mobile goal's interior. Since this idea would clamp onto the mobile goal from the interior, there is a square gusset to push against the mobile goal's umbrella. This would knock over the mobile goal.
  ],
  pros: [
    - *Control* - We can knock over mobile goals.
  ],
  cons: [
     - *Efficiency* - Because it does not clamp under the mobile goal, it could accidentally let go of the mobile goal if we accelerate too fast backward.end.
  ],
  notes: [
    - The mobile goal rush mechanism can be used as a corner sweeper, however, it would not be very effective.

  ],
)
#colbreak()
#pro-con(
  name: "Idea 3",
  image: image("brainstorm/goal-rush-idea-3.excalidraw.svg"),
  description: [
    Similar to idea 1, this clamps under the mobile goal. However, it clamps onto the mobile goal's outer rings.
  ],
  pros: [
    - *Efficiency* - Since it uses a C-channel clamp, this idea would have a strong grip on the mobile goal.
  ],
  cons: [
    - *Weight* - The heaviest of the ideas because it uses the most metal.
    - *Releasing* - Since the mobile goal clamp is rigid, this idea may run into issues with letting go of the mobile goal.
  ],
  notes: [
    - The mobile goal rush mechanism can be used to sweep corners.
  ]
)