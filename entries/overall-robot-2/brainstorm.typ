#import "/template/template.typ": *

#show: create-entry.with(
  title: "Overall Robot Plan v2",
  type: "brainstorm",
  date: datetime(year: 2024, month: 8, day: 6),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Jin",
  witnessed: "Ajibola",
)

Using the observations in our #entry-reference(title: "The Minnesota Signature Event Observations", type: "identify", date: datetime(year: 2024, month: 08, day: 06)), we brainstormed new overall robot ideas that we believed would remain competitive in the current meta.

#pro-con(
  name: "Idea 1",
  image: image("brainstorm/overall-robot-idea-1.excalidraw.svg"),
  description: [
    The robot's two-stage intake system begins with a flex wheel intake similar to those used in Over Under robots, where the flex wheels are spaced out to maximize surface area contact with the rings. In the second stage, a hook mechanism grabs the rings and hooks them into the mobile goal. For the wall stake mechanism, a trap door is employed to allow the rings to slide into the arm, facilitating the stacking process efficiently.
  ],
  pros: [
    - *Ring Contact* - The flex wheel intake provides excellent ring contact, increasing the likelihood of successful ring capture.
    - *Ring Stacking* - The trap door mechanism aids in the efficient stacking of rings by guiding them directly into the arm.
    - *Ring Scoring* - The hook mechanism effectively secures rings in the mobile goal, ensuring reliable scoring.
  ],
  cons: [
    - *Complexity* - Multiple moving parts can complicate the design and increase the risk of mechanical failures.
    - *Aligning* - Ensuring proper alignment between the stages and the trap door can be challenging and may require frequent adjustments.
  ],
  notes: [
    - Extensive testing is needed to fine-tune the coordination between the intake, hook mechanism, and trap door.
  ],
)

#colbreak()

#pro-con(
  name: "Idea 2",
  image: image("brainstorm/overall-robot-idea-2.excalidraw.svg"),
  description: [
    The robot's two-stage intake system begins with a flex wheel intake similar to those used in Over Under robots, where the flex wheels are spaced out to maximize surface area. In the second stage, additional flex wheels help push the ring up a ramp. 
  ],
  pros: [
    - *Infrequent Jams* - Additional flex wheels and the ramp facilitate smooth movement of the rings towards the pneumatic arm, reducing the chance of jams.
    - *Precise Ring Manipulation* - The pneumatic arm offers precise control for grabbing and positioning the rings, which can improve accuracy in scoring.
  ],
  cons: [
    - *Maintenance* - The pneumatic arm requires careful calibration and maintenance, adding to the overall system complexity.
  ],
)

// #colbreak()

#pro-con(
  name: "Idea 3",
  image: image("brainstorm/overall-robot-idea-3.excalidraw.svg"),
  description: [
    The robot's two-stage intake system begins with a flex wheel intake similar to those used in Over Under robots, where the flex wheels are spaced out to maximize surface area contact with the rings. In the second stage, a hook mechanism grabs the rings and hooks them into the mobile goal. A two bar claw is used to pick up rings, place rings onto the wall stakes, and hang during the endgame.
  ],
  pros: [
    - *Ring Manipulation* - The two-bar claw offers a combined solution for picking up, placing, and hanging rings, streamlining operations.
    - *Versatility* - This design allows for both placement on wall stakes and hanging, providing versatile functionality.
  ],
  cons: [
    - *Complexity* - The two-bar claw and hook mechanism add complexity to the design, potentially increasing the risk of malfunctions.
    - *Coordination* - Coordination between the intake, hook, and two-bar claw must be precise to avoid jamming or inefficient operation.
  ],
  notes: [
    - Like the first idea, requires extensive testing for hooks.
  ],
)