#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mobile Goal Clamp v2",
  type: "identify",
  date: datetime(year: 2024, month: 10, day: 03),
  attendance: ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory"),
  designed: "Makhi",
  witnessed: "Rory",
)


#pro-con(
  name: "Original Idea",
  image: image("identify/clamp-v1.excalidraw.svg"), 
  description: [ ],
  pros: [
    - *Space* - Since the clamp's pistons were elevated, we had enough space to possibly attach tracking wheels on the bottom of the drivetrain.
  ], 
  cons: [
    - *Leverage* - Because the pistons needed to retract to activate the clamp, the pushing force was lacking.
    - *Extension* - The pistons overextended when trying to deactivate the clamp. This further decreased the little leverage that the clamp had.
    - *Grip* - Enemy teams could easily grab the mobile goal out of our possession.
  ]
)

#pro-con(
  name: "New Idea",
  image: image("identify/clamp-v2.excalidraw.svg"), 
  description: [ ],
  pros: [
    - *Electronics Placement* - Since the pistons are on the bottom of the drivetrain, we planned on placing our brain in the space that the previous clamps pistons took up.
    - *Leverage* - This design will have a strong mechanical advantage when gripping mobile goals because it makes more use of its pistons powers.
    - *Compactness* - Since the pistons are below the drivetrain, the pistons are closer to eachother.
  ], 
  cons: [
    - *Tracking Wheel Placement* - Having the pistons at the bottom of the drivetrain will give us limited space to place tracking wheels.
  ]
)

#colbreak()

= New Design Goals & Constraints
#goals-constraints(
  goals: [
    - This clamp should angle the mobile goal towards the robot when clamping.
    - The clamp should have enough grip on a mobile goal to secure it in our possession and prevent teams from stealing it.
    - The clamp should be efficient with air use if it uses pneumatics.
  ],
  constraints: [
    - #vex-rule[R4] Robots must fit within an 18" x 18" x 18" volume
    - #vex-rule[R13] Motors are limited to a combined power of 88W
      - Our other subsystems will need power, so we will preliminarily limit the mobile goal clamp's power draw to 11W.
    - #vex-rule[R23b] Pneumatic devices may be charged to a maximum of 100 psi.
    - The design must be tailored to the specific dimensions and shapes of the mobile goals.
  ],
)
